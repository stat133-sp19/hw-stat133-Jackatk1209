# CHECK SUCCESS
# Private checker function check_success
# Description: checks if success is valid given trials
# Input: success (numeric or vector value) & trials (numeric value)
# Returns: TRUE if success valid, FALSE otherwise

check_success <- function(success, trials) {
  if (max(success) <= trials & min(success,trials) >= 0) {
    return(TRUE)
  }
  else {
    stop("invalid values")
  }
}
