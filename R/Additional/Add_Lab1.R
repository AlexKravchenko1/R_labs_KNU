library(dplyr)
library(stringr)

read_file <- function(file){
  df <- read.csv(file, skip = 1, header = TRUE, encoding = "UTF-8", stringsAsFactors = FALSE)
  return(df)
}

change_df_headers <- function(df){
  names(df)[1] <- "Country"
  headers_name <- names(df)
  for (i in 2:length(headers_name)) {
    if (substr(headers_name[i],1,3) == "X.."){
      names(df)[i] <- substr(headers_name[i],4,nchar(headers_name[i]))
    } else if(substr(headers_name[i],1,2) == "X0"){
      n <- substr(headers_name[i],3,3)
      if (n == "1"){
        names(df)[i] <- paste0("Gold",substr(headers_name[i],6,nchar(headers_name[i])))
      } else if (n == "2"){
        names(df)[i] <- paste0("Silver",substr(headers_name[i],6,nchar(headers_name[i])))
      } else if (n == "3"){
        names(df)[i] <- paste0("Bronze",substr(headers_name[i],6,nchar(headers_name[i])))
      }
    }
  }
  return(df)
}

split_country <- function(df){
  splt_str <- str_split(df$Country, " ")
  for(i in 1:length(splt_str)){
    df$Country[i] <- splt_str[[i]][1]
  }
  return(df)
}

add_ID_col <- function(df){
  id <- vector()
  for(i in 1:length(df$Country)){
    id <- c(id, toupper(substr(df$Country[i], 1, 3)))
  }
  df$ID <- id
  return(df)
}

delete_last_row <- function(df){
  df <- df[-dim(df)[1],]
  return(df)
}

prepare_set <- function(file_name){
  df <- read_file(file = file_name)
  
}
olympics <- read.csv("olympics.csv", skip = 1, header = TRUE, encoding = "UTF-8", stringsAsFactors = FALSE)

