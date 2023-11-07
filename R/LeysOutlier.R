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
#' ID <- Data$ID
#' OriginalData <- Data
#' LeysOutlier(x,y,z,ID)
#' NewData # This should get you your new dataset
#'
#'
LeysOutlier <- function(x, y, z, ID){
  #1
  library(afex)
  return(nice(aov_car(z~x*y+Error(ID/(x*y)), data=Data)),es='pes')
}


