\name{cggd-internal}
\title{Internal cggd functions}
\alias{get.switch.time}
\alias{cggd.mgd.var.init}
\alias{cggd.mgd.gen.beta} 
\alias{cggd.mgd.one.step}
\alias{cggd.switch.func}
\alias{error.bars}
\alias{cggd.switch.func.min}
\alias{plotCVcggd}
\alias{cggd.mgd.one.step}
\alias{cggd.trr.var.init}
\alias{cggd.trr.gen.beta}
\alias{cggd.trr.one.step}
\alias{cggd.Fstar}
\alias{updateR}
\alias{.First.lib}
\description{Internal lars functions}
\usage{
get.switch.time(switch.func,e, boundary=0,terminate_value=1e15,tol = .Machine$double.eps^0.5, fctr=1e8, TRACE=FALSE)
cggd.mgd.var.init(x,y,  a.set, beta_init, e, alpha1 = 0, alpha2 = 0, w = 1)
cggd.mgd.gen.beta(t,e)
cggd.switch.func(t, e, do_in=TRUE, do_out=TRUE)
cggd.switch.func.min(t,e)
cggd.mgd.one.step(x, y, a.set, beta_init,    t1 = 1, alpha1 = 0, alpha2 = 0, w = 1, tau = 1, tautil = -1, eps = -1, TRACE=FALSE, fctr=1e8)
cggd.trr.var.init(x,y,  a.set, beta_init, e)
cggd.trr.gen.beta(t,e)
cggd.trr.one.step(x, y, a.set, beta_init, t1 = 1, t0 = 1, tau = 1, tautil = -1, eps = -1, fctr=1e8)
cggd.Fstar(x, eps1=1e-6)
plotCVcggd(cv.lars.object,se=TRUE)
error.bars(x, upper, lower, width = 0.02, ...)
}
\author{Ofer Melnik, Cun-Hui Zhang}
\details{
  These are not to be called by the user.
}
\keyword{internal}
