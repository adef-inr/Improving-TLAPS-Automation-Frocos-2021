#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --mode=ho-competitive --boolean-reasoning=cases-preprocess\
  --ext-rules=ext-family --ext-rules-max-depth=1\
  --ho-prim-enum=pragmatic --ho-prim-enum-early-bird=true --trigger-bool-inst=1\
  --avatar=eager --split-only-ground=true\
  --recognize-injectivity=true  --ho-elim-leibniz=1\
  --ho-unif-level=pragmatic-framework --no-max-vars\
   --max-inferences=3 --ho-max-app-projections=1  --ho-max-elims=0 --ho-max-rigid-imitations=1 --ho-max-identifications=0\
  --ho-unif-max-depth=1\
  --select=e-selection3 --ho-choice-inst=true  --kbo-weight-fun=lambda-def-invarity  --bool-demod=true --lambda-demod=true\
  -q "1|prefer-sos|default"\
  -q "1|prefer-goals|conjecture-relative-var(1.03,s,f)"\
  -q "1|prefer-non-goals|default"\
  -q "4|prefer-processed|conjecture-relative-var(1.01,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "2|const|orient-lmax(2,1,2,1,1)"\
  -q "1|defer-sos|conjecture-relative-var(1.1,s,f)" --lazy-cnf=true --trigger-bool-ind=1