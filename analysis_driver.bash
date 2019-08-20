#!/usr/bin/env bash

# Followed Riffomonas Instructions for downloading raw data.
#These data can be found here: https://www.mothur.org/MiSeqDevelopmentData.html
# * Downloaded raw data
# * Opened files and moved to data/raw/
# * Removed archive file

wget https://www.mothur.org/MiSeqDevelopmentData/StabilityWMetaG.tar
tar xvf StabilityWMetaG.tar -C data/raw/
rm StabilityWMetaG.tar

## How to get references files needed for this tutorial

# Files for Silva and RDP can be found on the mothur website:
wget https://www.mothur.org/MiSeqDevelopmentData/HMP_MOCK.fasta
mv HMP_MOCK.fasta data/references/

wget http://mothur.org/w/images/1/15/Silva.seed_v123.tgz
tar xvzf Silva.seed_v123.tgz silva.seed_v123.align silva.seed_v123.tax
code/mothur/mothur "#get.lineage(fasta=silva.seed_v123.align, taxonomy=silva.see
d_v123.tax, taxon=Bacteria);degap.seqs(fasta=silva.seed_v123.pick.align, process
ors=8)"
mv silva.seed_v123.pick.align data/references/silva.seed.align
rm Silva.seed_v123.tgz silva.seed_v123.*
rm mothur.*.logfile
wget -N http://www.mothur.org/w/images/8/88/Trainset14_032015.pds.tgz
tar xvzf Trainset14_032015.pds.tgz
mv trainset14_032015.pds/train* data/references/
rm -rf trainset14_032015.pds
rm Trainset14_032015.pds.tgz

## Above the line appeared to have an error showing "mv trainset14_032015.pds/trainset* data/references/"
### Ran using corrected file name and there was an error about a file not existing.

# Generate a customized version of the SILVA v4 reference dataset
code/mothur/mothur "#pcr.seqs(fasta=data/references/silva.seed.align, start=11894, end=25319, keepdots=F, processors=8)"
mv data/references/silva.seed.pcr.align data/references/silva.v4.align

# Run motur through the data curation steps
code/mothur/mothur code/get_good_seqs.batch
	# The following are the error messages after running the command above
		##mothur > filter.seqs(fasta=current, vertical=T, trump=.)
		##Using data/mothur/stability.trim.contigs.good.unique.good.align as input file for the fasta parameter.

		##Using 8 processors.
		##[ERROR]: data/mothur/stability.trim.contigs.good.unique.good.align is blank. Please correct.
		##Creating Filter... 
		##[ERROR]: data/mothur/stability.trim.contigs.good.unique.good.align is blank. Please correct.
		##Error in reading your fastafile, at position -1. Blank name.
		##It took 0 secs to create filter for 0 sequences.

	# Ran after retrying with trainset file name error correct. The following message was displayed at the end of the run:
		##mothur > pre.cluster(fasta=current, count=current, diffs=2, processors=4)
		##[WARNING]: no file was saved for count parameter.
		##Using data/mothur/stability.trim.contigs.good.unique.good.filter.unique.fasta as input file for the fasta parameter.

		##Using 4 processors.
		##[WARNING]: This command can take a namefile and you did not provide one. The current namefile is data/mothur/stability.trim.contigs.good.unique.good.filter.names which seems to match data/mothur/stability.trim.contigs.good.unique.good.filter.unique.fasta.
		##Segmentation fault (core dumped)


# Going to attemp to run the next steps but it appears that the get_good_seqs.batch step did not run properly

# Run mock community data with the seq.error step to determine sequencing error rate
code/mothur/mothur code/get_error.batch
