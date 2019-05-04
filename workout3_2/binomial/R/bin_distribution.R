#' @title bin_distribution
#' @description return a data frame with the probability distribution
#' @param trials
#' @param probability
#' @return probability distribution
#' @export
#' @examples
#'#Build a binomial distribution with 5 trials, prob = 0.5
#'a <- bin_distribution(trials=5,prob=0.5)
#'plot(a)

bin_distribution <- function(trials,prob) {
  x <- bin_probability(0:trials, trials, prob)
  p <- data.frame(success = 0:trials, probability = x)
  class(p) <- c("bindis","data.frame")
  return(p)
}

#' @export
plot.bindis <- function(p,...){
  barplot(height = p[,2], xlab = "# of success", ylab = "Probability")
}
