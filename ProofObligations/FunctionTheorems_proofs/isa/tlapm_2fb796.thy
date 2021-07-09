(* automatically generated -- do not edit manually *)
theory tlapm_2fb796 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs.tla", line 518, characters 11-12 *)
lemma ob'3: (* 347ebdb978387a73b3f7d25c96569c4b *)
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
(* usable definition Prop suppressed *)
assumes v'120: "((Prop (((0)))))"
assumes v'121: "((\<And> i :: c. i \<in> (Nat) \<Longrightarrow> (((Prop ((i)))) \<Longrightarrow> ((Prop (((arith_add ((i), ((Succ[0])))))))))))"
assumes v'122: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n \<in> (Nat) : ((((P ((n)))) \<Rightarrow> ((P (((arith_add ((n), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P ((n)))))))))"
shows "(\<forall> i \<in> (Nat) : ((Prop ((i)))))"(is "PROP ?ob'3")
proof -
show "PROP ?ob'3"
using assms by auto
qed
end
