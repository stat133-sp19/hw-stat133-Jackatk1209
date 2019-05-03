
#' @title bin_probability
#' @description determines probability of getting a certain amount of successes or less in a certain amount of trials
#' @param success (number of successes)
#' @param trials (number of trials)
#' @param prob (probability of success, between 0 and 1)
#' @return binomial probability
#' @export
#' @examples
#' #Probability of 4 successes in 5 trials, with probability of success 0.5
#' bin_probability(success=4,trials=5,prob=0.5)

bin_probability <- function(success,trials,prob){
  if (!check_trials(trials)){
    stop("trials value invalid")
  }
  if(!check_prob(prob)){
    stop("prob value invalid")
  }
  if(!check_success(success,trials)){
    stop("success value invalid")
  }
  return(bin_choose(trials,success)*prob^(success)*(1-prob)^(trials-success))
}