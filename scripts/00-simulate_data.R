#### Preamble ####
# Purpose: Simulates data
# Author: Luka Tosic
# Date: 22 September 2024
# Contact: luka.tosic@mail.utoronto.ca
# License: UofT
# Pre-requisites: None
# Any other information needed? None

library(tidyverse)

set.seed(731)

#Our dataset is built from a collection of rec courses in the city of Toronto,
#I am interested mostly in quantities surrounding # of registered and waitlisted
#participants, as well as # of participants per session, and finally in the 
#distribution of courses by wards and districts in the city. I say that by CLT,
#we can say this data will be close to being normally distributed across all 
#parameters
#prob poisson tbh

number_of_courses <- 200

data <- tibble(
  simulated_barcode = sample(1000000:9999999, number_of_courses, replace = TRUE), 
  simulated_value = rpois(number_of_courses, lambda = 6)  #as an instructor, that feels like a 
  #common average rate per week
)

#had issues with write_csv, so using write.csv instead
write.csv(data, "data/simulated_data.csv")
