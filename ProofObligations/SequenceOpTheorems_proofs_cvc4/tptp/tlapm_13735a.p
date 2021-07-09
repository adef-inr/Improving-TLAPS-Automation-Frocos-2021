%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #1
%---- Generated from file "./Modules/SequenceOpTheorems_proofs_cvc4.tla", line 471, characters 3-4

%---- Hypotheses

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

thf(fresh_thf__TLA__Seq, type, ( thf__TLA__Seq: $i > $i )).

thf(fresh_thf__TLA__SetSt, type, ( thf__TLA__SetSt: $i > ( $i > $o ) > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_2, type, ( thf__TLA__Tuple_2: $i > $i > $i )).

thf(fact16, axiom,
  ( ! [ THF__P: $i > $o ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__SetSt @ THF__a @ THF__P ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ THF__a ) & ( THF__P @ THF__x ) ) ) ) )).

thf(fact17, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( thf__TLA__FunIsafcn @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) )).

thf(fact18, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunDom @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) =
      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__TLA__IntLit_2 ) ) )).

thf(fact19, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_1 ) = THF__x1 ) )).

thf(fact20, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_2 ) = THF__x2 ) )).

thf(fact21, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact22, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact23, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact24, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact25, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact26, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact27, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact28, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact29, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_0 )).

thf(fact30, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_2 @ thf__TLA__IntSet )).

thf(fact31, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_2 )).

thf(fact32, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_2 )).

thf(fact33, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_2 )).

thf(fact34, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact35, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact36, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact37, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

thf(fact38, axiom,
  ( ! [ THF__s1: $i, THF__s2: $i, THF__t: $i ] :
    ( ( thf__TLA__Mem @ THF__t @ ( thf__TLA__Product_2 @ THF__s1 @ THF__s2 ) ) <=>
      ( ? [ THF__x1: $i, THF__x2: $i ] :
        ( ( THF__t = ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) &
          ( thf__TLA__Mem @ THF__x1 @ THF__s1 ) &
          ( thf__TLA__Mem @ THF__x2 @ THF__s2 ) ) ) ) )).

thf(defn_thf__Restrict, type, ( thf__Restrict: $i > $i > $i )).

thf(defn_thf__Range, type, ( thf__Range: $i > $i )).

thf(defn_thf__Inverse, type, ( thf__Inverse: $i > $i > $i > $i )).

thf(defn_thf__Injection, type, ( thf__Injection: $i > $i > $i )).

thf(defn_thf__Surjection, type, ( thf__Surjection: $i > $i > $i )).

thf(defn_thf__Bijection, type, ( thf__Bijection: $i > $i > $i )).

thf(defn_thf__ExistsInjection, type, ( thf__ExistsInjection: $i > $i > $i )).

thf(defn_thf__ExistsSurjection, type, ( thf__ExistsSurjection: $i > $i > $i )).

thf(defn_thf__ExistsBijection, type, ( thf__ExistsBijection: $i > $i > $i )).

thf(defn_thf__Cons, type, ( thf__Cons: $i > $i > $i )).

thf(defn_thf__InsertAt, type, ( thf__InsertAt: $i > $i > $i > $i )).

thf(defn_thf__RemoveAt, type, ( thf__RemoveAt: $i > $i > $i )).

thf(defn_thf__Front, type, ( thf__Front: $i > $i )).

thf(defn_thf__Last, type, ( thf__Last: $i > $i )).

thf(defn_thf__Reverse, type, ( thf__Reverse: $i > $i )).

thf(defn_thf__IsPrefix, type, ( thf__IsPrefix: $i > $i > $i )).

thf(defn_thf__IsStrictPrefix, type, ( thf__IsStrictPrefix: $i > $i > $i )).

thf(defn_thf__IsSuffix, type, ( thf__IsSuffix: $i > $i > $i )).

thf(defn_thf__IsStrictSuffix, type, ( thf__IsStrictSuffix: $i > $i > $i )).

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

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fresh_thf__P, type, ( thf__P: $i > $i )).

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fact192, axiom,
  ( ! [ THF__t: $i ] :
    ( ( thf__TLA__Mem @ THF__t @ ( thf__TLA__Seq @ thf__S ) ) =>
      ( ( ! [ THF__s: $i ] :
          ( ( thf__TLA__Mem @ THF__s @ ( thf__TLA__Seq @ thf__S ) ) =>
            ( ( ( thf__IsStrictPrefix @ THF__s @ THF__t ) = thf__TLA__Tt_Idv ) =>
              ( ( thf__P @ THF__s ) = thf__TLA__Tt_Idv ) ) ) ) =>
        ( ( thf__P @ THF__t ) = thf__TLA__Tt_Idv ) ) ) )).

thf(fact193, axiom,
  ( ! [ THF__P: $i > $i, THF__R: $i, THF__S: $i ] :
    ( ( ( ( thf__IsWellFoundedOn @ THF__R @ THF__S ) = thf__TLA__Tt_Idv ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ THF__S ) =>
            ( ( ! [ THF__y: $i ] :
                ( ( thf__TLA__Mem @ THF__y @
                    ( thf__TLA__SetSt @ THF__S @
                      ( ^ [ THF__y_1: $i ] :
                        ( thf__TLA__Mem @
                          ( thf__TLA__Tuple_2 @ THF__y_1 @ THF__x ) @ THF__R ) ) ) ) =>
                  ( ( THF__P @ THF__y ) = thf__TLA__Tt_Idv ) ) ) =>
              ( ( THF__P @ THF__x ) = thf__TLA__Tt_Idv ) ) ) ) )  =>
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ THF__S ) =>
            ( ( THF__P @ THF__x ) = thf__TLA__Tt_Idv ) ) ) ) )).

thf(fact194, axiom,
  ( ! [ THF__S: $i ] :
    ( ( thf__IsWellFoundedOn @
        ( thf__TLA__SetSt @
          ( thf__TLA__Product_2 @ ( thf__TLA__Seq @ THF__S ) @
            ( thf__TLA__Seq @ THF__S ) ) @
          ( ^ [ THF__ss: $i ] :
            ( ( thf__IsStrictPrefix @
                ( thf__TLA__FunApp @ THF__ss @ thf__TLA__IntLit_1 ) @
                ( thf__TLA__FunApp @ THF__ss @ thf__TLA__IntLit_2 ) ) =
              thf__TLA__Tt_Idv ) ) ) @ ( thf__TLA__Seq @ THF__S ) ) =
      thf__TLA__Tt_Idv ) )).

%---- Goal
thf(goal, conjecture,
  ( ! [ THF__s: $i ] :
    ( ( thf__TLA__Mem @ THF__s @ ( thf__TLA__Seq @ thf__S ) ) =>
      ( ( thf__P @ THF__s ) = thf__TLA__Tt_Idv ) ) )).

