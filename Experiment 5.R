#5.1
library(ggplot2)
library(dplyr)
library(broom)
library(plyr)
tv<-read.csv("tv.csv")
data(tv)
relation <- lm(Sales~TV,data=tv)
summary(relation)
ggplot(relation,aes(TV,Sales))+ geom_jitter(aes(TV,Sales),size=1,color="black")+geom_smooth(aes(TV,Sales),method="lm",se=FALSE,color="black",size=0.5)

#5.2
library(ggplot2)
library(predict3d)
jobprof<-read.csv("jobprof.csv")
data(jobprof)
model <- lm(y~x1+x2+x3,data=jobprof)
summary(model)
p<-ggplot(model)+geom_jitter(aes(x1,y),colour="red")+geom_smooth(aes(x1,y,col="x1"),method="lm",se=FALSE)+geom_jitter(aes(x2,y),colour="green")+geom_smooth(aes(x2,y,col="x2"),method="lm",se=FALSE)+
   geom_jitter(aes(x3,y),colour="blue")+geom_smooth(aes(x3,y,col="x3"),method="lm",se=FALSE)
p+ggtitle("Multple Linear Regression")+xlab("X")+ylab("Y")