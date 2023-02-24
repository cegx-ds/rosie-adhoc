#!/bin/bash
echo "Top 20 combinations of first 25 bases:" > ML01-A587-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ML01-A587-007.genome.GRCh38Decoy.dedup.bam | samtools view | cut -f10 | awk '{ print substr($1,1,25)}' | sort | uniq -c | sort -h -r | head -20 >> ML01-A587-007.txt
echo "Number of reads containing hairpin at least once:" >> ML01-A587-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ML01-A587-007.genome.GRCh38Decoy.dedup.bam | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l >> ML01-A587-007.txt
echo "Total reads:" >> ML01-A587-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ML01-A587-007.genome.GRCh38Decoy.dedup.bam | samtools view | wc -l >> ML01-A587-007.txt

echo "Top 20 combinations of first 25 bases:" > AN01-A582-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-AN01-A582-007.genome.GRCh38Decoy.dedup.bam | samtools view | cut -f10 | awk '{ print substr($1,1,25)}' | sort | uniq -c | sort -h -r | head -20 >> AN01-A582-007.txt
echo "Number of reads containing hairpin at least once:" >> AN01-A582-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-AN01-A582-007.genome.GRCh38Decoy.dedup.bam | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l >> AN01-A582-007.txt
echo "Total reads:" >> AN01-A582-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-AN01-A582-007.genome.GRCh38Decoy.dedup.bam | samtools view | wc -l >> AN01-A582-007.txt

echo "Top 20 combinations of first 25 bases:" > ER01-A588-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ER01-A588-007.genome.GRCh38Decoy.dedup.bam | samtools view | cut -f10 | awk '{ print substr($1,1,25)}' | sort | uniq -c | sort -h -r | head -20 >> ER01-A588-007.txt
echo "Number of reads containing hairpin at least once:" >> ER01-A588-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ER01-A588-007.genome.GRCh38Decoy.dedup.bam | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l >> ER01-A588-007.txt
echo "Total reads:" >> ER01-A588-007.txt
gsutil cat gs://cegx-run1318/nf-results/ss-1.0.6_DJM_2022-12-07_1724_5bp/dedup_genome_bams/CEG1318-ER01-A588-007.genome.GRCh38Decoy.dedup.bam | samtools view | wc -l >> ER01-A588-007.txt

