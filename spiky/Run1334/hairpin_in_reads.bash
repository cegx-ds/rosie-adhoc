#!/bin/bash
echo -e "Sample\tReads_with_hairpins\tTotal_reads\tPercentage" > hairpin_in_reads.txt
> hairpin_read_position.txt

gsutil ls gs://cegx-run1334/nf-results/ss-1.0.6_DJM_2022-01-14_1639_5bp/dedup_genome_bams/*{AN01,MH01}*.bam |
while read line
do
 filename="$(basename -- $line)"
 sample="${filename:0:21}"
 echo $sample

 hairpin=$(gsutil cat $line | samtools view | grep ACGATGCGTTCGAGCATCG | wc -l)
 #echo $hairpin

 reads=$(gsutil cat $line | samtools view | wc -l)
 #echo $reads

 percentage=$(awk "BEGIN {percentage=100*${hairpin}/$reads; print percentage}")
 #echo $percentage

 echo -e "${sample}\t${hairpin}\t${reads}\t${percentage}" >> hairpin_in_reads.txt

 echo -e "Sample: ${sample}" >> hairpin_read_position.txt
 echo -e "------------------------------------" >> hairpin_read_position.txt
 echo -e "Base\tReads_with_hairpins_starting_after_base" >> hairpin_read_position.txt
  for pos in 3 4 5 10 20 50 100 120
   do
    reads_after=$(gsutil cat $line | samtools view | cut -f10 | grep -E "^.{$pos,125}ACGATGCGTTCGAGCATCG" | wc -l)
    echo -e "${pos}\t${reads_after}" >> hairpin_read_position.txt
   done
   echo -e "" >> hairpin_read_position.txt
done

