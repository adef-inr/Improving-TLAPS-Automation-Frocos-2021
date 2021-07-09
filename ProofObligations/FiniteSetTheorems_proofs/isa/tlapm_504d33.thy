(* automatically generated -- do not edit manually *)
theory tlapm_504d33 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 639, characters 29-30 *)
lemma ob'17: (* 937a1f24a6fd78f7e03c0f2972ef943e *)
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
fixes P
fixes S
(* usable definition SubS suppressed *)
assumes v'146: "((IsWellFoundedOn (((StrictSubsetOrdering ((S)))), (SubS))))"
assumes v'147: "(\<forall> T \<in> (SubS) : (((\<forall> U \<in> ((SetLessThan ((T), ((StrictSubsetOrdering ((S)))), (SubS)))) : ((P ((U))))) \<Rightarrow> ((P ((T)))))))"
assumes v'148: "((\<And> P_1 :: c => c. (\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R), (S_1)))) : ((P_1 ((y))))) \<Rightarrow> ((P_1 ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P_1 ((x)))))))))))"
shows "(\<forall> T \<in> (SubS) : ((P ((T)))))"(is "PROP ?ob'17")
proof -
show "PROP ?ob'17"
using assms by auto
qed
end
