(* automatically generated -- do not edit manually *)
theory tlapm_175d9b imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 181, characters 12-13 *)
lemma ob'5: (* a17882cb875fc93df5421fa19690ee16 *)
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
fixes S
fixes P
assumes v'127: "((P ((<<>>))))"
assumes v'128: "(\<forall> s \<in> ((Seq ((S)))) : (((((((s) \<noteq> (<<>>))) \<and> ((P (((Front ((s))))))))) \<Rightarrow> ((P ((s)))))))"
assumes v'133: "(\<forall> s \<in> ((Seq ((S)))) : ((((((Len ((s)))) = ((0)))) \<Rightarrow> ((P ((s)))))))"
assumes v'134: "((\<And> n :: c. n \<in> (Nat) \<Longrightarrow> ((\<forall> s \<in> ((Seq ((S)))) : ((((((Len ((s)))) = (n))) \<Rightarrow> ((P ((s))))))) \<Longrightarrow> (\<forall> s \<in> ((Seq ((S)))) : ((((((Len ((s)))) = ((arith_add ((n), ((Succ[0]))))))) \<Rightarrow> ((P ((s))))))))))"
assumes v'135: "((\<And> P_1 :: c => c. (((P_1 (((0))))) \<Longrightarrow> ((\<forall> n \<in> (Nat) : ((((P_1 ((n)))) \<Rightarrow> ((P_1 (((arith_add ((n), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P_1 ((n)))))))))"
shows "(\<forall> k \<in> (Nat) : (\<forall> s \<in> ((Seq ((S)))) : ((((((Len ((s)))) = (k))) \<Rightarrow> ((P ((s))))))))"(is "PROP ?ob'5")
proof -
show "PROP ?ob'5"
using assms by auto
qed
end
