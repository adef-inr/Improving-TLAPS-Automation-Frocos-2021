(* automatically generated -- do not edit manually *)
theory tlapm_27dc1f imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs_cvc4.tla", line 732, characters 3-4 *)
lemma ob'7: (* 56db3dc2e4055ad129c71fe09960a2ec *)
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
fixes T
fixes Def
fixes f
assumes v'177: "(((T) \<noteq> ({})))"
assumes v'178: "((StrictPrefixesDetermineDef ((S), (Def))))"
assumes v'179: "((WFInductiveDefines ((f), ((Seq ((S)))), (Def))))"
assumes v'180: "(\<forall> g \<in> ([((Seq ((S)))) \<rightarrow> (T)]) : (\<forall> s \<in> ((Seq ((S)))) : ((((Def ((g), (s)))) \<in> (T)))))"
assumes v'181: "((\<And> S_1 :: c. ((IsWellFoundedOn (((OpToRel ((IsStrictPrefix), ((Seq ((S_1))))))), ((Seq ((S_1)))))))))"
assumes v'182: "((\<And> S_1 :: c. (\<And> Def_1 :: c => c => c. (((StrictPrefixesDetermineDef ((S_1), (Def_1)))) \<Longrightarrow> ((WFDefOn (((OpToRel ((IsStrictPrefix), ((Seq ((S_1))))))), ((Seq ((S_1)))), (Def_1))))))))"
assumes v'183: "((\<And> Def_1 :: c => c => c. (\<And> f_1 :: c. (\<And> R :: c. (\<And> S_1 :: c. (\<And> T_1 :: c. ((((T_1) \<noteq> ({}))) \<Longrightarrow> (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> (((WFDefOn ((R), (S_1), (Def_1)))) \<Longrightarrow> (((WFInductiveDefines ((f_1), (S_1), (Def_1)))) \<Longrightarrow> ((\<forall> g \<in> ([(S_1) \<rightarrow> (T_1)]) : (\<forall> s \<in> (S_1) : ((((Def_1 ((g), (s)))) \<in> (T_1))))) \<Longrightarrow> (((f_1) \<in> ([(S_1) \<rightarrow> (T_1)]))))))))))))))"
shows "(((f) \<in> ([((Seq ((S)))) \<rightarrow> (T)])))"(is "PROP ?ob'7")
proof -
show "PROP ?ob'7"
using assms by auto
qed
end
