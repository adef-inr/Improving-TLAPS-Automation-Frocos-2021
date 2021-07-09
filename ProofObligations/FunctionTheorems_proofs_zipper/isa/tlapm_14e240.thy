(* automatically generated -- do not edit manually *)
theory tlapm_14e240 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs_zipper.tla", line 481, characters 5-6 *)
lemma ob'1: (* 124dbca58cf55653928b7e1acae6324e *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
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
fixes S
fixes T
assumes v'95: "(((T) \<subseteq> (S)))"
assumes v'96: "((ExistsInjection ((S), (T))))"
fixes F
assumes F_in : "(F \<in> ((Injection ((S), (T)))))"
fixes Y
(* usable definition Ci suppressed *)
(* usable definition f0 suppressed *)
(* usable definition Def suppressed *)
assumes v'114: "((\<And> Def_1 :: c => c => c. (\<And> f :: c. (\<And> a_f0a_1 :: c. ((((f) = (Choice(%g. (((g) = ([ i \<in> (Nat)  \<mapsto> (cond((((i) = ((0)))), (a_f0a_1), ((Def_1 ((fapply ((g), ((arith_add ((i), ((minus (((Succ[0])))))))))), (i))))))]))))))) \<Longrightarrow> (((f) = ([ i \<in> (Nat)  \<mapsto> (cond((((i) = ((0)))), (a_f0a_1), ((Def_1 ((fapply ((f), ((arith_add ((i), ((minus (((Succ[0])))))))))), (i))))))]))))))))"
shows "(\<forall> i \<in> (Nat) : (((fapply ((Choice(%f. (((f) = ([ i_1 \<in> (Nat)  \<mapsto> (cond((((i_1) = ((0)))), (a_f0a), ((Def ((fapply ((f), ((arith_add ((i_1), ((minus (((Succ[0])))))))))), (i_1))))))]))))), (i))) = (cond((((i) = ((0)))), (a_f0a), ((Def ((fapply ((Choice(%f. (((f) = ([ i_1 \<in> (Nat)  \<mapsto> (cond((((i_1) = ((0)))), (a_f0a), ((Def ((fapply ((f), ((arith_add ((i_1), ((minus (((Succ[0])))))))))), (i_1))))))]))))), ((arith_add ((i), ((minus (((Succ[0])))))))))), (i)))))))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
