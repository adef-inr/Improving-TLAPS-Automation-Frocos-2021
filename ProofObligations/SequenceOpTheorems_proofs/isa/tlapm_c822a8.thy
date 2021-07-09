(* automatically generated -- do not edit manually *)
theory tlapm_c822a8 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 68, characters 11-12 *)
lemma ob'1: (* 8f09192406c5df05f16714f1afb83b7c *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
(* usable definition Cons suppressed *)
(* usable definition InsertAt suppressed *)
(* usable definition RemoveAt suppressed *)
(* usable definition Front suppressed *)
(* usable definition Last suppressed *)
(* usable definition Reverse suppressed *)
(* usable definition IsPrefix suppressed *)
(* usable definition IsStrictPrefix suppressed *)
(* usable definition IsSuffix suppressed *)
(* usable definition IsStrictSuffix suppressed *)
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
fixes P
fixes S
assumes v'119: "((P ((<<>>))))"
assumes v'120: "(\<forall> s \<in> ((Seq ((S)))) : (\<forall> e \<in> (S) : ((((P ((s)))) \<Rightarrow> ((P (((Cons ((e), (s)))))))))))"
assumes v'125: "(\<forall> seq \<in> ((Seq ((S)))) : ((((((Len ((seq)))) = ((0)))) \<Rightarrow> ((P ((seq)))))))"
assumes v'126: "((\<And> n :: c. n \<in> (Nat) \<Longrightarrow> ((\<forall> seq \<in> ((Seq ((S)))) : ((((((Len ((seq)))) = (n))) \<Rightarrow> ((P ((seq))))))) \<Longrightarrow> (\<forall> seq \<in> ((Seq ((S)))) : ((((((Len ((seq)))) = ((arith_add ((n), ((Succ[0]))))))) \<Rightarrow> ((P ((seq))))))))))"
assumes v'127: "((\<And> P_1 :: c => c. (((P_1 (((0))))) \<Longrightarrow> ((\<forall> n \<in> (Nat) : ((((P_1 ((n)))) \<Rightarrow> ((P_1 (((arith_add ((n), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P_1 ((n)))))))))"
shows "(\<forall> k \<in> (Nat) : (\<forall> seq \<in> ((Seq ((S)))) : ((((((Len ((seq)))) = (k))) \<Rightarrow> ((P ((seq))))))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
