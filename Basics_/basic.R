#load data
library(datasets)

head(iris) #show first six lines of iris datasets
summary(iris) #show summary statistics for iris datasets
plot(iris) #scatterplot matrix for iris datasets

#clear packages
detach("package:datasets",unload = TRUE)

#clear plot
dev.off()

cat("\014")#clear console
