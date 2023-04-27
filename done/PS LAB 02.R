#PS Lab sheet 02
#Tharaka Madushanka
getwd()
setwd("D:/SLIIT/Year 02/Y2S2/P&S/LAB/Lab 02-20230422")
getwd()

#Control Statements
#if
x<-4
x

if(x>0){
  print("Positive Number")
}

#if else
x<-7
x<--2
x
y

if(x>0){
  print("Positive Number")
}else{
  print("Negative Number")
}

if(y>0){
  print("Positive Number")
}else{
  print("Negative Number")
}

#nested if
x<-0
x<--2

if(x>0){
  print("Positive Number")
}else if(x<0){
  ("Negative Number")
}else{
  ("Zero")
}

#while loop (1,2,3,4,5)
i<-1

while(i<6){
  print(i)
  i=i+1
}


#for loop (7,8,9)
6:10
7:9

for(i in 1:10){
  print(i)
}


#control Statements
#import file
#csv
data1<-read.csv("DATA 2.csv")
fix("data1")
data1

#text
data2<-read.table("DATA 2.txt",header=TRUE, sep=",")
data2
fix("data2")

#write data to file

index<-c(1,2,3)
Name<-c("Kamal","Nimal","Sunil")
marks<-c(23,56,34)

dataframe<-data.frame(index,Name,marks)
dataframe

#to csv file
write.csv(dataframe,"dataframe1.csv")

#to text file
write.table(dataframe,"dataframe2.txt")


#Functions
function_01<-function(a,b){
  y<-a+b
  #print(y)
  y
}

#calling the function
function_01(4,6)

#Q01
quadRoots<-function(a,b,c){
  x1=(-b+sqrt(b^2-4*a*c))/2*a
  x2=(-b-sqrt(b^2-4*a*c))/2*a
  print(x1)
  print(x2)
}

quadRoots(2,3,1)

#Real roots for quadratic equation 2x^2+3x+1=0

#Q04
#1:K
#k=20
vec1<-c(1:20) #3,6,9,12,15,18
sum(vec1%%3==0)

#Q06
data3<-c(24,67,45,23)
max<-0
maxIndex<-0

for(i in 1:length(data3)){
  if(max<data3[i]){
    max<-data3[i]
    maxIndex<-i
  }
}

maxIndex

#Q07
which.max(data3)

#Q08
A<-0

moneyOwed<-function(P,R,n){
  for(i in 1:n){
    A=P*((1+(R/100))^i)
    print(A)
  }
}

moneyOwed(5000,11.5,15)













