(* automatically generated -- do not edit manually *)
theory tlapm_9163f2 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_cvc4.tla", line 842, characters 12-13 *)
lemma ob'22: (* f2b1afab027161bcee9ed1107a7e08cc *)
(* usable definition IsFiniteSet suppressed *)
(* usable definition Cardinality suppressed *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
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
(* usable definition FiniteSubsetsOf suppressed *)
(* usable definition StrictSubsetOrdering suppressed *)
fixes S
assumes v'144: "((IsFiniteSet ((S))))"
fixes T
assumes v'146: "((IsFiniteSet ((T))))"
assumes v'151: "((IsFiniteSet ((((S) \<times> ({}))))))"
assumes v'152: "((((Cardinality ((((S) \<times> ({})))))) = ((mult (((Cardinality ((S)))), ((Cardinality (({})))))))))"
assumes v'153: "((\<And> A :: c. (\<And> x :: c. (((IsFiniteSet ((A)))) \<Longrightarrow> ((((IsFiniteSet ((((S) \<times> (A)))))) & ((((Cardinality ((((S) \<times> (A)))))) = ((mult (((Cardinality ((S)))), ((Cardinality ((A)))))))))) \<Longrightarrow> ((((x) \<notin> (A))) \<Longrightarrow> (((IsFiniteSet ((((S) \<times> (((A) \<union> ({(x)})))))))) & ((((Cardinality ((((S) \<times> (((A) \<union> ({(x)})))))))) = ((mult (((Cardinality ((S)))), ((Cardinality ((((A) \<union> ({(x)}))))))))))))))))))"
assumes v'154: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> P :: c => c. (((P (({})))) \<Longrightarrow> (((\<And> T_1 :: c. (\<And> x :: c. (((IsFiniteSet ((T_1)))) \<Longrightarrow> (((P ((T_1)))) \<Longrightarrow> ((((x) \<notin> (T_1))) \<Longrightarrow> ((P ((((T_1) \<union> ({(x)})))))))))))) \<Longrightarrow> ((P ((S_1))))))))))"
shows "(((IsFiniteSet ((((S) \<times> (T)))))) & ((((Cardinality ((((S) \<times> (T)))))) = ((mult (((Cardinality ((S)))), ((Cardinality ((T))))))))))"(is "PROP ?ob'22")
proof -
show "PROP ?ob'22"
using assms by auto
qed
end
