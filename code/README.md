# README

## Install  mothur

From the mothur wiki page, I was redirected to the schloss lab github page where I found the mothur download link. The following command was used to download the software onto my AWS home directory:
```bash
wget --no-check-certificate https://github.com/mothur/mothur/releases/download/v.1.42.3/Mothur.linux_64.zip
unzip Mothur.linux_64.zip
mv mothur code/
rm Mothur.linux_64.zip
rm -rf _MACOSX
```

To verify the mothur software verion:

```bash
code/mothur/mothur -v
```
#Modified count.seqs command in get_good_seqs.batch 
* Original: mothur > count.seqs(name=current, group=current, processors=4)
* New: mothur > count.seqs(name=current, group=current)
These instructions were provided by Dr. Schloss and allowed the command to run correctly.
