(* automatically generated -- do not edit manually *)
theory tlapm_c68d1f imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs_zipper.tla", line 673, characters 7-8 *)
lemma ob'8: (* f05dbaa255c2e1b1c2100871ba5f5109 *)
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
fixes m
assumes m_in : "(m \<in> (Nat))"
assumes v'68: "((IsWellFoundedOn (((LexPairOrdering (((LexProductOrdering ((R), (S), (m)))), (R), ([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)]), (S)))), ((([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)]) \<times> (S))))))"
assumes v'69: "(\<forall> ss \<in> ([((isa_peri_peri_a (((Succ[0])), ((arith_add ((m), ((Succ[0])))))))) \<rightarrow> (S)]) : (((<<([ i \<in> ((isa_peri_peri_a (((Succ[0])), (m))))  \<mapsto> (fapply ((ss), (i)))]), (fapply ((ss), ((arith_add ((m), ((Succ[0])))))))>>) \<in> ((([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)]) \<times> (S))))))"
assumes v'70: "((\<And> S_1 :: c. (\<And> T :: c. (\<And> R_1 :: c. (\<And> f :: c => c. ((\<forall> s \<in> (S_1) : ((((f ((s)))) \<in> (T)))) \<Longrightarrow> (((IsWellFoundedOn ((R_1), (T)))) \<Longrightarrow> ((IsWellFoundedOn (((PreImage ((f), (S_1), (R_1)))), (S_1)))))))))))"
shows "((IsWellFoundedOn (((PreImage ((\<lambda> ss . (<<([ i \<in> ((isa_peri_peri_a (((Succ[0])), (m))))  \<mapsto> (fapply ((ss), (i)))]), (fapply ((ss), ((arith_add ((m), ((Succ[0])))))))>>)), ([((isa_peri_peri_a (((Succ[0])), ((arith_add ((m), ((Succ[0])))))))) \<rightarrow> (S)]), ((LexPairOrdering (((LexProductOrdering ((R), (S), (m)))), (R), ([((isa_peri_peri_a (((Succ[0])), (m)))) \<rightarrow> (S)]), (S))))))), ([((isa_peri_peri_a (((Succ[0])), ((arith_add ((m), ((Succ[0])))))))) \<rightarrow> (S)]))))"(is "PROP ?ob'8")
proof -
show "PROP ?ob'8"
using assms by auto
qed
end
