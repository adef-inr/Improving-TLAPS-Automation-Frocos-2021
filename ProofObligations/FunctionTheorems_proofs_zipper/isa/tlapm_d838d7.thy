(* automatically generated -- do not edit manually *)
theory tlapm_d838d7 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FunctionTheorems_proofs_zipper.tla", line 801, characters 3-4 *)
lemma ob'7: (* ee6a73d0712be3f7549bf9ff5363bac3 *)
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
(* usable definition PreImage suppressed *)
(* usable definition LexPairOrdering suppressed *)
(* usable definition LexProductOrdering suppressed *)
fixes S
fixes n
assumes n_in : "(n \<in> (Nat))"
assumes v'103: "((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (n)))), (S))))"
assumes v'106: "((\<And> R :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R), (S_1)))) \<Longrightarrow> (\<And> T :: c. ((((T) \<subseteq> (S_1))) \<Longrightarrow> ((((T) \<noteq> ({}))) \<Longrightarrow> (\<exists> x \<in> (T) : (\<forall> y \<in> (T) : ((~ (((<<(y), (x)>>) \<in> (R))))))))))))))"
assumes v'107: "((IsWellFoundedOn ((subsetOf((((Nat) \<times> (Nat))), %ss. ((less ((fapply ((ss), ((Succ[0])))), (fapply ((ss), ((Succ[Succ[0]]))))))))), (Nat))))"
shows "(\<exists> m \<in> (Nat) : (((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (m)))), (S)))) & (\<forall> k \<in> (Nat) : ((((less ((k), (m)))) \<Rightarrow> ((~ ((ExistsSurjection (((isa_peri_peri_a (((Succ[0])), (k)))), (S)))))))))))"(is "PROP ?ob'7")
proof -
show "PROP ?ob'7"
using assms by auto
qed
end
