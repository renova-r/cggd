\name{OJ}
\encoding{latin1}
\docType{data}
\alias{OJ}
\title{OJ}
\description{
 The \code{OJ} datafile has both learning and test data.
}
\usage{OJ}
\format{
  This data file contains the following items:
  \describe{
    \item{x.learning}{150 spectra (lines), sampled with 700 points (columns)}
    \item{y.learning}{Corresponding level of saccharose, in a column vector (150 lines).}
    \item{x.test}{68 spectra (lines), sampled with 700 points (columns)}
    \item{y.test}{Corresponding level of saccharose, in a column vector (68 lines).}
  }
}
\details{
The goal is to estimate the level of saccharose of an orange juice from its observed near-infrared spectrum.
}
\source{
This database has been provided by Prof. Marc Meurens, Université catholique de Louvain, BNUT unit.
Please acknowledge the origin of this database if you use it and/or publish about it.
It can be found at \url{http://www.ucl.ac.be/mlg/index.php?page=DataBases}
  }
\keyword{datasets}
