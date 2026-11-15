\name{cv.cggd}
\alias{cv.cggd}
\title{Computes K-fold cross-validated error curve for cggd}
\description{
Computes the K-fold cross-validated mean squared prediction error for
cggd.}
\usage{
cv.cggd(x, y, nfolds = 6, kmax=40 , 
           trace = FALSE, plot.it = TRUE, se=TRUE, ...)
}
\arguments{
  \item{x}{Input to cggd}
  \item{y}{Input to cggd}
  \item{nfolds}{Number of folds}
  \item{kmax}{Max number of iterations per model}
  \item{trace}{Show computations}
  \item{plot.it}{Plot it}
  \item{se}{Include standard error bands}
  \item{\dots}{Additional arguments to \code{cggd}}
}
\value{

  \item{cv}{The CV loss curve at each value of k}
  \item{cv.error}{The standard error of the CV curve}
}
\references{
Cun-Hui Zhang (2007) "Continuous Generalized Gradient Descent" \emph{Journal of Computational and Graphical Statistics}
; see also \url{http://stat.rutgers.edu/~cunhui/software/CGGD.html}.
}
\author{Cun-Hui Zhang and Ofer Melnik}
\examples{
data(Wine)
attach(Wine)
cv.cggd(x.learning,y.learning,kmax=40,fctr=1e3)
detach(Wine)
}
\keyword{regression}

