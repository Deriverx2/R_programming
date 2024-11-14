# scatter plot of the displacement (disp) versus the weight (wt) in the mtcars dataset.
# use different colors and sizes to represent the  number of carburetors (carb).
# add appropriate title, labels, and legend to the plot.
# add a smooth line to show the trend of the relationship.

data(mtcars)

carbs <- as.factor(mtcars$carb)
plot(mtcars$disp, mtcars$wt, col = carbs,
     main = 'Scatterplot of Displacement vs Weight',
     xlab = 'Displacement', ylab = 'Weight', pch = 21
     )

legend(x = 'topleft', legend = levels(carbs), horiz = TRUE,
       col = 1:length(levels(carbs)) , pch = 15, title = 'Number of Carburetors')

loess_fit <- loess(wt ~ disp, data = mtcars)

disp_sorted <- sort(mtcars$disp)
lines(disp_sorted, predict(loess_fit, newdata = data.frame(disp = disp_sorted)), 
      lwd = 2, col = 'darkolivegreen')