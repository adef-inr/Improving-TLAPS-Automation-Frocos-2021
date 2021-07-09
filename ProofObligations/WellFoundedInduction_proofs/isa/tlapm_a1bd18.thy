(* automatically generated -- do not edit manually *)
theory tlapm_a1bd18 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 265, characters 5-6 *)
lemma ob'4: (* 06438fefdc0eaf59478abbaf8bb59d21 *)
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
fixes Def
fixes R
fixes S
fixes f
assumes v'41: "((IsWellFoundedOn ((R), (S))))"
assumes v'42: "((IsTransitivelyClosedOn ((R), (S))))"
assumes v'43: "((WFDefOn ((R), (S), (Def))))"
assumes v'44: "((OpDefinesFcn ((f), (S), (Def))))"
(* usable definition LT suppressed *)
(* usable definition ff suppressed *)
assumes v'50: "((\<And> x :: c. x \<in> (S) \<Longrightarrow> ((\<forall> y \<in> ((SetLessThan ((x), (R), (S)))) : (((fapply ((ff), (y))) = ((Def ((ff), (y))))))) \<Longrightarrow> (((fapply ((ff), (x))) = ((Def ((ff), (x)))))))))"
assumes v'51: "((\<And> P :: c => c. (\<And> R_1 :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R_1), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R_1), (S_1)))) : ((P ((y))))) \<Rightarrow> ((P ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P ((x)))))))))))"
shows "(\<forall> x \<in> (S) : (((fapply ((ff), (x))) = ((Def ((ff), (x)))))))"(is "PROP ?ob'4")
proof -
show "PROP ?ob'4"
using assms by auto
qed
end
