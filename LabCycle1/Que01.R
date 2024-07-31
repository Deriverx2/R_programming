# Develop a program to read a paragraph of text and perform the following tasks:
# a. Count the total number of words.
# b. Calculate the average word length. 
# c. Identify and print the longest word. 
# d. Replace all occurrences of a specific word with another word of your choice. 

library(stringr)

text <- "Both sides are proud of the wide range of existing collaborations between UK and Indian institutions in this domain; and seek to build on this strong foundation to collectively shape a fourth industrial revolution that improves our citizen’s health, wellbeing and prosperity, in ways which support democracy and peace. Both countries view this Technology Security Initiative as a platform and a strong signal of intent to build and grow sustainable and tangible partnerships across priority tech sectors."

words <- unlist(strsplit(text, "\\W+"))
words <- words[words != ""]

totalWords <- length(words)

cat("Total number of words:",totalWords,"\n")

avgWordLength <- sum(nchar(words))/totalWords
cat("Average word length:",avgWordLength,"\n")

longestWord <- words[which.max(nchar(words))]
cat("Longest word is ", longestWord,"\n")

choiceWord <- "Whatnot"
replaceWord <- sample(words,1)
cat("Text before replacing",replaceWord,"with", choiceWord,":\n",text)
text <- str_replace_all(text,replaceWord,choiceWord)
cat("Text after replacing:\n",text)