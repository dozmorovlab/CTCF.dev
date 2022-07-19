# Downloaded May 20, 2022

# MEME Motif Databases (updated 20 Mar 2022)
# https://meme-suite.org/meme/doc/download.html
wget https://meme-suite.org/meme/meme-software/Databases/motifs/motif_databases.12.23.tgz
# Extract
tar zxvfh motif_databases.12.23.tgz
# Go there
cd motif_databases
# File to store found CTCF motifs
FILEOUT=CTCF_motifs.txt
# Find CTCF motif occurrences, output in the file
for file in `find . -type f -name "*.meme"`; do 
	# Output only if CTCF, not CTCFL is found
	if grep -iv CTCFL $file | grep -iq CTCF; then
		echo $file >> ${FILEOUT}; 
		grep -iv CTCFL $file | grep -i CTCF >> ${FILEOUT};
	fi;
done

# Find CTCF motif occurrences, output on screen
for file in `find . -type f -name "*.meme"`; do 
	# Output only if CTCF, not CTCFL is found
	if grep -iv CTCFL $file | grep -iq CTCF; then
		echo $file; 
		grep -iv CTCFL $file | grep -i CTCF;
	fi;
done

# CTCFBSDB PWM matrix
wget https://insulatordb.uthsc.edu/download/CTCFBSDB_PWM.mat
transfac2meme -use_acc CTCFBSDB_PWM.mat > CTCFBSDB_PWM.meme


# T2T, https://github.com/marbl/CHM13
# Downloaded May 20, 2022
wget https://s3-us-west-2.amazonaws.com/human-pangenomics/T2T/CHM13/assemblies/analysis_set/chm13v2.0.fa.gz
mv chm13v2.0.fa.gz /home/sequencing/data/ExtData/UCSC/T2T/
gzip -d chm13v2.0.fa.gz

