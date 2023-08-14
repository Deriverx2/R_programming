library(datasets)

?mtcars
head(mtcars)

barplot(mtcars$cyl)#not good

#need a summary table
cylinders <- table(mtcars$cyl)
barplot(cylinders)
plot(cylinders)

rm(list = ls())
detach("package:datasets",unload = TRUE)
cat("\014")