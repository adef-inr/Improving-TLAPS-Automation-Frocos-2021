%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #8
%---- Generated from file "./Modules/WellFoundedInduction_proofs_vampire.tla", line 674, characters 7-8

%---- Hypotheses

thf(fresh_thf__TLA__FunApp, type, ( thf__TLA__FunApp: $i > $i > $i )).

thf(fresh_thf__TLA__FunDom, type, ( thf__TLA__FunDom: $i > $i )).

thf(fresh_thf__TLA__FunFcn, type, ( thf__TLA__FunFcn: $i > ( $i > $i ) > $i )).

thf(fresh_thf__TLA__FunIsafcn, type, ( thf__TLA__FunIsafcn: $i > $o )).

thf(fresh_thf__TLA__FunSet, type, ( thf__TLA__FunSet: $i > $i > $i )).

thf(fresh_thf__TLA__IntLit_0, type, ( thf__TLA__IntLit_0: $i )).

thf(fresh_thf__TLA__IntLit_1, type, ( thf__TLA__IntLit_1: $i )).

thf(fresh_thf__TLA__IntLit_2, type, ( thf__TLA__IntLit_2: $i )).

thf(fresh_thf__TLA__IntSet, type, ( thf__TLA__IntSet: $i )).

thf(fresh_thf__TLA__Lteq, type, ( thf__TLA__Lteq: $i > $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__NatSet, type, ( thf__TLA__NatSet: $i )).

thf(fresh_thf__TLA__Plus, type, ( thf__TLA__Plus: $i > $i > $i )).

thf(fresh_thf__TLA__Product_2, type, ( thf__TLA__Product_2: $i > $i > $i )).

thf(fresh_thf__TLA__Range, type, ( thf__TLA__Range: $i > $i > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_2, type, ( thf__TLA__Tuple_2: $i > $i > $i )).

thf(fact17, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) <=>
      ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ THF__x ) ) ) )).

thf(fact18, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact19, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact20, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact21, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact22, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact23, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__f: $i ] :
    ( ( thf__TLA__Mem @ THF__f @ ( thf__TLA__FunSet @ THF__a @ THF__b ) ) <=>
      ( ( thf__TLA__FunIsafcn @ THF__f ) &
        ( ( thf__TLA__FunDom @ THF__f ) = THF__a ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
            ( thf__TLA__Mem @ ( thf__TLA__FunApp @ THF__f @ THF__x ) @ THF__b ) ) ) ) ) )).

thf(fact24, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact25, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact26, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact27, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact28, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

thf(fact29, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact30, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact31, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_1 )).

thf(fact32, axiom,
  ( ! [ THF__s1: $i, THF__s2: $i, THF__t: $i ] :
    ( ( thf__TLA__Mem @ THF__t @ ( thf__TLA__Product_2 @ THF__s1 @ THF__s2 ) ) <=>
      ( ? [ THF__x1: $i, THF__x2: $i ] :
        ( ( THF__t = ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) &
          ( thf__TLA__Mem @ THF__x1 @ THF__s1 ) &
          ( thf__TLA__Mem @ THF__x2 @ THF__s2 ) ) ) ) )).

thf(fact33, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( thf__TLA__FunIsafcn @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) )).

thf(fact34, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunDom @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) ) =
      ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__TLA__IntLit_2 ) ) )).

thf(fact35, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_1 ) = THF__x1 ) )).

thf(fact36, axiom,
  ( ! [ THF__x1: $i, THF__x2: $i ] :
    ( ( thf__TLA__FunApp @ ( thf__TLA__Tuple_2 @ THF__x1 @ THF__x2 ) @
        thf__TLA__IntLit_2 ) = THF__x2 ) )).

thf(fact37, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_2 @ thf__TLA__IntSet )).

thf(fact38, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_2 )).

thf(fact39, axiom, ( thf__TLA__IntLit_1 != thf__TLA__IntLit_2 )).

thf(fact40, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_2 )).

thf(fact41, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__IntSet ) ) )).

thf(fact42, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__NatSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__NatSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Plus @ THF__x @ THF__y ) @
        thf__TLA__NatSet ) ) )).

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

