
# Is needed, but called in the main R Markdown document
# library(tidyverse)

# Read in data
nerd <- read.csv("./data_sets/nerd_data_short.csv", sep = "\t")

# Reduced version of the data. We only need the columns age, gender, married, voted and the questions
# for the nerd questionnaire, i.e. Q1-Q26
nerd_red <- nerd %>% 
  select(age, gender, married, voted, nerdy, Q1:Q26)

# 1) Filter out participants who have an invalid value for "married"
# 2) Filter out participants who have an implausible age
nerd_red <- nerd_red %>% 
  filter(married != 0, age < 120)

# Calculate nerd sum score across the questions Q1 - Q26
nerd_red <- nerd_red %>% 
  rowwise() %>% 
  mutate(nerd_score = sum(across(Q1:Q26))) %>% 
  ungroup()

# Recode data so numeric values become text labels.
# Gender: 1 = Male, 2 = Female, 3 = Other.
nerd_red <- nerd_red %>% 
  mutate(
    gender = case_when(
      gender == 1 ~ "male",
      gender == 2 ~ "female",
      gender == 3 ~ "other"
    )
  )

# Married: 1 = Never married, 2 = Currently married, 3 = Previously married. 
nerd_red <- nerd_red %>% 
  mutate(
    married = case_when(
      married == 1 ~ "never married",
      married == 2 ~ "currently married",
      married == 3 ~ "previously married"
    )
  )

# Voted: 1 = Yes, 2 = No
nerd_red <- nerd_red %>% 
  mutate(
    voted = ifelse(voted == 1, "yes", "no")
  )

# Add participant id number
nerd_red <- nerd_red %>% 
  rowid_to_column(var = "id")
