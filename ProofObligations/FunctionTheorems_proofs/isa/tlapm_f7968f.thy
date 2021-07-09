(* automatically generated -- do not edit manually *)
theory tlapm_f7968f imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs.tla", line 767, characters 13-14 *)
lemma ob'7: (* 8d6ecea705967523494af21c663f7118 *)
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
fixes n
assumes n_in : "(n \<in> (Nat))"
fixes m
assumes m_in : "(m \<in> (Nat))"
assumes v'111: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n_1 \<in> (Nat) : ((((P ((n_1)))) \<Rightarrow> ((P (((arith_add ((n_1), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n_1 \<in> (Nat) : ((P ((n_1)))))))))"
assumes v'112: "(\<forall> nn \<in> (Nat) : ((((greater ((nn), ((0))))) \<Rightarrow> ((((Injection (((isa_peri_peri_a (((Succ[0])), (nn)))), ((isa_peri_peri_a (((Succ[0])), ((0)))))))) = ({}))))))"
assumes v'113: "((\<And> mm :: c. mm \<in> (Nat) \<Longrightarrow> ((\<forall> nn \<in> (Nat) : ((((greater ((nn), (mm)))) \<Rightarrow> ((((Injection (((isa_peri_peri_a (((Succ[0])), (nn)))), ((isa_peri_peri_a (((Succ[0])), (mm))))))) = ({})))))) \<Longrightarrow> (\<forall> nn \<in> (Nat) : ((((greater ((nn), ((arith_add ((mm), ((Succ[0])))))))) \<Rightarrow> ((((Injection (((isa_peri_peri_a (((Succ[0])), (nn)))), ((isa_peri_peri_a (((Succ[0])), ((arith_add ((mm), ((Succ[0]))))))))))) = ({})))))))))"
shows "(\<forall> mm \<in> (Nat) : (\<forall> nn \<in> (Nat) : ((((greater ((nn), (mm)))) \<Rightarrow> ((((Injection (((isa_peri_peri_a (((Succ[0])), (nn)))), ((isa_peri_peri_a (((Succ[0])), (mm))))))) = ({})))))))"(is "PROP ?ob'7")
proof -
show "PROP ?ob'7"
using assms by auto
qed
end
