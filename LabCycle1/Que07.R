# Fibonacci Series with a Twist 
# Develop a program to generate the Fibonacci series, but with a twist.
# Allow the user to input the number of terms and generate the series where each term is the sum of the last three terms. 

n <- as.integer(readline(prompt = "Enter number of terms: "))

if (n<=0){
  print("Error: insufficient number of terms")
}else {
  fibbonaciSequence <- c(0,1,1)
  len <- 3
  while(len < n){
    fibbonaciSequence <- append(fibbonaciSequence,sum(tail(fibbonaciSequence,3)))
    len <- len + 1
  }
  cat("Fibonnaci sequence:", fibbonaciSequence[0:n])
}