#PS Lab sheet 04
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 04-20230422")
getwd()

#Q01
#importing data set
data<-read.table("DATA 4.txt", header=TRUE, sep="")
data

#data editor view
fix(data)

#renaming columns
names(data)<-c("Team","Attendance","Salary","Years")
data

#accessing variables or columns directly without calling whole data set
attach(data)


#Q02
#box plot
boxplot(Attendance,main="Boxplot for Attendance",outline=TRUE,xlab="Attendance",horizontal = TRUE)
boxplot(Salary,main="Boxplot for Salary",outline=TRUE,xlab="Salary",horizontal = TRUE)
boxplot(Years,main="Boxplot for Years",outline=TRUE,xlab="Years",horizontal = TRUE)


#histogram
hist(Attendance,main = "Histogram for Attendance",ylab = "Frequency")
abline(h=0)
hist(Salary,main = "Histogram for Salary",ylab = "Frequency")
hist(Years,main = "Histogram for Years",ylab = "Frequency")

#steam and leaf plot
stem(Attendance)
stem(Salary)
stem(Years)

#mean
mean(Attendance)
mean(Salary)
mean(Years)

#median
median(Attendance)
median(Salary)
median(Years)

#Standard Deviation
sd(Attendance)
sd(Salary)
sd(Years)

#summary of all quantile value
summary(Attendance)
summary(Salary)
summary(Years)

#quantile value
quantile(Attendance)
quantile(Salary)
quantile(Years)

quantile(Attendance)[2]
quantile(Attendance)[4]

#Interquartile Range
IQR(Attendance)
IQR(Salary)
IQR(Years)


#Q03
#function that accept argument Years and give the mode
get.modes <- function(y) {
  counts<-table(y)
  names(counts)[counts==max(counts)]
}

get.modes(Years)


#Q04
get.outliers <- function(z) {
  q1<-quantile(z)[2]
  q3<-quantile(z)[4]
  iqr<-q3-q1
  ub<-q3+1.5*iqr
  lb<-q1-1.5*iqr
  print(paste("Upper Bound",ub))
  print(paste("Lower Bound",lb))
  print(paste("Outliers",paste(sort(z[z<lb|z>ub]),collapse = ",")))
}

get.outliers(Attendance)
get.outliers(Years)
get.outliers(Salary)































