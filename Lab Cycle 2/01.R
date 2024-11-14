# scatterplot of the Sepal.Length and Petal.Length in iris dataset using the plot function.
# proper label and title. Save the plot as a high-resolution image file.

data(iris)

plot(iris$Sepal.Length, iris$Petal.Length, xlab = 'Sepal Length', ylab = 'Petal Length',
     main = 'Scatterplot of Sepal vs Petal Length', col = 'darkgreen')
