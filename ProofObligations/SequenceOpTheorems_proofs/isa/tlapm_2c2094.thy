(* automatically generated -- do not edit manually *)
theory tlapm_2c2094 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 867, characters 11-12 *)
lemma ob'63: (* 1d7c9ee5fde51730dc9138480715f6d5 *)
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
(* usable definition StrictPrefixesDetermineDef suppressed *)
(* usable definition StrictSuffixesDetermineDef suppressed *)
(* usable definition TailInductiveDefHypothesis suppressed *)
(* usable definition TailInductiveDefConclusion suppressed *)
(* usable definition FrontInductiveDefHypothesis suppressed *)
(* usable definition FrontInductiveDefConclusion suppressed *)
fixes S
fixes Def
fixes f
fixes a_f0a
fixes T
assumes v'191: "((FrontInductiveDefConclusion ((f), (S), (a_f0a), (Def))))"
assumes v'192: "(((a_f0a) \<in> (T)))"
assumes v'193: "(\<forall> v \<in> (T) : (\<forall> s \<in> ((Seq ((S)))) : (((((s) \<noteq> (<<>>))) \<Rightarrow> ((((Def ((v), (s)))) \<in> (T)))))))"
assumes v'198: "(((fapply ((f), (<<>>))) \<in> (T)))"
assumes v'199: "((\<And> seq :: c. seq \<in> ((Seq ((S)))) \<Longrightarrow> (\<And> e :: c. e \<in> (S) \<Longrightarrow> ((((fapply ((f), (seq))) \<in> (T))) \<Longrightarrow> (((fapply ((f), ((Append ((seq), (e)))))) \<in> (T)))))))"
assumes v'200: "((\<And> P :: c => c. (\<And> S_1 :: c. (((P ((<<>>)))) \<Longrightarrow> ((\<forall> s \<in> ((Seq ((S_1)))) : (\<forall> e \<in> (S_1) : ((((P ((s)))) \<Rightarrow> ((P (((Append ((s), (e))))))))))) \<Longrightarrow> (\<forall> seq \<in> ((Seq ((S_1)))) : ((P ((seq))))))))))"
shows "(\<forall> s \<in> ((Seq ((S)))) : (((fapply ((f), (s))) \<in> (T))))"(is "PROP ?ob'63")
proof -
show "PROP ?ob'63"
using assms by auto
qed
end
