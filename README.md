#ADFinder
This script identify adaptor sequence as well as any 5' or 3' index sequence in a given small RNA sequencing fastq file.

Result interpretation:

To find the adptor and index sequence program look for top 20 most abundant miRNA sequence in a given species (the list prepared based on analysis of small RNA sequencing data from different tissue of origin for a given species) in raw sequencing data. After identifying the reads that has miRNA sequence program look for downstream and upstream sequence of each of the reads to find the adaptor and index sequence.

For each miRNA output writes the miRNA name, miRNA sequence, number of sequencing reads (clones), 5' index sequence and 3' adaptor sequence. 

