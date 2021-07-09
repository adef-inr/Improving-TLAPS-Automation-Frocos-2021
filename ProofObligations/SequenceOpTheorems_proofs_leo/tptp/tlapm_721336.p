%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #1
%---- Generated from file "./Modules/SequenceOpTheorems_proofs_leo.tla", line 799, characters 3-4

%---- Hypotheses

thf(fresh_thf__TLA__FunApp, type, ( thf__TLA__FunApp: $i > $i > $i )).

thf(fresh_thf__TLA__FunDom, type, ( thf__TLA__FunDom: $i > $i )).

thf(fresh_thf__TLA__FunFcn, type, ( thf__TLA__FunFcn: $i > ( $i > $i ) > $i )).

thf(fresh_thf__TLA__FunIsafcn, type, ( thf__TLA__FunIsafcn: $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__Seq, type, ( thf__TLA__Seq: $i > $i )).

thf(fresh_thf__TLA__Tail, type, ( thf__TLA__Tail: $i > $i )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fresh_thf__TLA__Tuple_0, type, ( thf__TLA__Tuple_0: $i )).

thf(fact9, axiom, ( thf__TLA__FunIsafcn @ thf__TLA__Tuple_0 )).

thf(fact10, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact11, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact12, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

thf(fact13, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact14, axiom,
  ( ! [ THF__s: $i, THF__seq: $i ] :
    ( ( thf__TLA__Mem @ THF__seq @ ( thf__TLA__Seq @ THF__s ) ) =>
      ( thf__TLA__Mem @ ( thf__TLA__Tail @ THF__seq ) @
        ( thf__TLA__Seq @ THF__s ) ) ) )).

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

thf(defn_thf__OpDefinesFcn, type, ( thf__OpDefinesFcn: $i > $i > ( $i > $i >
  $i ) > $i )).

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

thf(defn_thf__StrictPrefixesDetermineDef, type,
  ( thf__StrictPrefixesDetermineDef: $i > ( $i > $i > $i ) > $i )).

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

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__Def, type, ( thf__Def: $i > $i > $i )).

thf(fresh_thf__f, type, ( thf__f: $i )).

thf(fresh_thf__f0, type, ( thf__f0: $i )).

thf(fact198, axiom,
  ( ( thf__TailInductiveDefHypothesis @ thf__f @ thf__S @ thf__f0 @ thf__Def ) =
    thf__TLA__Tt_Idv )).

%---- hidden fact

%---- hidden fact

thf(fact201, axiom,
  ( ( thf__StrictSuffixesDetermineDef @ thf__S @
      ( ^ [ THF__h: $i, THF__s: $i ] :
        ( $ite(( THF__s = thf__TLA__Tuple_0 ), thf__f0,
            ( thf__Def @
              ( thf__TLA__FunApp @ THF__h @ ( thf__TLA__Tail @ THF__s ) ) @
              THF__s )) ) ) ) = thf__TLA__Tt_Idv )).

thf(fact202, axiom,
  ( ( thf__OpDefinesFcn @ thf__f @ ( thf__TLA__Seq @ thf__S ) @
      ( ^ [ THF__h: $i, THF__s: $i ] :
        ( $ite(( THF__s = thf__TLA__Tuple_0 ), thf__f0,
            ( thf__Def @
              ( thf__TLA__FunApp @ THF__h @ ( thf__TLA__Tail @ THF__s ) ) @
              THF__s )) ) ) ) = thf__TLA__Tt_Idv )).

thf(fact203, axiom,
  ( ! [ THF__S: $i, THF__Def: $i > $i > $i, THF__f: $i ] :
    ( ( ( ( thf__StrictSuffixesDetermineDef @ THF__S @ THF__Def ) =
          thf__TLA__Tt_Idv ) &
        ( ( thf__OpDefinesFcn @ THF__f @ ( thf__TLA__Seq @ THF__S ) @
            THF__Def ) = thf__TLA__Tt_Idv ) )  =>
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
              ( thf__TLA__FunApp @ thf__f @ ( thf__TLA__Tail @ THF__s ) ) @
              THF__s )) ) ) ) )).

