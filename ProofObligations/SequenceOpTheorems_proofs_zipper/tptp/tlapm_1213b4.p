%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #18
%---- Generated from file "./Modules/SequenceOpTheorems_proofs_zipper.tla", line 852, characters 3-4

%---- Hypotheses

thf(fresh_thf__TLA__Choose, type, ( thf__TLA__Choose: ( $i > $o ) > $i )).

thf(fresh_thf__TLA__FunApp, type, ( thf__TLA__FunApp: $i > $i > $i )).

thf(fresh_thf__TLA__FunDom, type, ( thf__TLA__FunDom: $i > $i )).

thf(fresh_thf__TLA__FunFcn, type, ( thf__TLA__FunFcn: $i > ( $i > $i ) > $i )).

thf(fresh_thf__TLA__FunIsafcn, type, ( thf__TLA__FunIsafcn: $i > $o )).

thf(fresh_thf__TLA__IntLit_0, type, ( thf__TLA__IntLit_0: $i )).

thf(fresh_thf__TLA__IntLit_1, type, ( thf__TLA__IntLit_1: $i )).

thf(fresh_thf__TLA__IntSet, type, ( thf__TLA__IntSet: $i )).

thf(fresh_thf__TLA__Len, type, ( thf__TLA__Len: $i > $i )).

thf(fresh_thf__TLA__Lteq, type, ( thf__TLA__Lteq: $i > $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__Minus, type, ( thf__TLA__Minus: $i > $i > $i )).

thf(fresh_thf__TLA__Range, type, ( thf__TLA__Range: $i > $i > $i )).

thf(fresh_thf__TLA__Seq, type, ( thf__TLA__Seq: $i > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_0, type, ( thf__TLA__Tuple_0: $i )).

thf(fact16, axiom,
  ( ! [ THF__P: $i > $o ] :
    ( ! [ THF__x: $i ] :
      ( ( THF__P @ THF__x ) => ( THF__P @ ( thf__TLA__Choose @ THF__P ) ) ) ) )).

thf(fact17, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact18, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact19, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact20, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact21, axiom, ( thf__TLA__FunIsafcn @ thf__TLA__Tuple_0 )).

thf(fact22, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_0 @ thf__TLA__IntSet )).

thf(fact23, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_0 )).

thf(fact24, axiom,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__x ) ) )).

thf(fact25, axiom,
  ( ! [ THF__x: $i, THF__y: $i, THF__z: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__z @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__z ) ) =>
      ( thf__TLA__Lteq @ THF__x @ THF__z ) ) )).

thf(fact26, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) &
        ( thf__TLA__Lteq @ THF__x @ THF__y ) &
        ( thf__TLA__Lteq @ THF__y @ THF__x ) ) => ( THF__x = THF__y ) ) )).

thf(fact27, axiom,
  ( ! [ THF__x: $i, THF__y: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__y @ thf__TLA__IntSet ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Minus @ THF__x @ THF__y ) @
        thf__TLA__IntSet ) ) )).

thf(fact28, axiom, ( thf__TLA__Mem @ thf__TLA__IntLit_1 @ thf__TLA__IntSet )).

thf(fact29, axiom,
  ( thf__TLA__Lteq @ thf__TLA__IntLit_0 @ thf__TLA__IntLit_1 )).

thf(fact30, axiom, ( thf__TLA__IntLit_0 != thf__TLA__IntLit_1 )).

thf(fact31, axiom,
  ( ! [ THF__a: $i, THF__b: $i, THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__a @ thf__TLA__IntSet ) &
        ( thf__TLA__Mem @ THF__b @ thf__TLA__IntSet ) ) =>
      ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__Range @ THF__a @ THF__b ) ) <=>
        ( ( thf__TLA__Mem @ THF__x @ thf__TLA__IntSet ) &
          ( thf__TLA__Lteq @ THF__a @ THF__x ) &
          ( thf__TLA__Lteq @ THF__x @ THF__b ) ) ) ) )).

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

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__StrictSuffixesDetermineDef, type,
  ( thf__StrictSuffixesDetermineDef: $i > ( $i > $i > $i ) > $i )).

%---- hidden fact

%---- hidden fact

%---- hidden fact

%---- hidden fact

thf(defn_thf__TailInductiveDefHypothesis, type,
  ( thf__TailInductiveDefHypothesis: $i > $i > $i > ( $i > $i > $i ) > $i )).

thf(defn_thf__TailInductiveDefConclusion, type,
  ( thf__TailInductiveDefConclusion: $i > $i > $i > ( $i > $i > $i ) > $i )).

%---- hidden fact

%---- hidden fact

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__Def, type, ( thf__Def: $i > $i > $i )).

thf(fresh_thf__f, type, ( thf__f: $i )).

