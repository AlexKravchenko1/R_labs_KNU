library(dplyr)

census_df <- read.csv("census.csv", stringsAsFactors = FALSE)

# Answer #5 ---------------------------------------------------------------

state_max_county <- census_df %>%
  group_by(STNAME) %>%
  summarise(num_of_county = sum(n_distinct(COUNTY), na.rm = TRUE)) %>%
  tbl_df() 

subset(state_max_county, num_of_county == max(num_of_county))

# Answer #6 ---------------------------------------------------------------

top_3_pop_county <- census_df %>%
  filter(COUNTY != 0) %>%
  select(STNAME, CTYNAME, CENSUS2010POP) %>%
  arrange(desc(CENSUS2010POP)) %>%
  group_by(STNAME) %>% top_n(3, CENSUS2010POP) %>%
  summarise(pop = sum(CENSUS2010POP))

top_3_pop_county %>% top_n(3, pop)  

# Answer #7 ---------------------------------------------------------------

pops <- c("POPESTIMATE2010","POPESTIMATE2011","POPESTIMATE2012","POPESTIMATE2013","POPESTIMATE2014","POPESTIMATE2015")
census_wo_county0 <- census_df[census_df$COUNTY != 0,]
n_max <- which.max(apply(census_wo_county0[pops], 1, function (x) abs(range(x)[1] - range(x)[2])))
new_census[n_max,"CTYNAME"]

# Answer #8 ---------------------------------------------------------------

Washington_counties <- census_df %>%
  filter(REGION %in% c(1, 2), POPESTIMATE2015 > POPESTIMATE2014, CTYNAME == "Washington County") %>%
  select(STNAME, CTYNAME)
