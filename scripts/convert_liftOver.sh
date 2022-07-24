# Environment with liftOver
# conda activate bedtools

# Log file
FILELOG=log_liftOver.csv

# Human
CHAINS=( chm13v2-grch38.chain chm13v2-hg19.chain grch38-chm13v2.chain hg18ToHg19.over.chain hg18ToHg38.over.chain hg19-chm13v2.chain hg19ToHg18.over.chain hg19ToHg38.over.chain hg38ToHg19.over.chain )

FROM=( T2T T2T hg38 hg18 hg18 hg19 hg19 hg19 hg38 )
  TO=( hg38 hg19 T2T hg19 hg38 T2T hg18 hg38 hg19 )

FILES=( T2T.MA0139.1.FIMO.bed hg18.MA0139.1.FIMO.bed hg19.MA0139.1.FIMO.bed hg38.MA0139.1.FIMO.bed )

for i in `seq 0 8`; do
	FILEIN=data/${FROM[$i]}.MA0139.1.bed
	CHAIN=chains/${CHAINS[$i]}
	FILEOUT=data/${TO[$i]}_liftOver_from_${FROM[$i]}.bed
	FILEUNMAPPED=data/Unmapped.${FROM[$i]}.liftOver.${TO[$i]}.bed
	echo `basename ${FILEIN}` " to " `basename ${FILEOUT}`
	liftOver <(cat ${FILEIN} | cut -f1-6) ${CHAIN} ${FILEOUT} ${FILEUNMAPPED}
	wc -l ${FILEIN} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
	wc -l ${FILEOUT} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
	wc -l ${FILEUNMAPPED} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
done

# Mouse
CHAINS=( mm9ToMm10.over.chain mm10ToMm9.over.chain mm10ToMm39.over.chain mm39ToMm10.over.chain )

FROM=( mm9 mm10 mm10 mm39 )
  TO=( mm10 mm9 mm39 mm10 )

FILES=( mm9.MA0139.1.bed mm10.MA0139.1.bed mm39.MA0139.1.bed )

for i in `seq 0 3`; do
	FILEIN=data/${FROM[$i]}.MA0139.1.bed
	CHAIN=chains/${CHAINS[$i]}
	FILEOUT=data/${TO[$i]}_liftOver_from_${FROM[$i]}.bed
	FILEUNMAPPED=data/Unmapped.${FROM[$i]}.liftOver.${TO[$i]}.bed
	echo `basename ${FILEIN}` " to " `basename ${FILEOUT}`
	liftOver <(cat ${FILEIN} | cut -f1-6) ${CHAIN} ${FILEOUT} ${FILEUNMAPPED}
	wc -l ${FILEIN} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
	wc -l ${FILEOUT} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
	wc -l ${FILEUNMAPPED} | awk '{OFS=","} {print $2,$1}' >> ${FILELOG}
done
