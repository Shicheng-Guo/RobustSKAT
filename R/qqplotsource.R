qqplot<-function(pvalues,memo){
  library("Haplin")
  pdf(paste(memo,".qqplot.pdf",sep=""))
  pQQ(na.omit(pvalues), nlabs =length(pvalues), conf = 0.95)
  dev.off()
}
