File name conventions: `<assembly>.<Database>.<original file name or label>`

- `EDA_SCREEN.Rmd` - Processing https://screen.encodeproject.org/. Basic stats, conversion to GRanges
    - Input: `GRCh38-CTCF.bed` and `mm10-CTCF.bed`
    - Output: `hg38.SCREEN.GRCh38_CTCF`, `mm10.SCREEN.mm10_CTCF` granges objects and BED files
- `EDA_CTCFBSDB.Rmd` - Processing CTCFBSDB, predicted data. Experimental data not used
    - Input: `allcomp.txt.gz`, predicted data
    - Output: `hg18.CTCFBSDB.CTCF_predicted_human`, `mm8.CTCFBSDB.CTCF_predicted_mouse` granges objects and BED files
- `EDA_Chang_Noordermeer_2021.Rmd` - Processing `Chang_Noordermeer_2021.xlsx`
- `EDA_PWMScan.Rmd` - PWMScan analysis
- `EDA_AnnotationHub.Rmd` - explore CTCF data on AnnotationHub and ExperimentHub

# `data`

- `Chang_Noordermeer_2021.xlsx` - CTCF clusters at TAD boundaries, over extended genomic intervals, CTCF clusters correlate with insulation score. Nano-C and 4C-seq on mESC cells, detailed dissection of CTCF clustering and contribution to domain boundary formation. [Supplementary material](https://www.biorxiv.org/content/10.1101/2021.04.15.440007v1.supplementary-material): CTCF ChIP-seq peaks in mESCs, over 83K peaks with at least one significant CTCF binding motif, mm10, Extended Data Table 1. 
    - Chang, Li-Hsin, Sourav Ghosh, Andrea Papale, Mélanie Miranda, Vincent Piras, Jéril Degrouard, Mallory Poncelet, et al. “[A Complex CTCF Binding Code Defines TAD Boundary Structure and Function](https://doi.org/10.1101/2021.04.15.440007).” Preprint. Genetics, April 15, 2021.
    
- `allcomp.txt.gz`, `CTCFBSDB_all_exp_sites_Sept12_2012.txt.gz` - predicted/experimental CTCF sites from CTCFBSDB (https://insulatordb.uthsc.edu/download). hg19, mm9

- `genomewide_ctcf_motif_fimo` - Motif files can be downloaded from https://bcm.app.box.com/v/juicerawsmirror/folder/11363582187.
    - REN motifs http://www.sciencedirect.com/science/article/pii/S009286740700205X
    - M1 motifs https://www.sciencedirect.com/science/article/pii/S0092867411015078
    
- `ctcf_predictedloops_ENCODE_chipseq_datasets` - Cell-specific Predicted CTCF loops for 100 ENCODE ChIP-seq datasets. 100 files named like `predictedloops_wgEncodeAwgTfbsBroadGm12878CtcfUniPk_prop04.bed`. Columns: chromosome, start, end, paired coordinates and score, score, strand as dot, start coordinate of the first in pair, end coordinate of the second in pair, 16711680, 2, comma-separated width of CTCF sites, comma-separated something. hg19. - From Oti, Martin, Jonas Falck, Martijn A. Huynen, and Huiqing Zhou. “CTCF-Mediated Chromatin Loops Enclose Inducible Gene Regulatory Domains.” BMC Genomics 17 (March 22, 2016): 252. https://doi.org/10.1186/s12864-016-2516-6. - CTCF loops investigation in multiple tissues. Max size - 200kb. Enclose regulatory domains of enhancer-regulated genes. Within loops - enrichment in enhancer-related marks. on the boundaries - histone marks and housekeeping genes from Eisenberg E, Levanon EY. Human housekeeping genes, revisited. Predict CTCF loops from ChIP-seq peaks. CTCF orientation method - should be oriented into the loop. Predicted CTCF sites: https://zenodo.org/record/29423

- `02_120920_CTCF_motifs`, from https://figshare.com/articles/dataset/CTCF_core_and_auxiliary_motives_described_in_Nakahashi_et_al_A_genome-wide_map_of_CTCF_multivalency_redefines_the_CTCF_code_/7228733 - CTCF core and auxiliary motives described in Nakahashi et al "A genome-wide map of CTCF multivalency redefines the CTCF code". mm9
    - `bestCoreMotif_pm50_seq.tab` - the best core motif from each peak, oriented the same way, plus 50 flanking nts

- `CTCFBSDB_PWM.mat` - PWMs in TRANSFAC format `wget https://insulatordb.uthsc.edu/download/CTCFBSDB_PWM.mat`

## `PWMscan` https://ccg.epfl.ch/pwmtools/pwmscan.php

- hg38.PWMScan.JASPAR_CORE_2020_vertebrates.CTCF_MA01391 - 148946, 19bp
- hg38.PWMScan.Jomla2013_Human_and_Mouse_HT_SELEX.CTCF_C2H2_full_monomeric - 47794, 17bp
- hg38.PWMScan.Jomla2013_Human_and_Mouse_Complete_Set.CTCF_full - 47792, 17bp
- hg38.PWMScan.HOCOMOCO_v11_Human_TF_Collection.CTCF_HUMAN_H11MO0A - 159522, 19bp
- hg38.PWMScan.Isakova2017_SMILWseq_Human_TF_Binding.CTCF - 79761, 15bp
- hg38.PWMScan.SwissRegulon_Human_and_Mouse.CTCF_p2 - 163274, 20bp
- hg38.PWMScan.CIS_BP.CTCF_M4427_102 - 164278, 21bp

- mm10.PWMScan.JASPAR_CORE_2020_vertebrates.CTCF_MA01391 - 202655, 19bp
- mm10.PWMScan.Jomla2013_Human_and_Mouse_HT_SELEX.CTCF_C2H2_full_monomeric - 103051, 17bp
- mm10.PWMScan.Jomla2013_Human_and_Mouse_Complete_Set.CTCF_full - 103048, 17bp
- mm10.PWMScan.HOCOMOCO_v11_Mouse_TF_Collection.CTCF_MOUSE_H11MO0A - 193410, 20bp
- mm10.PWMScan.Isakova2017_SMILWseq_Mouse_TF_Binding.CTCF - 149581, 17bp
- mm10.PWMScan.SwissRegulon_Human_and_Mouse.CTCF_p2 - 235028, 20bp
- mm10.PWMScan.CIS_BP.CTCF_M6125_102 - 247201, 15bp


















