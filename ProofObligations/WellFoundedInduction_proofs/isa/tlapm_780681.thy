(* automatically generated -- do not edit manually *)
theory tlapm_780681 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 493, characters 5-6 *)
lemma ob'13: (* 141afe8f99605052dd0aebb5f330c9df *)
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
fixes f
fixes R
fixes S
fixes T
assumes v'60: "((\<And> s :: c. s \<in> (S) \<Longrightarrow> ((\<forall> x \<in> ((SetLessThan ((s), (R), (S)))) : (((fapply ((f), (x))) \<in> (T)))) \<Longrightarrow> (((fapply ((f), (s))) \<in> (T))))))"
assumes v'61: "((IsWellFoundedOn ((R), (S))))"
assumes v'62: "((\<And> P :: c => c. (\<And> R_1 :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R_1), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R_1), (S_1)))) : ((P ((y))))) \<Rightarrow> ((P ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P ((x)))))))))))"
shows "(\<forall> s \<in> (S) : (((fapply ((f), (s))) \<in> (T))))"(is "PROP ?ob'13")
proof -
show "PROP ?ob'13"
using assms by auto
qed
end
