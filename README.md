# Improving Automation for Higher-order Proof Steps

#### Antoine Defourné

This repository contains all TLA+ specifications and benchmarks used for the experiment in our paper.  The original experiment was carried out in two phases: generation of the benchmarks from the TLA+ specifications, and evaluation of each HO solver on the benchmarks.  The benchmarks have been pre-generated so that the second phase can be reproduced without having to install the TLA+ Toolbox or TLAPS.

However, you will need those tools if you want to generate the problem files yourself, or evaluate Isabelle on the benchmarks (as you will need the theory files for TLA+).  You can download the TLA+ Toolbox from its [website page](https://github.com/tlaplus/tlapm/tree/encode).  The version of TLAPS used for the experiment is available on [Github](https://github.com/tlaplus/tlapm/commit/afb68cfd2412f2af9512e6a3f25870a7c35fd3bf).

Binaries are provided for the right versions of each solver, except for Isabelle and Satallax&nbsp;3.4.


## Description

The directory `Modules` contains the TLA+ specifications.  4&nbsp;of these come from the standard library of TLAPS, the 20&nbsp;others are modified versions, one per spec. and solver.

The directory `ProofObligations` contains the benchmarks.  For each specification, there are .thy files for the evaluation of Isabelle, and .p files for the evaluation of CVC4, Leo-III, Satallax, Vampire and Zipperposition.


## Usage

Two scripts are provided for running the experiment.

The command
```bash
./gen.sh Modules/Spec.tla
```
will generate the benchmarks for Spec.tla (both .thy and .p files are created in the appropriate subdir. of ProofObligations).  You do not need to use this script if you intend to evaluate the solvers on the pre-generated benchmarks.

The command
```bash
./run.sh solver Modules/Spec.tla
```
will run a solver on the benchmarks for Spec.tla.  The accepted arguments for 'solver' are: auto, blast, force, cvc4, leo, satallax, vampire, zipper.  A summary of the solved problems with references to the original lines in Spec.tla will be displayed.  The number of removed proof steps that the set of solved obligations represents is also displayed---this is only relevant for the 20&nbsp;specifications that are modified versions of the 4&nbsp;originals.

We do not provide a way to reproduce the simplification of specifications, as this part of the experiment was carried out manually. You can, however, inspect the simplified specifications and look for the relevant proof steps. Traces of the original proofs were always left, so that the changes we made are clear. Proof steps that resulted from simplification can be identified by the presence of a comment:
```ocaml
(* compressed: n steps *)
```
