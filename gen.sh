#!/bin/bash

# Use: ./gen.sh spec.tla
# Will generate .thy and .p (THF) output from spec.tla and put them in the appropriate directories in ProofObligations/

MODS_DIR=Modules
OBLS_DIR=ProofObligations

spec=$(basename -s .tla $1)
specfile=$MODS_DIR/$spec.tla
tlapsdir=$spec.tlaps
poisadir=$OBLS_DIR/$spec/isa/
pothfdir=$OBLS_DIR/$spec/tptp/

echo "Generating files for $specfile"

echo "Cleaning $tlapsdir..."
rm -f $tlapsdir/tlapm_*.thy $tlapsdir/tlapm_*.p

echo "Generating files..."
eval "tlapm --toolbox 0 0 --nofp --method auto --stretch 0.1 --debug tempfiles $specfile 2> /dev/null"
eval "tlapm --toolbox 0 0 --nofp --method zipper --stretch 0.1 --debug tempfiles $specfile 2> /dev/null"

echo "Moving files to $OBLS_DIR/$spec..."
mkdir -p $poisadir $pothfdir
rm -f $poisadir/*.thy $pothfdir/*.p
mv -t $poisadir $tlapsdir/tlapm_*.thy
mv -t $pothfdir $tlapsdir/tlapm_*.p

rm -rf $tlapsdir

echo "Done"
