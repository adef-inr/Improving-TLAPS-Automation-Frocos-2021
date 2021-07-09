#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic --boolean-reasoning=no-cases\
  --ho-unif-max-depth=1 --ho-max-app-projections=0 --ho-max-rigid-imitations=1 --ho-max-elims=0 --ho-max-identifications=1\
  --ext-rules=off\
  --ho-prim-enum=none --ho-choice-inst=false  -q "1|prefer-fo|conjecture-relative-var(1.02,l,f)"\
  -q "1|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "10|prefer-ground|orient-lmax(2,1,2,1,1)"\
  -q "1|prefer-processed|fifo"\
  --select=e-selection8\
  --prec-gen-fun=const_first --lazy-cnf=true --lazy-cnf-kind=inf --lazy-cnf-renaming-threshold=3\
  --tptp-def-as-rewrite --rewrite-before-cnf=true --ord=lambda_rpo --avatar=eager --split-only-ground=true