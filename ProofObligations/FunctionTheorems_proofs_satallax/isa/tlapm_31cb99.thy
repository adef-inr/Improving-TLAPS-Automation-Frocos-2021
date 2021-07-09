(* automatically generated -- do not edit manually *)
theory tlapm_31cb99 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs_satallax.tla", line 518, characters 11-12 *)
lemma ob'1: (* b01dcab67136d8853e9c70899fcd994e *)
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
fixes T
assumes v'97: "(((T) \<subseteq> (S)))"
assumes v'98: "((ExistsInjection ((S), (T))))"
fixes F
assumes F_in : "(F \<in> ((Injection ((S), (T)))))"
fixes Y
(* usable definition Ci suppressed *)
assumes v'119: "(((fapply ((Ci), ((0)))) \<subseteq> (S)))"
assumes v'120: "((\<And> i :: c. i \<in> (Nat) \<Longrightarrow> ((((fapply ((Ci), (i))) \<subseteq> (S))) \<Longrightarrow> (((fapply ((Ci), ((arith_add ((i), ((Succ[0]))))))) \<subseteq> (S))))))"
assumes v'121: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n \<in> (Nat) : ((((P ((n)))) \<Rightarrow> ((P (((arith_add ((n), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P ((n)))))))))"
shows "(\<forall> i \<in> (Nat) : (((fapply ((Ci), (i))) \<subseteq> (S))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
