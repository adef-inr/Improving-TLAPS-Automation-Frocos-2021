(* automatically generated -- do not edit manually *)
theory tlapm_4025db imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/WellFoundedInduction_proofs_cvc4.tla", line 321, characters 1-13 *)
lemma ob'1: (* a164e4a839a5f6a521d12fc547dbf2cf *)
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
assumes v'40: "((\<And> R :: c. (\<And> S :: c. ((((((R) \<inter> (((S) \<times> (S))))) \<subseteq> ((TransitiveClosureOn ((R), (S)))))) & ((IsTransitivelyClosedOn (((TransitiveClosureOn ((R), (S)))), (S))))))))"
shows "(\<forall>R : (\<forall>S : ((((((R) \<inter> (((S) \<times> (S))))) \<subseteq> ((TransitiveClosureOn ((R), (S)))))) & ((IsTransitivelyClosedOn (((TransitiveClosureOn ((R), (S)))), (S)))))))"(is "PROP ?ob'1")
proof -
show "PROP ?ob'1"
using assms by auto
qed
end
