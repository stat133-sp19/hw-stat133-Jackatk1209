#' @title bin_mode
#' @description  after checking if input is valid, use aux_mode to give mode
#' @param trials number of trials
#' @param prob probability of success
#' @return the mode of the input
#' @export
#' @examples
#' bin_mode(5, 0.5)
bin_mode <- function(trials, prob){
  if (!check_trials(trials)) {
    stop("invalid trials argument")
  }
  if (!check_prob(prob)) {
    stop("invalid prob argument")
  }
  else {
    return(aux_mode(trials, prob))
  }
}