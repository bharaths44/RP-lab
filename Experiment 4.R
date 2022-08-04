#4.1
data("iris")
library(ggplot2)
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+geom_point(aes(color=factor(Species)))+geom_smooth(method="lm")+geom_label(aes(label=Species,hjust=0),nudge_y=0.5,size=2)

#4.2
library(ggplot2)
ggplot(iris,aes(x=Petal.Length))+geom_histogram(color="Black")

#4.3
library(ggplot2)
ggplot(iris,aes(Species,Petal.Length))+geom_boxplot()

#4.4
library(ggplot2)
ggplot(iris, aes(x = Petal.Width)) + geom_bar()

