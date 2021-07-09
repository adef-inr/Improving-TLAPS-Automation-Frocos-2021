#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-comb-complete --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --boolean-reasoning=no-cases --demod-in-var-args=true\
  --ext-rules=ext-family --ext-rules-max-depth=2 --kbo-weight-fun=modarity\
  --ho-prim-enum=combs --ho-prim-max=2 --interpret-bool-funs=false\
  -q "2|prefer-unit-ground-non-goals|orient-lmax(2,1,2,1,1)"\
  -q "4|defer-top-level-appvars|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "1|prefer-processed|fifo"\
  -q "2|prefer-fo|conjecture-relative-struct(1.5,3.5,2,3)"\
  -q "2|prefer-sos|explore"\
  -q "2|prefer-shallow-appvars|conjecture-relative-e(0.1,1,100,100,100,100,1.5,1.5,1.5)"\
  --recognize-injectivity=true \
  --select=e-selection15 --solve-formulas=true \
  --sine=2 --sine-depth-max=6 --sine-depth-min=1 --sine=30 --lazy-cnf=true\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-auto=true --e-encode-lambdas=lift --lambda-demod=true  --demod-in-var-args=true --bool-demod=true \
  --e-max-derived=36 --e-call-point=0.4 --e-timeout=6 --e-auto=true --comb-s-penalty=10 --subvarsup=false