freq_obs <- c(57, 20, 14, 19)
bucket_probs <- rep(0, 4)
lambda <- 1/25

bucket_probs[1] <- pexp(20, lambda) - pexp(0, lambda)
bucket_probs[2] <- pexp(40, lambda) - pexp(20, lambda)
bucket_probs[3] <- pexp(60, lambda) - pexp(40, lambda)
bucket_probs[4] <- 1 - pexp(60, lambda)

bucket_probs
sum(bucket_probs)

freq_expected <- bucket_probs * 100
freq_expected

chi_sq_stat <- sum((freq_obs - freq_expected)**2/freq_expected)
chi_sq_stat

1 - pchisq(chi_sq_stat, 3)
# Iterate over the list using indexing
