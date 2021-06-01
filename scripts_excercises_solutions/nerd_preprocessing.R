
# read in data
nerd <- read.csv("./data_sets/nerd_data_short.csv", sep = "\t")

# Reduce data to some of the columns
nerd_red <- 
  nerd %>% 
  select(age, gender, married, voted, nerdy, Q1:Q26)

# Filter for plausible values (age, married, nerdy and voted)
nerd_red <- 
  nerd_red %>% 
  filter(
    married %in% 1:3,
    age %in% 0:100,
    nerdy %in% 1:7,
    voted %in% 1:2
  )

nerd_red <- 
  nerd_red %>% 
  rowwise() %>% 
  mutate(nerd_score = sum(across(Q1:Q26)), .before = Q1) %>% 
  ungroup()

# Recode numeric variables to text
nerd_red <- 
  nerd_red %>% 
  mutate(
    gender = case_when(
      gender == 1 ~ "male",
      gender == 2 ~ "female",
      gender == 3 ~ "other"
    ),
    
    married = case_when(
      married == 1 ~ "never married",
      married == 2 ~ "currently married",
      married == 3 ~ "previously married"
    ),
    
    voted = ifelse(voted == 1, "yes", "no")
  )

# add row id
nerd_red <- 
  nerd_red %>% 
  rowid_to_column(var = "id")
