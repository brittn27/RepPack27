## code to prepare `DATASET` dataset goes here

library(readr)
RTDATA <- read_csv("~/Library/CloudStorage/OneDrive-McMasterUniversity/PhD Work/712_Git_Package/RepPack27/data-raw/Data1.csv")


# Removing unecessary columns that were output from behavioural data processing in Psychopy
RTDATA <- RTDATA[1:19]
RTDATA <- RTDATA[c(1:6,17:19)]

usethis::use_data(RTDATA, overwrite = TRUE)

roxygen2::roxygenize()

devtools::document()

