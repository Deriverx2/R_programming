# Prime Number Checker
# Write a program to check whether a given number is prime or not. 
# Implement this using both loops and functions. 
# Additionally, allow the user to input a range and identify all prime numbers within that range.  

checkPrime <- function(num){
  if (num <= 1){
    return(FALSE)
  }
  limit <- floor(sqrt(num))
  while (limit > 1) {
    if (num%%limit == 0){
      return(FALSE)
    }
    limit <- limit - 1
  }
  return(TRUE)
}

getPrimes <- function(n){
  if (n <= 1){
    return(c())
  }
  primes <- 2:n
  for (i in primes) {
    for (j in primes){
      primes <- primes[ primes != i*j]
    }
    
  }
  return(primes)
}

menu <- function(){
  cat("1. Check if given number is prime\n2.Get all prime numbers in given range.\n3.Exit\n")
  while (TRUE) {
    choice <- as.integer(readline(prompt = "Enter choice:"))
    if(choice==1){
      n <- as.integer(readline(prompt = "Enter number to check whether prime: "))
      result <- checkPrime(n)
      if (result){
        cat(n, "is prime")
        next
      }
      cat(n,"is NOT a prime number")
    }
    else if (choice == 2){
      n <- as.integer(readline(prompt = "Enter upper range to retrieve prime: "))
      result <- getPrimes(n)
      cat("The primes numbers upto",n,"are:", result)
    }
    else {
      print("Error:Wrong choice")
      break
    }
  }
}

menu()