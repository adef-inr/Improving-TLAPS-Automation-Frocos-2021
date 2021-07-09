(* automatically generated -- do not edit manually *)
theory tlapm_d1e8e2 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/FiniteSetTheorems_proofs_cvc4.tla", line 200, characters 15-16 *)
lemma ob'5: (* 46f468d2415a9e1cc38db9d96cf2c0e4 *)
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
fixes S
fixes n
assumes n_in : "(n \<in> (Nat))"
assumes v'117: "((ExistsBijection (((isa_peri_peri_a (((Succ[0])), (n)))), (S))))"
(* usable definition SZ suppressed *)
(* usable definition fn suppressed *)
(* usable definition CS suppressed *)
fixes a_CS1a
fixes a_CS2a
assumes v'132: "(\<forall> T \<in> ((SUBSET (S))) : ((((ExistsBijection (((isa_peri_peri_a (((Succ[0])), ((0))))), (T)))) \<Rightarrow> (((fapply ((a_CS1a), (T))) = (fapply ((a_CS2a), (T))))))))"
assumes v'133: "((\<And> i :: c. i \<in> (Nat) \<Longrightarrow> ((\<forall> T \<in> ((SUBSET (S))) : ((((ExistsBijection (((isa_peri_peri_a (((Succ[0])), (i)))), (T)))) \<Rightarrow> (((fapply ((a_CS1a), (T))) = (fapply ((a_CS2a), (T)))))))) \<Longrightarrow> (\<forall> T \<in> ((SUBSET (S))) : ((((ExistsBijection (((isa_peri_peri_a (((Succ[0])), ((arith_add ((i), ((Succ[0])))))))), (T)))) \<Rightarrow> (((fapply ((a_CS1a), (T))) = (fapply ((a_CS2a), (T)))))))))))"
assumes v'134: "((\<And> P :: c => c. (((P (((0))))) \<Longrightarrow> ((\<forall> n_1 \<in> (Nat) : ((((P ((n_1)))) \<Rightarrow> ((P (((arith_add ((n_1), ((Succ[0]))))))))))) \<Longrightarrow> (\<forall> n_1 \<in> (Nat) : ((P ((n_1)))))))))"
shows "(\<forall> i \<in> (Nat) : (\<forall> T \<in> ((SUBSET (S))) : ((((ExistsBijection (((isa_peri_peri_a (((Succ[0])), (i)))), (T)))) \<Rightarrow> (((fapply ((a_CS1a), (T))) = (fapply ((a_CS2a), (T)))))))))"(is "PROP ?ob'5")
proof -
show "PROP ?ob'5"
using assms by auto
qed
end
