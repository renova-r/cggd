\name{predict.cggd}
\alias{predict.cggd}
\title{
Make predictions or extract coefficients from a fitted cggd model
}
\description{
While \code{cggd} produces the entire path of solutions, predict.cggd
allows one to extract a prediction at a particular point along the path.
}
\usage{
 \method{predict}{cggd}(object, newx, t, type = c("fit", "coefficients"), mode=c("k","t"), \dots)
}
\arguments{
	\item{object}{
	A fitted cggd object
	}
	\item{newx}{
	If type="fit", then newx should be the x values at which the fit is
	required. If type="coefficients", then newx can be omitted.
	}
	\item{t}{
	A value specifying the desired model. Its values depends on the mode argument. By
	default (mode="k"), \emph{t} should take on values between 0 and max k (e.g.,
	a step of 1.3 means .3 of the way between step 1 and 2.)
	}
	\item{type}{
	If type="fit", predict returns the fitted value. If
	type="coefficients", predict returns the coefficients.
	}
	\item{mode}{
	Mode="k" means the t= argument indexes the cggd step number, and
	the coefficients will be returned corresponding to the values
	at step t. If mode="t", then t is a time on the coefficient path.
	}
	\item{\dots}{
	additional parameters.
	}
}
\value{
Either the fitted value, or a vector of coefficients.
}
\references{
Cun-Hui Zhang (2007) "Continuous Generalized Gradient Descent" \emph{Journal of Computational and Graphical Statistics}
; see also \url{http://stat.rutgers.edu/~cunhui/software/CGGD.html}.
}
\author{Cun-Hui Zhang and Ofer Melnik}
\seealso{
plot,  cggd, cv.cggd
}
\examples{
data(housing)
attach(housing)
object <- cggd(x,y)
coef4.1 <- predict(object, t=4.1,type="coefficients", mode="k") 
detach(housing)
}
\keyword{regression}
\keyword{methods}
