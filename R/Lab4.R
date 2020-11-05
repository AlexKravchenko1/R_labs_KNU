
# Task #1 -----------------------------------------------------------------

dataset <- read.csv(file = "C:/Users/Data Analyst/Desktop/R_labs/hw1_data.csv")
names(datset)

# Task#2 ------------------------------------------------------------------
head(dataset, 6)

# Task #3 -----------------------------------------------------------------

nrow(dataset)

# Task  #4 ----------------------------------------------------------------

tail(dataset, 10)

# Task #5 -----------------------------------------------------------------

sum(is.na(dataset$Ozone))

# Task #6 -----------------------------------------------------------------

mean(dataset$Ozone, na.rm = TRUE)

# Task #7 -----------------------------------------------------------------

sub_dataset <- subset(dataset, Ozone > 31 & Temp > 90)
mean(sub_dataset$Solar.R, na.rm = TRUE)

# Task #8 -----------------------------------------------------------------

mean(dataset$Temp[dataset$Month == 6], na.rm = TRUE)

# Task #9 -----------------------------------------------------------------

max(dataset$Ozone[dataset$Month == 5], na.rm = TRUE)
