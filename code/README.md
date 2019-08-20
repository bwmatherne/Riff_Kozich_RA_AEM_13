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
