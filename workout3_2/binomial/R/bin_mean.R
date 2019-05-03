#' @title bin_mean
#' @description gives mean of binomial
#' @param trials
#' @param prob
#' @return mean
#' @export
#' @examples
#' bin_mean(3,0.5)
bin_mean <- function(trials, prob){
  if(!check_trials(trials)) {
    stop("invalid trials argument")
  }
  if(!check_prob(prob)) {
    stop("invalid prob argument")
  }
  else {
    return(aux_mean(trials, prob))
  }
}
