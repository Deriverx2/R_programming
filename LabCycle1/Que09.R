# Data Compression 
# Design a program to read a string and compress it using run-length encoding.
# In run-length encoding, consecutive repeated characters are replaced with a single character followed by the count of occurrences.

string <- readline(prompt = "Enter string: ")
string <- strsplit(string, NULL)[[1]]
len <- length(string)
result <- ""
i <- 1

while (i <= len) {
  count <- 1
  while (i < len && string[i] == string[i + 1]) {
    count <- count + 1
    i <- i + 1
  }
  
  result <- paste0(result, string[i], count)
  i <- i + 1
}

cat("Encoded value:",result)
