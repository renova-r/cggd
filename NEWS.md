# cggd 0.8.9001

Restores prediction defaults and elapsed-time interpolation, removes implicit function and global-variable lookups, and bounds the step after an exact root to avoid a large historical overshoot.

The numerical fix intentionally corrects an old switch-time artifact. Extreme cancellation can still require the original fallback step; cross-version sampling and matrix-class differences are recorded in validation.json.

- Renova version and attribution, release documentation and license text; stale MD5 removed.
