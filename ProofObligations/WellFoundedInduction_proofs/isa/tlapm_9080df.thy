(* automatically generated -- do not edit manually *)
theory tlapm_9080df imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 734, characters 3-4 *)
lemma ob'24: (* 79d87ac76dfa0ce0ad30a89fe674be5c *)
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
fixes R
fixes S
fixes n
assumes n_in : "(n \<in> (Nat))"
assumes v'58: "((IsWellFoundedOn ((R), (S))))"
assumes v'63: "((IsWellFoundedOn (((LexProductOrdering ((R), (S), ((0))))), ([((isa_peri_peri_a (((Succ[0])), ((0))))) \<rightarrow> (S)]))))"
assumes v'64: "((\<And> m :: c. m \<in> (Nat) \<Longrightarrow> (((IsWellFoundedOn (((LexProductOrdering ((R), (S), (m)))), ([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)])))) \<Longrightarrow> ((IsWellFoundedOn (((LexProductOrdering ((R), (S), ((arith_add ((m), ((Succ[0])))))))), ([((isa_peri_peri_a (((Succ[0])), ((arith_add ((m), ((Succ[0])))))))) \<rightarrow> (S)])))))))"
assumes v'65: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n_1 \<in> (Nat) : ((((P ((n_1)))) \<Rightarrow> ((P (((arith_add ((n_1), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n_1 \<in> (Nat) : ((P ((n_1)))))))))"
shows "(\<forall> m \<in> (Nat) : ((IsWellFoundedOn (((LexProductOrdering ((R), (S), (m)))), ([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)])))))"(is "PROP ?ob'24")
proof -
show "PROP ?ob'24"
using assms by auto
qed
end
