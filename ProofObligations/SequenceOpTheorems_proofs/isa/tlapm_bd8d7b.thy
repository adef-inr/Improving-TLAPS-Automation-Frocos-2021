(* automatically generated -- do not edit manually *)
theory tlapm_bd8d7b imports Constant Zenon begin
consts
  "isReal" :: c
  "isa_slas_a" :: "[c,c] => c"
  "isa_bksl_diva" :: "[c,c] => c"
  "isa_perc_a" :: "[c,c] => c"
  "isa_peri_peri_a" :: "[c,c] => c"
  "isInfinity" :: c
  "isa_lbrk_rbrk_a" :: "[c] => c"
  "isa_less_more_a" :: "[c] => c"

(* Generated from file "./Modules/SequenceOpTheorems_proofs.tla", line 456, characters 3-4 *)
lemma ob'9: (* dc6e547ca0162e07bbbd5e01182eea42 *)
(* usable definition Restrict suppressed *)
(* usable definition Range suppressed *)
(* usable definition Inverse suppressed *)
(* usable definition Injection suppressed *)
(* usable definition Surjection suppressed *)
(* usable definition Bijection suppressed *)
(* usable definition ExistsInjection suppressed *)
(* usable definition ExistsSurjection suppressed *)
(* usable definition ExistsBijection suppressed *)
(* usable definition Cons suppressed *)
(* usable definition InsertAt suppressed *)
(* usable definition RemoveAt suppressed *)
(* usable definition Front suppressed *)
(* usable definition Last suppressed *)
(* usable definition Reverse suppressed *)
(* usable definition IsPrefix suppressed *)
(* usable definition IsStrictPrefix suppressed *)
(* usable definition IsSuffix suppressed *)
(* usable definition IsStrictSuffix suppressed *)
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
assumes v'155: "((IsWellFoundedOn (((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat)))), (Nat))))"
assumes v'156: "((\<And> S_1 :: c. (\<And> T :: c. (\<And> R :: c. (\<And> f :: c => c. ((\<forall> s \<in> (S_1) : ((((f ((s)))) \<in> (T)))) \<Longrightarrow> (((IsWellFoundedOn ((R), (T)))) \<Longrightarrow> ((IsWellFoundedOn (((PreImage ((f), (S_1), (R)))), (S_1)))))))))))"
shows "((IsWellFoundedOn (((PreImage ((\<lambda> a_x1a . ((Len ((a_x1a))))), ((Seq ((S)))), ((OpToRel ((\<lambda> a_x1a a_x2a . ((less ((a_x1a), (a_x2a))))), (Nat))))))), ((Seq ((S)))))))"(is "PROP ?ob'9")
proof -
show "PROP ?ob'9"
using assms by auto
qed
end
