getwd()
data<-read.table("Forest.txt",header=TRUE,sep=",")
data

summary(data)

attach(data)
str(data)
max(wind)
min(wind)

boxplot(wind,horizontal = TRUE,main="asa",ylab="dsa",xlab="dsa",outline = TRUE,pch=16)
sd