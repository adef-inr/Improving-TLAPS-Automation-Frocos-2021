(* automatically generated -- do not edit manually *)
theory tlapm_f55cc8 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 686, characters 11-12 *)
lemma ob'19: (* 5d5c2a6be75bc559241cd33d1cb0b866 *)
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
assumes v'170: "(\<forall> t \<in> ((Seq ((S)))) : (((\<forall> s \<in> ((Seq ((S)))) : ((((IsStrictSuffix ((s), (t)))) \<Rightarrow> ((P ((s))))))) \<Rightarrow> ((P ((t)))))))"
assumes v'172: "((\<And> P_1 :: c => c. (\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R), (S_1)))) : ((P_1 ((y))))) \<Rightarrow> ((P_1 ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P_1 ((x)))))))))))"
assumes v'173: "((\<And> S_1 :: c. ((IsWellFoundedOn (((OpToRel ((IsStrictSuffix), ((Seq ((S_1))))))), ((Seq ((S_1)))))))))"
assumes v'174: "(\<forall> t \<in> ((Seq ((S)))) : (((\<forall> s \<in> ((SetLessThan ((t), ((OpToRel ((IsStrictSuffix), ((Seq ((S))))))), ((Seq ((S))))))) : ((P ((s))))) \<Rightarrow> ((P ((t)))))))"
shows "(\<forall> s \<in> ((Seq ((S)))) : ((P ((s)))))"(is "PROP ?ob'19")
proof -
show "PROP ?ob'19"
using assms by auto
qed
end
