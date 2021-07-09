#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --mode=ho-comb-complete --boolean-reasoning=no-cases \
  --ext-rules=off \
  --ho-prim-enum=none --bool-subterm-selection=M  \
  --recognize-injectivity=true  --ho-elim-leibniz=1 \
  --no-max-vars  \
  -q "6|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)" \
  -q "6|const|conjecture-relative-var(1.02,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1,l,f)" \
  -q "4|prefer-easy-ho|conjecture-relative-var(1.01,s,f)" \
  --select=e-selection14 --ho-choice-inst=true --avatar=lazy \
  --sine=50 --sine-tolerance=2 --sine-depth-max=4 --sine-depth-min=1 --e-max-derived=64 \
  --scan-clause-ac=true \
  --kbo-weight-fun-from-precedence=true \
  --kbo-weight-fun-from-precedence-rank=10 --prec-gen-fun=invfreq_conj \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=2