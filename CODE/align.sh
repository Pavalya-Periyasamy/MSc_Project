#!/bin/bash

# Define paths
GENOME_DIR="/home/hlpperiy/hc-storage/ref"
TRIMMED_DIR="/home/hlpperiy/hc-storage/type1_daibetes/trimmed_fastq"
OUT_DIR="/home/hlpperiy/hc-storage/type1_daibetes/star_output"

# Number of threads to use
THREADS=16

# Create output directory if it doesn't exist
mkdir -p "$OUT_DIR"

# Align all trimmed FASTQ files
for FILE in "$TRIMMED_DIR"/*.fastq; do
    SAMPLE=$(basename "$FILE" .fastq)

    echo "🟢 Aligning $SAMPLE..."

    STAR --runThreadN "$THREADS" \
         --genomeDir "$GENOME_DIR" \
         --readFilesIn "$FILE" \
         --outFileNamePrefix "$OUT_DIR/${SAMPLE}_" \
         --outSAMtype BAM SortedByCoordinate

    echo "✅ Done: $SAMPLE"
done

echo "🎉 All STAR alignments completed."

