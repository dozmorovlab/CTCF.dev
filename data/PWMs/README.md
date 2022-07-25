# MEME Motif Databases (updated 20 Mar 2022)
# Downloaded May 20, 2022
# https://meme-suite.org/meme/doc/download.html
`wget https://meme-suite.org/meme/meme-software/Databases/motifs/motif_databases.12.23.tgz`

- `./HUMAN/HOCOMOCOv11_core_HUMAN_mono_meme_format.meme`
	- MOTIF CTCF_HUMAN.H11MO.0.A
- `./MOUSE/HOCOMOCOv11_core_MOUSE_mono_meme_format.meme`
	- MOTIF CTCF_MOUSE.H11MO.0.A

- `./JASPAR/JASPAR2022_CORE_vertebrates_non-redundant_v2.meme`
	- MOTIF MA0139.1 CTCF
	- MOTIF MA1929.1 CTCF
	- MOTIF MA1930.1 CTCF

- `./EUKARYOTE/jolma2013_corrected.meme` - corrected = reverse complement of the original motif
	- MOTIF CTCF_full 

- `./EUKARYOTE/SwissRegulon_human_and_mouse.meme`
	- MOTIF CTCF.p2 

# CTCFBSDB matrix
`wget https://insulatordb.uthsc.edu/download/CTCFBSDB_PWM.mat`
`transfac2meme -use_acc CTCFBSDB_PWM.mat > CTCFBSDB_PWM.meme`

- `CTCFBSDB_PWM_corrected.meme` - corrected = reverse complement of the EMBL_M1 motif

# CIS-BP 2.0, http://cisbp.ccbr.utoronto.ca/bulk.php

Bulk download of human and mouse data in txt format, select CTCF only files using `grep -i CTCF TF_Information.txt | grep -vi CTCFL | cut -f4 | awk '{print $1".txt"}' | xargs -I{} cp  pwms_all_motifs/{} pwms_CTCF_motifs/`, combine them and convert to MEME format using `01_Logos.Rmd`

- `CIS-BP_2.00_Homo_sapiens.meme`, `CIS-BP_2.00_Mus_musculus.meme` - combined and converted to MEME format CTCF matrices





