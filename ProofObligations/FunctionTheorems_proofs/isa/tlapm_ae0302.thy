(* automatically generated -- do not edit manually *)
theory tlapm_ae0302 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs.tla", line 797, characters 6-7 *)
lemma ob'11: (* a242c1ee3a71352074d50530bf9a30d9 *)
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
fixes n
assumes n_in : "(n \<in> (Nat))"
assumes v'104: "((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (n)))), (S))))"
assumes v'109: "((\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> (\<And> T :: c. ((((T) \<subseteq> (S_1))) \<Longrightarrow> ((((T) \<noteq> ({}))) \<Longrightarrow> (\<exists> x \<in> (T) : (\<forall> y \<in> (T) : ((~ (((<<(y), (x)>>) \<in> (R))))))))))))))"
assumes v'110: "((IsWellFoundedOn (((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat)))), (Nat))))"
shows "(\<exists> m \<in> (subsetOf((Nat), %m. ((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (m)))), (S)))))) : (\<forall> k \<in> (subsetOf((Nat), %m_1. ((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (m_1)))), (S)))))) : (((<<(k), (m)>>) \<notin> ((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat))))))))"(is "PROP ?ob'11")
proof -
show "PROP ?ob'11"
using assms by auto
qed
end
