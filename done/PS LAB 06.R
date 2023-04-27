#PS Lab sheet 06
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 06-20230422")
getwd()

#Q01
data1<-read.table("Forest.txt",header = TRUE,sep = ",")
data1

fix(data1)

attach(data1)

#Q02
#give the summary of the structure of the data set
str(data1)

#Q03
#517 observations

#Q04
max(wind)
min(wind)

#Q05
#five number summary
summary(temp)

#Q06
boxplot(wind,horizontal = TRUE, outline = TRUE, pch = 16)
#3 outliers
#negative skewed distribution

#Q07
#negative distribution

#Q08
median(temp)

#Q09
mean(wind)
summary(wind)

#standard variation of wind variable
sd(wind)

#Q10
IQR(wind)
#4.9-2.7=2.2

#Q11
#2 way frequency table for day and variable
freq<-table(day,month)
freq

freq<-table(month,day)
freq
#answer=21

#Q12
#avg is mean
mean(temp[month=="sep"])

#Q13
count<-table(day[month=="jul"])
names(count[count==max(count)])


