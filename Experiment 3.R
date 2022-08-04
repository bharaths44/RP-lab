#3.1
x <- list("1", "2", "3","4","5","6")
print("The original list is ")
print(x)
result = rev(x)
print("The reversed list is")
print(result)

#3.2
list<-list(1,2,3,4)
print("The original list is ")
print(list)
for(i in list) list[i]<-as.integer(list[i])^2
list

#3.3
x <- list(list(0,4), list(1,2), list(5,6))
print("Original nested list:")
print(x)
sec <- lapply(x, '[[', 2)
print("Second element of all the nested list:")
print(sec)

#3.4
list1 <- list(1,2,3,4)
list2 <- list("A", "B", "C")
print("Original lists:")
print("List1")
list1
print("List2")
list2
merge<-c(list1, list2)
print("New merged list:")
merge

#3.5
list<-list(1,2,3)
print("The list is :")
list
a<-unlist(list)
print("The unlisted object is")
a

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
print("Sorted dataframe is :")
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
val <- subset(data,as.Date(start_date) > as.Date("2014-01-01"))
print(val)

write.csv(val,"output.csv")
print("Output.csv :")
newdata <- read.csv("output.csv")
print(newdata)
