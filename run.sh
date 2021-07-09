#!/bin/bash

# Use: ./run.sh method spec.tla
# Where method is: auto,blast,force,zipper,leo,satallax,vampire,cvc4

MODS_DIR=Modules
OBLS_DIR=ProofObligations
TIMEOUT=30

method=$1
spec=$(basename -s .tla $2)


if [ $method = "auto" -o $method = "blast" -o $method = "force" ]
then
    podir=$OBLS_DIR/$spec/isa
    files=$(ls $podir/tlapm_*.thy)
    testsuccess="((TLAPS SUCCESS))"

elif [ $method = "zipper" -o $method = "satallax" -o $method = "leo" -o $method = "vampire" -o $method = "cvc4" ]
then
    podir=$OBLS_DIR/$spec/tptp
    files=$(ls $podir/tlapm_*.p)
    testsuccess="SZS status Theorem"

fi


if [ $method = "auto" -o $method = "blast" -o $method = "force" ]
then
    cmd="isabelle-process -r -q -e \"(use_thy \\\"\$(dirname \$f)/\$(basename -s .thy \$f)\\\"; writeln \\\"((TLAPS SUCCESS))\\\");\" TLA+"

elif [ $method = "zipper" ]
then
    cmd="python3 zip/portfolio.lams.parallel.py \$f 100 zip/tmp/"

elif [ $method = "leo" ]
then
    cmd="./leo3 \"\$f\" -v 0"

elif [ $method = "satallax" ]
then
    cmd="satallax \"\$f\""

elif [ $method = "vampire" ]
then
    cmd="./vampire_rel_static_polymorphic_vampire_4154 --mode portfolio --schedule casc \"\$f\""

elif [ $method = "cvc4" ]
then
    cmd="./cvc4 --uf-ho --full-saturate-quant --ho-elim --no-ho-elim-partial \"\$f\""

fi


get_id ()
{
    # $1 = file
    if [ $method = "auto" -o $method = "blast" -o $method = "force" ]
    then
        id=$(grep -E -o -m1 "lemma ob'[0-9]+" $1 | sed -E -e "s/lemma ob'([0-9]+)/\1/")

    elif [ $method = "zipper" -o $method = "satallax" -o $method = "leo" -o $method = "vampire" -o $method = "cvc4" ]
    then
        id=$(grep -E -o -m1 "Proof obligation #[0-9]+" $1 | sed -E -e "s/Proof obligation #([0-9]+)/\1/")

    fi

    linenum=$(grep -E -o -m1 "Generated from .* line [0-9]+" $1 | sed -E -e "s/Generated from .* line ([0-9]+)/\1/")
}

get_reduction ()
{
    # $1 = linenum, $2 = spec
    local specfile=$MODS_DIR/$2.tla
    local line=$(sed "${linenum}q;d" $specfile)

    if echo "$line" | grep -q -E "compressed: .*[0-9]+ step"
    then
        steps=$(echo "$line" | grep -E -o "compressed: (|.*[^0-9])*[0-9]+ step" | sed -E -e "s/compressed: (|.*[^0-9])([0-9]+) step/\2/")
    else
        steps=0
    fi
}


echo -e "Testing \e[1m$method\e[0m on spec \e[1m$spec\e[0m"

declare -a res
solved=0
reduced=0
tot=$(echo "$files" | wc -l)
totreduced=0

echo "Found $tot files"

for f in $files
do
    get_id $f # result in $id and $linenum

    echo "Treating file $(basename $f) (obl. #$id, line $linenum)"

    if [ $method = "blast" -o $method = "force" ]
    then
        # The .thy file is rewritten to use a different tactic
        sed $f -e "s/by auto/by $method/" -e "s/$(basename -s .thy $f)/tmpfile/" > tmpfile.thy
        fmem=$f
        f="tmpfile.thy"
        eval "timeout $TIMEOUT $cmd > out"
        f=$fmem
        rm tmpfile.thy

    else
        eval "timeout $TIMEOUT $cmd > out"
    fi

    get_reduction $linenum $spec # result in $steps
    totreduced=$((totreduced+steps))

    if grep -q "$testsuccess" out
    then
        solved=$((solved+1))
        reduced=$((reduced+steps))

        res[$id]="\e[38;5;34mOK\e[0m with reduction by $steps steps"

    else
        res[$id]="\e[38;5;9mFAIL\e[0m"
    fi

done

rm -f out

echo "Results:"
for id in ${!res[@]}
do
    echo -e "Obl. $id: ${res[$id]}"
done
echo "Total solved: $solved / $tot"
echo "Total reduced: $reduced / $totreduced"

echo "Done"
