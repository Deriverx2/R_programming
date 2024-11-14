# box plot of the horsepower (hp) in the mtcars dataset.
# use different shapes to represent the number of gears (gear).
# add appropriate title, labels, and legend to the plot.
# identify and label any outliers on the plot.

data(mtcars)

gears <- as.factor(mtcars$gear)

boxplot(hp ~ gear, data = mtcars,
        main = 'Boxplot of Horsepower', pch = 21, cex = 3,
        ylab = 'Horsepower', xlab = 'Number of Gears', col = 'aquamarine4')

outliers <- boxplot.stats(mtcars$hp)$out

for (i in levels(gears)){
  g <- mtcars[mtcars$gear == i, ]   #get the cars if the gear number is the same as i..3, 4, or 5..
  outlier_list <- g$hp[g$hp %in% outliers]   # get the gears' hp if its in the outliers vecotr
  
  if (length(outlier_list > 0)){
    text(x = as.numeric(i),
         y = outlier_list,
         labels = outlier_list,
         pos = 4, col = 'azure')
  }
}

legend('topleft', legend = levels(gears), horiz = TRUE,
       title = 'Gears', col = 'aquamarine4', pch = 15)
