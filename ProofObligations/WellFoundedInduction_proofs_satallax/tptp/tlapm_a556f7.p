%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #1
%---- Generated from file "./Modules/WellFoundedInduction_proofs_satallax.tla", line 321, characters 1-13

%---- Hypotheses

thf(fresh_thf__TLA__Cap, type, ( thf__TLA__Cap: $i > $i > $i )).

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

thf(fresh_thf__TLA__Product_2, type, ( thf__TLA__Product_2: $i > $i > $i )).

thf(fresh_thf__TLA__Range, type, ( thf__TLA__Range: $i > $i > $i )).

thf(fresh_thf__TLA__SubsetEq, type, ( thf__TLA__SubsetEq: $i > $i > $o )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_2, type, ( thf__TLA__Tuple_2: $i > $i > $i )).

thf(fact16, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( thf__TLA__SubsetEq @ THF__x @ THF__y ) <=>
      ( ! [ THF__z: $i ] :
        ( ( thf__TLA__Mem @ THF__z @ THF__x ) =>
          ( thf__TLA__Mem @ THF__z @ THF__y ) ) ) ) )).

thf(fact17, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Cap @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) &
        ( thf__TLA__Mem @ THF__x @ THF__b ) ) ) )).

thf(fact18, axiom,
  ( ! [ THF__s1: $i, THF__s2: $i, THF__t: $i ] :
    ( ( thf__TLA__Mem @ THF__t @ ( thf__TLA__Product_2 @ THF__s1 @ THF__s2 ) ) <=>
      ( ? [ THF__x1: $i, THF__x2: $i ] :
        ( ( THF__t = ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) &
          ( thf__TLA__Mem @ THF__x1 @ THF__s1 ) &
          ( thf__TLA__Mem @ THF__x2 @ THF__s2 ) ) ) ) )).

thf(fact19, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( thf__TLA__FunIsafcn @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) )).

thf(fact20, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunDom @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) =
      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__TLA__IntLit_2 ) ) )).

thf(fact21, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_1 ) = THF__x1 ) )).

thf(fact22, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_2 ) = THF__x2 ) )).

thf(fact23, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact24, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact25, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact26, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact27, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact28, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact29, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact30, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact31, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_0 )).

thf(fact32, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_2 @ thf__TLA__IntSet )).

thf(fact33, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_2 )).

thf(fact34, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_2 )).

thf(fact35, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_2 )).

thf(fact36, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact37, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact38, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact39, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

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

thf(fact80, axiom,
  ( ! [ THF__R: $i, THF__S: $i ] :
    ( ( thf__TLA__SubsetEq @
        ( thf__TLA__Cap @ THF__R @ ( thf__TLA__Product_2 @ THF__S @ THF__S ) ) @
        ( thf__TransitiveClosureOn @ THF__R @ THF__S ) ) &
      ( ( thf__IsTransitivelyClosedOn @
          ( thf__TransitiveClosureOn @ THF__R @ THF__S ) @ THF__S ) =
        thf__TLA__Tt_Idv ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ! [ THF__R: $i, THF__S: $i ] :
    ( ( thf__TLA__SubsetEq @
        ( thf__TLA__Cap @ THF__R @ ( thf__TLA__Product_2 @ THF__S @ THF__S ) ) @
        ( thf__TransitiveClosureOn @ THF__R @ THF__S ) ) &
      ( ( thf__IsTransitivelyClosedOn @
          ( thf__TransitiveClosureOn @ THF__R @ THF__S ) @ THF__S ) =
        thf__TLA__Tt_Idv ) ) )).

