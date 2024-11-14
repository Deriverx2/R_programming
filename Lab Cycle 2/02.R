# scatterplot of the mpg and disp variables in the mtcars dataset.
# Use different colors to represent the cyl variable and add a  smooth line to show the trend.
# Add appropriate labels, title, and legend to the plot

data(mtcars)
cyl_color <- as.factor(mtcars$cyl)

plot(mtcars$disp, mtcars$mpg, ylab = 'US Miles per Gallon', xlab = 'Displacement',
     main = 'Scatterplot of Miles per Gallon vs Displacement', col = cyl_color)

loess_fit <- loess(mpg ~ disp, data = mtcars)
disp_sorted <- sort(mtcars$disp)
lines(disp_sorted, predict(loess_fit, newdata = data.frame(disp = disp_sorted)), 
      col = 'slategrey', lwd = 2)

legend("topright", legend = levels(cyl_color),
       col = 1:length(levels(cyl_color)),
       pch = 15, title = "Cylinders")
