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