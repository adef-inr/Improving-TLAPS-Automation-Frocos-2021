#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-comb-complete \
  --boolean-reasoning=no-cases \
  --ext-rules=off --kbo-weight-fun=invfreqrank \
  --ho-prim-enum=full --ho-prim-max=1 \
  -q "1|prefer-sos|conjecture-relative-var(1.01,s,f)" \
  -q "2|by-app-var-num|conjecture-relative-var(1.05,l,f)" \
  -q "1|prefer-processed|fifo" \
  -q "1|prefer-non-goals|conjecture-relative-var(1.02,l,f)" \
  -q "4|prefer-sos|pnrefined(3,2,3,2,2,1.5,2)" \
  --ho-elim-leibniz=off \
  --select=ho-selection4 --solve-formulas=true \
  --presaturate --prec-gen-fun=invfreq \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=10 \
  --sine=100 --sine-tolerance=2.5 --sine-depth-max=3 --sine-depth-min=1