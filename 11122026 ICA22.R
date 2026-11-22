#11122026
# ICA 22

# Pull the continuous columns:
continuous_penguins <- data.matrix( penguins[, c(3:6)])
# calculate column mean
column_mean_naive <- c(
  mean(continuous_penguins[,1], na.rm = TRUE),
  mean(continuous_penguins[,2], na.rm = TRUE),
  mean(continuous_penguins[,3], na.rm = TRUE),
  mean(continuous_penguins[,4], na.rm = TRUE)
)
column_mean_naive
## [1] 43.92193 17.15117 200.91520 4201.75439

#Adapt the code above to calculate both column and row means.
column_means <- numeric(ncol(continuous_penguins))
for (i in seq_len(ncol(continuous_penguins))) {
  column_means[i] <- mean(continuous_penguins[, i], na.rm = TRUE)
}
column_means

row_means <- numeric(nrow(continuous_penguins))
for (j in seq_len(nrow(continuous_penguins))) {
  row_means[j] <- mean(as.numeric(continuous_penguins[j, ]), na.rm = TRUE)
}
head(row_means)


#using the apply method
colMeans(continuous_penguins, na.rm = TRUE)
rowMeans(continuous_penguins, na.rm = TRUE)

# or the general-purpose version
apply(continuous_penguins, 2, mean, na.rm = TRUE)  # columns
apply(continuous_penguins, 1, mean, na.rm = TRUE)  # rows
