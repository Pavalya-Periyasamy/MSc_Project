#!/bin/bash -I
#SBATCH -c 32
cat SRR_Acc_List.txt | xargs -n 1 fasterq-dump --split-files -O fastq_files
