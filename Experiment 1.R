#1.1
a<-c()
print(a)
a<-(1:5)
print(a)

#1.2
a<-c(1,2,3)
b<-c("Hey","a")
c<-c(TRUE,FALSE)
print(a)
print(class(a))
print(b)
print(class(b))
print(c)
print(class(c))

#1.3
a<-c(1:3)
b<-c(1:3)
c<-c(1:3)
m<-matrix(c(a,b,c),ncol=3)
print(m)

#1.4
a=c(1,2,3)
print(max(a))
print(min(a))

#1.5
fibonacci<-c(1:10)
fibonacci[1]<-1
fibonacci[2]<-1
for(i in 3:10)
{
  fibonacci[i]<-fibonacci[i-2]+fibonacci[i-1]
}
print("First 10 fibonacci are :")
print(fibonacci)

#1.6
fibonacci<-c(1:10)
fibonacci[1]<-1
fibonacci[2]<-1
for(i in 3:10)
{
  fibonacci[i]<-fibonacci[i-2]+fibonacci[i-1]
}
print("First 10 fibonacci are :")
print(fibonacci)

#1.7
factors<-function(x)
{
  print(paste("The factors of ",x,"are :"))
  for(i in 1:x)
  {
    if(x%%i==0)
    {
      print(i)
    }
  }
}
factors(9)

#1.8
a<-c(1:3)
b<-c(5:7)
print(a)
print(b)
print(a+b)
print(a*b)
print(mean(a))

#1.9
date<-as.Date("2002/10/23")
n=273
olddate<-date-n
newdate<-date+n
print(paste("original date is ",date))
print(paste("Subtracted date is",olddate))
print(paste("Added date is ",newdate))

#1.10
date1<-as.Date("2023-05-07",format="%Y-%m-%d")
date2<-as.Date("2002-10-23",format="%Y-%m-%d")
print(paste("Date 1 is ",date1))
print(paste("Date 2 is ",date2))
difftime(date1,date2,units = "days")
