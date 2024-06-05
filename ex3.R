sum_x <- 20.2
sum_x2 <- 95.36
sum_y <- 550
sum_y2 <- 61386
sum_xy <- 1322
h0_b0 <- 156
n <- 6

mean_x <- sum_x/n
mean_y <- sum_y/n

b1_est <- (sum_xy - n * mean_x * mean_y) / (sum_x2 - n * mean_x^2)

b0_est <- mean_y - b1_est * mean_x
b0_est

var_est <- (1/(n-2))*((sum_y2-n*(mean_y^2)) - (b1_est^2)*(sum_x2-n*(mean_x^2)))
t <- (b0_est - h0_b0) / sqrt(((1/n) + (mean_x^2 / (sum_x2 - n * mean_x^2) * var_est)))
t

alpha <- 0.01
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))

alpha <- 0.05
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))

alpha <- 0.10
c(qt(alpha/2, n-2), qt(1 - alpha/2, n-2))
