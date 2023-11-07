## code to prepare `DATASET` dataset goes here

library(readr)
RTDATA <- read_csv("data-raw/Data1.csv")
RTDATA <- RTDATA[c(1:6,17:19)]


usethis::use_data(RTDATA, overwrite = TRUE)
