#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --max-inferences=4 --ho-unif-max-depth=3 --ho-max-elims=0 --ho-max-app-projections=1 --ho-max-identifications=0\
  --ho-max-rigid-imitations=2 --ho-unif-level=pragmatic-framework\
  --boolean-reasoning=cases-simpl\
  --ext-rules=off\
  --ho-prim-enum=full --ho-prim-max=2 --interpret-bool-funs=false\
  -q "1|prefer-sos|default"\
  -q "10|const|conjecture-relative-var(1,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-lambdas|explore"\
  -q "1|prefer-non-goals|explore"\
  -q "1|prefer-processed|conjecture-relative-var(1,s,f)"\
  --recognize-injectivity=true\
  --ho-selection-restriction=none --select=ho-selection2 --solve-formulas=true