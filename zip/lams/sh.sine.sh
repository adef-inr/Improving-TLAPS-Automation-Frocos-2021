#!/bin/bash

# 1955 solved under 30 seconds

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" -nc\
  --mode=ho-pragmatic\
  --max-inferences=5 --ho-max-app-projections=1 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=cases-simpl --bool-subterm-selection=L\
  --ext-rules=off --kbo-weight-fun=invfreqrank\
  --ho-prim-enum=none\
  --ho-unif-level=pragmatic-framework\
  -q "2|prefer-unit-ground-non-goals|orient-lmax(2,1,2,1,1)"\
  -q "4|defer-top-level-appvars|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "1|prefer-processed|fifo"\
  -q "2|prefer-fo|conjecture-relative-struct(1.5,3.5,2,3)"\
  -q "2|prefer-sos|explore"\
  -q "2|prefer-shallow-appvars|conjecture-relative-e(0.1,1,100,100,100,100,1.5,1.5,1.5)"\
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false\
  --select=MaxGoalNS --solve-formulas=true\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-encode-lambdas=lift\
  --prec-gen-fun=arity --e-timeout=20 --e-call-point=0.23\
  --sine=10 --sine-depth-min=1 --sine-depth-max=3 --sine-tolerance=1 --sine-trim-implications=true