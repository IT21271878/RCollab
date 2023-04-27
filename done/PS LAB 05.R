#PS Lab sheet 05
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 05-20230422")
getwd()

#read the data set
data1<-read.table("data.txt", header = TRUE, sep = ",")
data1
fix(data1)

#rename the table header
names(data1)<-c("x1","x2")

attach(data1)

#Q01
hist(x2, main = "Histogram for Number of Shareholders")

#Q02
histogram<-hist(x2, main = "Histogram for Number of Shareholders", breaks = seq(130,270,length = 8),right = 4)

#n=number of classes
#length = n+1

#Q03
#1step - Identify break points
breaks<-round(histogram$breaks)
breaks

#2 step - Identify frequencies of each class
freq<-histogram$counts
freq

#3 step - Identify mid point of each class
mid<-histogram$mids
mid

classes<-c()

for(i in 1:length(breaks)-1){
  classes[i]<-paste0("[",breaks[i],",",breaks[i+1],"]")
}

cbind(classes=classes,frequency=freq)

#Q04
#draw in the same plot
lines(histogram$mids,freq)

#draw in new plot
plot(mid,freq,type = "l", main = "Frequency polygon for number of shareholders", xlab = "Shareholders", ylab = "Frequency",ylim = c(0,max(freq)))
plot(mid,freq,type = "o", main = "Frequency polygon for number of shareholders", xlab = "Shareholders", ylab = "Frequency",ylim = c(0,max(freq)))
plot(mid,freq,type = "p", main = "Frequency polygon for number of shareholders", xlab = "Shareholders", ylab = "Frequency",ylim = c(0,max(freq)))

#Q05
cum.freq<-cumsum(freq)
cum.freq

#empty vector
new<-c()

for (i in 1:length(breaks)) {
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

plot(breaks,new,type = "o", main = "Frequency polygon for number of shareholders", xlab = "Shareholders", ylab = "Cumulative Frequency",ylim = c(0,max(cum.freq)))

cbind(Upper=breaks,CumFreq=new)

