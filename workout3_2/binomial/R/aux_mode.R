# AUX MODE
# Private aux function aux_mode
# Description: returns mode of binomial
# Input: trials (numeric value), prob (numeric value)
# Returns: mode

aux_mode <- function(trials, prob) {
  if (is.integer(trials*prob + prob)) {
    c(trials* prob + prob, trials* prob + prob -1)
  }
  else {
    floor(trials * prob + prob)
  }
}