library(datasets)

?mtcars
head(mtcars)

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt,mtcars$mpg)

plot(mtcars$wt,mtcars$mpg,
     pch=19,
     cex=1.5,
     col="red",
     main="MPG as a function to weight of cars",
     xlab="Weight(in 1000 pounds)",
     ylab = "MPG")

detach("package:datasets",unload = TRUE)
dev.off()
cat("\014")#clear console