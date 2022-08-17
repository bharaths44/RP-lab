#5.1
library(ggplot2)
tv<-read.csv("tv.csv")
data(tv)
relation <- lm(Sales~TV,data=tv)
relation
plot(relation)

#5.2
library(ggplot2)
jobprof<-read.csv("jobprof.csv")
data(jobprof)
model <- lm(y~x1+x2+x3,data=jobprof)
model
plot(model)
