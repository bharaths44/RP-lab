
  n = as.integer(readline(prompt = "Enter a number :"))
  for (j in 2:n) {
    f = 1
    i = 2
    n = j
    while (i <= n / 2) 
      {
      if (n %% i == 0) 
        {
        f = 0
        break
      }
      i = i + 1
    }
    if (f == 1) 
      {
      print(n)
    }
  }
