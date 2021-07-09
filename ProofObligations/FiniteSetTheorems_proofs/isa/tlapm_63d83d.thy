(* automatically generated -- do not edit manually *)
theory tlapm_63d83d imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 787, characters 12-13 *)
lemma ob'25: (* 928e5224fe12af6b5d0a861d76ceb715 *)
(* usable definition IsFiniteSet suppressed *)
(* usable definition Cardinality suppressed *)
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
(* usable definition FiniteSubsetsOf suppressed *)
(* usable definition StrictSubsetOrdering suppressed *)
fixes S
assumes v'143: "((IsFiniteSet ((S))))"
assumes v'144: "(\<forall> T \<in> (S) : ((IsFiniteSet ((T)))))"
(* usable definition P suppressed *)
assumes v'150: "((P (({}))))"
assumes v'151: "((\<And> U :: c. (\<And> x :: c. (((P ((U)))) \<Longrightarrow> ((((x) \<notin> (U))) \<Longrightarrow> ((P ((((U) \<union> ({(x)})))))))))))"
assumes v'152: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> P_1 :: c => c. (((P_1 (({})))) \<Longrightarrow> (((\<And> T :: c. (\<And> x :: c. (((IsFiniteSet ((T)))) \<Longrightarrow> (((P_1 ((T)))) \<Longrightarrow> ((((x) \<notin> (T))) \<Longrightarrow> ((P_1 ((((T) \<union> ({(x)})))))))))))) \<Longrightarrow> ((P_1 ((S_1))))))))))"
shows "((P ((S))))"(is "PROP ?ob'25")
proof -
show "PROP ?ob'25"
using assms by auto
qed
end
