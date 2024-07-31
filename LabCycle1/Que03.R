# Data Validation and User Input
# Develop a program to read student records with their names, ages, and grades.
# Implement validation checks: 
# a. Ensure age is a positive integer. 
# b. Ensure grade is a valid letter grade (A, B, C, D, F).
# c. Calculate and display the average age of students with valid records.  

n <- as.integer(readline(prompt = "Enter number of students: "))

records <- data.frame(Name = character(), Age = integer(), Grade = character(), stringsAsFactors = FALSE)

for (i in 1:n) {
  name <- readline(prompt = "Enter name of student: ")
  age <- as.integer(readline(prompt = "Enter age of student: "))
  while (age <= 0) {
    age <- as.integer(readline(prompt = "Enter a valid age: "))
  }
  grade <- as.character(readline(prompt = "Enter grade of student: "))
  while (!grade %in% c("A","B","C","D","F")) {
    grade <- as.character(readline(prompt = "Enter correct grade: "))
  }
  new_record <- data.frame(Name = name, Age = age, Grade = substr(grade,1,1), stringsAsFactors = FALSE)
  records <- rbind(records, new_record)
  cat("\n")
}

print(records)

avgAge <- sum(records["Age"])/ncol(records)
cat("Averge age of students:", avgAge)
