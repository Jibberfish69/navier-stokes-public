# Active-shell amplitude gain from OriginalSmoothData — frontier-loop failure note

## Target

Test the loop item:

`active-shell amplitude gain from OriginalSmoothData`.

The active-shell gain is a sufficient bridge to scale-normalized `nu_SCF`
Carleson control, and that Carleson control feeds the `Jump_avg`
branch-elimination route.

## Sources checked

- `problems/navier-stokes/theorem-construction/mcp-active-shell-amplitude-gain-from-originalsmoothdata-obstruction-originalsmoothdata-active-shell-amplitude-gain-85a8547090.md`
- `problems/navier-stokes/theorem-construction/shell-amplitude-gain-active-interval-result.md`
- `problems/navier-stokes/theorem-construction/monotone-flux-law-active-shell-pulse-attempt.md`
- `problems/navier-stokes/theorem-construction/flux-source-carleson-bound-result.md`
- `problems/navier-stokes/theorem-construction/mcp-active-shell-amplitude-gain-implies-nu_scf-carleson-active-shell-amplitude-gain-scale-normalized-nu_scf-carleson-estimate-b42419075e.md`

## Desired theorem

A sufficient active-shell gain is the pointwise reserve inequality

`2^{-j}D_j(t)^2 <= eps nu D_j(t) + r_j(t),`

on active terminal shells, with summable reserve `r_j`.

Equivalently, one may seek active-interval amplitude decay such as

`E_j(t) <= C nu^{1/2} 2^{-j/2}`

on the active shell schedule.

## Result

The theorem fails from current MCP-visible surfaces.

`OriginalSmoothData` gives smoothness on every compact interval before the terminal time and finite total energy/dissipation. These facts control fixed shells before the endpoint. The target controls active shells whose frequencies may drift to infinity as `t` approaches the terminal time.

The scalar shell inequality

`E_j'(t) + c nu 2^{2j} E_j(t) <= F_j(t)`

shows the obstruction. A source term `F_j` can balance damping at a chosen active amplitude. Thus parabolic damping does not impose the desired amplitude gain without a theorem controlling the nonlinear shell flux source.

The fixed-shell amplitude theorem also fails as a universal consequence of smooth data: large smooth divergence-free data can have a large component in any fixed shell, violating a data-independent bound of the desired size.

## Failure audit

The energy layer supplies first-moment control. The active-square route needs square control. Short active-shell pulses remain compatible with the shell identity whenever the nonlinear flux source supplies matching input. Existing flux-source surfaces identify the missing theorem as a square-source or signed weighted commutator-defect theorem strong enough to control the residual tail. Those inputs are absent.

## Required next theorem

A valid continuation needs one of:

1. square-source theorem for the nonlinear shell flux `F_j`;
2. direct active-square Carleson theorem;
3. monotone-dominance functional preventing short terminal active-shell pulses.

## Status

`active-shell amplitude gain from OriginalSmoothData` is a failed loop item. It should not be used as a discharge of `Jump_avg branch elimination`.
