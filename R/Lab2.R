
# Task #1 -----------------------------------------------------------------

v <- rnorm(100)
v_10th_element <- v[10]
v_10th_to_20th <- v[10:20]
v_20th_29th <- v[sample(20:100, 10)]
selec <- v > 0 
v_greater_0 <- v[selecting_v]

# Task #2 -----------------------------------------------------------------

y_df <- data.frame(a = rnorm(100), b = 1:100, cc = sample(letters, 100, replace = TRUE)) 
tail(y_df, 10)
y_df[10:20, ]
y_df[10, "b"]
y_df[ ,"cc"]

# Task #3 -----------------------------------------------------------------

z <- c(1, 2, 3, NA, 4, NA, 5, NA)
vector_without_NA <- z[!is.na(vector)]
mean_with_NA <- mean(vector)
mean_without_NA <-  mean(vector_without_NA)
