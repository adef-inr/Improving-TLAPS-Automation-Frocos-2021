#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic\
  --max-inferences=3 --ho-max-app-projections=0 --ho-max-elims=0 --ho-max-rigid-imitations=2 --ho-max-identifications=0\
  --ho-unif-max-depth=2\
  --boolean-reasoning=no-cases\
  --ext-rules=off --kbo-weight-fun=invfreqrank\
  --ho-prim-enum=none  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --ho-unif-level=pragmatic-framework\
  -q "1|prefer-ho-steps|conjecture-relative-var(1,s,f)"\
  -q "1|prefer-processed|pnrefined(1,1,1,2,2,2,0.5)"\
  -q "1|prefer-sos|staggered(1)"\
  -q "2|prefer-fo|default"\
  -q "2|defer-sos|staggered(2)"\
  -q "2|prefer-easy-ho|conjecture-relative-struct(1.5,3.5,2,3)"\
  --ho-elim-leibniz=2\
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=false\
  --select=ho-selection2 --ho-selection-restriction=none\
  --solve-formulas=true --sup-at-vars=false --sup-at-var-headed=false --sup-from-var-headed=false\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=8\
  --sine=50 --sine-tolerance=4 --sine-depth-max=6 --sine-depth-min=1\
  --prec-gen-fun=unary_first --sine-trim-implications=true --lambda-demod=true --bool-demod=true --lambdasup=0