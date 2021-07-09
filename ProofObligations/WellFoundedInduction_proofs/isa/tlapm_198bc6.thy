(* automatically generated -- do not edit manually *)
theory tlapm_198bc6 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 561, characters 5-6 *)
lemma ob'17: (* 2512656f18b8da4e61509fa50cd48c24 *)
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
fixes ff
assumes ff_in : "(ff \<in> ([(Nat) \<rightarrow> (Nat)]))"
(* usable definition P suppressed *)
assumes v'60: "((\<And> n :: c. n \<in> (Nat) \<Longrightarrow> ((\<forall> m \<in> ((isa_peri_peri_a (((0)), ((arith_add ((n), ((minus (((Succ[0]))))))))))) : ((~ ((P ((m))))))) \<Longrightarrow> ((~ ((P ((n)))))))))"
assumes v'61: "((\<And> P_1 :: c => c. ((\<forall> n \<in> (Nat) : (((\<forall> m \<in> ((isa_peri_peri_a (((0)), ((arith_add ((n), ((minus (((Succ[0]))))))))))) : ((P_1 ((m))))) \<Rightarrow> ((P_1 ((n))))))) \<Longrightarrow> (\<forall> n \<in> (Nat) : ((P_1 ((n))))))))"
shows "(\<forall> n \<in> (Nat) : ((~ ((P ((n)))))))"(is "PROP ?ob'17")
proof -
show "PROP ?ob'17"
using assms by auto
qed
end
