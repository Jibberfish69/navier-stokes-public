---
theorem_id: forward-gold-exhaustive-full-pls-clock-pivot-20260626
status: authority-pivot-installed-gold-route-still-frontier-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/proof-assembly.yaml
  - problems/navier-stokes/auto-audit.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-superheat-circularity-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-theorem-creation-misroute-audit-20260626.md
---

# Forward Gold Exhaustive Full PLS Clock Pivot

The current Gold route is not closed.

The goal-loop preflight and referee audit agree with the direct live frontier:

```text
GlobalSamePacketFullClockFromOriginalData.A: frontier-open
```

The live theorem is not a terminal-source theorem, a source-reserve theorem, a
pressure-only theorem, a viscosity-only theorem, or a finite-jet theorem.  The
object is one original smooth Navier-Stokes solution, one transported material
history, and heat-scale windows only as bounded-overlap samples of that same
history.

The Gold proof must prove the exhaustive same-material full participation-law
strain clock estimate

```math
\int_0^{T_*} d\Omega_N^{PLS,full}<\infty .
\tag{PIV.1}
```

Here \(d\Omega_N^{PLS,full}\) is the full coupled material transaction:
pressure, viscosity, incompressibility, velocity, Cauchy stress-work, strain and
frame motion, Hodge/projector motion, collar motion, graph-compatible
pressure/collar service, dyadic material transfer, recirculation, and one-way
material-record growth.

## Gate 1. Exhaustive Admission

Every terminal concentration mechanism from the original smooth solution must
be admitted into \(d\Omega_N^{PLS,full}\), or eliminated by the coupled
Navier-Stokes participation law.

Installed reductions support this admission:

- center endpoint projections attach to transported annular stress-work;
- pressure/collar motion is read through graph-compatible pressure/collar
  service and the moving material Hodge projector;
- trace-free complete-frame accounting admits the primitive orientation gap into
  wave-covector compression or annular/collar-normal compression;
- subheat refill, oscillatory recirculation, and top-frequency regeneration are
  routed into high-shell viscosity, strain/frame service, legal service, or the
  same PLS clock.

Those are admission and sector-reduction results.  They do not by themselves
prove finite total mass of \(d\Omega_N^{PLS,full}\).

## Gate 2. Finite Total Action

The noncircular producer is still required.  It must be either a bounded-below
same-material entropy

```math
\mathscr A_N(t)\ge -C_N(u_0),
\qquad
d\mathscr A_N+c_Nd\Omega_N^{PLS,full}\le dR_N^{legal},
\qquad
\int_0^{T_*}dR_N^{legal}<\infty,
\tag{PIV.2}
```

or an equivalent direct no-free-upcrossing estimate

```math
\int_0^{T_*}d\Omega_N^{PLS,full}\le C_N(u_0).
\tag{PIV.3}
```

The storage cannot use bounded continuation-depth material record as an input,
because that bounded record is the downstream consequence of `(PIV.1)`.

## Drift Rule

Generated or older surfaces are support only unless they prove `(PIV.2)` or
`(PIV.3)` for the full same-material PLS clock.

This specifically quarantines the following as Gold-route substitutes:

- `ReserveCreationCharge.A` and source-reserve / charge-ledger / CM-face
  machinery;
- `TerminalTimeFaceAntiAtom.A` and
  `TerminalNewProductionTheorem_{B_ASAC}.A`;
- pressure-only or collar-only positive-part comparisons;
- viscosity-only drain;
- scalar endpoint-pulse \(L^p\) or Hardy reserves;
- finite-jet supplier language;
- local complete-frame payment without finite total full-clock control.

## Current Status

This pivot closes a target-custody problem, not the theorem.

The remaining mathematical theorem is exactly:

```text
ExhaustiveFullPLSClockFromOriginalData.A
```

with content `(PIV.1)`, proved by `(PIV.2)` or `(PIV.3)` after exhaustive
admission.  Until that theorem is installed and the referee machinery accepts
it, the Gold route remains frontier-open.
