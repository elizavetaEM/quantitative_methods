library(wooldridge)

rm(list = ls())

library(wooldridge)

reg <- lm(wage ~ educ, data = wage1)

y <- wage1$wage

y_hat <- reg$fitted.values

u_hat <- reg$residuals

SST <- sum((y - mean(y))^2)

SSE <- sum((y_hat - mean(y))^2)

SSR <- sum((y - y_hat)^2)

R_square <- 1 - SSR/SST

adj_R_square <- 1 - (SSR * (1 / (nrow(wage1)) - 1)) / (SST * (1 / (nrow(wage1)) - 1))
adj_R_square 

stargazer(reg,
          type = "text", 
          keep.stat = c("N", "rsq", "adj.rsq"))