thf(fresh_thf__R, type, ( thf__R: $i )).

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__n, type, ( thf__n: $i )).

thf(fact101, axiom, ( thf__TLA__Mem @ thf__n @ thf__TLA__NatSet )).

thf(fact102, axiom,
  ( ( thf__IsWellFoundedOn @ thf__R @ thf__S ) = thf__TLA__Tt_Idv )).

%---- hidden fact

thf(fresh_thf__m, type, ( thf__m: $i )).

thf(fact105, axiom, ( thf__TLA__Mem @ thf__m @ thf__TLA__NatSet )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(fact113, axiom,
  ( ( thf__IsWellFoundedOn @
      ( thf__LexPairOrdering @
        ( thf__LexProductOrdering @ thf__R @ thf__S @ thf__m ) @ thf__R @
        ( thf__TLA__FunSet @
          ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @ thf__S ) @
        thf__S ) @
      ( thf__TLA__Product_2 @
        ( thf__TLA__FunSet @
          ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @ thf__S ) @
        thf__S ) ) = thf__TLA__Tt_Idv )).

thf(fact114, axiom,
  ( ! [ THF__ss: $i ] :
    ( ( thf__TLA__Mem @ THF__ss @
        ( thf__TLA__FunSet @
          ( thf__TLA__Range @ thf__TLA__IntLit_1 @
            ( thf__TLA__Plus @ thf__m @ thf__TLA__IntLit_1 ) ) @ thf__S ) ) =>
      ( thf__TLA__Mem @
        ( thf__TLA__Tuple_2 @
          ( thf__TLA__FunFcn @
            ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @
            ( ^ [ THF__i: $i ] : ( thf__TLA__FunApp @ THF__ss @ THF__i ) ) ) @
          ( thf__TLA__FunApp @ THF__ss @
            ( thf__TLA__Plus @ thf__m @ thf__TLA__IntLit_1 ) ) ) @
        ( thf__TLA__Product_2 @
          ( thf__TLA__FunSet @
            ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @ thf__S ) @
          thf__S ) ) ) )).

thf(fact115, axiom,
  ( ! [ THF__S: $i, THF__T: $i, THF__R: $i, THF__f: $i > $i ] :
    ( ( ( ! [ THF__s: $i ] :
          ( ( thf__TLA__Mem @ THF__s @ THF__S ) =>
            ( thf__TLA__Mem @ ( THF__f @ THF__s ) @ THF__T ) ) ) &
        ( ( thf__IsWellFoundedOn @ THF__R @ THF__T ) = thf__TLA__Tt_Idv ) )  =>
        ( ( thf__IsWellFoundedOn @
            ( thf__PreImage @ THF__f @ THF__S @ THF__R ) @ THF__S ) =
          thf__TLA__Tt_Idv ) ) )).

%---- Goal
thf(goal, conjecture,
  ( ( thf__IsWellFoundedOn @
      ( thf__PreImage @
        ( ^ [ THF__ss: $i ] :
          ( thf__TLA__Tuple_2 @
            ( thf__TLA__FunFcn @
              ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @
              ( ^ [ THF__i: $i ] : ( thf__TLA__FunApp @ THF__ss @ THF__i ) ) ) @
            ( thf__TLA__FunApp @ THF__ss @
              ( thf__TLA__Plus @ thf__m @ thf__TLA__IntLit_1 ) ) ) ) @
        ( thf__TLA__FunSet @
          ( thf__TLA__Range @ thf__TLA__IntLit_1 @
            ( thf__TLA__Plus @ thf__m @ thf__TLA__IntLit_1 ) ) @ thf__S ) @
        ( thf__LexPairOrdering @
          ( thf__LexProductOrdering @ thf__R @ thf__S @ thf__m ) @ thf__R @
          ( thf__TLA__FunSet @
            ( thf__TLA__Range @ thf__TLA__IntLit_1 @ thf__m ) @ thf__S ) @
          thf__S ) ) @
      ( thf__TLA__FunSet @
        ( thf__TLA__Range @ thf__TLA__IntLit_1 @
          ( thf__TLA__Plus @ thf__m @ thf__TLA__IntLit_1 ) ) @ thf__S ) ) =
    thf__TLA__Tt_Idv )).

