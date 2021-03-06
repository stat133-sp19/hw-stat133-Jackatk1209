% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bin_probability.R
\name{bin_probability}
\alias{bin_probability}
\title{bin_probability}
\usage{
bin_probability(success, trials, prob)
}
\arguments{
\item{success}{(number of successes)}

\item{trials}{(number of trials)}

\item{prob}{(probability of success, between 0 and 1)}
}
\value{
binomial probability
}
\description{
determines probability of getting a certain amount of successes or less in a certain amount of trials
}
\examples{
#Probability of 4 successes in 5 trials, with probability of success 0.5
bin_probability(success=4,trials=5,prob=0.5)
}
