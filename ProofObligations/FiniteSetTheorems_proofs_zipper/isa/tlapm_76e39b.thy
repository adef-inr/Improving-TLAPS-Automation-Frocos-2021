(* automatically generated -- do not edit manually *)
theory tlapm_76e39b imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_zipper.tla", line 605, characters 3-4 *)
lemma ob'15: (* de0e256113976a102caf8c151c1d7fae *)
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
(* usable definition StrictSubsetOrdering suppressed *)
fixes S
assumes v'138: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (((((Cardinality ((S_1)))) \<in> (Nat))) & ((ExistsBijection (((isa_peri_peri_a (((Succ[0])), ((Cardinality ((S_1))))))), (S_1))))))))"
assumes v'139: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> T :: c. T \<in> ((SUBSET (S_1))) \<Longrightarrow> (((IsFiniteSet ((T)))) & ((leq (((Cardinality ((T)))), ((Cardinality ((S_1))))))) & ((((((Cardinality ((S_1)))) = ((Cardinality ((T)))))) \<Rightarrow> (((S_1) = (T))))))))))"
shows "(\<forall> T \<in> (subsetOf(((SUBSET (S))), %T. ((IsFiniteSet ((T)))))) : ((((Cardinality ((T)))) \<in> (Nat))))"(is "PROP ?ob'15")
proof -
show "PROP ?ob'15"
using assms by auto
qed
end
