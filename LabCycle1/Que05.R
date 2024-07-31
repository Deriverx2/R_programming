# Series Summation 
# Develop a program to calculate the sum of the series: 1 - 2/3 + 3/5 - 4/7 + ... up to a specified number of terms.
# Allow the user to input the number of terms in the series.  

library(MASS)
n <- as.integer(readline(prompt = "Enter number of terms: "))

numerator <- 1
denominator <- 1
value <- 0

while (numerator <= n) {
  value <-  value + (numerator/denominator)
  numerator <- numerator+1
  denominator <- denominator+2
  if(numerator > n) break
  value <-  value - (numerator/denominator)
  numerator <- numerator+1
  denominator <- denominator+2
}

print(paste("Sum of series:",fractions(value)))