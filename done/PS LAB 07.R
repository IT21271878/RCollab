#PS Lab sheet 07
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 07-20230422")
getwd()

nicotine<-read.table("Data - Lab 7.txt",header = TRUE)
fix(nicotine)
nicotine

#change data structure
nicotine<-nicotine[[1]]
nicotine

#Q01
mean(nicotine)
var(nicotine)
sd(nicotine)

#Q02
s<-sample(nicotine,5)
s
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(nicotine,5)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)<-n
samples

s.means<-colMeans(samples)
s.means

s.vars<-apply(samples,2,var)
s.vars

#Q03
mean(s.means)
var(s.means)

#Q04
mean(nicotine)
mean(s.means)

#Q05
var(nicotine)
var(s.means)

#2 values are not equal. Sample size is too small.

