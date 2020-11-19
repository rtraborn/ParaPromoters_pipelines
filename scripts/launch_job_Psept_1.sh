#!/bin/bash

#PBS -N Psept_rep_1
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=64gb
#PBS -l walltime=16:00:00

myDir=/N/slate/rtraborn/GoSTRIPES_Para/STRIPES
sampleFolder=Psept_1

module load singularity

cd $myDir

source /N/slate/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /N/slate/rtraborn/GoSTRIPES_Para/STRIPES -i /N/slate/rtraborn/GoSTRIPES_Para/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

echo "Job complete"
