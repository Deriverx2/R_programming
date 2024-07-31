# Palindrome Checker
# Write a program that reads a string and checks if its a palindrome.
# A palindrome is a string that reads the same forwards and backwards, ignoring spaces and punctuation.  

checkPalindrome <- function(string) {
  string <- strsplit(string, "")[[1]]
  len <- length(string)
  
  for (i in 1:(len / 2)) {
    if (string[i] != string[len - i + 1]) {
      return(FALSE)
    }
  }
  return(TRUE)
}

string <- readline(prompt = "Enter string to check whether palindrome: ")

if (checkPalindrome(string)) {
  print("Given string is a palindrome")
} else {
  print("Given string is NOT a palindrome")
}