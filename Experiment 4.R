#4.1
data("iris")
library(ggplot2)
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+geom_point(aes(color=factor(Species)))+geom_smooth(method="lm")+geom_label(aes(label=Species,hjust=0),nudge_y=0.5,size=2)

#4.2
v <-  c(9,13,21,8,36,22,12,41,31,33,19)
hist(v,xlab = "Weight",col = "green",border = "red", xlim = c(0,40), ylim = c(0,5),breaks = 5)

#4.3
boxplot(iris)

#4.4
ggplot(iris, aes(x = factor(Sepal.Length))) + geom_bar()

