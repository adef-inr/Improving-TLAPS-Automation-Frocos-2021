#!/bin/bash

# solved 38, under 24s 

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic --tptp-def-as-rewrite --rewrite-before-cnf=true  \
  --max-inferences=4 --ho-unif-max-depth=2 --ho-max-elims=0 --ho-max-app-projections=1 --ho-max-rigid-imitations=2 --ho-max-identifications=0 \
  --boolean-reasoning=cases-simpl --recognize-injectivity=true  \
  --ext-rules=ext-family --ext-rules-max-depth=1 --ho-choice-inst=true \
  --ho-prim-enum=none --ho-elim-leibniz=inf \
  --interpret-bool-funs=true \
  --ho-unif-level=pragmatic-framework --select=e-selection8 \
  --kbo-weight-fun=invsqarity --post-cnf-lambda-lifting=true \
  -q "4|prefer-sos|pnrefined(2,1,1,1,2,2,2)" \
  -q "6|prefer-processed|conjecture-relative-struct(1.5,3.5,2,3)" \
  -q "1|const|fifo" \
  -q "4|prefer-ground|orient-lmax(2,1,2,1,1)" \
  -q "4|defer-sos|conjecture-relative-struct(1,5,2,3)" \
  --avatar=lazy --split-only-ground=true --recognize-injectivity=true --ho-neg-ext-simpl=true --ho-neg-ext=true --e-timeout=10 \
  --ho-max-identifications=1 --ho-pattern-decider=true --ho-fixpoint-decider=true --e-max-derived=40\
  --presaturate