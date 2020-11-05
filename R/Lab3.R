
# task #1 -----------------------------------------------------------------

add2 <- function(x ,y){
  z = x + y
  return(z)
}

# Task #2 -----------------------------------------------------------------

above <- function(x, n = 10){
  vector_selection <- x > n
  return(x[vector_selection])
}

# Task #3 -----------------------------------------------------------------

my_ifelse <- function(x, exp, n){
  comparison_operators <- c(">", "<", "==", ">=", "<=")
  if (exp %in% comparison_operators) return(x[.Primitive(exp)(x, n)])
  
  print("arg <n> is not a comparison operator")
  return(x)
}

# Task #4 -----------------------------------------------------------------

columnmean <- function(x, removeNA = TRUE){
  means_of_col <- colMeans(x , na.rm = removeNA)
  return(means_of_col)
}
