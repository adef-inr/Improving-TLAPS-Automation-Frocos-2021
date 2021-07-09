#!/bin/bash

# Solves 3 under 18

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --mode=ho-pragmatic \
  --timeout "$2" \
  --ho-unif-level=pragmatic-framework --max-inferences=5 \
  --ho-unif-max-depth=2 --ho-max-rigid-imitations=1 --ho-max-app-projections=1 \
  --ho-max-identifications=0 --ho-max-elims=0 \
  --boolean-reasoning=no-cases   --ext-rules=off \
  --boolean-reasoning=cases-simpl \
  --ho-neg-ext=true \
  --ho-prim-enum=none \
  --ho-elim-leibniz=off --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false \
  -q "1|prefer-sos|conjecture-relative-var(1.01,s,f)"\
  -q "4|const|conjecture-relative-var(1.05,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1.02,l,f)" \
  -q "4|prefer-sos|pnrefined(3,2,3,2,2,1.5,2)" \
  --select=e-selection -nc --check-lambda-free=false \
  --presaturate --prec-gen-fun=invfreqhack  --sup-at-vars=false --sup-at-var-headed=false --ord=lambda_rpo 
