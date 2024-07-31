# Password Generator 
# Write a program to generate a random password for a user.
# The password should include a mix of uppercase letters,lowercase letters, digits, and special characters. 
# Allow the user to specify the length of the password.  

n <- as.integer(readline(prompt = "Enter length of pasword: "))

password <- intToUtf8(sample(33:126))

cat("Sample password:",substr(password,1,n))