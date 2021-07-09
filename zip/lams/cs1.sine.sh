#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc --tptp-def-as-rewrite\
  --mode=ho-pragmatic\
  --max-inferences=5 --ho-max-app-projections=1 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=no-cases\
  --ext-rules=off --kbo-weight-fun=invdocc\
  --ho-prim-enum=none\
  --ho-unif-level=pragmatic-framework\
  -q "6|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)" \
  -q "6|const|conjecture-relative-var(1.02,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1,l,f)" \
  -q "4|prefer-easy-ho|conjecture-relative-var(1.01,s,f)" \
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false\
  --select=e-selection14 --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-encode-lambdas=lift\
  --prec-gen-fun=unary_first --e-timeout=40 --e-max-derived=48 --e-call-point=0.12\
  --sine=10 --sine-depth-min=1 --sine-depth-max=3 --sine-tolerance=1 --sine-trim-implications=true