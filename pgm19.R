date<-as.Date("2002/10/23")
n=273
olddate<-date-n
newdate<-date+n
print(paste("original date is ",date))
print(paste("Subtracted date is",olddate))
print(paste("Added date is ",newdate))