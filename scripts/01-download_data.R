#### Preamble ####
# Purpose: Downloads and saves the data from "opendatatoronto"
# Author: Haowei Fan
# Date: 21 September 2024
# Contact: haowei.fan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####

#Looking at first 200 pages of datasets from "opendatatoronto".
list_packages <- list_packages(200)

#Searching for the dataset called "Deaths of Shelter Residents" which I am interested in.
list_deathShelter <- search_packages("Deaths of Shelter Residents")

#Get the id of the dataset.
list_deathShelter_resources <- list_deathShelter %>%
  list_package_resources()

#Download the data by its' id
deaths_of_shelter_residents <- list_deathShelter_resources[3,"id"] %>%
  get_resource()

#### Save data ####
write_csv(deaths_of_shelter_residents, "data/raw_data/raw_data.csv") 

         
