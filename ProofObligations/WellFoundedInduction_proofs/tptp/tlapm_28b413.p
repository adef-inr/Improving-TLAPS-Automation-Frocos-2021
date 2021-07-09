%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #8
%---- Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 474, characters 2-3

%---- Hypotheses

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

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

thf(fresh_thf__Def, type, ( thf__Def: $i > $i > $i )).

thf(fresh_thf__R, type, ( thf__R: $i )).

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__f, type, ( thf__f: $i )).

thf(fact51, axiom,
  ( ( thf__IsWellFoundedOn @ thf__R @ thf__S ) = thf__TLA__Tt_Idv )).

thf(fact52, axiom,
  ( ( thf__WFDefOn @ thf__R @ thf__S @ thf__Def ) = thf__TLA__Tt_Idv )).

thf(fact53, axiom,
  ( ( thf__OpDefinesFcn @ thf__f @ thf__S @ thf__Def ) = thf__TLA__Tt_Idv )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fact57, axiom,
  ( ( thf__IsTransitivelyClosedOn @
      ( thf__TransitiveClosureOn @ thf__R @ thf__S ) @ thf__S ) =
    thf__TLA__Tt_Idv )).

thf(fact58, axiom,
  ( ( thf__IsWellFoundedOn @ ( thf__TransitiveClosureOn @ thf__R @ thf__S ) @
      thf__S ) = thf__TLA__Tt_Idv )).

thf(fact59, axiom,
  ( ( thf__WFDefOn @ ( thf__TransitiveClosureOn @ thf__R @ thf__S ) @
      thf__S @ thf__Def ) = thf__TLA__Tt_Idv )).

thf(fact60, axiom,
  ( ! [ THF__Def: $i > $i > $i, THF__R: $i, THF__S: $i, THF__f: $i ] :
    ( ( ( ( thf__IsWellFoundedOn @ THF__R @ THF__S ) = thf__TLA__Tt_Idv ) &
        ( ( thf__IsTransitivelyClosedOn @ THF__R @ THF__S ) =
          thf__TLA__Tt_Idv ) &
        ( ( thf__WFDefOn @ THF__R @ THF__S @ THF__Def ) = thf__TLA__Tt_Idv ) &
        ( ( thf__OpDefinesFcn @ THF__f @ THF__S @ THF__Def ) =
          thf__TLA__Tt_Idv ) )  =>
        ( ( thf__WFInductiveDefines @ THF__f @ THF__S @ THF__Def ) =
          thf__TLA__Tt_Idv ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ( thf__WFInductiveDefines @ thf__f @ thf__S @ thf__Def ) =
    thf__TLA__Tt_Idv )).

