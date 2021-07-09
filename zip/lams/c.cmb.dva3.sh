#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-comb-complete --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --boolean-reasoning=no-cases --demod-in-var-args=true\
  --ext-rules=ext-family --ext-rules-max-depth=1 --prec-gen-fun=unary_first --kbo-weight-fun-from-precedence=true --kbo-weight-fun-from-precedence-rank=10\
  --ho-prim-enum=pragmatic --ho-prim-enum-early-bird=true --trigger-bool-inst=1\
  -q "1|prefer-unit-ground-non-goals|orient-lmax(2,1,2,1,1)"\
  -q "3|defer-top-level-appvars|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-fo|conjecture-relative-struct(1.5,3.5,2,3)"\
  -q "1|prefer-sos|explore"\
  -q "1|prefer-shallow-appvars|conjecture-relative-e(0.1,1,10,10,10,10,1.5,1.5,1.5)"\
  -q "2|by-norm-factor|pnrefined(1,2,1,3,2,1.5,0.75)"\
  --recognize-injectivity=true\
  --select=e-selection14 --solve-formulas=true\
  --sine=2 --sine-depth-max=5 --sine-depth-min=1 --sine=30 --lazy-cnf=true --lazy-cnf-renaming-threshold=3 --avatar=eager  --bool-demod=true\
  --app-var-narrowing=false --subvarsup=false --sine-trim-implications=true --trigger-bool-ind=1