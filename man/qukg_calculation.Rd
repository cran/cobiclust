% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility_functions.R
\name{qukg_calculation}
\alias{qukg_calculation}
\title{Calculate the approximate conditional moments of the third hidden variable U and its log}
\usage{
qukg_calculation(
  s_ik = s_ik,
  t_jg = t_jg,
  x = x,
  mu_i = mu_i,
  nu_j = nu_j,
  alpha_c = alpha_c,
  a = a
)
}
\arguments{
\item{s_ik}{s_ik.}

\item{t_jg}{t_jg.}

\item{x}{a matrix of observations. Columns correspond to biological samples and rows to microorganisms.}

\item{mu_i}{mu_i.}

\item{nu_j}{nu_j.}

\item{alpha_c}{alpha_c.}

\item{a}{a0.}
}
\value{
A list of 4 elements.
\describe{
\item{\code{a_tilde}}{a_tilde.}
\item{\code{b_tilde}}{b_tilde.}
\item{\code{exp_utilde}}{exp_utilde.}
\item{\code{exp_logutilde}}{exp_logutilde.}
}
}
\description{
Calculate the approximate conditional moments of the third hidden variable U and its log
}
\keyword{internal}
