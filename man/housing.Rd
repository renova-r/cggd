\name{housing}
\docType{data}
\alias{housing}
\title{Covariates related to housing prices}
\description{
 The \code{housing} data frame has 506 rows and 13 attributes.
}
\usage{housing}
\format{
  This data frame contains the following columns:
  \describe{
    \item{x}{a matrix with 13 columns of attributes}
    \item{y}{a numeric vector of median value of owner-occupied homes in 1000's}
  }
}
\details{
The x matrix has been standardized to have unit L2 norm in each column
and zero mean. The matrix x2 consists of x plus certain interactions.
}
\source{
   (a) Origin:  This dataset was taken from the StatLib library which is
                maintained at Carnegie Mellon University.
   (b) Creator:  Harrison, D. and Rubinfeld, D.L. 'Hedonic prices and the 
                 demand for clean air', J. Environ. Economics & Management,
                 vol.5, 81-102, 1978.
   (c) Date: July 7, 1993
   Can be found on the UCI data repository \url{ftp://ftp.ics.uci.edu/pub/machine-learning-databases/housing/}
  }
\keyword{datasets}
