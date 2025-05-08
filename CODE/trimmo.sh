#!/bin/bash

# Set adapter file path
ADAPTER="/home/hlpperiy/miniconda3/envs/rna_seq/share/trimmomatic-0.39-2/adapters/TruSeq3-SE.fa"

# Create output directory if it doesn't exist
mkdir -p trimmed_fastq

# Loop through all .fastq files in the "fastq" folder
for file in fastq/*.fastq; do
    # Get the base filename without path or extension
    base=$(basename "$file" .fastq)

    echo "Trimming $file..."

    # Run Trimmomatic
    trimmomatic SE -threads 4 "$file" "trimmed_fastq/${base}_trimmed.fastq" \
    ILLUMINACLIP:${ADAPTER}:2:30:10 \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36

    echo "Finished trimming $file"
done

echo "All files trimmed and saved in 'trimmed_fastq/'"

