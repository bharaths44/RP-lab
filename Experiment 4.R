#4.1
data("iris")
library(ggplot2)
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+geom_point(aes(color=factor(Species)))+geom_smooth(method="lm")+geom_label(aes(label=Species,hjust=0),nudge_y=0.5,size=2)

#4.2
v <-  c(45,50,41,45,50,34,33,32,31,10,17,32,31,41,17,25,27,29,43,45,46,35,36)
hist(v,xlab = "Height",col = "Blue",border = "Black", xlim = c(10,50), ylim = c(0,7),breaks = 10)

#4.3
boxplot(iris)

#4.4
ggplot(iris, aes(x = factor(Sepal.Length))) + geom_bar()

