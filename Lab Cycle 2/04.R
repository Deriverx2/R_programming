# histogram of the miles per gallon (mpg) in the mtcars dataset. 
# Use different shades of blue to represent the frequency of each bin. 
# Add appropriate title and labels to the plot.
# Calculate and display the mean and standard deviation of mpg on the plot.

data(mtcars)

mean_mpg <- mean(mtcars$mpg)
sd_mpg <- sd(mtcars$mpg)

hist(mtcars$mpg, breaks = 5, col = colorRampPalette(c('lightblue','blue'))(5),
     main = 'Histogram of Miles Per Gallon',
     xlab = 'Miles Per Gallon',
     ylab = 'Frequency', border = 'white')

text(x = mean_mpg, y = max(hist(mtcars$mpg, plot = FALSE)$counts),
     labels = paste('Mean =', round(mean_mpg, 2), '\nSD =', round(sd_mpg, 2)),
     pos = 3, cex = 0.8, col = 'darkolivegreen')

abline(v = mean_mpg, lwd = 2, col = 'darkkhaki')
