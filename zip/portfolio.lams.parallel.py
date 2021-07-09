import subprocess as sp
import sys
import re
from multiprocessing import cpu_count

STATUS_REGEX = re.compile(r'\% SZS status (\w+)')

def print_locked(msg, stdout_lock):
  assert stdout_lock is not None

  stdout_lock.acquire()
  try:
    print('{0}'.format(msg), flush=True)
  except:
    import traceback
    print("% Print lock error:{0}".format(traceback.format_exc()))
  finally:
    stdout_lock.release()

THM_STATUSES = ["Theorem", "Unsatisfiable", "ContradictoryAxioms"]

class Configuration:
  class RunResult:
    THEOREM = 1
    GAVE_UP = 2
    TIMEOUT = 3
    CANCELLED = 4
    UNKNOWN_ERROR = 5


  def __init__(self, conf_path, timeout_ratio, preferred_time):
    self._conf_path = conf_path
    self._timeout_ratio = timeout_ratio
    self._preferred_time = preferred_time

    import os
    cwd = os.path.dirname(os.path.realpath(__file__))
    conf_path = os.path.join(cwd, self.conf_path())
    if not os.path.isfile(conf_path):
      raise ValueError("{0} cannot be found".format(conf_path))
    if not (os.access(conf_path, os.X_OK)):
      raise ValueError("{0} is not executable".format(conf_path))


  def conf_path(self):
    return self._conf_path

  def compute_timeout(self, total):
    lower_cutoff, upper_cutoff = 0.85,1.05

    to_of_ratio = self._timeout_ratio * total

    if to_of_ratio < lower_cutoff * self._preferred_time:
      return int(lower_cutoff * self._preferred_time)
    elif to_of_ratio > upper_cutoff * self._preferred_time:
      return int(upper_cutoff * self._preferred_time)
    else:
      return int(self._preferred_time)

  def _do_run(self, prob_path, total_timeout, tmp_dir, stdout_lock):
    try:
      from math import ceil
      import os
      cwd = os.path.dirname(os.path.realpath(__file__))
      conf_path = os.path.join(cwd, self.conf_path())

      timeout = self.compute_timeout(total_timeout)

      print_locked("% {0} running for {1}s".format(conf_path, timeout), stdout_lock)
      proc_res = sp.run([conf_path, prob_path, str(timeout), tmp_dir], stdout=sp.PIPE, stderr=sp.PIPE, timeout=timeout)
      res_out = proc_res.stdout.decode(encoding='ascii', errors='ignore')
      matches = STATUS_REGEX.findall(res_out)
      if any(matches):
        match = matches[0]
        if match.strip() in THM_STATUSES:
          # print_locked("{0}:{1}".format(conf_path, res_out))          
          return (Configuration.RunResult.THEOREM, res_out, self.conf_path())
        elif match.strip() == "ResourceOut":
          #print_locked("% {0}:{1}".format(conf_path, "TO"), stdout_lock)          
          return (Configuration.RunResult.TIMEOUT, None, self.conf_path())
        else:
          #print_locked("% {0}:{1}".format(conf_path, match.strip()), stdout_lock)          
          return (Configuration.RunResult.GAVE_UP, None, self.conf_path())
      
      #print_locked("% {0} could not parse the output".format(conf_path), stdout_lock)          
      return (Configuration.RunResult.UNKNOWN_ERROR, None, self.conf_path())
      
    
    except Exception as e:
      # timeouts and things...
      #err_msg = "\n".join(map(lambda x: "% " + x, str(e).split('\n')))
      #print_locked("% Error: {0}".format(err_msg.replace("\n","\n% ")), stdout_lock)
      #import traceback
      #print("% Fatal error: {0}".format(traceback.format_exc().replace("\n", "\n%")))
      return (Configuration.RunResult.UNKNOWN_ERROR, None, self.conf_path())

  def run(self, prob_path, total_timeout, tmp_dir, stdout_lock):
    return self._do_run(prob_path, total_timeout, tmp_dir, stdout_lock)
      

