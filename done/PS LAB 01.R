#PS Lab Sheet 01
#Tharaka Madushanka
10%%3
10/3
10*3
10+3
10-3
10%/%3

5>3
2==2
2==3
5!=4

e=5<2
isTRUE(e)

x=5
y=4
isTRUE(x==5)
isTRUE(x>5)
isTRUE(y==5)
isTRUE(x>5 | y>0)
isTRUE(x>5 & y<0)
isTRUE(x>5 & y>0)
isTRUE(x>5 | y!=0)


x=5
x<-8
x<-"Dog"
x
x<<-8
x

install.packages("Matrix")
install.packages("compiler")


5+6

vec<-c(2,3,5,8,4)
vec
print(vec)

vec1<-c("a","b","c")
p<-c(1,2,3,4)
q<-c("dog","cat","man")
r<-8000

gg<-c(p,q,r)

gg


#list

hh<-list(gg)
hh

class(hh)


class(gg)


gender<-c("male","female","female","male")
gender

gen<-factor(gender,c("male","female"),c(1,0))
gen


#matrix

matri1<-matrix(c(40,50,22,33),ncol = 2,nrow = 2,byrow = TRUE)
matri1

matri2<-matrix(c(40,50,22,33),ncol = 2,nrow = 2,byrow = FALSE)
matri2

#data frame

height<-c(6,5.5,4,6,5.9)
weight<-c(55,65,75,80,56)

datasets<-data.frame(height,weight)
datasets
