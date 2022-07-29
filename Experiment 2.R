#2.1
vect=c(155,261,132000,423.4,321,137000,105,240,118000,157.64,260,139000)
row.names<-c("Stock Prices","Employees","Revenue")
column.names<-c("2018","2019")
matrix.names<-c("Apple","Microsoft")
result<-array(c(vect),dim=c(3,2,2),dimnames=list(row.names,column.names,matrix.names))
print(result)

#2.2
diff_price<-result[1,2,1]-result[1,1,1]
avg<-(result[1,2,1]+result[1,1,1])/2
perc_diff<-100*(diff_price/avg)
print('The percentage difference is :')
perc_diff
print('The 2018 Apple Stock Price is :' )
result["Stock Prices","2018","Apple"]

#2.3
a <- array(seq(from = 50, length.out = 15, by = 2), c(5, 3))
print("The array is")
print(a)

#2.4
m1 = matrix(4:25, nrow=5, ncol=4)
print("5 × 4 matrix:")
print(m1)
cells = c(1,3,5,7,8,9,11,12,14)
rnames = c("Row1", "Row2", "Row3")
cnames = c("Col1", "Col2", "Col3")
m2 = matrix(cells, nrow=3, ncol=3, byrow=TRUE, dimnames=list(rnames, cnames))
print("3 × 3 matrix with labels, filled by rows: ")
print(m2)
print("3 × 3 matrix with labels, filled by columns: ")
m3 = matrix(cells, nrow=3, ncol=3, byrow=FALSE, dimnames=list(rnames, cnames))
print(m3)

#2.5
Matrix = matrix(1:9, nrow = 3)
print(Matrix)
M2 = Matrix
for (i in 1:nrow(M2))
{
  for (j in 1:ncol(M2))
  {
    M2[i, j] <- Matrix[j, i]
  }
}
print(M2)

#2.6
m <- matrix(1:9, nrow=3)
m
n <- matrix(9:17, nrow=3)
n
matrix_mul<-m %*% n
print(matrix_mul)