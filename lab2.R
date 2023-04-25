#control statements
#if

x<-4
if(x>0){
  print("positiveNumber")
}else if(x<0){
  print("negative Number")
}

i<-1
while(i<=6){
  print(i)
  i=i+1
}
for(j in 1:10){
  print(j)
}

data1<-read.csv("DATA 2.csv")
fix("data1")
data1

data21<-read.table("DATA 2.txt",header =TRUE, sep=" ")
data21
fix("data2")

a1<-c(12,32,43,54,55)
b1<-c(32,53,56,33,22)
c1<-c(32,55,22,11,11)

dataWrite<-data.frame(a1,b1,c1)
dataWrite
write.csv(dataWrite,"dataWrite.csv")
