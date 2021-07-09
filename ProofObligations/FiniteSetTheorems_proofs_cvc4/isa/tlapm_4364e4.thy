(* automatically generated -- do not edit manually *)
theory tlapm_4364e4 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_cvc4.tla", line 641, characters 3-4 *)
lemma ob'9: (* 1e1d475126b66160abb6641ed3a09463 *)
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
assumes v'139: "((IsFiniteSet ((S))))"
assumes v'140: "((\<And> T :: c. T \<in> ((SUBSET (S))) \<Longrightarrow> ((\<forall> U \<in> ((((SUBSET (T))) \\ ({(T)}))) : ((P ((U))))) \<Longrightarrow> ((P ((T)))))))"
assumes v'142: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> ((((FiniteSubsetsOf ((S_1)))) = ((SUBSET (S_1))))))))"
assumes v'143: "((\<And> S_1 :: c. ((IsWellFoundedOn (((StrictSubsetOrdering ((S_1)))), ((FiniteSubsetsOf ((S_1)))))))))"
assumes v'144: "(\<forall> T \<in> ((SUBSET (S))) : (((\<forall> U \<in> ((SetLessThan ((T), ((StrictSubsetOrdering ((S)))), ((SUBSET (S)))))) : ((P ((U))))) \<Rightarrow> ((P ((T)))))))"
assumes v'145: "((\<And> P_1 :: c => c. (\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R), (S_1)))) : ((P_1 ((y))))) \<Rightarrow> ((P_1 ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P_1 ((x)))))))))))"
shows "((P ((S))))"(is "PROP ?ob'9")
proof -
show "PROP ?ob'9"
using assms by auto
qed
end
