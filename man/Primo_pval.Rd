% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{Primo_pval}
\alias{Primo_pval}
\title{Estimate posterior probabilities of association patterns, using P-values.}
\usage{
Primo_pval(pvals, alt_props, Gamma = NULL, tol = 0.001, par_size = 1)
}
\arguments{
\item{pvals}{matrix of \eqn{P}-values from test statistics.}

\item{alt_props}{vector of the proportions of test statistics from
alternative densities.}

\item{Gamma}{correlation matrix.}

\item{tol}{numeric value specifying the tolerance threshold for convergence.}

\item{par_size}{numeric value specifying the number of workers for
parallel computing (1 for sequential processing).}
}
\value{
A list with the following elements:
\tabular{ll}{
\code{post_prob} \tab matrix of posterior probabilities
(each column corresponds to an association pattern).\cr
\code{pis} \tab vector of estimated proportion of observations
belonging to each association pattern.\cr
\code{D_mat} \tab matrix of densities under each association pattern.\cr
\code{Gamma} \tab correlation matrix.\cr
\code{chi_mix} \tab matrix of \eqn{-2}log(\eqn{P})-values.\cr
\code{A} \tab vector of scaling factors under the alternative distributions.\cr
\code{df_alt} \tab vector of degrees of freedom approximated for the alternative distributions.\cr
}

The main element of interest for inference is the posterior probabilities matrix, \code{post_prob}.
The estimated proportion of observations belonging to each association pattern, \code{pis}, may
also be of interest. The remaining elements are returned primarily for use by other functions.
}
\description{
For each observation (e.g. SNP), estimates the posterior probability of
each association pattern. Utilizes parallel computing, when available.
}
\details{
The following are additional details describing the input arguments
 (for \eqn{m} SNPs/observations measured in \eqn{d} studies):
\tabular{ll}{
\code{pvals} \tab  \eqn{m} x \eqn{d} matrix.\cr
\code{alt_props} \tab vector of length \eqn{d}.\cr
\code{Gamma} \tab  \eqn{d} x \eqn{d} matrix.\cr
 \tab If \code{NULL}, will be estimated using observations where all \eqn{p < 5.7e-7}.\cr
}
}
