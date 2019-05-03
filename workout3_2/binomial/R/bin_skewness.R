#' @title bin_variance
#' @description after checking if input is valid, use aux_skewness to return skewness
#' @param trials
#' @param prob
#' @return skewness
#' @export
#' @examples
#'bin_skewness(trials=5,prob=0.75)
bin_skewness <- function(trials,prob){
  if (!check_trials(trials)) {
    stop("invalid trials argument")
  }
  if (!check_prob(prob)) {
    stop("invalid prob argument")
  }
  return(aux_skewness(trials,prob))
}