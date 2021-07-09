(* automatically generated -- do not edit manually *)
theory tlapm_6dcee8 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs_zipper.tla", line 852, characters 3-4 *)
lemma ob'18: (* 1af4d512118227be76bcfa2fb512609a *)
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
(* usable definition StrictSuffixesDetermineDef suppressed *)
(* usable definition TailInductiveDefHypothesis suppressed *)
(* usable definition TailInductiveDefConclusion suppressed *)
fixes S
fixes Def
fixes f
fixes a_f0a
assumes v'184: "(((f) = (Choice(%g. (((g) = ([ s \<in> ((Seq ((S))))  \<mapsto> (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((g), ((Front ((s)))))), (s))))))])))))))"
assumes v'185: "((\<And> S_1 :: c. (\<And> s :: c. s \<in> ((Seq ((S_1)))) \<Longrightarrow> (((IsPrefix (((Front ((s)))), (s)))) & (((((s) \<noteq> (<<>>))) \<Rightarrow> ((IsStrictPrefix (((Front ((s)))), (s))))))))))"
assumes v'186: "((\<And> S_1 :: c. (\<And> seq :: c. seq \<in> ((Seq ((S_1)))) \<Longrightarrow> (((((Front ((seq)))) \<in> ((Seq ((S_1)))))) & ((((Len (((Front ((seq))))))) = (cond((((seq) = (<<>>))), ((0)), ((arith_add (((Len ((seq)))), ((minus (((Succ[0])))))))))))) & (\<forall> i \<in> ((isa_peri_peri_a (((Succ[0])), ((arith_add (((Len ((seq)))), ((minus (((Succ[0]))))))))))) : (((fapply (((Front ((seq)))), (i))) = (fapply ((seq), (i))))))))))"
assumes v'187: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. ((\<forall>g : (\<forall>h : (\<forall> seq \<in> ((Seq ((S_1)))) : (((\<forall> pre \<in> ((Seq ((S_1)))) : ((((IsStrictPrefix ((pre), (seq)))) \<Rightarrow> (((fapply ((g), (pre))) = (fapply ((h), (pre)))))))) \<Rightarrow> ((((Def_1 ((g), (seq)))) = ((Def_1 ((h), (seq))))))))))) \<Longrightarrow> ((((f_1) = (Choice(%g. (((g) = ([ x \<in> ((Seq ((S_1))))  \<mapsto> ((Def_1 ((g), (x))))]))))))) \<Longrightarrow> (((f_1) = ([ x \<in> ((Seq ((S_1))))  \<mapsto> ((Def_1 ((f_1), (x))))])))))))))"
shows "(((f) = ([ s \<in> ((Seq ((S))))  \<mapsto> (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((f), ((Front ((s)))))), (s))))))])))"(is "PROP ?ob'18")
proof -
show "PROP ?ob'18"
using assms by auto
qed
end
