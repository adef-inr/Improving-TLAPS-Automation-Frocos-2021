#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic \
  --boolean-reasoning=cases-simpl --bool-subterm-selection=L \
  --ext-rules=ext-family --ext-rules-max-depth=1 --kbo-weight-fun=lambda-def-invfreqrank \
  --ho-prim-enum=full --ho-prim-max=1 \
  --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --ho-unif-level=full-framework \
  -q "1|prefer-sos|conjecture-relative-var(1.01,s,f)" \
  -q "4|const|conjecture-relative-var(1.05,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1.02,l,f)" \
  -q "4|prefer-sos|pnrefined(3,2,3,2,2,1.5,2)" \
  --ho-elim-leibniz=off \
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=true \
  --select=e-selection2 --solve-formulas=true --lambdasup=0 \
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=6 --e-auto=true --e-max-derived=32 --e-encode-lambdas=lift \
  --presaturate --prec-gen-fun=invfreq \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=10 \
  --sine=50 --sine-tolerance=1.9 --sine-depth-max=3 --sine-depth-min=1 --e-call-point=0.33