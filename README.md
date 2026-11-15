# cggd

Continuous generalized gradient descent for regression paths.

Compatibility updates by Renova.

Version 0.8.9001: Restores prediction defaults and elapsed-time interpolation, removes implicit function and global-variable lookups, and bounds the step after an exact root to avoid a large historical overshoot.

The numerical fix intentionally corrects an old switch-time artifact. Extreme cancellation can still require the original fallback step; cross-version sampling and matrix-class differences are recorded in validation.json.

## Install

```r
install.packages("remotes")
remotes::install_github("renova-r/cggd@renova-0.8.9001")
```

[Release notes](NEWS.md) · [Renova package directory](https://github.com/renova-r/revival-catalog)

Original authors: Cun-Hui Zhang, Ofer Melnik. License: GPL (>= 2); see [COPYING](COPYING). Original author and maintainer metadata are retained.
