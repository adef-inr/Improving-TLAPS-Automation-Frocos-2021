(* automatically generated -- do not edit manually *)
theory tlapm_5d8237 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs_leo.tla", line 799, characters 3-4 *)
lemma ob'1: (* f9aecac5733390b88795e018d73ab419 *)
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
(* usable definition WFInductiveUnique suppressed *)
(* usable definition TransitiveClosureOn suppressed *)
(* usable definition OpToRel suppressed *)
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
(* usable definition StrictPrefixesDetermineDef suppressed *)
(* usable definition StrictSuffixesDetermineDef suppressed *)
(* usable definition TailInductiveDefHypothesis suppressed *)
fixes S
fixes Def
fixes f
fixes a_f0a
assumes v'183: "((TailInductiveDefHypothesis ((f), (S), (a_f0a), (Def))))"
assumes v'186: "((StrictSuffixesDetermineDef ((S), (\<lambda> h s . (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((h), ((Tail ((s)))))), (s))))))))))"
assumes v'187: "((OpDefinesFcn ((f), ((Seq ((S)))), (\<lambda> h s . (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((h), ((Tail ((s)))))), (s))))))))))"
assumes v'188: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. (((StrictSuffixesDetermineDef ((S_1), (Def_1)))) \<Longrightarrow> (((OpDefinesFcn ((f_1), ((Seq ((S_1)))), (Def_1)))) \<Longrightarrow> (((f_1) = ([ x \<in> ((Seq ((S_1))))  \<mapsto> ((Def_1 ((f_1), (x))))])))))))))"
shows "(((f) = ([ s \<in> ((Seq ((S))))  \<mapsto> (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((f), ((Tail ((s)))))), (s))))))])))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
