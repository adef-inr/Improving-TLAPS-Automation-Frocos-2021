%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #15
%---- Generated from file "./Modules/FiniteSetTheorems_proofs_vampire.tla", line 642, characters 3-4

%---- Hypotheses

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__SetEnum_1, type, ( thf__TLA__SetEnum_1: $i > $i )).

thf(fresh_thf__TLA__SetMinus, type, ( thf__TLA__SetMinus: $i > $i > $i )).

thf(fresh_thf__TLA__Subset, type, ( thf__TLA__Subset: $i > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fact5, axiom,
  ( ! [ THF__a: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Subset @ THF__a ) ) <=>
      ( ! [ THF__y: $i ] :
        ( ( thf__TLA__Mem @ THF__y @ THF__x ) =>
          ( thf__TLA__Mem @ THF__y @ THF__a ) ) ) ) )).

thf(fact6, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__SetMinus @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) &
        ( ~ ( thf__TLA__Mem @ THF__x @ THF__b ) ) ) ) )).

thf(fact7, axiom,
  ( ! [ THF__a1: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__SetEnum_1 @ THF__a1 ) ) <=>
      ( THF__x = THF__a1 ) ) )).

thf(defn_thf__IsFiniteSet, type, ( thf__IsFiniteSet: $i > $i )).

thf(defn_thf__Cardinality, type, ( thf__Cardinality: $i > $i )).

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

thf(defn_thf__FiniteSubsetsOf, type, ( thf__FiniteSubsetsOf: $i > $i )).

thf(defn_thf__StrictSubsetOrdering, type, ( thf__StrictSubsetOrdering: $i >
  $i )).

%---- hidden fact

%---- hidden fact

thf(fresh_thf__P, type, ( thf__P: $i > $i )).

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fact147, axiom, ( ( thf__IsFiniteSet @ thf__S ) = thf__TLA__Tt_Idv )).

thf(fact148, axiom,
  ( ! [ THF__T: $i ] :
    ( ( ( thf__TLA__Mem @ THF__T @ ( thf__TLA__Subset @ thf__S ) ) &
        ( ! [ THF__U: $i ] :
          ( ( thf__TLA__Mem @ THF__U @
              ( thf__TLA__SetMinus @ ( thf__TLA__Subset @ THF__T ) @
                ( thf__TLA__SetEnum_1 @ THF__T ) ) ) =>
            ( ( thf__P @ THF__U ) = thf__TLA__Tt_Idv ) ) ) )  =>
        ( ( thf__P @ THF__T ) = thf__TLA__Tt_Idv ) ) )).

%---- hidden fact

thf(fact150, axiom,
  ( ! [ THF__S: $i ] :
    ( ( ( ( thf__IsFiniteSet @ THF__S ) = thf__TLA__Tt_Idv ) )  =>
        ( ( thf__FiniteSubsetsOf @ THF__S ) = ( thf__TLA__Subset @ THF__S ) ) ) )).

thf(fact151, axiom,
  ( ! [ THF__S: $i ] :
    ( ( thf__IsWellFoundedOn @ ( thf__StrictSubsetOrdering @ THF__S ) @
        ( thf__FiniteSubsetsOf @ THF__S ) ) = thf__TLA__Tt_Idv ) )).

thf(fact152, axiom,
  ( ! [ THF__T: $i ] :
    ( ( thf__TLA__Mem @ THF__T @ ( thf__TLA__Subset @ thf__S ) ) =>
      ( ( ! [ THF__U: $i ] :
          ( ( thf__TLA__Mem @ THF__U @
              ( thf__SetLessThan @ THF__T @
                ( thf__StrictSubsetOrdering @ thf__S ) @
                ( thf__TLA__Subset @ thf__S ) ) ) =>
            ( ( thf__P @ THF__U ) = thf__TLA__Tt_Idv ) ) ) =>
        ( ( thf__P @ THF__T ) = thf__TLA__Tt_Idv ) ) ) )).

thf(fact153, axiom,
  ( ! [ THF__P: $i > $i, THF__R: $i, THF__S: $i ] :
    ( ( ( ( thf__IsWellFoundedOn @ THF__R @ THF__S ) = thf__TLA__Tt_Idv ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ THF__S ) =>
            ( ( ! [ THF__y: $i ] :
                ( ( thf__TLA__Mem @ THF__y @
                    ( thf__SetLessThan @ THF__x @ THF__R @ THF__S ) ) =>
                  ( ( THF__P @ THF__y ) = thf__TLA__Tt_Idv ) ) ) =>
              ( ( THF__P @ THF__x ) = thf__TLA__Tt_Idv ) ) ) ) )  =>
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ THF__S ) =>
            ( ( THF__P @ THF__x ) = thf__TLA__Tt_Idv ) ) ) ) )).

%---- Goal
thf(goal, conjecture, ( ( thf__P @ thf__S ) = thf__TLA__Tt_Idv )).

