#' @title bin_variance
#' @description  first check if input is valid, then use aux_variance to create variance
#' @param trials number of trials
#' @param prob probability of success
#' @return the variance of the input
#' @export
#' @examples
#' bin_variance(5,0.5)
bin_variance <- function(trials, prob){
  if (!check_trials(trials)) {
    stop("invalid trials argument")
  }
  if (!check_prob(prob)) {
    stop("invalid prob argument")
  }
  else {
    return(aux_variance(trials, prob))
  }
}