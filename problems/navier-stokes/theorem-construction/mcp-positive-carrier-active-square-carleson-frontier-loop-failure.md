# Positive-carrier active-square Carleson route — frontier-loop failure note

## Target

Test the loop item:

`positive-carrier replacement or residual tail estimate for active-square Carleson`.

This item arises after the signed weighted commutator-defect route fails. Once signs are lost, the proof needs a positive estimate strong enough to control the active-square tail burden.

## Sources checked

- `problems/navier-stokes/theorem-construction/active-square-upper-tail-carleson-blocked-by-square-source.md`
- `problems/navier-stokes/theorem-construction/active-square-upper-tail-carleson-attempt-and-tail-square-bypass.md`
- `problems/navier-stokes/theorem-construction/mcp-scale-normalized-nu_scf-carleson-decisive-obstruction-scale-normalized-nu_scf-carleson-estimate-1f7924f565.md`
- `problems/navier-stokes/theorem-construction/flux-source-carleson-bound-result.md`
- `problems/navier-stokes/theorem-construction/monotone-flux-law-active-shell-pulse-attempt.md`

## Result

The positive-carrier route fails from the current MCP-visible surfaces.

The desired active-square upper-tail Carleson estimate has the form

`int_I sum_{j >= max(N,k+C1)} 2^{-j} D_j(t)^2 dt <= eps nu 2^{2k}|I| + C 2^{-2 delta max(N,k)}.`

The energy layer supplies first-moment dissipation control. The target asks for a square in `D_j`. A valid direct absorption would need an active-shell amplitude gain, a square-source theorem, or a direct active-square estimate. These inputs are absent.

The tail-square bypass closes the far-separated reserve by energy absorption. It does not supply the active-square upper-tail Carleson theorem. It only removes one downstream reserve burden.

The scale-normalized `nu_SCF` upper carrier has the same obstruction. Raw finite measure gives

`sum_k nu_SCF(Q_k) <= C nu_SCF(total)`

for bounded-overlap windows. The Jump route needs scale-normalized density control across shrinking terminal windows. That requires a weighted estimate of the form

`sum_k r_k^{-alpha} nu_SCF(Q_k) <= C`.

A finite Radon measure can concentrate on shrinking windows with finite total mass while the scale-normalized weighted sum diverges. Thus raw finite measure is insufficient.

## Failure audit

The monotone shell identity permits short active-shell pulses when the nonlinear flux source supplies matching input. Flux antisymmetry helps organize the source, yet the weighted defect and residual tail estimate remain open. The existing flux-source Carleson surface identifies the missing theorem as a signed weighted commutator-defect theorem plus a residual tail estimate strong enough for active-square control. The signed theorem already failed at the true lifted-remainder level.

Therefore the positive-carrier replacement has no current closure path.

## Required next theorem

A valid continuation needs one of:

1. square-source theorem for the nonlinear shell flux;
2. active-shell amplitude gain from `OriginalSmoothData`;
3. direct active-square Carleson estimate for `nu_SCF` on terminal same-fluid windows.

## Status

`positive-carrier replacement or residual tail estimate for active-square Carleson` is a failed loop item under the current repo-visible theorem surfaces. It does not discharge `Jump_avg branch elimination`.