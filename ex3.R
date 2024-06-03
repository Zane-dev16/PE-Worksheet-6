sum_x <- 20.2
sum_x2 <- 95.36
sum_y <- 550
sum_y2 <- 61386
sum_xy <- 1322
h0_b0 <- 156
n <- 6

mean_x <- sum_x/n
mean_y <- sum_y/n
c(mean_x, mean_y, mean_x2)

b1_est <- (sum_xy - n * mean_x * mean_y) / (sum_x2 - n * mean_x^2)
