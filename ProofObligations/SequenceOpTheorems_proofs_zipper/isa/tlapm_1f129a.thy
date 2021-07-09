(* automatically generated -- do not edit manually *)
theory tlapm_1f129a imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs_zipper.tla", line 803, characters 3-4 *)
lemma ob'15: (* fa4353a0e049e6e6aac239280069c2ce *)
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
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition OpToRel suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
(* usable definition StrictPrefixesDetermineDef suppressed *)
fixes S
fixes Def
fixes f
fixes a_f0a
assumes v'180: "(((f) = (Choice(%g. (((g) = ([ s \<in> ((Seq ((S))))  \<mapsto> (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((g), ((Tail ((s)))))), (s))))))])))))))"
assumes v'181: "((\<And> S_1 :: c. (\<And> s :: c. s \<in> ((Seq ((S_1)))) \<Longrightarrow> ((((s) \<noteq> (<<>>))) \<Longrightarrow> ((IsStrictSuffix (((Tail ((s)))), (s))))))))"
assumes v'182: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. ((\<forall>g : (\<forall>h : (\<forall> seq \<in> ((Seq ((S_1)))) : (((\<forall> suf \<in> ((Seq ((S_1)))) : ((((IsStrictSuffix ((suf), (seq)))) \<Rightarrow> (((fapply ((g), (suf))) = (fapply ((h), (suf)))))))) \<Rightarrow> ((((Def_1 ((g), (seq)))) = ((Def_1 ((h), (seq))))))))))) \<Longrightarrow> ((((f_1) = (Choice(%g. (((g) = ([ x \<in> ((Seq ((S_1))))  \<mapsto> ((Def_1 ((g), (x))))]))))))) \<Longrightarrow> (((f_1) = ([ x \<in> ((Seq ((S_1))))  \<mapsto> ((Def_1 ((f_1), (x))))])))))))))"
shows "(((f) = ([ s \<in> ((Seq ((S))))  \<mapsto> (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((f), ((Tail ((s)))))), (s))))))])))"(is "PROP ?ob'15")
proof -
show "PROP ?ob'15"
using assms by auto
qed
end
