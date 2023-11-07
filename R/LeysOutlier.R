# Outlier Method by Leys et al. (2013)
#' remove data for RT outside the median absolute deviation method.
#' This method assumes two independent variables and a single dependent variable.
#'
#'
#' @param x An independent variable
#' @param y Another independent variable
#' @param z the dependent variable
#' @return The outlier method of \code{x} and \code{y} and \code{z}
#' @export
#' @examples
#' # example code
#' install.packages("afex")
#' x <- Data$IV1
#' y <- Data$IV2
#' z <- Data$DV
#' OriginalData <- Data
#' LeysOutlier(x,y,z)
#' NewData # This should get you your new dataset
#'
#'
LeysOutlier <- function(x, y, z, ID){
  #1
  #library(afex)
  (nice(aov(z~x*y, data=Data),es='pes'))
}


