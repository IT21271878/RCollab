getwd()
setwd("E:\\1.SLIIT\\YEAR 2\\SEM 2\\STATS\\RCollab")

data<-read.table("DATA 4.txt",header=TRUE,sep="")
data
fix(data)

names(data)<-c(
  "Team",
  "Attendence",
  "Salary",
  "Years"
)
data

attach(data)
Attendence

boxplot(Attendence,main="Boxplot For Attendence",outline=TRUE,xlab="attendence",horizontal = TRUE)
boxplot(Salary,main="Boxplot For Salary",outline=TRUE,xlab="Salary",horizontal=TRUE)
boxplot(Years,main="Boxplot For Years",outline=TRUE,xlab='Years',horizontal = TRUE)

hist(Attendence,main="For Attendence0",ylab="Frequency")
abline(h=0)
hist(Salary,main="For Salary",ylab="Frequency")
abline(h=0)

stem(Attendence)
stem(Salary)
stem(Years)

mean(Attendence)
mean(Salary)
mean(Years)

median(Attendence)
median(Salary)
median(Years)

sd(Years)

summary(Attendence)
  
  geta<-function(y){
    counts<-table(y)
    names(counts)[counts==max(counts)]
  }
  
  geta(Years)

