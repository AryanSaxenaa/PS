#Q1a
chest<-c(rep('gold',20),rep('silver',30),rep('bronze',50))
sample(x=chest,size=10)

#Q1b
sample(c('success','failure'),10,replace=T,prob=c(0.9,0.1))

#Q2
M=20; # number of people in the room
probability1 = 1-(choose(365, M)*factorial(M))/((365)^M);
print(probability1)
N=5000; # number of simulations
sum=0;
for(val in 1:N){
  a = as.integer(any(duplicated(sample(365, M, replace = TRUE))));
  sum=sum+a;
}
probability = sum/N;
print(probability)


#Q3
bayesTheorem<-function(pA,pB,pBA){
  pAB<-pA*pBA/pB
  return(pAB)
}

pRain<-0.2
pCloudy<-0.4
pCloudyRain<-0.85

a<-bayesTheorem(pRain,pCloudy, pCloudyRain)
print(a)


#Q4
data<-iris
#(a)
head(data)
#(b)
str(data)
#(c)
rng<-range(data$Sepal.Length)
rng
#(d)
mean(data$Sepal.Length)
#(e)
median(data$Sepal.Length)
#(f)
quantile(data$Sepal.Length,0.25)
quantile(data$Sepal.Length,0.75)
#(g)
lapply(data[,1:4],sd)
#(i)
summary(iris)

#Q5
# Function to calculate mode
get_mode <- function(v) {
  uniq_vals <- unique(v)             # Get unique values from the vector
  uniq_vals[which.max(tabulate(match(v, uniq_vals)))]  # Get the value that appears most frequently
}

# Example usage
data <- c(2, 3, 5, 3, 8, 3, 9, 2, 5)

mode_value <- get_mode(data)
print(mode_value)
