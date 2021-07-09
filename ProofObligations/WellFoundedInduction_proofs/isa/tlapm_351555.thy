(* automatically generated -- do not edit manually *)
theory tlapm_351555 imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs.tla", line 237, characters 3-4 *)
lemma ob'1: (* 40344af282cc195f5c648c41154fdd7a *)
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
assumes v'39: "((IsWellFoundedOn ((R), (S))))"
assumes v'40: "((WFDefOn ((R), (S), (Def))))"
fixes g
fixes h
assumes v'50: "((\<And> x :: c. x \<in> (S) \<Longrightarrow> ((\<forall> y \<in> ((SetLessThan ((x), (R), (S)))) : (((fapply ((g), (y))) = (fapply ((h), (y)))))) \<Longrightarrow> (((fapply ((g), (x))) = (fapply ((h), (x))))))))"
assumes v'51: "((\<And> P :: c => c. (\<And> R_1 :: c. (\<And> S_1 :: c. (((IsWellFoundedOn ((R_1), (S_1)))) \<Longrightarrow> ((\<forall> x \<in> (S_1) : (((\<forall> y \<in> ((SetLessThan ((x), (R_1), (S_1)))) : ((P ((y))))) \<Rightarrow> ((P ((x))))))) \<Longrightarrow> (\<forall> x \<in> (S_1) : ((P ((x)))))))))))"
shows "(\<forall> x \<in> (S) : (((fapply ((g), (x))) = (fapply ((h), (x))))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
