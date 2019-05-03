#' @title bin_cumulative
#' @description return data frame with probability distribution and respective cumulative probabilities
#' @param trials
#' @param prob
#' @return probability distribution and cumulative probabilities
#' @export
#' @examples
#'a <- bin_cumulative(5,0.5)
#'plot(a)

bin_cumulative <- function(trials,prob){
  d<- bin_distribution(trials,prob)
  iter <- rep(NA,trials+1)
  for (i in 1:(trials+1)){
    iter[i] <- sum(d[1:i,2])
  }
  d$cumulative <- iter
  class(d)<- c("bincum","data.frame")
  return(d)
}

#' @export
library(ggplot2)
plot.bincum <- function(d){
  ggplot(d, aes(x=d$success, y=d$cumulative))+geom_line()+xlab("Successes")+ylab("Probability")
}