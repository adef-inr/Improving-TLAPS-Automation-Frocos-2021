#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --mode=ho-competitive --boolean-reasoning=cases-simpl \
  --ext-rules=ext-family --ext-rules-max-depth=1 \
  --ho-prim-enum=neg --ho-prim-max=1 --bool-subterm-selection=A  \
  --avatar=off \
  --recognize-injectivity=true  --ho-elim-leibniz=8 \
  --ho-unif-level=full-framework --no-max-vars  \
  -q "1|prefer-sos|conjecture-relative-e(0.5,1,100,100,100,100,1.5,1.5,1)" \
  -q "4|const|conjecture-relative-e(0.1,1,100,100,100,100,1.5,1.5,1.5)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-e(0.5,1,100,100,100,100,1.5,1.5,1.5)" \
  -q "4|prefer-sos|pnrefined(1,1,1,1,2,1.5,2)" \
  --select=ho-selection5 --ho-choice-inst=true --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=13 \
  --sine=50 --sine-tolerance=3.5 --sine-depth-max=5 --sine-depth-min=1 --e-max-derived=64 \
  --e-encode-lambdas=lift --scan-clause-ac=true --kbo-weight-fun=arity0 --prec-gen-fun=invfreq_conj