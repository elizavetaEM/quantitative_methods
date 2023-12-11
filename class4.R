# HOMEWORK 30.10

k <- 2:5

k_squared <- k^2

k_squared_sum <- sum(k_squared)


k <- 1:4

sum(k) + 2*length(k)

3*sum(k)




x <- c(3, 5, 2, 6, 5, 9, 5, 2, 8, 6)
result.mean <- mean(x)
print(result.mean)

sum(x)/length(x)

x <- c(3, 5, 2, 6, 5, 9, 5, 2, 8, 6)
result.median <- median(x)
print(result.median)


wt <- c(1,  1,  3)
y <- c(70, 90, 85)
sum(y*wt)/sum(wt) # formula
result.weighted.mean <- weighted.mean(y, wt)
print(result.weighted.mean)

# quantile and percentile
data = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 8, 8, 9, 10, 12, 12, 13, 14, 15, 16, 18)
quantile(data)
p <- c(0.25, 0.50, 0.75, 1) * 100
N <- length(data)
n <- p/100 * N
data[1]
data[50]
data[n]

# p <- n / N * 100
p_new <- c(6,18) / N * 100
p_new 

data == 4

data = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 8, 8, 9, 10, 12, 12, 13, 14, 15, 16, 18)
boxplot(data, horizontal = TRUE)

data = c(1, 2, 3, 3, 3, 4, 5, 5, 6, 8, 8, 9, 10, 12, 12, 13, 14, 15, 16, 18)
Q3 <- quantile(data, probs = c(0.75))
upper_tresh <- Q3 + 1.5 * IQR(data)
print(upper_tresh)

boxplot(data, horizontal = TRUE)
abline(v = upper_tresh)


rm(list = ls())

# var
x <- c(2, 5, 3, 1, 6, 3)
result.var <- var(x)
print(result.var)

x <- c(2, 5, 3, 1, 6, 3)
n <- length(x) - 1
b <- mean(x)
v <- 1/n * sum((x - b)^2) 
s <- v^(1/2)
s
v

x <- c(2, 5, 3, 1, 6, 3)
result.sd <- sd(x)
print(result.sd)



x <- c(12, 15, 13, 11, 16, 13)
result.var <- var(x)
print(result.var)

x <- c(12, 15, 13, 11, 16, 13)
result.sd <- sd(x)
print(result.sd)



x <- c(20, 50, 30, 10, 60, 30)
result.var <- var(x)
print(result.var)

x <- c(20, 50, 30, 10, 60, 30)
result.sd <- sd(x)
print(result.sd)

# covariance
x <- c(2, 1, 3)
y <- c(10, 30, 50)
result.cov <- cov(x,y)
print(result.cov) 


x <- c(2, 1, 3)
y <- c(10, 30, 50)
corr = cor(x,y)
print(corr)
print(cor(x, y, method = "pearson")) 

