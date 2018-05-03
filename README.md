Genome Skimming Utilities

===========================

<b>Author</b>: Michael R. McKain

This repository house multiple scripts used by the McKain Lab for processing of genome skimming data for chloroplast phylogenomics.

<h2>plastome_info_regions.pl</h2>

	To run: perl plastome_info_regions.pl Plastome_FASTA_file Prefix
	
	This script expects the plastome to be in the LSC-IRB-SSC-IRA arrangement typical of angiosperm chloroplast genomes. It will create a file using the given Prefix and 
	fill it with a multi-FASTA file labeled LSC, IRB, and SSC. These regions are identified by the script through the expected orientation previously mentioned.
	

<h2>concat_plastomes.pl</h2>

	To run: perl concat_plastomes.pl
	
	This scripts looks for files ending in ".aligned" and concatenates them based on the FASTA IDs of their sequences.  The intention is that these files would be lsc.aligned, ssc.aligned, and irb.aligned.
