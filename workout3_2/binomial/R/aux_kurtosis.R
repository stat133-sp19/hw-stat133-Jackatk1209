# AUX KURTOSIS
# Private aux function aux_kurtosis
# Description: returns kurtosis of binomial exponential
# Input: trials (numeric value), prob (numeric value)
# Returns: kurtosis
aux_kurtosis <- function(trials, prob){
  return((1-6*prob*(1-prob))/(trials*prob*(1-prob)))
}