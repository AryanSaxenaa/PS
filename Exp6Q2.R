# Define the function f(x, y)
f <- function(x, y) (x + y) / 30

# Row and column names
rownames <- c(0, 1, 2, 3)
colnames <- c(0, 1, 2)

# Create the matrix using f(x, y) for all combinations of x and y
m <- matrix(c(f(0, 0:2), f(1, 0:2), f(2, 0:2), f(3, 0:2)), nrow = 4, ncol = 3, byrow = TRUE)

# Assign row names and column names to the matrix
rownames(m) <- rownames
colnames(m) <- colnames

# Display the joint probability mass function
print("Joint PMF matrix:")
print(m)

# (ii) Check if it's a valid joint mass function (sum should be 1)
sum_m <- sum(m)
print("Sum of the joint PMF (should be 1):")
print(sum_m)

# (iii) Marginal distribution g(x) for x = 0, 1, 2, 3 (summing over y)
g_x <- apply(m, 1, sum)  # Sum across rows (over y) to get g(x)
print("Marginal distribution g(x):")
print(g_x)

# (iv) Marginal distribution h(y) for y = 0, 1, 2 (summing over x)
h_y <- apply(m, 2, sum)  # Sum across columns (over x) to get h(y)
print("Marginal distribution h(y):")
print(h_y)

# (v) Conditional probability P(X = 0 | Y = 1)
cond_prob_x0_given_y1 <- m[1, 2] / h_y[2]  # f(0,1) / h(1)
print("Conditional probability P(X = 0 | Y = 1):")
print(cond_prob_x0_given_y1)

# (vi) Calculations for E(X), E(Y), E(XY), Var(X), Var(Y), Cov(X, Y), Corr(X, Y)

# Define values for x and y
x_values <- 0:3
y_values <- 0:2

# Expected values of X and Y
E_X <- sum(x_values * g_x)
E_Y <- sum(y_values * h_y)

# Second moments (for variance calculation)
E_X2 <- sum(x_values^2 * g_x)
E_Y2 <- sum(y_values^2 * h_y)

# Expected value of XY
E_XY <- sum(outer(x_values, y_values, "*") * m)

# Variances of X and Y
Var_X <- E_X2 - E_X^2
Var_Y <- E_Y2 - E_Y^2

# Covariance between X and Y
Cov_XY <- E_XY - E_X * E_Y

# Correlation coefficient
Corr_XY <- Cov_XY / (sqrt(Var_X) * sqrt(Var_Y))

# Print results
print("E(X):")
print(E_X)
print("E(Y):")
print(E_Y)
print("Var(X):")
print(Var_X)
print("Var(Y):")
print(Var_Y)
print("Cov(X, Y):")
print(Cov_XY)
print("Correlation coefficient:")
print(Corr_XY)
