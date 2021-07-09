(* automatically generated -- do not edit manually *)
theory tlapm_1b9d32 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs_leo.tla", line 475, characters 2-3 *)
lemma ob'3: (* 8965029e3147963e600fcaa099c3b3b8 *)
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
fixes Def
fixes R
fixes S
fixes f
assumes v'50: "((IsWellFoundedOn ((R), (S))))"
assumes v'51: "((WFDefOn ((R), (S), (Def))))"
assumes v'52: "((OpDefinesFcn ((f), (S), (Def))))"
assumes v'54: "(\<forall>R_1 : (\<forall>S_1 : ((((((R_1) \<inter> (((S_1) \<times> (S_1))))) \<subseteq> ((TransitiveClosureOn ((R_1), (S_1)))))) & ((IsTransitivelyClosedOn (((TransitiveClosureOn ((R_1), (S_1)))), (S_1)))))))"
assumes v'55: "((\<And> R_1 :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R_1), (S_1)))) \<Longrightarrow> ((IsWellFoundedOn (((TransitiveClosureOn ((R_1), (S_1)))), (S_1))))))))"
assumes v'56: "((WFDefOn (((TransitiveClosureOn ((R), (S)))), (S), (Def))))"
assumes v'57: "((\<And> Def_1 :: c => c => c. (\<And> R_1 :: c. (\<And> S_1 :: c. (\<And> f_1 :: c. (((IsWellFoundedOn ((R_1), (S_1)))) \<Longrightarrow> (((IsTransitivelyClosedOn ((R_1), (S_1)))) \<Longrightarrow> (((WFDefOn ((R_1), (S_1), (Def_1)))) \<Longrightarrow> (((OpDefinesFcn ((f_1), (S_1), (Def_1)))) \<Longrightarrow> ((WFInductiveDefines ((f_1), (S_1), (Def_1)))))))))))))"
shows "((WFInductiveDefines ((f), (S), (Def))))"(is "PROP ?ob'3")
proof -
show "PROP ?ob'3"
using assms by auto
qed
end
