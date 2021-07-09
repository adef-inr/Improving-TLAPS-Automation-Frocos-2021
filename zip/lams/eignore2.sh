#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic \
  --max-inferences=3 --ho-max-app-projections=1 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0 \
  --ho-unif-max-depth=2 \
  --boolean-reasoning=no-cases \
  --ext-rules=off --kbo-weight-fun=lambda-def-invdocc \
  --ho-prim-enum=none --ho-prim-max=2 \
  --tptp-def-as-rewrite \
  --ho-unif-level=pragmatic-framework \
  -q "1|const|conjecture-relative-var(1,s,f)" \
  -q "1|prefer-processed|pnrefined(1,1,1,2,2,2,0.5)" \
  -q "1|prefer-sos|staggered(1)" \
  -q "2|prefer-fo|default" \
  -q "2|defer-sos|staggered(2)" \
  -q "2|prefer-easy-ho|conjecture-relative-struct(1.5,3.5,2,3)" \
  --ho-elim-leibniz=inf \
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false \
  --select=e-selection11 --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=4 \
  --sine=50 --sine-tolerance=2.5 --sine-depth-max=3 --sine-depth-min=1 --e-max-derived=128 \
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-auto=true --e-encode-lambdas=ignore \
  --ord=lambda_rpo --prec-gen-fun=unary_first --e-timeout=20