all_confs = [
    Configuration('lams/s6.sh', 0.016, 20), #5
    Configuration('lams/new_b3.2.norw.sh', 0.012, 15), #15
    Configuration('lams/b.rpo.sh', 0.016, 20), # 15
    Configuration('lams/s6.ds.sh', 0.01, 10), # 10
    Configuration('lams/c.s.2.sh', 0.051, 65), # 65
    Configuration('lams/c.easy.sh', 0.02, 25), # 25
    Configuration('lams/old_b3.avatar.sh', 0.012, 15), # 25
    Configuration('lams/old_sp2.sh', 0.013, 17), # 25
    Configuration('lams/b.sh', 0.023, 30), # 20
    Configuration('lams/sh1.sh', 0.018, 25), # 15
    Configuration('lams/b.lsimp.sh', 0.014, 17), # 20
    Configuration('lams/b.split.sh', 0.023, 30), # 30
    Configuration('lams/s4.sh', 0.012, 15), #15
    Configuration('lams/b.rw.sh', 0.02, 25), # 25
    Configuration('lams/c_ic.sh', 0.03, 40), # 40
    Configuration('lams/s1.f.sh', 0.012, 15), # 15
    Configuration('lams/c.preprocess2.sh', 0.017, 20), # 35
    Configuration('lams/sh.or.sh', 0.018, 25), # 25
    Configuration('lams/new.cs3.comb.sh', 0.013, 18), # 25
    Configuration('lams/old_b2.sh', 0.023, 30), # 30
    Configuration('lams/sp5.sh', 0.025, 35), # 30
    Configuration('lams/b2.sh', 0.012, 15), # 15
    Configuration('lams/b.lcnf.od.sh', 0.022, 25), # 15
    Configuration('lams/c.s.sh', 0.027, 35), # 35
    Configuration('lams/b3.sh', 0.022, 25), # 15
    Configuration('lams/cmb.lcnf.sh', 0.01, 10), # 10
    Configuration('lams/sh.eqenc.sh', 0.014, 17), # 25
    Configuration('lams/p.ll.e2.sh', 0.013, 17), # 30
    Configuration('lams/c.cmb.sh', 0.016, 20), # 20
    Configuration('lams/cs1.sh', 0.035, 45), # 45
    # removed
    # Configuration('lams/b4.sh', 0.012, 15), # 15
    Configuration('lams/old_s4.sh', 0.027, 35), # 15
    Configuration('lams/old.cs2combs.sh', 0.016, 22), # 9
    Configuration('lams/b5.sh', 0.006, 7), # 15
    Configuration('lams/eignore3.sh', 0.026, 35), # 30
    Configuration('lams/e_lift.sh', 0.027, 37), # 30
    Configuration('lams/e_lift_late.sh', 0.023, 30), # 30
    Configuration('lams/s6.2.sh', 0.01, 10), #10
    # Configuration('lams/sh2.sh', 0.02, 27), # 15
    Configuration('lams/sh.linf.sh', 0.16, 22), # 15
    # removed
    # Configuration('lams/b1.nu.sh', 0.012, 15), # 30
    Configuration('lams/b6.sh', 0.012, 15), # 15
    # Configuration('lams/new_c.no_unfold3.sh', 0.023, 30), # 30
    Configuration('lams/c.no_rw.sh', 0.016, 20), # 40
    Configuration('lams/cs1.sine.sh', 0.034, 45), # 45
    Configuration('lams/sh3.sh', 0.032, 40), # 40
    # disabled it since it is seems not useful
    Configuration('lams/sh4.sh', 0.016, 20), # 20
    # Configuration('lams/new_b3.2.sh', 0.024, 33), # 33
    Configuration('lams/b.comb.sh', 0.037, 55), # 55
    # Configuration('lams/c.cmb.dva.sh', 0.014, 17), # 17
    # Configuration('lams/c.cmb.dva2.sh', 0.02, 27), # 20
    # Configuration('lams/c.cmb.dva3.sh', 0.022, 30), # 30
    # disabled
    # Configuration('lams/b.comb2.sh', 0.01, 10), # 10
    Configuration('lams/new_c.s3.sh', 0.024, 33), # 33
    Configuration('lams/old_zip2.sh', 0.012, 15), # 30
    Configuration('lams/old_zip1.sh', 0.022, 30), # 30
    Configuration('lams/eignore2.sh', 0.018, 25), # 35
    Configuration('lams/sp4.sh', 0.012, 15), # 15
    #Configuration('lams/sp6.sh', 0.012, 15), # 15
    #Configuration('lams/sp7.sh', 0.012, 15), # 15
    Configuration('lams/sp8.sh', 0.012, 15), # 15
]


class Runner(object):
  def __init__(self, prob, timeout, tmp_dir):
    self._prob = prob
    self._timeout = timeout
    self._tmp_dir = tmp_dir
  
  def __call__(self, arg):
    conf, stdout_lock, flags = arg
    assert stdout_lock is not None
    try:
      if flags['done']:
        return (Configuration.RunResult.CANCELLED, None, conf.conf_path())
      else:
        return conf.run(self._prob, self._timeout, self._tmp_dir, stdout_lock)
    except:
      # import traceback
      # print("% Fatal error:{0}".format(traceback.format_exc()))
      return (Configuration.RunResult.UNKNOWN_ERROR, None, conf.conf_path())



def run_parallel(confs, prob, timeout, tmp_dir, use_all_cpus):
  try:
    import multiprocessing as m
    import os
    m.set_start_method("spawn")


    manager = m.Manager()
    stdout_lock = manager.Lock()
    flags = manager.dict({'done': False})
    runner = Runner(prob, timeout, tmp_dir)

    n_cpus = len(os.sched_getaffinity(0)) - (0 if use_all_cpus else 1)
    
    pool = m.Pool(n_cpus)
    
    total_wc_time = sum([c.compute_timeout(timeout) for c in confs])
    print("% Estimated wc time : {0}".format(total_wc_time), flush=True)
    print("% Estimated cpu time ({1} cpus) : {0}".format(total_wc_time/n_cpus, n_cpus), flush=True)

    results = pool.imap_unordered(runner, [(c, stdout_lock, flags) for c in confs])

    for (status,proof,conf_id) in results:
      
      # print_locked("% {0} says {1}".format(conf_id, status), stdout_lock)
      if status == Configuration.RunResult.THEOREM:
        assert proof is not None

        print_locked("% Solved by {0}.\n{1}\n".format(conf_id,proof), stdout_lock)
        flags['done'] = True

        break
    
    print_locked("% Terminating...", stdout_lock)
    pool.terminate()
    pool.join()
  except:
    print("Unknown error in runner body.")
    #import traceback
    #print("% Fatal error:{0}".format(traceback.format_exc()))
        

def main():  
  try:
    prob_path = sys.argv[1]
    timeout = int(sys.argv[2])
    tmp_dir   = sys.argv[3]
    use_all_cpus =\
      len(sys.argv) > 4 and sys.argv[4].lower().startswith("t")


    run_parallel(all_confs, prob_path, timeout*(cpu_count()-1), tmp_dir, use_all_cpus)
  except IndexError:
    print("Usage: python3 {0} <prob_path> <timeout> <tmp_dir> [use all cpus = true/false]".format(sys.argv[0]))
  except Exception as e:
    print("Uncaught exception {0}".format(e))
  finally:
    print("% Runner terminated.")
 
if __name__ == "__main__":
  main()


