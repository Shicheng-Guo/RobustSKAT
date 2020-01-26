## RobustSKAT
library("CMplot")
source("https://raw.githubusercontent.com/Shicheng-Guo/RobustSKAT/master/R/qqplotsource.R")
memo="RA"
output<-read.table("result_gene_714.txt",head=T,sep="\t",as.is=T)
CHR<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[1]))
POS<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[2]))
SNP<-output$GeneName
Pval<-output$p.value
cminput<-na.omit(data.frame(SNP,Chromosome=CHR,Position=POS,trait1=Pval))
head(cminput)
CMplot(cminput,plot.type="b",memo=paste(memo,".fix",sep=""),LOG10=TRUE,threshold=NULL,file="jpg",dpi=300,file.output=TRUE,verbose=TRUE,width=14,height=6)
qqplot(cminput$trait1,memo)
write.csv(cminput[order(cminput[,4]),],file=paste(memo,".UKBB.RobustSKAT.csv",sep=""),quote=F,row.names=F)
write.csv(output[order(output[,9]),],file=paste(memo,".UKBB.RobustSKAT.input.csv",sep=""),quote=F,row.names=F)
