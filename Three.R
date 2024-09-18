#q1
p1<-pbinom(9,12,1/6)
p2<-pbinom(6,12,1/6)
dbinom(7,12,1/6)+dbinom(8,12,1/6)+dbinom(9,12,1/6)
p1-p2

#q2
ans<-pnorm(84,72,15.2,lower.tail=FALSE)
ans*100

#q3
dpois(0,5)
p1=ppois(47,50)
p2=ppois(50,50)
dpois(48,50)+dpois(49,50)+dpois(50,50)
p2-p1


#q4
dhyper(3,17,250-17,5)

#q5
#(a) binomial distribution
x = 0:31
n = 31
y1 = dbinom(x, 31, 0.447)
plot(x, y1)
y2 = pbinom(x, 31, 0.447)
plot(x, y2)

n * 0.447 # mean
var = n * 0.447 * (1 - 0.447) # variance
var
sqrt(var) # standard deviation
