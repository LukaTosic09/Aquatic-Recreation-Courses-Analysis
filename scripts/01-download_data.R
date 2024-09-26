#### Preamble ####
# Purpose: Simulates data
# Author: Luka Tosic
# Date: 23 September 2024
# Contact: luka.tosic@mail.utoronto.ca
# License: UofT
# Pre-requisites: none
# Any other information needed? None

#setup
library(opendatatoronto)
library(tidyverse)
library(dplyr)

#### Download data ####
# get package
package <- show_package("750127b2-37ea-4d96-9ef8-34f8379e4fee")

# get all resources for this package
resources <- list_package_resources("750127b2-37ea-4d96-9ef8-34f8379e4fee")


datastore_resources <- filter(resources, tolower(format) == 'xlsx')

# load the first datastore resource as a sample
new_data <- filter(datastore_resources, row_number()==1) %>% 
  get_resource()


#### Save data ####
write.csv(new_data, "data/raw_data/unedited_data.csv") 

