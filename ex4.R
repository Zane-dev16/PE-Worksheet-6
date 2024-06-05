sum_x <- 274
sum_x2 <- 13284
sum_y <- 185.8
sum_y2 <- 5920.48
sum_xy <- 8816.2
h0_EYx <- 37.3
x0 <- 53
n <- 6

mean_x <- sum_x/n
mean_y <- sum_y/n

b1_est <- (sum_xy - n * mean_x * mean_y) / (sum_x2 - n * mean_x^2)

b0_est <- mean_y - b1_est * mean_x
var_est <- (1/(n-2))*((sum_y2-n*(mean_y^2)) - (b1_est^2)*(sum_x2-n*(mean_x^2)))

W = (b0_est + b1_est*x0 - h0_EYx) / sqrt(((1/n) + ((mean_x-x0)^2 / (sum_x2 - n * mean_x^2) * var_est)))
W

alpha <- 0.01
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))

alpha <- 0.05
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))

alpha <- 0.10
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))
