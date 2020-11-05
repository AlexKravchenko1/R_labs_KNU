# Task #1 -----------------------------------------------------------------

chr <- "character"
nmr <-  0.1
int <- 1
cmplx <- 1+1i
bin <- TRUE

# Task #2 -----------------------------------------------------------------

int_vector <- c(5:75)
num_vector <- c(3.14, 2.71, 0, 13)
bin_vector <- rep(TRUE, 100)

# Task #3 -----------------------------------------------------------------

col_1 <- c(0.5, 3.9, 0, 2)
col_2 <- c(1.3, 131, 2.2, 7)
col_3 <- c(3.5, 2.8, 4.6, 5.1)
cols <- c(col_1, col_2, col_3)

mtrx <- matrix(cols, ncol = 3)

mtrx_cbind <- cbind(c(0.5, 3.9, 0, 2), c(1.3, 131, 2.2, 7), c(3.5, 2.8, 4.6, 5.1))

# Task #4 -----------------------------------------------------------------

list_atomic <- list(chr, nmr, int, cmplx, bin)

# Task #5 -----------------------------------------------------------------

age_vector <- c("baby", "child", "adult")
fctr <- factor(age_vector, ordered = TRUE, levels = age_vector)

# Task #6 -----------------------------------------------------------------

vector_with_NA <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
first_NA <- is.na(vector_with_NA)
count_NA <- sum(is.na(vector_with_NA))

# Task #7 -----------------------------------------------------------------

field_1 <- c("Mercury", "Venus", "Earth", 
             "Mars", "Jupiter", "Saturn", 
             "Uranus", "Neptune")

field_2 <- c("Terrestrial planet", 
             "Terrestrial planet", 
             "Terrestrial planet", 
             "Terrestrial planet", "Gas giant", 
             "Gas giant", "Gas giant", "Gas giant")

field_3 <- c(0.382, 0.949, 1, 0.532, 
             11.209, 9.449, 4.007, 3.883)

field_4 <- c(58.64, -243.02, 1, 1.03, 
             0.41, 0.43, -0.72, 0.67)

field_5 <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planets_df <- data.frame(field_1, field_2, field_3, field_4, field_5)

# Task #8 -----------------------------------------------------------------

colnames(planets_df) <- c("name", "type", "diameter", "rotation", "rings")
