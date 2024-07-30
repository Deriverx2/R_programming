#String Encryption
#Write a program that reads a sentence from the user and encrypts it using a simple Caesar cipher. 
#The user can specify the shift value. 
#Implement the encryption such that only alphabetic characters are shifted, while maintaining their case. 

library(caesar)
# sentence <- readline(prompt = "Enter sentence to cipher: ")
sentence <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz"
elementList <- strsplit(sentence,NULL)
ASCII <- utf8ToInt(elementList[[1]])
for (i in ASCII){
  if i < 66 next
  else if i < 91{
    
  }
}
n <- 1
ASCII <- (ASCII + n)
  