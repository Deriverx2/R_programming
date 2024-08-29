# import the dataset using the environment section
df <- Statewise_General_Index_Upto_Feb24

head(df)

summary(df)

df[,"Arunachal.Pradesh"] <- as.numeric(df[,"Arunachal.Pradesh"])

df[,"Himachal.Pradesh"] <- as.numeric(df[,"Himachal.Pradesh"])

#Removed every col with greater than 10 NA
df_clean <- df[, colSums(is.na(df)) <= 10]

head(df_clean)

summary(df_clean)

df_clean <- df_clean[rowSums(is.na(df_clean)) <= 2, ]
