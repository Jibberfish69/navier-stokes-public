# Quadratic-route research notes

A bounded mathematical study of complete temporal-jet and actual-time-shift quadratic operations for the pressure-complete forced Navier–Stokes equations.

The reading order follows the hierarchy:

- [Arbitrary temporal depth: exact cancellation, positive weights and legitimate limits](reports/01-temporal-composition.md).
- [Exact finite-depth temporal cancellation and its full boundary current](reports/02-temporal-coefficients.md).
- [Complete shifted forcing and finite-depth positive temporal cancellation](reports/03-temporal-forcing.md).
- [Actual all-depth temporal cancellation and positive projective weights](reports/04-temporal-projective-forms.md).
- [Exact temporal Hankel contraction and its finite boundary](reports/05-temporal-positive-form-verification.md).
- [Actual time shifts: positive cancellation, first-row cost and terminal limit](reports/06-fixed-shift-composition.md).
- [Actual finite time-shift matrix, exact differences and transport cancellation](reports/07-fixed-shift-matrix.md).
- [Actual two-time difference: full pressure, forcing and positive cancellation](reports/08-difference-pressure-force.md).
- [Actual shift kernels, covariance and first-difference extraction](reports/09-shift-kernels-and-covariance.md).
- [Actual time shifts: cancellation, extraction and averaging](reports/10-shift-extraction-verification.md).
- [Actual time shifts: whole domains, kinetic strips and the first rectangle](reports/11-fixed-shift-whole-domain.md).
- [Adaptive actual-time sampling: complete cancellation, stock and derivative price](reports/12-adaptive-shift-matrix.md).
- [Actual adaptive compensated shifts: complete coefficient and clock test](reports/13-adaptive-compensation.md).
- [Adaptive actual-time shifts: domains, complete balances and receiving action](reports/14-adaptive-physical-domain.md).
- [Adaptive shifts and positive weights: final quadratic-route theorem](reports/15-adaptive-composition.md).

[Coverage](COVERAGE.md) records the exact scope and conditional conclusions. [Sources](SOURCES.md) gives verified pinned links for the three manuscript source witnesses and identifies the native assembly witness separately. These source identities do not certify a deposited PDF.

## Exact finite checks

Each directory contains one standard-library Python checker and its recorded exact result. To reproduce a result, copy its validator into an empty working directory and run Python 3; it writes coefficient-check.json beside itself and refuses to overwrite an existing result.

- [temporal](checks/temporal/validate.py): [recorded result](checks/temporal/coefficient-check.json).
- [fixed-shifts](checks/fixed-shifts/validate.py): [recorded result](checks/fixed-shifts/coefficient-check.json).
- [adaptive-shifts](checks/adaptive-shifts/validate.py): [recorded result](checks/adaptive-shifts/coefficient-check.json).

The package contains mathematical reports and finite coefficient checks. Manuscripts and broader research notes are outside its scope.
