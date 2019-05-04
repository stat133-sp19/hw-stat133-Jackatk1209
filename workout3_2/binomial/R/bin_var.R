#' @title bin_var
#' @description returns binomial random variable
#' @param trial
#' @param prob
#' @return list with number of trials and probability of success
#' @export
#' @examples
#'#Create a binomial distribution
#'bin <- bin_variable(10,0.3)
#'# summarize
#'summary(bin)

bin_variable = function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  object = list(trials = trials, prob = prob)
  class(object) = "binvar"
  return(object)
}

#' @export
print.binvar = function(x, ...) {
  cat('"Binomial Variable"\n\n')
  cat('Parameters: \n')
  cat(sprintf('- number of trials: %s', x$trials))
  cat(sprintf('\n- prob of success: %s', x$prob))
}

#' @export
summary.binvar = function(x, ...) {
  a = data.frame(
    trials = x$trials,
    prob = x$prob,
    mean = aux_mean(x$trials, x$prob),
    variance = aux_variance(x$trials, x$prob),
    mode = aux_mode(x$trials, x$prob),
    skewness = aux_skewness(x$trials, x$prob),
    kurtosis = aux_kurtosis(x$trials, x$prob)
  )
  object = list(dat = a)
  class(object) = "summary.binvar"
  object
}

#' @export
print.summary.binvar = function(x, ...) {
  cat('Summary Binomial\n\n')
  cat('Parameters: \n')
  cat(sprintf('- number of trials: %s', x$dat$trials))
  cat(sprintf('\n- prob of success: %s', x$dat$prob))
  cat('\n\n Measures: \n')
  cat(sprintf('- mean: %s', x$dat$mean))
  cat(sprintf('\n- variance: %s', x$dat$variance))
  cat(sprintf('\n- mode: %s', x$dat$mode))
  cat(sprintf('\n- skewness: %s', x$dat$skewness))
  cat(sprintf('\n- kurtosis: %s', x$dat$kurtosis))
}
