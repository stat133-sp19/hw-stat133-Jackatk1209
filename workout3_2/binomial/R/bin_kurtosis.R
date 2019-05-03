#' @title bin_kurtosis
#' @description after checking if inputs are valid, use aux_kurtosis to return kurtosis
#' @param trials
#' @param prob
#' @return kurtosis
#' @export
#' @examples
#' bin_kurtosis(trials=5,prob=0.5)

bin_kurtosis <- function(trials,prob){
  if (!check_trials(trials)) {
    stop("invalid trials argument")
  }
  if (!check_prob(prob)) {
    stop("invalid prob argument")
  }
  return(aux_kurtosis(trials,prob))
}