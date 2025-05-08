#!/bin/bash

#SECONDS=0

# STEP 1: Run FastQC
#mkdir -p fastqc_output

# Send both standard output and error to a log file
#fastqc fastq/*.fastq -o fastqc_output/ > fastqc_output/fastqc.log 2>&1

#duration=$SECONDS
#echo "$((duration /60)) minutes and $((duration %60)) seconds elapsed."


#!/bin/bash
#SECONDS=0

# STEP: Run FastQC on all trimmed FASTQ files in 'trimmed_fastq/' directory
#mkdir -p fastqc_output_trimmed
#echo "Running FastQC on trimmed reads..."
#fastqc trimmed_fastq/*.fastq -o fastqc_output_trimmed/ > fastqc_output_trimmed/fastqc.log 2>&1

# Print elapsed time
#duration=$SECONDS
#echo "FastQC on trimmed reads completed in $((duration / 60)) minutes and $((duration % 60)) seconds."

#!/bin/bash
SECONDS=0

# STEP: Run FastQC on resumed trimmed FASTQ files (SRR909268* and above)
echo "Running FastQC on resumed trimmed reads (SRR909268* and above)..."

# Run FastQC only on specific files, saving to the same output directory
fastqc trimmed_fastq/SRR909272*.fastq -o fastqc_output_trimmed/ >> fastqc_output_trimmed/fastqc.log 2>&1

# Print elapsed time
duration=$SECONDS
echo "FastQC (resumed) completed in $((duration / 60)) minutes and $((duration % 60)) seconds."

#!/bin/bash
#SECONDS=0

# STEP: Run FastQC on resumed trimmed FASTQ files (SRR909268* and above)
#echo "Running FastQC on resumed trimmed reads (SRR909268* and above)..."

# Run FastQC only on specific files, saving to the same output directory
#fastqc fastq/SRR90927*.fastq -o fastqc_output/ >> fastqc_output/fastqc.log 2>&1

# Print elapsed time
#duration=$SECONDS
#echo "FastQC (resumed) completed in $((duration / 60)) minutes and $((duration % 60)) seconds."


