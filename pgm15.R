fibonacci<-c(1:10)
fibonacci[1]<-1
fibonacci[2]<-1
for(i in 3:10)
{
  fibonacci[i]<-fibonacci[i-2]+fibonacci[i-1]
}
print("First 10 fibonacci are :")
print(fibonacci)