#!/bin/bash

#PBS -N Pquad_rep3
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=96gb
#PBS -l walltime=1:00:00
#PBS -q debug

myDir=/N/slate/rtraborn/GoSTRIPES_Para/STRIPES
sampleFolder=Pquad_3

module load singularity

cd $myDir

source /N/slate/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /N/slate/rtraborn/GoSTRIPES_Para/STRIPES -i /N/slate/rtraborn/GoSTRIPES_Para/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

echo "Job complete"
