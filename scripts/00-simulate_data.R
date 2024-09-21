#### Preamble ####
# Purpose: Simulates data
# Author: Haowei Fan
# Date: 21 September 2024
# Contact: haowei.fan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####

#Set seed for reproducibility.
set.seed(902)

#The start year is 2007, and the end year is 2024.
years <- seq(2007, 2024)

#There are four seasons in a year.
seasons <- rep(c("spring", "summer", "autumn", "winter"))

#I assume the number of decedents follows poisson distribution with mean of 8.
total_decedents <- rpois(length(years)*4, 8)

#Begin simulation.
simulated_data <-
  tibble(
    year = rep(years, each = 4),
    season = rep(seasons, times = length(years)),
    total_decedents = total_decedents
  )
simulated_data






