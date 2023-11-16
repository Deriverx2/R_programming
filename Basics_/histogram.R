library(datasets)

?iris
head(iris)

#syntax
#hist(data,main,xlab,ylab,xlim,ylim,col,border, breaks)

#basic histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#group histogram

#put graphs in 3rows and 1 col
par(mfrow=c(3,1))
hist(iris$Petal.Width [iris$Species=="setosa"],
     xlim = c(0,3),
     breaks = 9,
     main= "Petal width for setosa",
     xlab= "",
     col="red")

hist(iris$Petal.Width [iris$Species=="versicolor"],
     xlim = c(0,3),
     breaks = 9,
     main= "Petal width for versicolor",
     xlab= "",
     col="purple")

hist(iris$Petal.Width [iris$Species=="virginica"],
     xlim = c(0,3),
     breaks = 9,
     main= "Petal width for virginica",
     xlab= "",
     col="blue")

#restore graphic parameter
par(mfrow=c(1,1))

detach("package:datasets",unload = TRUE)
dev.off()
cat("\014")#clear console