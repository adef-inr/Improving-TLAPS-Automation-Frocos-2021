#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --mode=ho-competitive --boolean-reasoning=no-cases\
  --ext-rules=ext-family --ext-rules-max-depth=1\
  --ho-prim-enum=full --ho-prim-enum-early-bird=true\
  --avatar=off\
  --recognize-injectivity=true  --ho-elim-leibniz=1\
  --ho-unif-level=full-framework --no-max-vars\
  -q "4|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "4|by-norm-factor|conjecture-relative-var(1.02,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-non-goals|conjecture-relative-var(1,l,f)"\
  -q "2|prefer-easy-ho|conjecture-relative-var(1.01,s,f)"\
  --select=ho-selection3 --ho-selection-restriction=none --ho-choice-inst=true  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=6 --e-auto=true\
  --sine=50 --sine-tolerance=2 --sine-depth-max=3 --sine-depth-min=1 --e-max-derived=40 --e-only-ho-steps=false\
  --e-encode-lambdas=ignore --scan-clause-ac=true --lambdasup=0 --kbo-weight-fun=lambda-def-const --lambda-demod=true --bool-demod=true\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=5 --e-call-point=0.09 --sine-trim-implications=true
