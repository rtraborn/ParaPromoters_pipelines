#!/bin/bash

#PBS -N PcSTRIPE_job_rep_3
#PBS -k o
#PBS -l nodes=1:ppn=16,vmem=64gb
#PBS -l walltime=8:00:00

myDir=/N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Paramecium/STRIPES
sampleFolder=Pc_3

module load singularity

cd $myDir

source /N/dc2/scratch/rtraborn/myDevel/GoSTRIPES/bin/xworkStripes -b /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Paramecium/STRIPES -i /N/dc2/scratch/rtraborn/STRIPEseq_files/GoSTRIPES_Paramecium/STRIPES/gostripes.simg

echo "Launching job"

cd $myDir/$sampleFolder

$rws make -n

$rws make

echo "Job complete"
