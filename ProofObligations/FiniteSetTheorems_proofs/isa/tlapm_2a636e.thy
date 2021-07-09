(* automatically generated -- do not edit manually *)
theory tlapm_2a636e imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 200, characters 15-16 *)
lemma ob'5: (* cd72335432a404291062899c83f217b7 *)
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
fixes n
assumes n_in : "(n \<in> (Nat))"
assumes v'117: "((ExistsBijection (((isa_peri_peri_a (((Succ[0])), (n)))), (S))))"
(* usable definition SZ suppressed *)
(* usable definition fn suppressed *)
(* usable definition CS suppressed *)
fixes a_CS1a
fixes a_CS2a
(* usable definition Prop suppressed *)
assumes v'133: "((Prop (((0)))))"
assumes v'134: "((\<And> i :: c. i \<in> (Nat) \<Longrightarrow> (((Prop ((i)))) \<Longrightarrow> ((Prop (((arith_add ((i), ((Succ[0])))))))))))"
assumes v'135: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n_1 \<in> (Nat) : ((((P ((n_1)))) \<Rightarrow> ((P (((arith_add ((n_1), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n_1 \<in> (Nat) : ((P ((n_1)))))))))"
shows "(\<forall> i \<in> (Nat) : ((Prop ((i)))))"(is "PROP ?ob'5")
proof -
show "PROP ?ob'5"
using assms by auto
qed
end
