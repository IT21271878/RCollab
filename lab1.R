#vector
w<-c(1,2,3,4,5)
w
class(w)

r<-c("a","b","c")
r
class(r)

#factor
gender<-c(.0,1,0,1,1,1)
gender

fac<-factor(gender,c(0,1),c("M","F"))
fac
getwd()

lst<-list(gender,fac,w)
lst
vec2<-c("2.0","ds")
vec2
class(vec2)

matrix<-matrix(c(1,2,3,4),nrow = 2,ncol=2,byrow=FALSE)
matrix
 
a<-c(1,2,3,4,5)
b<-c(1,2,3,4,5)

data<-data.frame(a,b)
data
