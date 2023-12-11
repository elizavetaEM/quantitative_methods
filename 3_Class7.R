library(wooldridge)
library(stargazer)

reg <- lm(wage ~ educ, data = wage1)

stargazer(reg, type = "text", keep.stat = c("N", "rsq"))

wage1$wage10 <- 10 * wage1$wage

reg1 <- lm(wage ~ educ, data = wage1)


stargazer (reg, 
           reg1,
           type = "text",
           keep.stat = c("N", "rsq"))


wage1$educ10 <- 10 * wage1$educ

reg2 <- lm(wage10 ~ educ10, data = wage1)

stargazer (reg, 
           reg2,
           type = "text",
           keep.stat = c("N", "rsq"))



