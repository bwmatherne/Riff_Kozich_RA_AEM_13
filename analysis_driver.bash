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
mv trainset14_032015.pds/trainset* data/references/
rm -rf trainset14_032015.pds
rm Trainset14_032015.pds.tgz
