#3.1
x <- list("1", "2", "3","4","5","6")
print("The original list is ")
print(x)
result = rev(x)
print("The reversed list is")
print(result)

#3.2
x <- c(1,2,3,4,5,6)
print("The original list is ")
print(x)
sqr <- sapply(x, function(x) x ^ 2)
print("The squared vector ")
print(sqr)

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
print("Merge the said lists:")
mlist=c(n1, c1)
print("New merged list:")
print(mlist)

