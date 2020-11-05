
# Task #1 -----------------------------------------------------------------

(mat <- matrix(data = rnorm(50), nrow = 10, ncol = 5))

# Task #2 -----------------------------------------------------------------

(apply(mat, 2, max))

# Task #3 -----------------------------------------------------------------

colMeans(mat)

# Task #4 -----------------------------------------------------------------

(apply(mat, 1, min))

# Task #5 -----------------------------------------------------------------

(apply(mat, 2, sort))

# Task #6 -----------------------------------------------------------------

apply(mat, 2, function(m) length(m[m < 0]))

# Task #7 -----------------------------------------------------------------

apply(mat, 2, function(m) ifelse(m[m > 2], TRUE, FALSE))

# Task #8 -----------------------------------------------------------------

list1 <- list(observationA = c(1:5, 7:3), observationA = matrix(1:6, nrow = 2))
lapply(list1, sum)

# Task #9 -----------------------------------------------------------------

lapply(list1, range)
sapply(list1, range)

# Task #10 ----------------------------------------------------------------

library(dplyr)
InsectSprays
mean_count_of_spray <- InsectSprays %>%
  group_by(spray) %>%
  summarise(mean_count = mean(count, na.rm = TRUE))

