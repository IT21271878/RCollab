getwd()
data1<-read.table("DATA.txt",header=TRUE,sep=",")
data1
names(data1)<-c("X1","X2")
attach(data1)

hist(X2,main="The StakeHoders")
abline(h=0)

histo<- hist(X2,main="Hiostogram Share Holders",breaks = seq(130,270),right=TRUE)
histo2<-hist(X2,main="H2Gram0",breaks=seq(130,270,length=8),right=TRUE)

#lets find out break poimnts
breakss<-round(histo2$breaks)
breakss

#lets find out frequencies
freq<-histo2$counts
freq

#finding midpoints in the histogram
hismid<-histo2$mids
hismid

clasy<-c()

for(i in 1:length(breakss)-1){
    clasy[i]<-paste0("[",breakss[i],",",breakss[i+1],"]")
}
cbind(Classes=clasy,Frequency=freq)



lines(hismid,freq)

plot(hismid,freq,type="l",main="THIs IS PLOT",xlab="nothjinf",ylab="frwe",ylim=c(0,max(freq)))

cum.freq<-cumsum(freq)
cum.freq
