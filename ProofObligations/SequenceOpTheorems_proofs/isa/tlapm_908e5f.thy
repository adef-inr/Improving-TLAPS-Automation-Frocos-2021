(* automatically generated -- do not edit manually *)
theory tlapm_908e5f imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 715, characters 1-2 *)
lemma ob'27: (* 32ef246d26b4a5bc6c49aedd2b91b847 *)
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
fixes S
fixes Def
fixes f
assumes v'175: "((StrictPrefixesDetermineDef ((S), (Def))))"
assumes v'176: "((OpDefinesFcn ((f), ((Seq ((S)))), (Def))))"
assumes v'177: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (((StrictPrefixesDetermineDef ((S_1), (Def_1)))) \<Longrightarrow> ((WFDefOn (((OpToRel ((IsStrictPrefix), ((Seq ((S_1))))))), ((Seq ((S_1)))), (Def_1))))))))"
assumes v'178: "((\<And> S_1 :: c. ((IsWellFoundedOn (((OpToRel ((IsStrictPrefix), ((Seq ((S_1))))))), ((Seq ((S_1)))))))))"
assumes v'179: "((\<And> Def_1 :: c => c => c. (\<And> R :: c. (\<And> S_1 :: c. (\<And> f_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> (((WFDefOn ((R), (S_1), (Def_1)))) \<Longrightarrow> (((OpDefinesFcn ((f_1), (S_1), (Def_1)))) \<Longrightarrow> ((WFInductiveDefines ((f_1), (S_1), (Def_1))))))))))))"
shows "((WFInductiveDefines ((f), ((Seq ((S)))), (Def))))"(is "PROP ?ob'27")
proof -
show "PROP ?ob'27"
using assms by auto
qed
end
