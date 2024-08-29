# Create a scatterplot of the Sepal.Length and Petal.Length variables
# in the iris dataset using the plot function.
# Add appropriate labels and title to the plot.
# Save the plot as a high-resolution image file.

data <- iris[, c("Sepal.Length", "Petal.Length")]
plot(data, xlab = "Sepal Length", ylab = "Petal Length", main = "Scatterplot of Sepal Length and Petal Length")