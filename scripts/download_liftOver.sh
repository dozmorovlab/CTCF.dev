# hg19 to hg38
wget https://hgdownload.cse.ucsc.edu/goldenpath/hg19/liftOver/hg19ToHg38.over.chain.gz
gzip -d hg19ToHg38.over.chain.gz
# hg38 to hg19
wget https://hgdownload.cse.ucsc.edu/goldenpath/hg38/liftOver/hg38ToHg19.over.chain.gz
gzip -d hg38ToHg19.over.chain.gz

# hg18 to hg19
wget https://hgdownload.cse.ucsc.edu/goldenpath/hg18/liftOver/hg18ToHg19.over.chain.gz
gzip -d hg18ToHg19.over.chain.gz
# hg19 to hg18
wget https://hgdownload.cse.ucsc.edu/goldenpath/hg19/liftOver/hg19ToHg18.over.chain.gz
gzip -d hg19ToHg18.over.chain.gz
# hg18 to hg38
wget https://hgdownload.cse.ucsc.edu/goldenpath/hg18/liftOver/hg18ToHg38.over.chain.gz
gzip -d hg18ToHg38.over.chain.gz
# hg38 to hg18 - does not exist

# https://github.com/marbl/CHM13
# GRCh38 -> T2T-CHM13v2.0
wget https://s3-us-west-2.amazonaws.com/human-pangenomics/T2T/CHM13/assemblies/chain/v1_nflo/grch38-chm13v2.chain
# hg19 -> T2T-CHM13v2.0
wget https://s3-us-west-2.amazonaws.com/human-pangenomics/T2T/CHM13/assemblies/chain/v1_nflo/hg19-chm13v2.chain
# GRCh38 <- T2T-CHM13v2.0
wget https://s3-us-west-2.amazonaws.com/human-pangenomics/T2T/CHM13/assemblies/chain/v1_nflo/chm13v2-grch38.chain
# hg19 <- T2T-CHM13v2.0
wget https://s3-us-west-2.amazonaws.com/human-pangenomics/T2T/CHM13/assemblies/chain/v1_nflo/chm13v2-hg19.chain
# hg18 <- T2T-CHM13v2.0 - does not exist

# mm9 to mm10
wget https://hgdownload.cse.ucsc.edu/goldenpath/mm9/liftOver/mm9ToMm10.over.chain.gz
gzip -d mm9ToMm10.over.chain.gz
# mm10 to mm9
wget https://hgdownload.cse.ucsc.edu/goldenpath/mm10/liftOver/mm10ToMm9.over.chain.gz
gzip -d mm10ToMm9.over.chain.gz

# mm39 to mm10
wget https://hgdownload.soe.ucsc.edu/goldenPath/mm39/liftOver/mm39ToMm10.over.chain.gz
gzip -d mm39ToMm10.over.chain.gz
# mm10 to mm39
wget https://hgdownload.soe.ucsc.edu/goldenPath/mm10/liftOver/mm10ToMm39.over.chain.gz
gzip -d mm10ToMm39.over.chain.gz

mkdir -p chains
mv *.chain chains/

