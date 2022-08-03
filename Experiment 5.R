#5.1
library(ggplot2)
library(dplyr)
library(broom)

relation <- lm(TV~Sales,data=tv)
summary(relation)
plot(tv$Sales,tv$TV) 
abline(relation)

#5.2
data(jobprof)
model <- lm(y~x1+x2+x3,data=jobprof)
summary(model)
#ggplot(model)+geom_jitter(aes(x1,y),colour="red")+geom_smooth(aes(x1,y,col="red"),method="lm",se=FALSE)+geom_jitter(aes(x2,y),colour="green")+geom_smooth(aes(x2,y,col="green"),method="lm",se=FALSE)+
 # geom_jitter(aes(x3,y),colour="blue")+geom_smooth(aes(x3,y,col="blue"),method="lm",se=FALSE)
ggplot(jobprof,aes(y,x1,x2,x3))+geom_point()+stat_smooth(method="lm")