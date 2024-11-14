# bar plot of the number of cylinders (cyl) in the mtcars dataset. 
# use different colors to represent the transmission type (am).
# add appropriate title, labels, and legend to the plot.

data(mtcars)

cyl <- as.factor(mtcars$cyl)
am <- as.factor(mtcars$am)

bar_data <- table(cyl, am)
bar_col <- c('cornsilk3', 'darkolivegreen')

barplot(bar_data, col = bar_col, beside = TRUE,
        xlab = 'NUmber of Cylinders', ylab = 'Count of Cars',
        main = 'Barplot of Number of Cylinders',
        legend = TRUE,
        args.legend = list(title = 'Transmission',
                           x = 'topright',
                           legend = c('Manual', 'Automatic')
                           ))
