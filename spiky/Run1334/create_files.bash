#!/bin/bash
echo "Top 20 combinations of first 25 bases:" > MH01-A635-013.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-MH01-A635-013.genome.GRCh38Decoy.dedup.bam | samtools view | cut -f10 | awk '{ print substr($1,1,25)}' | sort | uniq -c | sort -h -r | head -20 >> MH01-A635-013.txt
echo "Number of reads containing hairpin at least once:" >> MH01-A635-013.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-MH01-A635-013.genome.GRCh38Decoy.dedup.bam | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l >> MH01-A635-013.txt
echo "Total reads:" >> MH01-A635-013.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-MH01-A635-013.genome.GRCh38Decoy.dedup.bam | samtools view | wc -l >> MH01-A635-013.txt

echo "Top 20 combinations of first 25 bases:" > AN01-A634-016.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-AN01-A634-016.genome.GRCh38Decoy.dedup.bam | samtools view | cut -f10 | awk '{ print substr($1,1,25)}' | sort | uniq -c | sort -h -r | head -20 >> AN01-A634-016.txt
echo "Number of reads containing hairpin at least once:" >> AN01-A634-016.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-AN01-A634-016.genome.GRCh38Decoy.dedup.bam | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l >> AN01-A634-016.txt
echo "Total reads:" >> AN01-A634-016.txt
gsutil cat gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/CEG1334-AN01-A634-016.genome.GRCh38Decoy.dedup.bam | samtools view | wc -l >> AN01-A634-016.txt

