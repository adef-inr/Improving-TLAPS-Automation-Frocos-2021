(* automatically generated -- do not edit manually *)
theory tlapm_c24f3a imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_zipper.tla", line 900, characters 12-13 *)
lemma ob'35: (* 678d231ffd118f8fdffe770831a08ecc *)
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
assumes v'145: "((IsFiniteSet ((S))))"
assumes v'150: "((IsFiniteSet (((SUBSET ({}))))))"
assumes v'151: "((((Cardinality (((SUBSET ({})))))) = ((isa_care_a (((Succ[Succ[0]])), ((Cardinality (({})))))))))"
assumes v'152: "((\<And> A :: c. (\<And> x :: c. (((IsFiniteSet ((A)))) \<Longrightarrow> ((((x) \<notin> (A))) \<Longrightarrow> ((((IsFiniteSet (((SUBSET (A)))))) & ((((Cardinality (((SUBSET (A)))))) = ((isa_care_a (((Succ[Succ[0]])), ((Cardinality ((A)))))))))) \<Longrightarrow> (((IsFiniteSet (((SUBSET (((A) \<union> ({(x)})))))))) & ((((Cardinality (((SUBSET (((A) \<union> ({(x)})))))))) = ((isa_care_a (((Succ[Succ[0]])), ((Cardinality ((((A) \<union> ({(x)}))))))))))))))))))"
assumes v'153: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> P :: c => c. (((P (({})))) \<Longrightarrow> (((\<And> T :: c. (\<And> x :: c. (((IsFiniteSet ((T)))) \<Longrightarrow> (((P ((T)))) \<Longrightarrow> ((((x) \<notin> (T))) \<Longrightarrow> ((P ((((T) \<union> ({(x)})))))))))))) \<Longrightarrow> ((P ((S_1))))))))))"
shows "(((IsFiniteSet (((SUBSET (S)))))) & ((((Cardinality (((SUBSET (S)))))) = ((isa_care_a (((Succ[Succ[0]])), ((Cardinality ((S))))))))))"(is "PROP ?ob'35")
proof -
show "PROP ?ob'35"
using assms by auto
qed
end
