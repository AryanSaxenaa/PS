data <- read.csv("C:/Users/91730/Downloads/Clt-data.csv")


num_rows <- nrow(data)  # Count number of rows
print(paste("Number of rows:", num_rows))

head(data, 10)  # View the top 10 rows


mean_wall_thickness <- mean(data$Wall.Thickness)  # Assuming column name is 'Wall.Thickness'
print(paste("Population mean of wall thickness:", mean_wall_thickness))

# Plot histogram
hist(data$Wall.Thickness, main="Histogram of Wall Thickness", xlab="Wall Thickness", col="lightblue", border="black")

# Add a red line at the mean
abline(v=mean_wall_thickness, col="red", lwd=2)


plot_sample_means <- function(sample_size, num_samples) {
  sample_means <- numeric(num_samples)
  
  for (i in 1:num_samples) {
    sample <- sample(data$Wall.Thickness, size = sample_size, replace = TRUE)
    sample_means[i] <- mean(sample)
  }
  
  # Plot histogram of sample means
  hist(sample_means, main = paste("Histogram of Sample Means (Sample Size =", sample_size, ")"),
       xlab = "Sample Means", col = "lightblue", border = "black")
  
  return(sample_means)
}



set.seed(123)  # For reproducibility
sample_means_10 <- plot_sample_means(sample_size = 10, num_samples = 1000)



sample_means_50 <- plot_sample_means(sample_size = 50, num_samples = 1000)
sample_means_500 <- plot_sample_means(sample_size = 500, num_samples = 1000)
sample_means_9000 <- plot_sample_means(sample_size = 9000, num_samples = 1000)


