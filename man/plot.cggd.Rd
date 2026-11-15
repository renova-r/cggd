\name{plot.cggd}
\alias{plot.cggd}
\title{Plot method for cggd objects}
\description{
Produce a plot of a cggd fit. The default is a complete coefficient path.
}
\usage{
plot.cggd(x, steps=5, breaks = TRUE, first_k=1,last_k=Inf, xvar=c("step","t"),omit.zeros = TRUE, eps = 1e-10, ...)
}
\arguments{
  \item{x}{cggd object}
  \item{steps}{Number of steps to sample coefficients between each model iteration.}
  \item{breaks}{If \code{TRUE}, then vertical lines are drawn at each
      break point in the piecewise linear coefficient paths}
  \item{first_k}{The starting k, model iteration, to plot from.}
  \item{last_k}{The final k, model iteration, to plot from.}      
  \item{xvar}{The type of x variable against which to
plot. \code{xvar=step} plots against iteration steps of the model
(default). \code{xvar=t} plots against the \emph{time} along the coefficient path.}
  \item{omit.zeros}{When the number of variables  is much greater than
    the number of observations, many coefficients will never be nonzero;
      this logical (default \code{TRUE}) avoids plotting these zero coefficents}
  \item{eps}{Definition of zero above, default is \code{1e-10}}
  \item{\dots}{Additonal arguments for generic plot. Can be used to set xlims,
      change colors, line widths, etc}
}
\value{NULL}
\references{
Cun-Hui Zhang (2007) "Continuous Generalized Gradient Descent" \emph{Journal of Computational and Graphical Statistics}
; see also \url{http://stat.rutgers.edu/~cunhui/software/CGGD.html}.
}
\author{Cun-Hui Zhang and Ofer Melnik}
\examples{
data(housing)
attach(housing)
object <- cggd(x,y)
plot(object)
detach(housing)
}
\keyword{hplot}
\keyword{methods}
