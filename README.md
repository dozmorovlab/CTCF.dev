- `EDA_SCREEN.Rmd` - Processing https://screen.encodeproject.org/
- `EDA_CTCFBSDB.Rmd` - Processing CTCFBSDB, predicted and experimental data
- `EDA_Chang_Noordermeer_2021.Rmd` - Processing `Chang_Noordermeer_2021.xlsx`

# `data`

- `Chang_Noordermeer_2021.xlsx` - CTCF clusters at TAD boundaries, over extended genomic intervals, CTCF clusters correlate with insulation score. Nano-C and 4C-seq on mESC cells, detailed dissection of CTCF clustering and contribution to domain boundary formation. [Supplementary material](https://www.biorxiv.org/content/10.1101/2021.04.15.440007v1.supplementary-material): CTCF ChIP-seq peaks in mESCs, over 83K peaks with at least one significant CTCF binding motif, mm10, Extended Data Table 1. 
    - Chang, Li-Hsin, Sourav Ghosh, Andrea Papale, Mélanie Miranda, Vincent Piras, Jéril Degrouard, Mallory Poncelet, et al. “[A Complex CTCF Binding Code Defines TAD Boundary Structure and Function](https://doi.org/10.1101/2021.04.15.440007).” Preprint. Genetics, April 15, 2021.
    
- `allcomp.txt.gz`, `CTCFBSDB_all_exp_sites_Sept12_2012.txt.gz` - predicted/experimental CTCF sites from CTCFBSDB (https://insulatordb.uthsc.edu/download). hg19, mm9

- `genomewide_ctcf_motif_fimo` - Motif files can be downloaded from https://bcm.app.box.com/v/juicerawsmirror/folder/11363582187.
    - REN motifs http://www.sciencedirect.com/science/article/pii/S009286740700205X
    - M1 motifs https://www.sciencedirect.com/science/article/pii/S0092867411015078
    
- `ctcf_predictedloops_ENCODE_chipseq_datasets` - Cell-specific Predicted CTCF loops for 100 ENCODE ChIP-seq datasets. 100 files named like `predictedloops_wgEncodeAwgTfbsBroadGm12878CtcfUniPk_prop04.bed`. Columns: chromosome, start, end, paired coordinates and score, score, strand as dot, start coordinate of the first in pair, end coordinate of the second in pair, 16711680, 2, comma-separated width of CTCF sites, comma-separated something. hg19. - From Oti, Martin, Jonas Falck, Martijn A. Huynen, and Huiqing Zhou. “CTCF-Mediated Chromatin Loops Enclose Inducible Gene Regulatory Domains.” BMC Genomics 17 (March 22, 2016): 252. https://doi.org/10.1186/s12864-016-2516-6. - CTCF loops investigation in multiple tissues. Max size - 200kb. Enclose regulatory domains of enhancer-regulated genes. Within loops - enrichment in enhancer-related marks. on the boundaries - histone marks and housekeeping genes from Eisenberg E, Levanon EY. Human housekeeping genes, revisited. Predict CTCF loops from ChIP-seq peaks. CTCF orientation method - should be oriented into the loop. Predicted CTCF sites: https://zenodo.org/record/29423