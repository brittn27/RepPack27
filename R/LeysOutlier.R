# Run a typical two-way between-subjects ANOVA on a single Independent Variables.
#'
#' This method assumes two independent variables and a single dependent variable.
#'
#'
#' @param x An independent variable
#' @param y Another independent variable
#' @param z the dependent variable
#' @return The resulting ANOVA from \code{x} and \code{y} and \code{z}
#' @export
#' @examples
#' remotes::install_github("brittn27/RepPack27")
#' library(RepPack27)
#' data(RTDATA)
#' x <- RTDATA$difficulty
#' y <- RTDATA$depth
#' z <- RTDATA$RT
#' Data<- RTDATA
#' ANOVA2_BW(x,y,z)
#'
ANOVA2_BW <- function(x, y, z){
  #1
  #library(afex)
  (summary(aov(z~x*y, data=Data)))
}


