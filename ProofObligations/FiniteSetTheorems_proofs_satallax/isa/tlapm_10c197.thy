(* automatically generated -- do not edit manually *)
theory tlapm_10c197 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_satallax.tla", line 614, characters 3-4 *)
lemma ob'9: (* 8f1514946e2a30083bd0353957c4d7e5 *)
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
assumes v'139: "(\<forall> T \<in> ((FiniteSubsetsOf ((S)))) : ((((Cardinality ((T)))) \<in> (Nat))))"
assumes v'140: "((\<And> S_1 :: c. (\<And> T :: c. (\<And> R :: c. (\<And> f :: c => c. ((\<forall> s \<in> (S_1) : ((((f ((s)))) \<in> (T)))) \<Longrightarrow> (((IsWellFoundedOn ((R), (T)))) \<Longrightarrow> ((IsWellFoundedOn (((PreImage ((f), (S_1), (R)))), (S_1)))))))))))"
assumes v'141: "((IsWellFoundedOn (((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat)))), (Nat))))"
assumes v'142: "((((((StrictSubsetOrdering ((S)))) \<inter> ((((FiniteSubsetsOf ((S)))) \<times> ((FiniteSubsetsOf ((S)))))))) \<subseteq> ((PreImage ((Cardinality), ((FiniteSubsetsOf ((S)))), ((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat)))))))))"
assumes v'143: "((\<And> S_1 :: c. (\<And> R :: c. (\<And> RR :: c. ((((((RR) \<inter> (((S_1) \<times> (S_1))))) \<subseteq> (R))) \<Longrightarrow> (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> ((IsWellFoundedOn ((RR), (S_1))))))))))"
shows "((IsWellFoundedOn (((StrictSubsetOrdering ((S)))), ((FiniteSubsetsOf ((S)))))))"(is "PROP ?ob'9")
proof -
show "PROP ?ob'9"
using assms by auto
qed
end
