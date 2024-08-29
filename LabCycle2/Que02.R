# Create a scatterplot of the mpg and disp variables in the mtcars dataset.
# Use different colors to represent the cyl variable and add a smooth line to show the trend.
# Add appropriate labels, title, and legend to the plot

data1 <- mtcars[,c("mpg","disp")]
plot(data)

data2 <- mtcars[,"cyl"]
plot(data2)
