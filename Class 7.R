rm(list = ls())

library(wooldridge)
x <- c(-3, 3, 5)
y <- c(5, 6, 2)

beta_1 <- cov(y, x) / var(x)

beta_0 <- mean(y) - beta_1 * mean (x)

y_hat <- beta_0 + beta_1 * (x)
y_hat

u_hat <- y - y_hat
u_hat

SST = sum((y - mean(y))^2)
SST

var(y)

SST * (1/2)

SSE <- sum((y_hat - mean(y))^2)
SSE

SSR <- sum((y - y_hat)^2)
SSR

SSE + SSR == SST

R_square <- 1 - SSR/SST
R_square

reg <- lm(y~x)
summary(reg)

