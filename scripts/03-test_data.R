#### Preamble ####
# Purpose: Tests codes
# Author: Haowei Fan
# Date: 21 September 2024
# Contact: haowei.fan@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test data ####

#Import data.
data <- simulated_data

#"years" is an integer
all(data$year == floor(data$year))

#"years" is in the interval (2007,2024).
all(data$year <= 2024 & data$year >= 2007)

#"season" is one of "spring", "autumn", "summer", "winter".
all(data$season %in% c("spring", "autumn", "summer", "winter"))

#"total decedents" in an integer.
all(data$total_decedents == floor(data$total_decedents))

#"total decedents" in non-negative.
all(data$total_decedents > 0)


