library(dplyr)
library(stringr)


prepare_set <- function(file_name) {
  df <- read.csv(file_name, skip = 1, header = TRUE, encoding="UTF-8", stringsAsFactors = FALSE)
  names(df)[1] <- "Country"
  
  nam <- names(df)
  for (i in 2:length(names(df))){ #converting names
    if (substr(nam[i],1,3) == "X.."){
      names(df)[i] <- substr(nam[i],4,nchar(nam[i]))
    } else if(substr(nam[i],1,2) == "X0"){
      n <- substr(nam[i],3,3)
      if (n == "1"){
        names(df)[i] <- paste0("Gold",substr(nam[i],6,nchar(nam[i])))
      } else if (n == "2"){
        names(df)[i] <- paste0("Silver",substr(nam[i],6,nchar(nam[i])))
      } else if (n == "3"){
        names(df)[i] <- paste0("Bronze",substr(nam[i],6,nchar(nam[i])))
      }
    }
  }
  splited <- str_split(df$Country," ")
  for (i in 1:length(splited)){ #country names processing
    df$Country[i] <- splited[[i]][1]
  }
  id <- vector()
  for(i in 1:length(df$Country)){
    id <- c(id,toupper(substr(df$Country[i],1,3)))
  }
  df$ID <- id # adding new column
  df <- df[-dim(df)[1],] #delete last
  return (df)
}

olympics <- prepare_set("olympics.csv")


(answer_1 <- olympics$Country[which.max(olympics$Gold)])

(answer_2 <- olympics$Country[which.max(abs(olympics$Total - olympics$Total.1))])

(answer_3 <- olympics %>%
  filter(Gold >= 1,Gold.1 >= 1) %>%
  mutate(new = abs((Gold - Gold.1)/Gold.2)) %>%
  arrange(desc(new)) %>%
  slice(1) %>%
  select(1))

scores <- apply(olympics[,13:15],1,function (x) x[1]*3 + x[2]*2 + x[3]*1)
(answer_4 <- data.frame(Country = olympics$Country,Points = scores))