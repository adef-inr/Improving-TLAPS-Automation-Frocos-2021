%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #9
%---- Generated from file "./Modules/FiniteSetTheorems_proofs_zipper.tla", line 614, characters 3-4

%---- Hypotheses

thf(fresh_thf__TLA__BoolSet, type, ( thf__TLA__BoolSet: $i )).

thf(fresh_thf__TLA__Cap, type, ( thf__TLA__Cap: $i > $i > $i )).

thf(fresh_thf__TLA__Cast_Bool, type, ( thf__TLA__Cast_Bool: $o > $i )).

thf(fresh_thf__TLA__FunApp, type, ( thf__TLA__FunApp: $i > $i > $i )).

thf(fresh_thf__TLA__FunDom, type, ( thf__TLA__FunDom: $i > $i )).

thf(fresh_thf__TLA__FunFcn, type, ( thf__TLA__FunFcn: $i > ( $i > $i ) > $i )).

thf(fresh_thf__TLA__FunIsafcn, type, ( thf__TLA__FunIsafcn: $i > $o )).

thf(fresh_thf__TLA__IntLit_0, type, ( thf__TLA__IntLit_0: $i )).

thf(fresh_thf__TLA__IntLit_1, type, ( thf__TLA__IntLit_1: $i )).

thf(fresh_thf__TLA__IntLit_2, type, ( thf__TLA__IntLit_2: $i )).

thf(fresh_thf__TLA__IntSet, type, ( thf__TLA__IntSet: $i )).

thf(fresh_thf__TLA__Lteq, type, ( thf__TLA__Lteq: $i > $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__NatSet, type, ( thf__TLA__NatSet: $i )).

thf(fresh_thf__TLA__Product_2, type, ( thf__TLA__Product_2: $i > $i > $i )).

thf(fresh_thf__TLA__Range, type, ( thf__TLA__Range: $i > $i > $i )).

thf(fresh_thf__TLA__SubsetEq, type, ( thf__TLA__SubsetEq: $i > $i > $o )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_2, type, ( thf__TLA__Tuple_2: $i > $i > $i )).

thf(fact19, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) <=>
      ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ THF__x ) ) ) )).

thf(fact20, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact21, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact22, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact23, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact24, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact25, axiom,
  ( ( ( thf__TLA__Cast_Bool @ $true ) = thf__TLA__Tt_Idv ) &
    ( ( thf__TLA__Cast_Bool @ $false ) != thf__TLA__Tt_Idv ) )).

thf(fact26, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__BoolSet ) <=>
      ( ? [ THF__y: $o ] : ( THF__x = ( thf__TLA__Cast_Bool @ THF__y ) ) ) ) )).

thf(fact27, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( thf__TLA__SubsetEq @ THF__x @ THF__y ) <=>
      ( ! [ THF__z: $i ] :
        ( ( thf__TLA__Mem @ THF__z @ THF__x ) =>
          ( thf__TLA__Mem @ THF__z @ THF__y ) ) ) ) )).

thf(fact28, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Cap @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) &
        ( thf__TLA__Mem @ THF__x @ THF__b ) ) ) )).

thf(fact29, axiom,
  ( ! [ THF__s1: $i, THF__s2: $i, THF__t: $i ] :
    ( ( thf__TLA__Mem @ THF__t @ ( thf__TLA__Product_2 @ THF__s1 @ THF__s2 ) ) <=>
      ( ? [ THF__x1: $i, THF__x2: $i ] :
        ( ( THF__t = ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) &
          ( thf__TLA__Mem @ THF__x1 @ THF__s1 ) &
          ( thf__TLA__Mem @ THF__x2 @ THF__s2 ) ) ) ) )).

thf(fact30, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( thf__TLA__FunIsafcn @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) )).

thf(fact31, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunDom @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) =
      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__TLA__IntLit_2 ) ) )).

thf(fact32, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_1 ) = THF__x1 ) )).

thf(fact33, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_2 ) = THF__x2 ) )).

thf(fact34, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact35, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact36, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact37, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact38, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact39, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact40, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_1 )).

thf(fact41, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_2 @ thf__TLA__IntSet )).

thf(fact42, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_2 )).

thf(fact43, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_2 )).

thf(fact44, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_2 )).

thf(fact45, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

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

thf(fresh_thf__S, type, ( thf__S: $i )).

%---- hidden fact

%---- hidden fact

thf(fact185, axiom,
  ( ! [ THF__T: $i ] :
    ( ( thf__TLA__Mem @ THF__T @ ( thf__FiniteSubsetsOf @ thf__S ) ) =>
      ( thf__TLA__Mem @ ( thf__Cardinality @ THF__T ) @ thf__TLA__NatSet ) ) )).

thf(fact186, axiom,
  ( ! [ THF__S: $i, THF__T: $i, THF__R: $i, THF__f: $i > $i ] :
    ( ( ( ! [ THF__s: $i ] :
          ( ( thf__TLA__Mem @ THF__s @ THF__S ) =>
            ( thf__TLA__Mem @ ( THF__f @ THF__s ) @ THF__T ) ) ) &
        ( ( thf__IsWellFoundedOn @ THF__R @ THF__T ) = thf__TLA__Tt_Idv ) )  =>
        ( ( thf__IsWellFoundedOn @
            ( thf__PreImage @ THF__f @ THF__S @ THF__R ) @ THF__S ) =
          thf__TLA__Tt_Idv ) ) )).

thf(fact187, axiom,
  ( ( thf__IsWellFoundedOn @
      ( thf__OpToRel @
        ( ^ [ THF__x1: $i, THF__x2: $i ] :
          ( thf__TLA__Cast_Bool @
            ( ( thf__TLA__Lteq @ THF__x1 @ THF__x2 ) & ( THF__x1 != THF__x2 ) ) ) ) @
        thf__TLA__NatSet ) @ thf__TLA__NatSet ) = thf__TLA__Tt_Idv )).

thf(fact188, axiom,
  ( thf__TLA__SubsetEq @
    ( thf__TLA__Cap @ ( thf__StrictSubsetOrdering @ thf__S ) @
      ( thf__TLA__Product_2 @ ( thf__FiniteSubsetsOf @ thf__S ) @
        ( thf__FiniteSubsetsOf @ thf__S ) ) ) @
    ( thf__PreImage @ thf__Cardinality @ ( thf__FiniteSubsetsOf @ thf__S ) @
      ( thf__OpToRel @
        ( ^ [ THF__x1: $i, THF__x2: $i ] :
          ( thf__TLA__Cast_Bool @
            ( ( thf__TLA__Lteq @ THF__x1 @ THF__x2 ) & ( THF__x1 != THF__x2 ) ) ) ) @
        thf__TLA__NatSet ) ) )).

thf(fact189, axiom,
  ( ! [ THF__S: $i, THF__R: $i, THF__RR: $i ] :
    ( ( ( thf__TLA__SubsetEq @
          ( thf__TLA__Cap @ THF__RR @
            ( thf__TLA__Product_2 @ THF__S @ THF__S ) ) @ THF__R ) &
        ( ( thf__IsWellFoundedOn @ THF__R @ THF__S ) = thf__TLA__Tt_Idv ) )  =>
        ( ( thf__IsWellFoundedOn @ THF__RR @ THF__S ) = thf__TLA__Tt_Idv ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ( thf__IsWellFoundedOn @ ( thf__StrictSubsetOrdering @ thf__S ) @
      ( thf__FiniteSubsetsOf @ thf__S ) ) = thf__TLA__Tt_Idv )).
