# CHECK TRIALS
# Private checker function check_trials
# Description: checks if trials is valid
# Input: trials (numeric value)
# Returns: TRUE if trials valid, FALSE otherwise

check_trials <- function(trials) {
  if (floor(trials) != trials) {
    stop("must be integer")
  }
  if (is.numeric(floor(trials)) & trials >= 0) {
    return(TRUE)
  }
  else {
    stop("invalid trials value")
  }
}
