#!/bin/bash

# Solves 3 under 18

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --mode=ho-competitive --boolean-reasoning=no-cases \
  --ext-rules=off --ho-prim-enum=none --recognize-injectivity=true \
  --ho-elim-leibniz=off   --ho-unif-level=full-framework --no-max-vars \
  -q "1|prefer-sos|conjecture-relative-e(0.5,1,100,100,100,100,1.5,1.5,1)" \
  -q "4|const|conjecture-relative-e(0.1,1,100,100,100,100,1.5,1.5,1.5)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-e(0.5,1,100,100,100,100,1.5,1.5,1.5)" \
  -q "4|prefer-sos|pnrefined(1,1,1,1,2,1.5,2)" \
  --select=ho-selection5 --ho-choice-inst=true  --sine=50 --sine-tolerance=4 --sine-depth-max=5 --sine-depth-min=1 \
  --kbo-weight-fun=invsqarity --prec-gen-fun=invfreq_conj --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=8 --dupsup=true \
  --sup-at-var-headed=false