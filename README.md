####ADFinder

#This script identify adaptor sequence as well as any 5' or 3' index sequence in a given small RNA sequencing fastq file.

Result interpretation:

To find the adptor and index sequence program look for top 20 most abundant miRNA sequence in a given species (the list prepared based on analysis of small RNA sequencing data from different tissue of origin for a given species) in raw sequencing data. After identifying the reads that has miRNA sequence program look for downstream and upstream sequence of each of the reads to find the adaptor and index sequence.

For each miRNA output writes the miRNA name, miRNA sequence, number of sequencing reads (clones), 5' index sequence and 3' adaptor sequence. 


Motivation: Small RNA sequencing is now routine technique in any molecular biology. The require-ment for submitting the RAW sequencing data to public databases like NCBI or other similar reposito-ry before publication has increased the volume of small RNA sequencing data. The decision to up-load the data before publication has decrease the generation of similar data again and again. Howev-er majority of the small RNA sequencing data sets are missing the detailed information about adaptor sequence or any index sequence on submission page. 

Results: We have developed a very easy to use script that helps users to explore the adaptor or index sequence in their small RNA sequencing data of interest. The script takes the raw sequencing file (*.fastq file) and list of twenty most abundant expressed miRNA in given species (the list of miR-NA files for various species provided with pipeline). The program output the index or adaptor se-quence information.

