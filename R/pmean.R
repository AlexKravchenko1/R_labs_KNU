# Task #1: pmean function -------------------------------------------------

pmean <-  function (directory, pollutant, id = 1:332){
  files <- unzip(paste0(directory, ".zip"))
  means_vector <- vector()
  for (i in id) {
    means_vector <- c(means_vector, mean(read.csv(files[i])[[pollutant]], na.rm = TRUE))
  }
  return (mean(means_vector, na.rm = TRUE))
}

# Task #2: complete function ----------------------------------------------

complete <- function(directory, id){
  require(dplyr)
  data <- unzip(paste0(directory, ".zip"))
  df <- data.frame()
  for (i in id) {
    file <- read.csv(data[i])
    df <- bind_rows(df, data.frame(id = i, nobs = nrow(file)))
  }
  return(df)
}

# Task #3: corr function --------------------------------------------------

corr <- function(directory, threshold = 0){
  require(dplyr)
  data <- unzip(paste0(directory, ".zip"))
  cor_coef <- vector(mode = "numeric")
  for (i in 1:length(data)) {
    df <- read.csv(data[i])
    df <- df %>% filter(!is.na(sulfate), !is.na(nitrate))
    if(nrow(df[ ,2:3]) > threshold) {
      cor_coef <- c(cor_coef, cor(df[["sulfate"]], df[["nitrate"]]))
    }
  }
  return(cor_coef)
}

