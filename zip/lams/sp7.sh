#!/bin/bash

# solves 4 under 15s

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-pragmatic\
  --tptp-def-as-rewrite --rewrite-before-cnf=true\
  --boolean-reasoning=no-cases --bool-subterm-selection=L\
  --ho-prim-enum=or --ho-prim-max=1 --ho-prim-enum-early-bird=true --trigger-bool-inst=1\
  --select=e-selection13 --prec-gen-fun=invfreq_conj --kbo-weight-fun=modarity  --ord=lambda_kbo\
  --ho-unif-level=full-framework --lambda-demod=true --bool-demod=true\
  --ho-pattern-decider=true --ho-solid-decider=true --ho-fixpoint-decider=true\
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=4 \
  --sine=100 --sine-depth-min=1 --sine-depth-max=5 --sine-tolerance=1.5 --presaturate -q "1|prefer-sos|default"\
  -q "8|const|conjecture-relative-var(1,l,f)"\
  -q "1|prefer-processed|fifo"\
  -q "1|prefer-lambdas|explore"\
  -q "1|prefer-non-goals|explore"\
  -q "1|prefer-processed|conjecture-relative-var(1,s,f)" --trigger-bool-ind=2