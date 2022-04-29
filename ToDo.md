


CTCF-MP, https://github.com/ma-compbio/CTCF-MP/tree/master/Data/gm12878

CTCFBSDB

https://screen.encodeproject.org/

http://cisbp.ccbr.utoronto.ca/TFreport.php?searchTF=T094831_2.00 - `CisBP_2022_02_24_4_13_pm` - Homo Sapiens CTCF downloaded


- Motif files can be downloaded from https://bcm.app.box.com/v/juicerawsmirror/folder/11363582187.
    - REN motifs http://www.sciencedirect.com/science/article/pii/S009286740700205X
    - M1 motifs https://www.sciencedirect.com/science/article/pii/S0092867411015078

- From Oti, Martin, Jonas Falck, Martijn A. Huynen, and Huiqing Zhou. “CTCF-Mediated Chromatin Loops Enclose Inducible Gene Regulatory Domains.” BMC Genomics 17 (March 22, 2016): 252. https://doi.org/10.1186/s12864-016-2516-6. - CTCF loops investigation in multiple tissues. Max size - 200kb. Enclose regulatory domains of enhancer-regulated genes. Within loops - enrichment in enhancer-related marks. on the boundaries - histone marks and housekeeping genes from Eisenberg E, Levanon EY. Human housekeeping genes, revisited. Predict CTCF loops from ChIP-seq peaks. CTCF orientation method - should be oriented into the loop. Predicted CTCF sites: https://zenodo.org/record/29423
    - `fimo_ctcfmotifs_MA0139_hg19_2.5e-4.bed` - genome-wide CTCF motifs in human genome (hg19) detected by FIMO tool. From https://zenodo.org/record/29423. 1310708 CTCF motifs. Columns: chromosome, start, end, name, score, strand, p-value, q-value, sequence.
    - `ctcf_predictedloops_ENCODE_chipseq_datasets.tar.gz` - Predicted CTCF loops for 100 ENCODE ChIP-seq datasets. 100 files named like `predictedloops_wgEncodeAwgTfbsBroadGm12878CtcfUniPk_prop04.bed`. Columns: chromosome, start, end, paired coordinates and score, score, strand as dot, start coordinate of the first in pair, end coordinate of the second in pair, 16711680, 2, comma-separated width of CTCF sites, comma-separated something.

 mESC CTCF, https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE36027
- mESC epigenomic marks, https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE31039

- RenLab Hi-C and CTCF data http://chromosome.sdsc.edu/mouse/download.html

- Find all available CTCF datasets at http://cistrome.org/db/#/. Need to select relevant tissue-specific marks.

 Motif finder-identified CTCF sites: Potential CTCF motifs across provided genomes are available at http://hicfiles.s3.amazonaws.com/internal/motifs/GENOME_ID.motifs.txt (e.g. http://hicfiles.s3.amazonaws.com/internal/motifs/hg19.motifs.txt). hg19, hg38, mm9, and mm10 supported

## Other transcription factors

- CEBPB, CMYC, CTCF, JUND, MAFK, P300, POL2, POLR2A, RAD21, SMC3, TAF1, and TBP for hESCs, and CEBPB, CTCF, MAFK, POLR2A, and RAD21 - From Arboretum-Hi-C paper

- In addition to CTCF, ZNF143, YY1, DNAse, H3K36me3, TSSs, RNA Pol II, SP1, ZNF274, SIX5. From Hong, Seungpyo, and Dongsup Kim. “Computational Characterization of Chromatin Domain Boundary-Associated Genomic Elements.” Nucleic Acids Research 45, no. 18 (October 13, 2017): 10403–14. https://doi.org/10.1093/nar/gkx738.

- four members of the cohesin complex (STAG2, SMC3, SMC1A, and RAD21) - from M. Ryan Corces and Victor G. Corces, “The Three-Dimensional Cancer Genome,” Current Opinion in Genetics & Development 36 (2016)


