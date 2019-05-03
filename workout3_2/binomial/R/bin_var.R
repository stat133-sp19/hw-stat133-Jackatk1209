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

bin_variable <- function(trials,prob){
  check_trials(trials)
  check_prob(prob)
  x = list(trials,prob)
  class(x) <- "binvar"
  return(x)
}

print.binvar <- function(x){
  cat('"Binomial Variable"',sep = '\n\n')
  cat("Parameters",sep = '\n')
  cat("- number of trials: ",x[[1]],sep = '\n')
  cat("- prob of success: ",x[[2]],sep = '\n')
}

summary.binvar <- function(x){
  x<-as.numeric(x)
  trials <- x[1]
  prob <- x[2]
  mean <- aux_mean(trials,prob)
  variance <- aux_variance(trials,prob)
  mode <- aux_mode(trials,prob)
  skewness <- aux_skewness(trials,prob)
  kurtosis <- aux_kurtosis(trials,prob)
  a <- list(trials,prob,mean,variance,mode,skewness,kurtosis)
  class(a) <- "summary.binvar"
  return(a)
}

print.summary.binvar <- function(x){
  cat('"Summary Binomial"',sep = '\n\n')
  cat("Parameters",sep = '\n')
  cat("- number of trials: ",x[[1]],sep = '\n')
  cat("- prob of success: ",x[[2]],sep = '\n\n')
  cat("Measures",'\n')
  cat("- mean: ",x$mean,'\n')
  cat("- variance: ",x$variance,'\n')
  cat("- mode: ",x$mode,'\n')
  cat("- skewness: ",x$skewness,'\n')
  cat("- kurtosis: ",x$kurtosis,'\n')
}