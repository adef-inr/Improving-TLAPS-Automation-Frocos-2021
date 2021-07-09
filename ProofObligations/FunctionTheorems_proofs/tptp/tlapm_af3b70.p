%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #7
%---- Generated from file "./Modules/FunctionTheorems_proofs.tla", line 767, characters 13-14

%---- Hypotheses

thf(fresh_thf__TLA__IntLit_0, type, ( thf__TLA__IntLit_0: $i )).

thf(fresh_thf__TLA__IntLit_1, type, ( thf__TLA__IntLit_1: $i )).

thf(fresh_thf__TLA__IntSet, type, ( thf__TLA__IntSet: $i )).

thf(fresh_thf__TLA__Lteq, type, ( thf__TLA__Lteq: $i > $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__NatSet, type, ( thf__TLA__NatSet: $i )).

thf(fresh_thf__TLA__Plus, type, ( thf__TLA__Plus: $i > $i > $i )).

thf(fresh_thf__TLA__Range, type, ( thf__TLA__Range: $i > $i > $i )).

thf(fresh_thf__TLA__SetEnum_0, type, ( thf__TLA__SetEnum_0: $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fact10, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) <=>
      ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ THF__x ) ) ) )).

thf(fact11, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact12, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact13, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact14, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact15, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact16, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__IntSet ) ) )).

thf(fact17, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__NatSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__NatSet ) ) )).

thf(fact18, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact19, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact20, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_1 )).

thf(fact21, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

thf(fact22, axiom,
  ( ! [ THF__x: $i ] : ( ~ ( thf__TLA__Mem @ THF__x @ thf__TLA__SetEnum_0 ) ) )).

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

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fresh_thf__n, type, ( thf__n: $i )).

thf(fact125, axiom, ( thf__TLA__Mem @ thf__n @ thf__TLA__NatSet )).

thf(fresh_thf__m, type, ( thf__m: $i )).

thf(fact127, axiom, ( thf__TLA__Mem @ thf__m @ thf__TLA__NatSet )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fact136, axiom,
  ( ! [ THF__P: $i > $i ] :
    ( ( ( ( THF__P @ thf__TLA__IntLit_0 ) = thf__TLA__Tt_Idv ) &
        ( ! [ THF__n: $i ] :
          ( ( thf__TLA__Mem @ THF__n @ thf__TLA__NatSet ) =>
            ( ( ( THF__P @ THF__n ) = thf__TLA__Tt_Idv ) =>
              ( ( THF__P @ ( thf__TLA__Plus @ THF__n @ thf__TLA__IntLit_1 ) ) =
                thf__TLA__Tt_Idv ) ) ) ) )  =>
        ( ! [ THF__n: $i ] :
          ( ( thf__TLA__Mem @ THF__n @ thf__TLA__NatSet ) =>
            ( ( THF__P @ THF__n ) = thf__TLA__Tt_Idv ) ) ) ) )).

thf(fact137, axiom,
  ( ! [ THF__nn: $i ] :
    ( ( thf__TLA__Mem @ THF__nn @ thf__TLA__NatSet ) =>
      ( ( ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ THF__nn ) &
          ( thf__TLA__IntLit_0 != THF__nn ) ) =>
        ( ( thf__Injection @
            ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__nn ) @
            ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__TLA__IntLit_0 ) ) =
          thf__TLA__SetEnum_0 ) ) ) )).

thf(fact138, axiom,
  ( ! [ THF__mm: $i ] :
    ( ( ( thf__TLA__Mem @ THF__mm @ thf__TLA__NatSet ) &
        ( ! [ THF__nn: $i ] :
          ( ( thf__TLA__Mem @ THF__nn @ thf__TLA__NatSet ) =>
            ( ( ( thf__TLA__Lteq @ THF__mm @ THF__nn ) &
                ( THF__mm != THF__nn ) ) =>
              ( ! [ THF__x: $i ] :
                ( ( thf__TLA__Mem @ THF__x @
                    ( thf__Injection @
                      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__nn ) @
                      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__mm ) ) ) <=>
                  ( thf__TLA__Mem @ THF__x @ thf__TLA__SetEnum_0 ) ) ) ) ) ) )  =>
        ( ! [ THF__nn: $i ] :
          ( ( thf__TLA__Mem @ THF__nn @ thf__TLA__NatSet ) =>
            ( ( ( thf__TLA__Lteq @
                  ( thf__TLA__Plus @ THF__mm @ thf__TLA__IntLit_1 ) @ THF__nn ) &
                ( ( thf__TLA__Plus @ THF__mm @ thf__TLA__IntLit_1 ) !=
                  THF__nn ) ) =>
              ( ( thf__Injection @
                  ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__nn ) @
                  ( thf__TLA__Range @ thf__TLA__IntLit_1 @
                    ( thf__TLA__Plus @ THF__mm @ thf__TLA__IntLit_1 ) ) ) =
                thf__TLA__SetEnum_0 ) ) ) ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ! [ THF__mm: $i ] :
    ( ( thf__TLA__Mem @ THF__mm @ thf__TLA__NatSet ) =>
      ( ! [ THF__nn: $i ] :
        ( ( thf__TLA__Mem @ THF__nn @ thf__TLA__NatSet ) =>
          ( ( ( thf__TLA__Lteq @ THF__mm @ THF__nn ) & ( THF__mm != THF__nn ) ) =>
            ( ! [ THF__x: $i ] :
              ( ( thf__TLA__Mem @ THF__x @
                  ( thf__Injection @
                    ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__nn ) @
                    ( thf__TLA__Range @ thf__TLA__IntLit_1 @ THF__mm ) ) ) <=>
                ( thf__TLA__Mem @ THF__x @ thf__TLA__SetEnum_0 ) ) ) ) ) ) ) )).

