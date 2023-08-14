library(datasets)
head(iris)
?plot#help for plot
plot(iris$Species)
plot(iris$Petal.Length)
plot(iris$Species,iris$Petal.Width)
plot(iris$Petal.Length,iris$Petal.Width)
plot(iris)
plot(iris$Sepal.Length,iris$Sepal.Width)

plot(iris$Petal.Length,iris$Petal.Width,
     col="red",
     pch=19,
     main = "Iris: Petal Length vs Petal Width",
     xlab= "Petal Length",
     ylab= "Petal Width")

plot(cos,0,2*pi)
plot(exp,1,5)
plot(dnorm,-3,+3)

plot(dnorm,-3,+3,
     col="red",
     lwd=5,
     main= "Standard Normal Distribution",
     xlab= "z-scores",
     ylab= "Density")

detach("package:datasets", unload = TRUE)
cat("\014")
