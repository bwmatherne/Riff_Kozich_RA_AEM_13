# README

## Install  mothur

From the mothur wiki page, I was redirected to the schloss lab github page where I found the mothur download link. The following command was used to download the software onto my AWS home directory:
```bash
wget https://github.com/mothur/mothur/releases/download/v.1.42.3/Mothur.linux_64.zip
unzip Mothur.linux_64.zip
mv mothur code/
rm Mothur.linux_64.zip
```
To install mother the following command was run:

```bash
sudo apt install mothur
```
Install option: *Do you want to continue [Y/n] -> selected Y
To test that mothur is operational:

```bash
mothur
```
The software is properly installed by evidence of the 'mothur >' prompt. 
**NOTE** Type 'quit()' to exit program
