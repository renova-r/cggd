\name{cggd}
\alias{cggd}
\title{
Fits Continuous Generalized Gradient Descent models
}
\description{
These CGGD models all provide the entire sequence of
coefficients and fits, to the least squares fit. This package is based on the lars package.
}
\usage{
cggd(x, y, beta0 = rep(0,2), kmax = 300, 
                      TRR=FALSE, t0 = 1, TRACE=FALSE,
                      alpha1 = 0, alpha2 = 0, w = 1, 
                      tau = 1, tautil = -1, eps = -1, fctr=1e8)
}
\arguments{
\item{x}{
matrix of predictors
}
\item{y}{
response 
}
\item{beta0}{
initial coefficient values
}
\item{kmax}{
the maximum number of steps
}
\item{TRACE}{
If TRUE, cggd prints out its progress
}
\item{TRR}{
If TRUE builds a Threshold Ridge Regression (TRR) model.
If FALSE builds a Functional Gradient Descent Kernel model.
}
\item{t0}{
The initial time in the TRR model.
}
\item{alpha1,alpha2,w}{
Values used in kernel generation.
}
\item{tau,tautil,eps}{
Values used in variable selection.
}
\item{fctr}{
Used to tune the search routine. Smaller values tighten the search (more sampling).
}}
\value{
A "cggd" object is returned, for which plot and predict
methods exist.

Some significant componenets of the object are:
\item{beta.tk}{The coefficients of the model at the different steps (k).}
\item{tk}{The \emph{time} at the different steps (k).}
\item{a.set.tk}{The active coefficients of the model at the different steps (k).}

}
\details{
CGGD is a general method for performing different types of regressions while continuously varying regularization 
and other parameters (similar to LARS but broader). It returns the models fit along the continuous paths of parameter modification.
Note that y is automatically centered and x is centered and normalized.
}
\references{
Cun-Hui Zhang (2007) "Continuous Generalized Gradient Descent" \emph{Journal of Computational and Graphical Statistics}
; see also \url{http://stat.rutgers.edu/~cunhui/software/CGGD.html}.
}
\author{Cun-Hui Zhang and Ofer Melnik}
\seealso{
plot, and predict methods for cggd, and  cv.cggd
}
\examples{
data(housing)
attach(housing)
object <- cggd(x,y)
plot(object)
object2 <- cggd(x,y,TRR=TRUE)
plot(object2)
detach(housing)
}
\keyword{regression}


