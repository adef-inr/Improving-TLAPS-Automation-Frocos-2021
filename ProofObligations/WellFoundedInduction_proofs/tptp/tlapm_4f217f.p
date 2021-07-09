%---- TLA+ Proof Manager 1.4.5 (build 33809)
%---- Proof obligation #4
%---- Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 265, characters 5-6

%---- Hypotheses

thf(fresh_thf__TLA__FunApp, type, ( thf__TLA__FunApp: $i > $i > $i )).

thf(fresh_thf__TLA__FunDom, type, ( thf__TLA__FunDom: $i > $i )).

thf(fresh_thf__TLA__FunFcn, type, ( thf__TLA__FunFcn: $i > ( $i > $i ) > $i )).

thf(fresh_thf__TLA__FunIsafcn, type, ( thf__TLA__FunIsafcn: $i > $o )).

thf(fresh_thf__TLA__Mem, type, ( thf__TLA__Mem: $i > $i > $o )).

thf(fresh_thf__TLA__Tt_Idv, type, ( thf__TLA__Tt_Idv: $i )).

thf(fact6, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i, THF__x: $i ] :
      ( ( thf__TLA__Mem @ THF__x @ THF__a ) =>
        ( ( thf__TLA__FunApp @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) @
            THF__x ) = ( THF__F @ THF__x ) ) ) ) )).

thf(fact7, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( thf__TLA__FunIsafcn @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) ) )).

thf(fact8, axiom,
  ( ! [ THF__f: $i, THF__g: $i ] :
    ( ( ( thf__TLA__FunIsafcn @ THF__f ) & ( thf__TLA__FunIsafcn @ THF__g ) &
        ( ( thf__TLA__FunDom @ THF__f ) = ( thf__TLA__FunDom @ THF__g ) ) &
        ( ! [ THF__x: $i ] :
          ( ( thf__TLA__Mem @ THF__x @ ( thf__TLA__FunDom @ THF__f ) ) =>
            ( ( thf__TLA__FunApp @ THF__f @ THF__x ) =
              ( thf__TLA__FunApp @ THF__g @ THF__x ) ) ) ) ) =>
      ( THF__f = THF__g ) ) )).

thf(fact9, axiom,
  ( ! [ THF__F: $i > $i ] :
    ( ! [ THF__a: $i ] :
      ( ( thf__TLA__FunDom @ ( thf__TLA__FunFcn @ THF__a @ THF__F ) ) =
        THF__a ) ) )).

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

thf(fresh_thf__Def, type, ( thf__Def: $i > $i > $i )).

thf(fresh_thf__R, type, ( thf__R: $i )).

thf(fresh_thf__S, type, ( thf__S: $i )).

thf(fresh_thf__f, type, ( thf__f: $i )).

thf(fact51, axiom,
  ( ( thf__IsWellFoundedOn @ thf__R @ thf__S ) = thf__TLA__Tt_Idv )).

thf(fact52, axiom,
  ( ( thf__IsTransitivelyClosedOn @ thf__R @ thf__S ) = thf__TLA__Tt_Idv )).

thf(fact53, axiom,
  ( ( thf__WFDefOn @ thf__R @ thf__S @ thf__Def ) = thf__TLA__Tt_Idv )).

thf(fact54, axiom,
  ( ( thf__OpDefinesFcn @ thf__f @ thf__S @ thf__Def ) = thf__TLA__Tt_Idv )).

thf(defn_thf__LT, type, ( thf__LT: $i > $i )).

%---- hidden fact

thf(defn_thf__ff, type, ( thf__ff: $i )).

%---- hidden fact

%---- hidden fact

thf(fact60, axiom,
  ( ! [ THF__x: $i ] :
    ( ( ( thf__TLA__Mem @ THF__x @ thf__S ) &
        ( ! [ THF__y: $i ] :
          ( ( thf__TLA__Mem @ THF__y @
              ( thf__SetLessThan @ THF__x @ thf__R @ thf__S ) ) =>
            ( ( thf__TLA__FunApp @ thf__ff @ THF__y ) =
              ( thf__Def @ thf__ff @ THF__y ) ) ) ) )  =>
        ( ( thf__TLA__FunApp @ thf__ff @ THF__x ) =
          ( thf__Def @ thf__ff @ THF__x ) ) ) )).

thf(fact61, axiom,
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
thf(goal, conjecture,
  ( ! [ THF__x: $i ] :
    ( ( thf__TLA__Mem @ THF__x @ thf__S ) =>
      ( ( thf__TLA__FunApp @ thf__ff @ THF__x ) =
        ( thf__Def @ thf__ff @ THF__x ) ) ) )).

