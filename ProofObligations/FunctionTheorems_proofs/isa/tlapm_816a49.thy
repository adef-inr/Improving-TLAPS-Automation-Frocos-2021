(* automatically generated -- do not edit manually *)
theory tlapm_816a49 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs.tla", line 479, characters 53-54 *)
lemma ob'1: (* 92c15f7a335816a35b29552dcafbdc75 *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
(* usable definition NatInductiveDefHypothesis suppressed *)
(* usable definition NatInductiveDefConclusion suppressed *)
(* usable definition FiniteNatInductiveDefHypothesis suppressed *)
(* usable definition FiniteNatInductiveDefConclusion suppressed *)
(* usable definition IsTransitivelyClosedOn suppressed *)
(* usable definition IsWellFoundedOn suppressed *)
(* usable definition SetLessThan suppressed *)
(* usable definition WFDefOn suppressed *)
(* usable definition OpDefinesFcn suppressed *)
(* usable definition WFInductiveDefines suppressed *)
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition OpToRel suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
fixes S
fixes T
assumes v'97: "(((T) \<subseteq> (S)))"
assumes v'98: "((ExistsInjection ((S), (T))))"
fixes F
assumes F_in : "(F \<in> ((Injection ((S), (T)))))"
fixes Y
(* usable definition Ci suppressed *)
(* usable definition f0 suppressed *)
(* usable definition Def suppressed *)
(* usable definition f suppressed *)
assumes v'119: "((NatInductiveDefHypothesis ((f), (a_f0a), (Def))))"
assumes v'120: "((\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. (\<And> a_f0a_1 :: c. (((NatInductiveDefHypothesis ((f_1), (a_f0a_1), (Def_1)))) \<Longrightarrow> ((NatInductiveDefConclusion ((f_1), (a_f0a_1), (Def_1)))))))))"
shows "((NatInductiveDefConclusion ((f), (a_f0a), (Def))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
