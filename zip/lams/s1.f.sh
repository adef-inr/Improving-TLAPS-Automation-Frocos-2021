#!/bin/bash

# Solves 3 under 18

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --tptp-def-as-rewrite --rewrite-before-cnf=true \
  --mode=ho-competitive --boolean-reasoning=no-cases \
  --ext-rules=off   --ho-prim-enum=none   --recognize-injectivity=true  --ho-elim-leibniz=off \
  --ho-unif-level=full-framework --no-max-vars \
  -q "3|prefer-lambdas|conjecture-relative-var(1.02,l,f)" \
  -q "1|prefer-ho-steps|conjecture-relative-var(1,s,f)" \
  -q "1|prefer-processed|fifo" \
  -q "3|prefer-easy-ho|pnrefined(2,1,1,1,2,2,2)" \
  --select=e-selection5 \
  --sine=50 --sine-tolerance=3 --sine-depth-max=3 --sine-depth-min=1 \
  --prec-gen-fun=unary_first --ord=lambda_rpo   \
  --solid-subsumption=true --ignore-orphans=true \
  --ho-solid-decider=false  --ho-fixpoint-decider=false --ho-pattern-decider=true \
  --stream-queue-ratio=100 --stream-queue-guard=5 --stream-clause-num=2