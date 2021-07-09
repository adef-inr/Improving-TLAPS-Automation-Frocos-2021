(* automatically generated -- do not edit manually *)
theory tlapm_5e6cb7 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 608, characters 3-4 *)
lemma ob'13: (* 4541ada296d1094abd9167095c59ef7a *)
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
assumes v'140: "(\<forall> T \<in> ((FiniteSubsetsOf ((S)))) : ((((Cardinality ((T)))) \<in> (Nat))))"
assumes v'141: "((\<And> S_1 :: c. (\<And> T :: c. (\<And> R :: c. (\<And> f :: c => c. ((\<forall> s \<in> (S_1) : ((((f ((s)))) \<in> (T)))) \<Longrightarrow> (((IsWellFoundedOn ((R), (T)))) \<Longrightarrow> ((IsWellFoundedOn (((PreImage ((f), (S_1), (R)))), (S_1)))))))))))"
assumes v'142: "((IsWellFoundedOn (((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat)))), (Nat))))"
shows "((IsWellFoundedOn (((PreImage ((Cardinality), ((FiniteSubsetsOf ((S)))), ((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat))))))), ((FiniteSubsetsOf ((S)))))))"(is "PROP ?ob'13")
proof -
show "PROP ?ob'13"
using assms by auto
qed
end
