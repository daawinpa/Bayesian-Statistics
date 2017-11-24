

load("C:/Users/Palma/Desktop/MS STATS/Year2 Sem1/Bayesian/rats.RData" )
rats

sum(rats$y[1:70])
sum(rats$n[1:70])

Beta<-1725-263
Alpha<-263/1725


rats$prop <-with(rats,y/n)
rats 

mean(rats$prop[-71])
var(rats$prop[-71])

alpha <- mu*(mu*(1-mu)/sig2-1)
beta <-(1-mu)*(1-mu)/sig2-1)
c(alpha,beta)

## prior on theta71 might be Beta(1.36,8.62)

#So posteriro dist for theta71 is (5.36,18.62)
#based on 4 tunmors in the 71st group


curve(dbeta(x,alpha,beta),0.1)
curve(dbeta(x,alpha+4,beta+10),col="red", add=TRUE)   ## Post

abline(v=4/14,col="blue", lty=2)


##Credible interval
qbeta(c(0.025,0.975),alpha+4,beta+10)
##Posterior Mean

