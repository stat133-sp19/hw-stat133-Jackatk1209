# CHECK PROB
# Private checker function check_prob
# Description: checks if probability is valid
# Input: prob (numeric value)
# Returns: TRUE if prob valid, FALSE otherwise

check_prob <- function(prob) {
  if (0 <= prob & prob <= 1) {
    return(TRUE)
  }
  else {
    stop("invalid prob value")
  }
}
