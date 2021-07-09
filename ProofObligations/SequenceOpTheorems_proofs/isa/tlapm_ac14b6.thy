(* automatically generated -- do not edit manually *)
theory tlapm_ac14b6 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 845, characters 3-4 *)
lemma ob'59: (* b586aead2abf8fe4bf31c31b9dded00e *)
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
assumes v'189: "((FrontInductiveDefHypothesis ((f), (S), (a_f0a), (Def))))"
assumes v'194: "((StrictPrefixesDetermineDef ((S), (\<lambda> h s . (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((h), ((Front ((s)))))), (s))))))))))"
assumes v'195: "((OpDefinesFcn ((f), ((Seq ((S)))), (\<lambda> h s . (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((h), ((Front ((s)))))), (s))))))))))"
assumes v'196: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. (((StrictPrefixesDetermineDef ((S_1), (Def_1)))) \<Longrightarrow> (((OpDefinesFcn ((f_1), ((Seq ((S_1)))), (Def_1)))) \<Longrightarrow> ((WFInductiveDefines ((f_1), ((Seq ((S_1)))), (Def_1))))))))))"
shows "((WFInductiveDefines ((f), ((Seq ((S)))), (\<lambda> h s . (cond((((s) = (<<>>))), (a_f0a), ((Def ((fapply ((h), ((Front ((s)))))), (s))))))))))"(is "PROP ?ob'59")
proof -
show "PROP ?ob'59"
using assms by auto
qed
end
