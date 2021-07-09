#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic \
  --max-inferences=4 --ho-max-app-projections=1 --ho-max-elims=1 --ho-max-rigid-imitations=1 --ho-max-identifications=1 \
  --ho-unif-max-depth=2 \
  --boolean-reasoning=cases-inf --bool-subterm-selection=L \
  --ext-rules=off --kbo-weight-fun=lambda-def-sqarity \
  --ho-prim-enum=none \
  --tptp-def-as-rewrite \
  --ho-unif-level=pragmatic-framework \
  -q "4|prefer-sos|orient-lmax(2,1,2,1,1)" \
  -q "4|defer-sos|conjecture-relative-var(1,s,f)" \
  -q "3|const|default" \
  -q "1|prefer-processed|fifo" \
  --ho-elim-leibniz=inf \
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=true \
  --select=NoSelection --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false --fluidsup=true \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=8 \
  --sine=60 --sine-tolerance=3 --sine-depth-max=5 --sine-depth-min=1 \
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=12 --e-auto=true --e-max-derived=50 --e-encode-lambdas=ignore \
  --scan-clause-ac=true --presaturate --e-call-point=0.15