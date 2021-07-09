#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc \
  --mode=ho-competitive --boolean-reasoning=cases-simpl \
  --ext-rules=ext-family --ext-rules-max-depth=2 \
  --ho-prim-enum=pragmatic --ho-prim-max=2 --ho-prim-enum-early-bird=true  \
  --avatar=off \
  --recognize-injectivity=true  --ho-elim-leibniz=1 \
  --no-max-vars  \
  -q "6|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)" \
  -q "6|const|conjecture-relative-var(1.02,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1,l,f)" \
  -q "4|prefer-easy-ho|conjecture-relative-var(1.01,s,f)" \
  --select=e-selection5 --ho-choice-inst=true --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=6 --e-auto=true \
  --sine=50 --sine-tolerance=2.5 --sine-depth-max=3 --sine-depth-min=1 --e-max-derived=48 \
  --e-encode-lambdas=lift --scan-clause-ac=true  --prec-gen-fun=invfreq_conj --ord=lambda_rpo --e-call-point=0.15
