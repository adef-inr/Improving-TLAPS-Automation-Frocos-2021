%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #23
%---- Generated from file "./Modules/FiniteSetTheorems_proofs_zipper.tla", line 688, characters 12-13

%---- Hypotheses

thf(fresh_thf__TLA__Cap, type, ( thf__TLA__Cap: $i > $i > $i )).

thf(fresh_thf__TLA__Cup, type, ( thf__TLA__Cup: $i > $i > $i )).

thf(fresh_thf__TLA__IntLit_0, type, ( thf__TLA__IntLit_0: $i )).

thf(fresh_thf__TLA__IntSet, type, ( thf__TLA__IntSet: $i )).

thf(fresh_thf__TLA__Lteq, type, ( thf__TLA__Lteq: $i > $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__Minus, type, ( thf__TLA__Minus: $i > $i > $i )).

thf(fresh_thf__TLA__NatSet, type, ( thf__TLA__NatSet: $i )).

thf(fresh_thf__TLA__Plus, type, ( thf__TLA__Plus: $i > $i > $i )).

thf(fresh_thf__TLA__SetEnum_0, type, ( thf__TLA__SetEnum_0: $i )).

thf(fresh_thf__TLA__SetEnum_1, type, ( thf__TLA__SetEnum_1: $i > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fact12, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Cup @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) |
        ( thf__TLA__Mem @ THF__x @ THF__b ) ) ) )).

thf(fact13, axiom,
  ( ! [ THF__x: $i ] : ( ~ ( thf__TLA__Mem @ THF__x @ thf__TLA__SetEnum_0 ) ) )).

thf(fact14, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__IntSet ) ) )).

thf(fact15, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__NatSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__NatSet ) ) )).

thf(fact16, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) <=>
      ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ THF__x ) ) ) )).

thf(fact17, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact18, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact19, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact20, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact21, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact22, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Minus @ THF__x @ THF__y ) @
        thf__TLA__IntSet ) ) )).

thf(fact23, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Cap @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) &
        ( thf__TLA__Mem @ THF__x @ THF__b ) ) ) )).

thf(fact24, axiom,
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

%---- hidden fact

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fact164, axiom, ( ( thf__IsFiniteSet @ thf__S ) = thf__TLA__Tt_Idv )).

thf(fresh_thf__T, type, ( thf__T: $i )).

thf(fact166, axiom, ( ( thf__IsFiniteSet @ thf__T ) = thf__TLA__Tt_Idv )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fact171, axiom,
  ( ( thf__IsFiniteSet @ ( thf__TLA__Cup @ thf__S @ thf__TLA__SetEnum_0 ) ) =
    thf__TLA__Tt_Idv )).

thf(fact172, axiom,
  ( ( thf__Cardinality @ ( thf__TLA__Cup @ thf__S @ thf__TLA__SetEnum_0 ) ) =
    ( thf__TLA__Plus @ ( thf__Cardinality @ thf__S ) @
      ( thf__TLA__Minus @ ( thf__Cardinality @ thf__TLA__SetEnum_0 ) @
        ( thf__Cardinality @ ( thf__TLA__Cap @ thf__S @ thf__TLA__SetEnum_0 ) ) ) ) )).

thf(fact173, axiom,
  ( ! [ THF__A: $i, THF__x: $i ] :
    ( ( ( ( thf__IsFiniteSet @ THF__A ) = thf__TLA__Tt_Idv ) &
        ( ( ( thf__IsFiniteSet @ ( thf__TLA__Cup @ thf__S @ THF__A ) ) =
            thf__TLA__Tt_Idv ) &
          ( ( thf__Cardinality @ ( thf__TLA__Cup @ thf__S @ THF__A ) ) =
            ( thf__TLA__Plus @ ( thf__Cardinality @ thf__S ) @
              ( thf__TLA__Minus @ ( thf__Cardinality @ THF__A ) @
                ( thf__Cardinality @ ( thf__TLA__Cap @ thf__S @ THF__A ) ) ) ) ) ) &
        ( ~ ( thf__TLA__Mem @ THF__x @ THF__A ) ) )  =>
        ( ( ( thf__IsFiniteSet @
              ( thf__TLA__Cup @ thf__S @
                ( thf__TLA__Cup @ THF__A @ ( thf__TLA__SetEnum_1 @ THF__x ) ) ) ) =
            thf__TLA__Tt_Idv ) &
          ( ( thf__Cardinality @
              ( thf__TLA__Cup @ thf__S @
                ( thf__TLA__Cup @ THF__A @ ( thf__TLA__SetEnum_1 @ THF__x ) ) ) ) =
            ( thf__TLA__Plus @ ( thf__Cardinality @ thf__S ) @
              ( thf__TLA__Minus @
                ( thf__Cardinality @
                  ( thf__TLA__Cup @ THF__A @ ( thf__TLA__SetEnum_1 @ THF__x ) ) ) @
                ( thf__Cardinality @
                  ( thf__TLA__Cap @ thf__S @
                    ( thf__TLA__Cup @ THF__A @
                      ( thf__TLA__SetEnum_1 @ THF__x ) ) ) ) ) ) ) ) ) )).

thf(fact174, axiom,
  ( ! [ THF__S: $i ] :
    ( ( ( ( thf__IsFiniteSet @ THF__S ) = thf__TLA__Tt_Idv ) )  =>
        ! [ THF__P: $i > $i ] :
        ( ( ( ( THF__P @ thf__TLA__SetEnum_0 ) = thf__TLA__Tt_Idv ) &
            ( ! [ THF__T: $i, THF__x: $i ] :
              ( ( ( ( thf__IsFiniteSet @ THF__T ) = thf__TLA__Tt_Idv ) &
                  ( ( THF__P @ THF__T ) = thf__TLA__Tt_Idv ) &
                  ( ~ ( thf__TLA__Mem @ THF__x @ THF__T ) ) )  =>
                  ( ( THF__P @
                      ( thf__TLA__Cup @ THF__T @
                        ( thf__TLA__SetEnum_1 @ THF__x ) ) ) =
                    thf__TLA__Tt_Idv ) ) ) )  =>
              ( ( THF__P @ THF__S ) = thf__TLA__Tt_Idv ) ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ( ( thf__IsFiniteSet @ ( thf__TLA__Cup @ thf__S @ thf__T ) ) =
      thf__TLA__Tt_Idv ) &
    ( ( thf__Cardinality @ ( thf__TLA__Cup @ thf__S @ thf__T ) ) =
      ( thf__TLA__Plus @ ( thf__Cardinality @ thf__S ) @
        ( thf__TLA__Minus @ ( thf__Cardinality @ thf__T ) @
          ( thf__Cardinality @ ( thf__TLA__Cap @ thf__S @ thf__T ) ) ) ) ) )).

