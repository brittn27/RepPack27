#' @keywords internal
"_PACKAGE"

## usethis namespace: start

#' RepPack27: A package created for Github 712 course purposes.
#'
#'
#' It was also created for the course Github 712 to demonstrate
#' an example for how to create one relevant to my present research.
#'
#' @docType package
#' @name RepPack27-package
#' @author Noah Britt, Department of Psychology, Neuroscience, and Behaviour, McMaster University \email{brittn@@mcmaster.ca}
#' @references \url{https://github.com/brittn27/RepPack27}

## usethis namespace: end
NULL


#' Reaction Time for a Random Participant in my RT Study using Discrimination in Depth.
#'
#' A dataset containing RT data across each condition. Orientation of the discriminated lines and depth information.
#'
#' @format A data frame with 672 trials across 9 important variables post-cleaning:
#' \describe{
#'   \item{Picture}{Whichever condition was presented on a given trial}
#'   \item{difficulty}{This notes the orientation of the discriminated lines}
#'   \item{depth}{Whether the lines were presented in near/far space}
#'   \item{side}{left or right side presentation}
#'   \item{elevation}{Where was this line presented relative to the reference line}
#'   \item{correctAns}{The expected response if discriminated properly}
#'   \item{key_resp.corr}{If the participant responded correctly}
#'   \item{key_resp.rt}{Reaction Time}
#'   \item{participant}{Random Participant ID allocated}
#'
#' }
#'
#' @docType data
#' @keywords datasets
#' @name RTDATA
#' @usage data(RTDATA)
#' @source SunLAB McMaster University via Hongjin Sun (PNB)
#' @examples
#'  data(RTDATA)
  "RTDATA"



