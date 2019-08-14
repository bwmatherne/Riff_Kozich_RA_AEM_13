# This file is where I will document my progress with the exercise
### Original Paper: https://aem.asm.org/content/79/17/5112.full
1. Data

The data can be found in a link at the end of the subsection **Bioinformatic analysis and data availability** of the "Materials and Methods" section of the original paper. 
http://www.mothur.org/MiSeqDevelopmentData.html

The following commands were used to import data into my home directory: 

```
wget https://www.mothur.org/MiSeqDevelopmentData/StabilityWMetaG.tar
```

2. Reference Files

Reference files were found through the MiSeq... link listed above. 

The following command was used to import these data:
```
wget https://www.mothur.org/MiSeqDevelopmentData/HMP_MOCK.fasta
```

3. mothur

From the mothur wiki page, I was redirected to the schloss lab github page where I found the mothur download link. The following command was used to download the software onto my AWS home directory:
```
wget https://github.com/mothur/mothur/releases/download/v.1.42.3/Mothur.linux_64.zip
```
To unzip mothur and cleanup files, the following codes were run:
```
unzip Mothur.linux_64.zip 
rm Mothur.linux_64.zip 
```
To install mother the following command was run:
```
sudo apt install mothur
```
Install option: *Do you want to continue [Y/n] -> selected Y
To test that mothur is operational:
```
mothur
```
The software is properly installed by evidence of the 'mothur >' prompt. 
**NOTE** Type 'quit()' to exit program

4. Dump the text
