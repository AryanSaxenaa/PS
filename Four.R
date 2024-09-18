##ques1
x <- c(0, 1, 2, 3, 4)
px <- c(0.41, 0.37, 0.16, 0.05, 0.01)
n <- sum(x * px)
print(n)

##ques2
f <- function(t){
  t * 0.1 * exp(-0.1 * t)
}
i <- integrate(f, lower = 0, upper = Inf)
print(i)

##ques3
x <- c(0, 1, 2, 3)
px <- c(0.1, 0.2, 0.2, 0.5)
y <- (10 * x - 12)
e <- sum(y * px)
print(e)

#ques4
#ques4
x<-function(x) {
  x*0.5*exp(-abs(x))
}
e1<-integrate(f, lower=1, upper=10)
print(e1)
f2<-function(x) {
  x^2*0.5*exp(-abs(x))
}
e2<-integrate(f2, lower=1, upper=10)
print(e2)
v<-(e2$value)-((e1$value)^2)
print(v)
print(paste("Mean is :", e1$value))
print(paste("Variance is :", v))
print(paste("Second moment is :", e2$value))


#q5
#ques5
f <- function(y) {
  (3/4) * (1/4)^(sqrt(y) - 1)
}
x <- c(1, 2, 3, 4, 5)
y <- x^2
py <- f(y)
print(py)
ey1 <- sum(y * py)
ey2 <- sum((y^2) * py)
v <- ey2-(ey1^2)
print(paste("Mean is :", ey1))
print(paste("Variance is :", v))
