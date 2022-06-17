vect=c(155,261,132000,423.4,321,137000,105,240,118000,157.64,260,139000)
row.names<-c("Stock Prices","Employees","Revenue")
column.names<-c("2018","2019")
matrix.names<-c("Apple","Microsoft")
result<-array(c(vect),dim=c(3,2,2),dimnames=list(row.names,column.names,matrix.names))
diff_price<-result[1,2,1]-result[1,1,1]
avg<-(result[1,2,1]+result[1,1,1])/2
perc_diff<-100*(diff_price/avg)
print('The percentage difference is :')
print(perc_diff)
print('The 2018 Apple Stock Price is :' )
print(result["Stock Prices","2018","Apple"])