thf(fresh_thf__f0, type, ( thf__f0: $i )).

thf(fact216, axiom,
  ( thf__f =
    ( thf__TLA__Choose @
      ( ^ [ THF__g: $i ] :
        ( THF__g =
          ( thf__TLA__FunFcn @ ( thf__TLA__Seq @ thf__S ) @
            ( ^ [ THF__s: $i ] :
              ( $ite(( THF__s = thf__TLA__Tuple_0 ), thf__f0,
                  ( thf__Def @
                    ( thf__TLA__FunApp @ THF__g @ ( thf__Front @ THF__s ) ) @
                    THF__s )) ) ) ) ) ) ) )).

thf(fact217, axiom,
  ( ! [ THF__S: $i, THF__s: $i ] :
    ( ( ( thf__TLA__Mem @ THF__s @ ( thf__TLA__Seq @ THF__S ) ) )  =>
        ( ( ( thf__IsPrefix @ ( thf__Front @ THF__s ) @ THF__s ) =
            thf__TLA__Tt_Idv ) &
          ( ( THF__s != thf__TLA__Tuple_0 ) =>
            ( ( thf__IsStrictPrefix @ ( thf__Front @ THF__s ) @ THF__s ) =
              thf__TLA__Tt_Idv ) ) ) ) )).

thf(fact218, axiom,
  ( ! [ THF__S: $i, THF__seq: $i ] :
    ( ( ( thf__TLA__Mem @ THF__seq @ ( thf__TLA__Seq @ THF__S ) ) )  =>
        ( ( thf__TLA__Mem @ ( thf__Front @ THF__seq ) @
            ( thf__TLA__Seq @ THF__S ) ) &
          ( ( thf__TLA__Len @ ( thf__Front @ THF__seq ) ) =
            ( $ite(( THF__seq = thf__TLA__Tuple_0 ), thf__TLA__IntLit_0,
                ( thf__TLA__Minus @ ( thf__TLA__Len @ THF__seq ) @
                  thf__TLA__IntLit_1 )) ) ) &
          ( ! [ THF__i: $i ] :
            ( ( thf__TLA__Mem @ THF__i @
                ( thf__TLA__Range @ thf__TLA__IntLit_1 @
                  ( thf__TLA__Minus @ ( thf__TLA__Len @ THF__seq ) @
                    thf__TLA__IntLit_1 ) ) ) =>
              ( ( thf__TLA__FunApp @ ( thf__Front @ THF__seq ) @ THF__i ) =
                ( thf__TLA__FunApp @ THF__seq @ THF__i ) ) ) ) ) ) )).

thf(fact219, axiom,
  ( ! [ THF__S: $i, THF__Def: $i > $i > $i, THF__f: $i ] :
    ( ( ( ! [ THF__g: $i, THF__h: $i ] :
          ( ! [ THF__seq: $i ] :
            ( ( thf__TLA__Mem @ THF__seq @ ( thf__TLA__Seq @ THF__S ) ) =>
              ( ( ! [ THF__pre: $i ] :
                  ( ( thf__TLA__Mem @ THF__pre @ ( thf__TLA__Seq @ THF__S ) ) =>
                    ( ( ( thf__IsStrictPrefix @ THF__pre @ THF__seq ) =
                        thf__TLA__Tt_Idv ) =>
                      ( ( thf__TLA__FunApp @ THF__g @ THF__pre ) =
                        ( thf__TLA__FunApp @ THF__h @ THF__pre ) ) ) ) ) =>
                ( ( THF__Def @ THF__g @ THF__seq ) =
                  ( THF__Def @ THF__h @ THF__seq ) ) ) ) ) ) &
        ( THF__f =
          ( thf__TLA__Choose @
            ( ^ [ THF__g: $i ] :
              ( THF__g =
                ( thf__TLA__FunFcn @ ( thf__TLA__Seq @ THF__S ) @
                  ( ^ [ THF__x: $i ] : ( THF__Def @ THF__g @ THF__x ) ) ) ) ) ) ) )  =>
        ( THF__f =
          ( thf__TLA__FunFcn @ ( thf__TLA__Seq @ THF__S ) @
            ( ^ [ THF__x: $i ] : ( THF__Def @ THF__f @ THF__x ) ) ) ) ) )).

%---- Goal
thf(goal, conjecture,
  ( thf__f =
    ( thf__TLA__FunFcn @ ( thf__TLA__Seq @ thf__S ) @
      ( ^ [ THF__s: $i ] :
        ( $ite(( THF__s = thf__TLA__Tuple_0 ), thf__f0,
            ( thf__Def @
              ( thf__TLA__FunApp @ thf__f @ ( thf__Front @ THF__s ) ) @
              THF__s )) ) ) ) )).

