%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #1
%---- Generated from file "./Modules/FunctionTheorems_proofs.tla", line 479, characters 53-54

%---- Hypotheses

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__SubsetEq, type, ( thf__TLA__SubsetEq: $i > $i > $o )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fact3, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( thf__TLA__SubsetEq @ THF__x @ THF__y ) <=>
      ( ! [ THF__z: $i ] :
        ( ( thf__TLA__Mem @ THF__z @ THF__x ) =>
          ( thf__TLA__Mem @ THF__z @ THF__y ) ) ) ) )).

thf(defn_thf__Restrict, type, ( thf__Restrict: $i > $i > $i )).

thf(defn_thf__Range, type, ( thf__Range: $i > $i )).

thf(defn_thf__Inverse, type, ( thf__Inverse: $i > $i > $i > $i )).

thf(defn_thf__Injection, type, ( thf__Injection: $i > $i > $i )).

thf(defn_thf__Surjection, type, ( thf__Surjection: $i > $i > $i )).

thf(defn_thf__Bijection, type, ( thf__Bijection: $i > $i > $i )).

thf(defn_thf__ExistsInjection, type, ( thf__ExistsInjection: $i > $i > $i )).

thf(defn_thf__ExistsSurjection, type, ( thf__ExistsSurjection: $i > $i > $i )).

thf(defn_thf__ExistsBijection, type, ( thf__ExistsBijection: $i > $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__NatInductiveDefHypothesis, type,
  ( thf__NatInductiveDefHypothesis: $i > $i > ( $i > $i > $i ) > $i )).

thf(defn_thf__NatInductiveDefConclusion, type,
  ( thf__NatInductiveDefConclusion: $i > $i > ( $i > $i > $i ) > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__FiniteNatInductiveDefHypothesis, type,
  ( thf__FiniteNatInductiveDefHypothesis: $i > $i > ( $i > $i > $i ) > $i >
  $i > $i )).

thf(defn_thf__FiniteNatInductiveDefConclusion, type,
  ( thf__FiniteNatInductiveDefConclusion: $i > $i > ( $i > $i > $i ) > $i >
  $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__IsTransitivelyClosedOn, type,
  ( thf__IsTransitivelyClosedOn: $i > $i > $i )).

thf(defn_thf__IsWellFoundedOn, type, ( thf__IsWellFoundedOn: $i > $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__SetLessThan, type, ( thf__SetLessThan: $i > $i > $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__WFDefOn, type, ( thf__WFDefOn: $i > $i > ( $i > $i > $i ) >
  $i )).

thf(defn_thf__OpDefinesFcn, type, ( thf__OpDefinesFcn: $i > $i > ( $i > $i >
  $i ) > $i )).

thf(defn_thf__WFInductiveDefines, type, ( thf__WFInductiveDefines: $i > $i >
  ( $i > $i > $i ) > $i )).

thf(defn_thf__WFInductiveUnique, type, ( thf__WFInductiveUnique: $i > ( $i >
  $i > $i ) > $i )).

%---- hidden fact

%---- hidden fact

thf(defn_thf__TransitiveClosureOn, type, ( thf__TransitiveClosureOn: $i >
  $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__OpToRel, type, ( thf__OpToRel: ( $i > $i > $i ) > $i > $i )).

%---- hidden fact

thf(defn_thf__PreImage, type, ( thf__PreImage: ( $i > $i ) > $i > $i > $i )).

%---- hidden fact

thf(defn_thf__LexPairOrdering, type, ( thf__LexPairOrdering: $i > $i > $i >
  $i > $i )).

%---- hidden fact

thf(defn_thf__LexProductOrdering, type, ( thf__LexProductOrdering: $i > $i >
  $i > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__T, type, ( thf__T: $i )).

thf(fact101, axiom, ( thf__TLA__SubsetEq @ thf__T @ thf__S )).

thf(fact102, axiom,
  ( ( thf__ExistsInjection @ thf__S @ thf__T ) = thf__TLA__Tt_Idv )).

%---- hidden fact

thf(fresh_thf__F, type, ( thf__F: $i )).

thf(fact105, axiom,
  ( thf__TLA__Mem @ thf__F @ ( thf__Injection @ thf__S @ thf__T ) )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fresh_thf__Y, type, ( thf__Y: $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__Ci, type, ( thf__Ci: $i )).

%---- hidden fact

%---- hidden fact

thf(defn_thf__f0, type, ( thf__f0: $i )).

thf(defn_thf__Def, type, ( thf__Def: $i > $i > $i )).

thf(defn_thf__f, type, ( thf__f: $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fact124, axiom,
  ( ( thf__NatInductiveDefHypothesis @ thf__f @ thf__f0 @ thf__Def ) =
    thf__TLA__Tt_Idv )).

thf(fact125, axiom,
  ( ! [ THF__Def: $i > $i > $i, THF__f: $i, THF__f0: $i ] :
    ( ( ( ( thf__NatInductiveDefHypothesis @ THF__f @ THF__f0 @ THF__Def ) =
          thf__TLA__Tt_Idv ) )  =>
        ( ( thf__NatInductiveDefConclusion @ THF__f @ THF__f0 @ THF__Def ) =
          thf__TLA__Tt_Idv ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ( thf__NatInductiveDefConclusion @ thf__f @ thf__f0 @ thf__Def ) =
    thf__TLA__Tt_Idv )).

