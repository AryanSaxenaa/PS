alpha<-2
beta<-1/3
Ai=dgamma(3,shape = alpha, rate=beta)
Aii=1-pgamma(1,shape=alpha,rate=beta)
print(Ai)
print(Aii)
B=qgamma(0.70,shape = alpha,rate = beta)
print(B)