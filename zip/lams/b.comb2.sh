#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-comb-complete\
  --boolean-reasoning=no-cases --bool-subterm-selection=L\
  --ext-rules=off --kbo-weight-fun=invsqarity\
  --ho-prim-enum=none\
  --tptp-def-as-rewrite\
  -q "4|prefer-sos|default"\
  -q "2|defer-sos|default"\
  -q "4|prefer-processed|explore"\
  -q "1|prefer-processed|fifo"\
  --ho-elim-leibniz=1\
  --select=e-selection7\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=12\
  --sine=60 --sine-tolerance=2 --sine-depth-max=5 --sine-depth-min=1 --e-encode-lambdas=ignore\
  --scan-clause-ac=true --presaturate\
  --comb-b-penalty=30 --comb-c-penalty=30 --comb-k-penalty=10 --comb-s-penalty=50 --subvarsup=false \
  --app-var-narrowing=false --comb-unif-resolve=true\
  --try-e="$DIR/eprover-ho" --tmp-dir="$3" --e-timeout=8 --e-max-derived=64 --e-encode-lambdas=ignore --e-call-point=0.35 --e-auto=true
