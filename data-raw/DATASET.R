## code to prepare `DATASET` dataset goes here

library(readr)
RTDATA <- read_csv("data-raw/Data1.csv")
RTDATA <- RTDATA[c(1:5,17:19)]
RTDATA$depth <- as.factor(RTDATA$depth)
RTDATA$difficulty <- as.factor(RTDATA$difficulty)
RTDATA$RT <- RTDATA$key_resp.rt
RTDATA$participant <- as.factor(RTDATA$participant)
RTDATA$side <- as.factor(RTDATA$side)
RTDATA$Correct <- as.factor(RTDATA$key_resp.corr)
RTDATA <- RTDATA[-6]
RTDATA <- RTDATA[-6]
RTDATA$elevation <- as.factor(RTDATA$elevation)

usethis::use_data(RTDATA, overwrite = TRUE)
