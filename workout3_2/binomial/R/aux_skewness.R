# AUX SKEWNESS
# Private aux function aux_skewness
# Description: returns skewness of binomial exponential
# Input: trials (numeric value), prob (numeric value)
# Returns: skewness

aux_skewness <- function(trials, prob) {
  return((1-2*prob)/sqrt((trials*prob*(1-prob))))
}