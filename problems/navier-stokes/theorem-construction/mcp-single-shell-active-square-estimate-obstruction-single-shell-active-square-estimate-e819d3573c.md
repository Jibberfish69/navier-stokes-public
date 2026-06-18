# Single-shell active-square estimate — failed discharge

## Target
Prove the single-shell active-square estimate

`int_I 2^{-j} D_j(t)^2 dt <= eps nu 2^{2j}|I| + C 2^{-2 delta j}`.

This estimate is sufficient, after summing over shells, to prove active-square upper-tail Carleson.

## Shell equation
For shell energy,

`E_j'(t) + c nu D_j(t) <= F_j(t)`,

with `D_j = 2^{2j} E_j`. The active-square integrand is

`2^{-j} D_j^2 = 2^{3j} E_j^2`.

## Attempt
The parabolic damping term controls the first moment `int_I D_j`. To control `int_I 2^{-j}D_j^2`, one needs either an amplitude bound on `E_j`, an `L^2_t` square-source bound on `F_j`, or a direct active-square inequality.

The damped scalar response gives the conditional route:

`||E_j||_{L^2(I)}^2 <= C lambda_j^{-1}E_j(t0)^2 + C lambda_j^{-2}||F_j||_{L^2(I)}^2`,

where `lambda_j:=nu 2^{2j}`. Multiplying by `2^{3j}` reduces the target to an entrance-tail reserve plus the square-source estimate for `F_j`.

## Obstruction
The required square-source estimate for `F_j` fails as a universal theorem from original smooth data by fixed-shell cubic homogeneity.  For a fixed shell profile `u`,

```math
F_j(Au)=A^3F_j(u),
\qquad
|F_j(Au)|^2=A^6|F_j(u)|^2.
```

On any short interval where the fixed-shell profile is retained, the proposed universal right-hand side is amplitude-independent at fixed shell.  Thus the estimate needs an active-window amplitude normalization or a structural cancellation theorem; smooth initial data alone does not provide the uniform normalized bound.

## Verdict
The single-shell active-square estimate remains open. It is equivalent, at current route granularity, to one of:

1. square-source estimate with amplitude normalization;
2. active-shell amplitude gain;
3. direct active-square theorem with a nonlinear source mechanism.

## Consequence
Active-square upper-tail Carleson remains open at the single-shell source/amplitude level.
