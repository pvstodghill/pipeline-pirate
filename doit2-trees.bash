#! /bin/bash

. $(dirname ${BASH_SOURCE[0]})/doit-preamble.bash

if [ "$SKIP_FASTTREE" ] ; then
    echo 1>&2 '# Skipping FastTreeMP'
    exit
fi


# ------------------------------------------------------------------------

rm -rf ${TREES}
mkdir -p ${TREES}

# # ------------------------------------------------------------------------
# # Trimming core alignment
# # ------------------------------------------------------------------------
# echo 1>&2 '# Trimming core alignment'

# clipkit -o ${TREES}/core_alignment.trimmed.fasta  ${PIRATE}/core_alignment.fasta 

# ------------------------------------------------------------------------
# Run FastTreeMP
# ------------------------------------------------------------------------

echo 1>&2 '# Run FastTreeMP'
export OMP_NUM_THREADS=${THREADS}
FastTreeMP -nt -gtr ${PIRATE}/core_alignment.fasta > ${TREES}/core_alignment.nwk


# ------------------------------------------------------------------------
# Done.
# ------------------------------------------------------------------------

echo 1>&2 '# Done.'

