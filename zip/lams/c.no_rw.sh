#!/bin/bash

# 1 under 1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ulimit -t $2

$DIR/zipperposition ${1:+"$1"} \
  -i tptp\
  -o tptp\
  --timeout "$2" \
  --mode=ho-competitive --tptp-def-as-rewrite \
  --boolean-reasoning=cases-simpl --bool-subterm-selection=L --max-inferences=5 \
  --ho-unif-max-depth=2 --ho-max-elims=2 --ho-max-app-projections=2 --ho-max-rigid-imitations=2 --ho-max-identifications=2 \
  --ext-rules=ext-family --ext-rules-max-depth=1 --recognize-injectivity=true \
  --ho-prim-enum=pragmatic --ho-prim-max=2 --ho-prim-enum-simpl=true \
  --ho-unif-level=pragmatic-framework --ho-choice-inst=true \
  -q "5|prefer-fo|conjecture-relative-var(1.02,l,f)" \
  -q "5|prefer-sos|pnrefined(1,1,1,2,2,2,0.5)" \
  -q "5|prefer-ground|orient-lmax(2,1,2,1,1)" \
  -q "1|prefer-processed|fifo" \
  --select=e-selection5 --avatar=eager --split-only-initial=true \
  --ho-pattern-decider=true --ho-solid-decider=false --ho-fixpoint-decider=true \
  --sup-at-vars=true --sup-at-var-headed=true \
  --sine=60 --sine-tolerance=2 --sine-depth-max=3 --sine-depth-min=1 \
  --kbo-weight-fun=lambda-def-sqarity \
  --lazy-cnf=true --lazy-cnf-kind=simp --lazy-cnf-renaming-threshold=10