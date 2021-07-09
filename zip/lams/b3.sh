#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --mode=ho-competitive --boolean-reasoning=cases-simpl\
  --ext-rules=ext-family --ext-rules-max-depth=2\
  --ho-prim-enum=tf --ho-prim-max=3 --bool-subterm-selection=L\
  --recognize-injectivity=true  --ho-elim-leibniz=3\
  --ho-unif-level=full-framework --no-max-vars\
  -q "1|prefer-sos|conjecture-relative-var(1.02,l,f)"\
  -q "4|const|conjecture-relative-var(1,s,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-non-goals|conjecture-relative-var(1,l,f)"\
  -q "4|prefer-sos|pnrefined(2,1,1,1,2,2,2)"\
  --select=e-selection10 --ho-choice-inst=true --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=30\
  --sine=30 --sine-tolerance=5 --sine-depth-max=8 --sine-depth-min=1 --e-max-derived=80\
  --e-encode-lambdas=lift --scan-clause-ac=true --lambdasup=0 --prec-gen-fun=unary_first --ord=lambda_rpo\
  --solid-subsumption=true --ignore-orphans=true --e-call-point=0.15