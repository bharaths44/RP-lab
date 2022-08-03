#3.1
x <- list("1", "2", "3","4","5","6")
print("The original list is ")
print(x)
result = rev(x)
print("The reversed list is")
print(result)

#3.2
l1<-list(1,2,3,4,5,6)
print("The original list is ")
print(l1)
for(i in l1) l1[i]<-as.integer(l1[i])^2
l1

#3.3
x = list(list(1,2), list(13,4), list(5,26))
print("Original nested list:")
print(x)
e = lapply(x, '[[', 2)
print("Second element of all the nested list:")
print(e)

#3.4
n1 = list(1,2,3,4,5,6)
c1 = list("A", "B", "C")
print("Original lists:")
print(n1)
print(c1)
mlist=c(n1, c1)
print("New merged list:")
print(mlist)

#3.5
l1<-list(3,6,9)
print("The list is :")
l1
print("The unlisted object is")
x<-unlist(l1)
x

#3.6
data_emp<-data.frame(Name=c("John","Earl","Chris","Joseph","Elliot"),
    Age=c(30,28,25,27,42),Gender=c("M","M","M","M","M"),
    Designation=c("CEO","Manager","HR","Salesaman","Director"),
    Contact=c("9845678902","1234567890","4545451789","4784367893","8123567893"))
print("Details of the employees :")
data_emp
summary(data_emp)

#3.7
data<-data.frame(Name=c("John","Elliot","Chris"),
                SGPA=c(10,9.4,9.8),Pass=c("Y","Y","Y"))
print("Original dataframe")
data
print("Statistical summary and nature of dataframe :")
summary(data)
str(data)

#3.8
data_emp<-data.frame(Name=c("John","Earl","Chris","Joseph","Elliot"),
                     Age=c(30,28,25,27,42),Gender=c("M","M","M","M","M"),
                     Designation=c("CEO","Manager","HR","Salesaman","Director"),
                     Contact=c("9845678902","1234567890","4545451789","4784367893","8123567893"))
print("Original dataframe")
data_emp
data_emp<-data_emp[c(3,5),c(1,3)]
print("Extracted data")
data_emp

#3.9
df<-data.frame("c1"=c(1,2,3,4),"c2"=c(5,6,7,8))
df
df[nrow(df)+1,]<-c(9,10)
df

#3.10
data<-data.frame(Name=c("John","Elliot","Chris"),
                 SGPA=c(10,9.4,9.8),Pass=c("Y","Y","Y"))
print("Original dataframe")
data
data<-data[with(data,order(SGPA)),]
print("Soreted dataframe is :")
data

#3.11
data<-read.csv("empdata.csv")
data
print("The max salary is :")
sal <- max(data$salary)
print(sal)
print("The Person with max salary is")
val <- subset(data, salary == max(salary))
print(val)
print("People in IT department")
val <- subset( data, dept == "IT")
print(val)
print("People joined on or after 2014")
val <- subset(data, as.Date(start_date) > as.Date("2014-01-01"))
print(val)
write.csv(val,"output.csv")
newdata <- read.csv("output.csv")
print(newdata)
