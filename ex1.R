accident_arr <- c(19294, 19306, 19320, 19469, 19494, 19336, 18839)
total_accidents <- 135058


expected <- 135058 / 7
chi_sq_stat <- sum((accident_arr - expected)**2)/expected
chi_sq_stat

1 - pchisq(chi_sq_stat, 6)
