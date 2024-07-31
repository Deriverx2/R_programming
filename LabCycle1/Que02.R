#String Encryption
#Write a program that reads a sentence from the user and encrypts it using a simple Caesar cipher. 
#The user can specify the shift value. 
#Implement the encryption such that only alphabetic characters are shifted, while maintaining their case. 

sentence <- readline(prompt = "Enter sentence to cipher: ")
shift <- as.integer(readline(prompt = "Enter the shift value: "))

ASCII <- utf8ToInt(sentence)

ciphered_ASCII <- numeric(length(ASCII))

for (i in 1:length(ASCII)) {
  if (ASCII[i] >= 65 && ASCII[i] <= 90) { 
    ciphered_ASCII[i] <- ((ASCII[i] - 65 + shift) %% 26) + 65
  } else if (ASCII[i] >= 97 && ASCII[i] <= 122) { 
    ciphered_ASCII[i] <- ((ASCII[i] - 97 + shift) %% 26) + 97
  } else { 
    ciphered_ASCII[i] <- ASCII[i]
  }
}

ciphered_sentence <- intToUtf8(ciphered_ASCII)

cat("Ciphered sentence:", ciphered_sentence, "\n")