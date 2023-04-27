#PS Lab sheet 03
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 03-20230422")
getwd()

#01
#import data set
data<-read.csv("DATA 3.csv",header=TRUE)
data

#get data in the editor mode
fix(data)

#rename the columns
names(data)<-c("Age","Gender","Accomodation")
fix(data)

#rename categorical data
data$Gender<-factor(data$Gender,c(1,2),c("Male","Female"))
fix(data)

data$Accomodation<-factor(data$Accomodation,c(1,2,3),c("Home","Boarded","Lodging"))
fix(data)

attach(data)


#Q02
#frequency table
gender.freq<-table(Gender)
acc.freq<-table(Accomodation)

gender.freq
acc.freq

#pie chart
pie(gender.freq,"Pie Chart for Gender")
pie(acc.freq,"Pie Chart for Accomodation")

#bar plot
barplot(gender.freq,main = "Bar plot for Gender",ylab = "Frequency")
abline(h=0)

barplot(acc.freq,main = "Bar plot for Accomodation",ylab = "Frequency")
abline(h=0)

#box plot
boxplot(Age,main="Boxplot of Age",ylab="Age",outpch=8)


#Q03
#Two-way frequency table
gender_acc.freq<-table(Gender,Accomodation)
gender_acc.freq

#stack bar chart
barplot(gender_acc.freq,main="Gender & Accomodation",legend=rownames(gender_acc.freq))
abline(h=0)

#clustered bar charts
barplot(gender_acc.freq,beside=TRUE,main="Gender & Accomodation",legend=rownames(gender_acc.freq))
abline(h=0)

Q04
#side by side box plot
boxplot(Age~Gender,main="Boxplot for Age by Gender",xlab="Gender",ylab="Age")

boxplot(Age~Accomodation,main="Boxplot for Age by Accomodation",xlab="Accomodation",ylab="Age",outpch=18)


#Q05
xtabs(Age~Gender+Accomodation)/gender_acc.freq

