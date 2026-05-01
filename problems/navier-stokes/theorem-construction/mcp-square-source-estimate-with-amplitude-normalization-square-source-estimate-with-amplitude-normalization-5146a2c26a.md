# Square-source estimate with amplitude normalization — conditional discharge

## Target
Prove the square-source estimate with amplitude normalization needed for the single-shell active-square estimate.

The unnormalized target

`int_I |F_j(t)|^2 dt <= c eps nu^3 2^{3j}|I| + C nu^2 2^j 2^{-2 delta j}`

fails as a universal fixed-shell theorem by cubic amplitude scaling.

## Normalized hypothesis
Assume active-shell amplitude normalization on the interval `I`:

`|F_j(t)|^2 <= c eps nu^3 2^{3j} + C nu^2 2^j 2^{-2 delta j}|I|^{-1}`

for the active shell and interval under consideration.

Equivalently, assume a source-normalized active interval on which the nonlinear shell flux cannot exceed the heat-scale square-source threshold plus the reserve density.

## Proof
Integrate the normalized pointwise bound over `I`:

`int_I |F_j(t)|^2 dt <= c eps nu^3 2^{3j}|I| + C nu^2 2^j 2^{-2 delta j}`.

This is exactly the square-source estimate required by the damped scalar response.

Combining with the entrance-tail reserve in `square-source-to-active-square-control-result.md` gives the single-shell active-square estimate:

`int_I 2^{-j}D_j(t)^2 dt <= eps nu 2^{2j}|I| + C 2^{-2 delta j}`.

## Result
The square-source estimate is discharged conditionally under active-shell amplitude/source normalization.

## Boundary
This note does not prove the normalization from `OriginalSmoothData`. The normalization is equivalent to the active-shell amplitude gain or a nonlinear flux-source theorem forbidding source-balanced pulses.