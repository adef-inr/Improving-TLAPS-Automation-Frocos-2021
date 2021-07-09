#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic --boolean-reasoning=no-cases \
  --ext-rules=off --ext-rules-max-depth=1 --recognize-injectivity=true \
  --ho-prim-enum=none --ho-choice-inst=true\
  -q "3|prefer-fo|conjecture-relative-var(1.02,l,f)"\
  -q "3|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "7|prefer-ground|orient-lmax(2,1,2,1,1)"\
  -q "1|prefer-processed|fifo"\
  --select=e-selection2 \
  --sine=60 --sine-tolerance=1.5 --sine-depth-max=3 --sine-depth-min=1 \
  --prec-gen-fun=invfreq --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=3 \
  --kbo-weight-fun-from-precedence=true --kbo-weight-fun-from-precedence-rank=20 --trigger-bool-inst=1 \
  --avatar=eager --split-only-ground=true --tptp-def-as-rewrite --rewrite-before-cnf=true --lambda-demod=true --bool-demod=true --trigger-bool-ind=2