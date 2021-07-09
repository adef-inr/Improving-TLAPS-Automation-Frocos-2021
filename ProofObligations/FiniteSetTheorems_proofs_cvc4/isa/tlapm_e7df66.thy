(* automatically generated -- do not edit manually *)
theory tlapm_e7df66 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_cvc4.tla", line 687, characters 12-13 *)
lemma ob'14: (* 39f508fb20bc5a6aed5afd581854fe5e *)
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
assumes v'139: "((IsFiniteSet ((S))))"
fixes T
assumes v'141: "((IsFiniteSet ((T))))"
assumes v'146: "((IsFiniteSet ((((S) \<union> ({}))))))"
assumes v'147: "((((Cardinality ((((S) \<union> ({})))))) = ((arith_add (((Cardinality ((S)))), ((arith_add (((Cardinality (({})))), ((minus (((Cardinality ((((S) \<inter> ({})))))))))))))))))"
assumes v'148: "((\<And> A :: c. (\<And> x :: c. (((IsFiniteSet ((A)))) \<Longrightarrow> ((((IsFiniteSet ((((S) \<union> (A)))))) & ((((Cardinality ((((S) \<union> (A)))))) = ((arith_add (((Cardinality ((S)))), ((arith_add (((Cardinality ((A)))), ((minus (((Cardinality ((((S) \<inter> (A)))))))))))))))))) \<Longrightarrow> ((((x) \<notin> (A))) \<Longrightarrow> (((IsFiniteSet ((((S) \<union> (((A) \<union> ({(x)})))))))) & ((((Cardinality ((((S) \<union> (((A) \<union> ({(x)})))))))) = ((arith_add (((Cardinality ((S)))), ((arith_add (((Cardinality ((((A) \<union> ({(x)})))))), ((minus (((Cardinality ((((S) \<inter> (((A) \<union> ({(x)}))))))))))))))))))))))))))"
assumes v'149: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> P :: c => c. (((P (({})))) \<Longrightarrow> (((\<And> T_1 :: c. (\<And> x :: c. (((IsFiniteSet ((T_1)))) \<Longrightarrow> (((P ((T_1)))) \<Longrightarrow> ((((x) \<notin> (T_1))) \<Longrightarrow> ((P ((((T_1) \<union> ({(x)})))))))))))) \<Longrightarrow> ((P ((S_1))))))))))"
shows "(((IsFiniteSet ((((S) \<union> (T)))))) & ((((Cardinality ((((S) \<union> (T)))))) = ((arith_add (((Cardinality ((S)))), ((arith_add (((Cardinality ((T)))), ((minus (((Cardinality ((((S) \<inter> (T))))))))))))))))))"(is "PROP ?ob'14")
proof -
show "PROP ?ob'14"
using assms by auto
qed
end
