library(wooldridge)

wage <- wage1$wage
constant <- rep(10, length(wage))

cov(wage, constant)

cor(wage, constant)


library(wooldridge)

wage <- wage1$wage

#wage E(X)
#mean(wage) mu_x

u <- wage - mean(wage)

mean(u)