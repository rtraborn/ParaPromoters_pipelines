## Paramecium Promoter Evolution project STRIPE-seq pipeline
### Written by R. Taylor Raborn

How to run a given sample:

1. Clone GoSTRIPEs on your system:
`git clone github.com/BrendelGroup/GoSTRIPES`

2. Clone the GoSTRIPEs singularity image in this folder:
`singularity pull --name gostripes.simg shub://BrendelGroup/GoSTRIPES`

3. Deposit the reads in a new, downloads folder
`mkdir downloads` 

4. Create a symbolic link to ensure the fq file matches what is in the Makefile
`ln -s downloads/NameofFastqFile_R1.fastq Pcaud1_R1.fq`

5. Launch the job on your cluster (but make sure to update the paths and headers as needed.
`qsub scripts/launch_job_Pc_1.sh` 
