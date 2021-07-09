#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"



ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp \
  --mode=ho-pragmatic --timeout="$2"\
  --boolean-reasoning=no-cases --bool-subterm-selection=L\
  --ext-rules=off --kbo-weight-fun=arity0\
  --ho-prim-enum=none  --ho-unif-level=pragmatic-framework --max-inferences=5\
  --ho-unif-max-depth=4 --ho-max-rigid-imitations=2 --ho-max-app-projections=2 --ho-max-identifications=0 --ho-max-elims=0\
  -q "1|prefer-sos|conjecture-relative-var(1.01,s,f)"\
  -q "4|const|conjecture-relative-var(1.05,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-non-goals|conjecture-relative-var(1.02,l,f)"\
  -q "4|prefer-sos|pnrefined(3,2,3,2,2,1.5,2)"\
  --ho-elim-leibniz=off\
  --ho-fixpoint-decider=true --ho-pattern-decider=true --ho-solid-decider=true\
  --select=e-selection7 --solve-formulas=false\
  --presaturate --prec-gen-fun=invfreq\
  --lazy-cnf=false --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=10  \
  -o tptp  --sup-in-var-args=false --demod-in-var-args=false --sup-from-var-headed=false