(* automatically generated -- do not edit manually *)
theory tlapm_fbd8f3 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs.tla", line 841, characters 12-13 *)
lemma ob'29: (* 67261ddffc645c1fc35566a9be3bb1f6 *)
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
(* usable definition P suppressed *)
assumes v'152: "((P (({}))))"
assumes v'153: "((\<And> A :: c. (\<And> x :: c. (((IsFiniteSet ((A)))) \<Longrightarrow> (((P ((A)))) \<Longrightarrow> ((((x) \<notin> (A))) \<Longrightarrow> ((P ((((A) \<union> ({(x)}))))))))))))"
assumes v'154: "((\<And> S_1 :: c. (((IsFiniteSet ((S_1)))) \<Longrightarrow> (\<And> P_1 :: c => c. (((P_1 (({})))) \<Longrightarrow> (((\<And> T_1 :: c. (\<And> x :: c. (((IsFiniteSet ((T_1)))) \<Longrightarrow> (((P_1 ((T_1)))) \<Longrightarrow> ((((x) \<notin> (T_1))) \<Longrightarrow> ((P_1 ((((T_1) \<union> ({(x)})))))))))))) \<Longrightarrow> ((P_1 ((S_1))))))))))"
shows "((P ((T))))"(is "PROP ?ob'29")
proof -
show "PROP ?ob'29"
using assms by auto
qed
end
