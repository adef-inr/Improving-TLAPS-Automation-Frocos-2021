#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc --tptp-def-as-rewrite\
  --mode=ho-pragmatic\
  --max-inferences=4 --ho-max-app-projections=1 --ho-max-elims=0 --ho-max-rigid-imitations=1 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=no-cases --bool-subterm-selection=L\
  --ext-rules=off --kbo-weight-fun=lambda-def-const\
  --ho-prim-enum=neg --ho-prim-enum-early-bird=true\
  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --ho-unif-level=pragmatic-framework\
  -q "4|prefer-sos|orient-lmax(2,1,2,1,1)"\
  -q "4|defer-sos|conjecture-relative-var(1,s,f)"\
  -q "3|const|default"\
  -q "1|prefer-processed|fifo"\
  --ho-elim-leibniz=1\
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false\
  --select=e-selection10 --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false --sup-from-var-headed=true\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=8\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=15 --e-auto=true --e-max-derived=50 --e-encode-lambdas=ignore\
  --scan-clause-ac=true --presaturate --e-call-point=0.22
