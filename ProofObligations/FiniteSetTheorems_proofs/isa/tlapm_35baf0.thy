(* automatically generated -- do not edit manually *)
theory tlapm_35baf0 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 571, characters 12-13 *)
lemma ob'9: (* bd1235efadd1c68f3468a3474fc3853c *)
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
fixes S
assumes v'133: "((IsFiniteSet ((S))))"
fixes P
assumes v'135: "((P (({}))))"
assumes v'136: "((\<And> T :: c. (\<And> x :: c. (((IsFiniteSet ((T)))) \<Longrightarrow> (((P ((T)))) \<Longrightarrow> ((((x) \<notin> (T))) \<Longrightarrow> ((P ((((T) \<union> ({(x)}))))))))))))"
assumes v'141: "(\<forall>T : ((((((IsFiniteSet ((T)))) \<and> ((((Cardinality ((T)))) = ((0)))))) \<Rightarrow> ((P ((T)))))))"
assumes v'142: "((\<And> n :: c. n \<in> (Nat) \<Longrightarrow> ((\<forall>T : ((((((IsFiniteSet ((T)))) \<and> ((((Cardinality ((T)))) = (n))))) \<Rightarrow> ((P ((T))))))) \<Longrightarrow> (\<And> T :: c. (((IsFiniteSet ((T)))) \<Longrightarrow> (((((Cardinality ((T)))) = ((arith_add ((n), ((Succ[0]))))))) \<Longrightarrow> ((P ((T))))))))))"
assumes v'143: "((\<And> P_1 :: c => c. (((P_1 (((0))))) \<Longrightarrow> ((\<forall> n \<in> (Nat) : ((((P_1 ((n)))) \<Rightarrow> ((P_1 (((arith_add ((n), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P_1 ((n)))))))))"
shows "(\<forall> n \<in> (Nat) : (\<forall>T : ((((((IsFiniteSet ((T)))) \<and> ((((Cardinality ((T)))) = (n))))) \<Rightarrow> ((P ((T))))))))"(is "PROP ?ob'9")
proof -
show "PROP ?ob'9"
using assms by auto
qed
end
