The deduplicated resolved reads (dedup_bams) were examined for samples AN01-A634-016 and MH01-A635-013, which were
the spikiest of the samples for each operator.

The .txt files in this directory list: 

- The 20 most popular 25-letter sequences at the 5' end 
- The number of reads containing the core part of the hairpin (ACGATGCGTTCGAGCATCG) - note that a very 
small fraction of these contained the hairpin more than once, or not at the beginning of the read.
- Total reads for that sample. 

Note that: 

- For the MH01-A635-016 sample, 193740 / 3839697 reads contained the hairpin (5%). 
- For the AN01-A634-013 sample,  46691 / 6410155 reads contained the hairpin (0.7%).

Since only a fraction of reads will have a "C" base at the same positions as in the hairpin, 
- let's assume 1/4 - the fraction of "C" bases that come from the hairpin rather than the sample 
at the 5' end of the read could be roughly estimated as around 20% for the MH01-A635-016 sample, 
roughly comparable to the increased methylation observed at these positions.
