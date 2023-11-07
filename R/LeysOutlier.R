# Outlier Method by Leys et al. (2013)
#' remove data for RT outside the median absolute deviation method.
#' This method assumes two independent variables and a single dependent variable.
#'
#'
#' param x An independent variable
#' param y Another independent variable
#' param z the dependent variable
#' export
#' @examples
#' # example code
#' x <- Data$IV1
#' y <- Data$IV2
#' z <- Data$DV
#'
#'
LeysOutlier <- function(x, y, z){
  #1
  OldData <- subset(OriginalData,
                         select=c(x,y,z))

  Q75_5<-as.numeric(quantile(OldData$z)[4])
  b5 = 1/Q75_5

  MAD5<-mad(OldData$z, center = median(OldData$z), constant = b5, na.rm = TRUE,
            low = FALSE, high = FALSE)

  low_cutoff5 <- median(OldData$z)-(3*MAD5)
  high_cutoff5 <- median(OldData$z)+(3*MAD5)

  NewData <- subset(OldData, OldData$z> low_cutoff5 & OldData$z < high_cutoff5)
}

