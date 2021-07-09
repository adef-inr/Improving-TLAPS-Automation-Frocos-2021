#!/bin/bash

# 30s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic\
  --max-inferences=4 --ho-max-app-projections=1 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=no-cases\
  --ext-rules=off --kbo-weight-fun=lambda-def-invfreqrank\
  --ho-prim-enum=none\
  --ho-unif-level=pragmatic-framework\
  -q "1|prefer-sos|conjecture-relative-var(1.01,s,f)"\
  -q "4|const|conjecture-relative-var(1.05,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-non-goals|conjecture-relative-var(1.02,l,f)"\
  -q "4|prefer-sos|pnrefined(3,2,3,2,2,1.5,2)"\
  --ho-elim-leibniz=1\
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=true\
  --select=e-selection2 --solve-formulas=true --lambdasup=0\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=30 --e-max-derived=40 --e-encode-lambdas=ignore\
  --presaturate --prec-gen-fun=invfreq --e-call-point=0.05 --e-only-ho-steps=false