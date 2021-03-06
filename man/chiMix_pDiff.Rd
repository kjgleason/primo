% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/density_estimation.R
\name{chiMix_pDiff}
\alias{chiMix_pDiff}
\title{Difference from nominal \eqn{P}-values of a chi-squared mixture.}
\usage{
chiMix_pDiff(par, data, sorted = FALSE)
}
\arguments{
\item{par}{vector of two parameters for the alternative distribution:
scale parameter [1] and degrees of freedom [2].}

\item{data}{list with two elements: \code{chi_mix} (vector) and \code{alt_prop} (scalar).}

\item{sorted}{logical, denoting whether \code{data$chi_mix} is sorted in decreasing order.}
}
\value{
A numeric value of the total (absolute) difference between observed \eqn{P}-values
(given the parameters) and nominal \eqn{P}-values (given their ranks).
}
\description{
Match observed \eqn{P}-values to nominal \eqn{P}-values by rank and calculate total difference. Objective
function of a chi-squared mixture is used. This function is optimized to estimate the unknown
scale and degree of freedom parameters for the scaled chi-squared distribution under the
alternative hypothesis.
}
\details{
The argument \code{data} should be a two-element list. The first element, named \code{chi_mix}, is
a vector of the observed values from the chi-squared mixture. The second element, named \code{alt_prop},
is the proportion of statistics that come from the alternative distribution.

The order of parameters is important in \code{par}. The scale parameter should be in the first position;
the degrees of freedom should be in the second position.
}
