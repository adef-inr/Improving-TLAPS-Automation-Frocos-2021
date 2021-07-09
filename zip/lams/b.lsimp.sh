#!/bin/bash

# 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic\
  --max-inferences=3 --ho-max-app-projections=0 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=no-cases\
  --ext-rules=ext-family --ext-rules-max-depth=1 --kbo-weight-fun=invdocc\
  --ho-prim-enum=tf --ho-prim-enum-early-bird=true\
  --tptp-def-as-rewrite\
  --ho-unif-level=pragmatic-framework\
  -q "1|const|conjecture-relative-var(1,s,f)"\
  -q "1|prefer-processed|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "1|prefer-sos|staggered(1)"\
  -q "2|prefer-fo|default"\
  -q "1|prefer-neg-unit|orient-lmax(2,1,2,1,1)"\
  -q "2|prefer-easy-ho|conjecture-relative-struct(1.5,3.5,2,3)"\
  --ho-elim-leibniz=2\
  --ho-fixpoint-decider=true --ho-pattern-decider=false --ho-solid-decider=true --ho-max-solidification=12 \
  --select=e-selection11 --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=4\
  --sine=50 --sine-tolerance=1.7 --sine-depth-max=3 --sine-depth-min=1\
  --sine-trim-implications=true\
  --ho-selection-restriction=none --sup-from-var-headed=false --sine-trim-implications=true