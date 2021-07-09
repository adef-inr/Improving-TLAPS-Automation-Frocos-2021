(* automatically generated -- do not edit manually *)
theory tlapm_455edb imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs_cvc4.tla", line 471, characters 3-4 *)
lemma ob'1: (* dad6d2ad7cc34cd21c5d29f9a51b49b0 *)
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
(* usable definition WFDefOn suppressed *)
(* usable definition OpDefinesFcn suppressed *)
(* usable definition WFInductiveDefines suppressed *)
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
fixes P
fixes S
assumes v'153: "(\<forall> t \<in> ((Seq ((S)))) : (((\<forall> s \<in> ((Seq ((S)))) : ((((IsStrictPrefix ((s), (t)))) \<Rightarrow> ((P ((s))))))) \<Rightarrow> ((P ((t)))))))"
assumes v'154: "((\<And> P_1 :: c => c. (\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> (subsetOf((S_1), %y. (((<<(y), (x)>>) \<in> (R))))) : ((P_1 ((y))))) \<Rightarrow> ((P_1 ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P_1 ((x)))))))))))"
assumes v'155: "((\<And> S_1 :: c. ((IsWellFoundedOn ((subsetOf(((((Seq ((S_1)))) \<times> ((Seq ((S_1)))))), %ss. ((IsStrictPrefix ((fapply ((ss), ((Succ[0])))), (fapply ((ss), ((Succ[Succ[0]]))))))))), ((Seq ((S_1)))))))))"
shows "(\<forall> s \<in> ((Seq ((S)))) : ((P ((s)))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
