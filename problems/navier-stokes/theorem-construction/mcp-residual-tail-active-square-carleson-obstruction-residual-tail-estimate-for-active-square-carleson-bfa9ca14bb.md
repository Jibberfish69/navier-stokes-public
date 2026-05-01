# Residual-tail estimate strong enough for active-square Carleson — failed discharge

## Target
Prove the residual-tail estimate needed to convert the nonlinear shell-flux reduction into active-square Carleson control.

The target strength is active-square upper-tail control:

`int_I sum_{j >= max(N,k+C1)} 2^{-j} D_j(t)^2 dt <= eps nu 2^{2k}|I| + C 2^{-2 delta max(N,k)}`.

## Existing reserve
The repo contains a discharged full tail-square reserve:

`2^{-2N} E_N(t)^2 <= eps nu D_N(t)`,

and hence

`int 2^{-2N} E_N(t)^2 dt <= eps nu int D_N(t) dt`.

This is a useful global tail-square reserve from dyadic near/far splitting.

## Strength mismatch
The flux-source residual requires active-square control of the form

`int 2^{-j} D_j(t)^2 dt`

or the corresponding upper-tail sum. This is stronger and more localized than the full tail-square reserve. The discharged reserve controls a square of cumulative tail energy by first-moment dissipation. The active-square theorem controls square dissipation density shell by shell on active intervals.

## Blocking theorem
The active-square upper-tail Carleson surface records the precise blocker: the estimate follows from single-shell active-square bounds, which in turn need a square-source estimate, active-shell amplitude gain, or direct active-square theorem. The square-source estimate fails as a universal theorem by fixed-shell cubic-amplitude scaling.

## Verdict
The residual-tail estimate strong enough for active-square Carleson is not discharged by the current surfaces. The existing full tail-square reserve is insufficient for the active-square residual required by the shell-flux route.

## Exact next target
Prove one of:

1. single-shell active-square estimate;
2. square-source estimate with amplitude normalization;
3. active-shell amplitude gain;
4. direct active-square upper-tail Carleson theorem.