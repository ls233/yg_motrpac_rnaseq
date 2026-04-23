#!/bin/bash
set -euo pipefail
threads=$1

source /etc/profile.d/modules.sh 2>/dev/null || true
module load bowtie/1.3.0

mkdir -p bowtie1_index

bowtie-build --threads $threads genome.fa bowtie1_index/genome
