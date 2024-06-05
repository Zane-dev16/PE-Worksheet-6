sum_x <- 739
sum_x2 <- 49823
sum_y <- 1479.73
sum_y2 <- 200430
sum_xy <- 99927.4
n <- 18

mean_x <- sum_x/n
mean_y <- sum_y/n

r2 <- (sum_xy - n * mean_x * mean_y)^2 / ((sum_x2 - n * mean_x^2) * (sum_y2 - n * mean_y^2))
r2
