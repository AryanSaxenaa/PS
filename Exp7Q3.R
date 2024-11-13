# Step 1: Generate a vector of 100 values between -6 and 6
x <- seq(-6, 6, length.out = 100)

# Step 2: Use dt() function to get density values for different degrees of freedom
df1 <- dt(x, df = 1)   # t-distribution with df = 1
df4 <- dt(x, df = 4)   # t-distribution with df = 4
df10 <- dt(x, df = 10) # t-distribution with df = 10
df30 <- dt(x, df = 30) # t-distribution with df = 30

# Step 3: Plot the density function for df = 30
plot(x, df30, type = "l", col = "blue", lwd = 2, 
     main = "t-distribution with df = 30", 
     xlab = "x", ylab = "Density")

# Step 4: Comparison plot for different degrees of freedom
# Plot for df = 30 first (already plotted), then overlay others

# Add df = 1 (red)
lines(x, df1, col = "red", lwd = 2, lty = 2)  # dashed line

# Add df = 4 (green)
lines(x, df4, col = "green", lwd = 2, lty = 3)  # dotted line

# Add df = 10 (purple)
lines(x, df10, col = "purple", lwd = 2, lty = 4)  # dot-dash line

# Add legend for clarity
legend("topright", legend = c("df = 1", "df = 4", "df = 10", "df = 30"),
       col = c("red", "green", "purple", "blue"), lwd = 2, 
       lty = c(2, 3, 4, 1))
