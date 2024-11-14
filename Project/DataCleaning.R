# import the dataset using the environment section
df <- read.csv("C:/Users/benso/OneDrive/Desktop/Dumb_hit/sem_5/R_programming/R_Programming_Lab/Project/Statewise_General_Index_Upto_Feb24.csv")

head(df)

summary(df)

df[,"Arunachal.Pradesh"] <- as.numeric(df[,"Arunachal.Pradesh"])

df[,"Himachal.Pradesh"] <- as.numeric(df[,"Himachal.Pradesh"])

#Removed every col with greater than 10 NA
df_clean <- df[, colSums(is.na(df)) <= 10]

head(df_clean)

summary(df_clean)

df_clean <- df_clean[rowSums(is.na(df_clean)) <= 2, ]
