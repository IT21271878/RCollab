getwd()
data1<-read.table("Data - Lab 7.txt",header=TRUE)
beat2<-data
beta<-data[[1]]
data
mean(beat2[[1]])

samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(beta,5)
  samples<-cbind(samples,s)
  n<-c()
}
