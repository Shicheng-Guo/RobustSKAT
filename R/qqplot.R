library("CMplot")

qqplot<-function(pvalues,memo){
  library("Haplin")
  pdf(paste(memo,".qqplot.pdf",sep=""))
  pQQ(na.omit(pvalues), nlabs =length(pvalues), conf = 0.95)
  dev.off()
}

file<-list.files(pattern="*.csv")

memo="CRC"
output<-read.csv(file[1],as.is=T)
CHR<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[1]))
POS<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[2]))
SNP<-output$GeneName
Pval<-output$p.value
cminput<-na.omit(data.frame(SNP,Chromosome=CHR,Position=POS,trait1=Pval))
CMplot(cminput,plot.type="b",memo=paste(memo,".fix",sep=""),LOG10=TRUE,threshold=NULL,file="jpg",dpi=300,file.output=TRUE,verbose=TRUE,width=14,height=6)
qqplot(cminput$trait1,memo)
write.table(cminput,file=paste(memo,".UKBB.RobustSKAT.txt",sep=""),sep="\t",quote=F,row.name=T,col.names=NA)

memo="ESCC"
output<-read.csv(file[2],as.is=T)
CHR<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[1]))
POS<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[2]))
SNP<-output$GeneName
Pval<-output$p.value
cminput<-na.omit(data.frame(SNP,Chromosome=CHR,Position=POS,trait1=Pval))
CMplot(cminput,plot.type="b",memo=paste(memo,".fix",sep=""),LOG10=TRUE,threshold=NULL,file="jpg",dpi=300,file.output=TRUE,verbose=TRUE,width=14,height=6)
qqplot(cminput$trait1,memo)
write.table(cminput,file=paste(memo,".UKBB.RobustSKAT.txt",sep=""),sep="\t",quote=F,row.name=T,col.names=NA)

memo="RA"
output<-read.csv(file[3],as.is=T)
CHR<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[1]))
POS<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[2]))
SNP<-output$GeneName
Pval<-output$p.value
cminput<-na.omit(data.frame(SNP,Chromosome=CHR,Position=POS,trait1=Pval))
CMplot(cminput,plot.type="b",memo=paste(memo,".fix",sep=""),LOG10=TRUE,threshold=NULL,file="jpg",dpi=300,file.output=TRUE,verbose=TRUE,width=14,height=6)
qqplot(cminput$trait1,memo)
write.table(cminput,file=paste(memo,".UKBB.RobustSKAT.txt",sep=""),sep="\t",quote=F,row.name=T,col.names=NA)

memo="MS"
output<-read.csv(file[3],as.is=T)
CHR<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[1]))
POS<-unlist(lapply(strsplit(output$Start_Pos,":"),function(x) x[2]))
SNP<-output$GeneName
Pval<-output$p.value
cminput<-na.omit(data.frame(SNP,Chromosome=CHR,Position=POS,trait1=Pval))
CMplot(cminput,plot.type="b",memo=paste(memo,".fix",sep=""),LOG10=TRUE,threshold=NULL,file="jpg",dpi=300,file.output=TRUE,verbose=TRUE,width=14,height=6)
qqplot(cminput$trait1,memo)
write.table(cminput,file=paste(memo,".UKBB.RobustSKAT.txt",sep=""),sep="\t",quote=F,row.name=T,col.names=NA)





