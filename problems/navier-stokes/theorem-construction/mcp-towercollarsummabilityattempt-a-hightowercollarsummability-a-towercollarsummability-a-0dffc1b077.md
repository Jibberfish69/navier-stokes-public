# TowerCollarSummability.A Attempt

## Target

Prove a summable tower/collar budget strong enough to rule out infinitely many shrinking terminal source windows.

The intended route is:

```text
persistent terminal affine/source core
=> positive collar/tower cost per terminal window
=> total cost over all terminal windows exceeds available global budget
=> terminal time-face atom impossible.
```

## Direct attempt

The old loose step was to spend "positive collar cost per window" as if
positivity alone made a terminal Zeno schedule impossible.  The exact local
input supplied by
[mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-affine-core-finite-energy-collar-cost-direct-test-20260611.md)
has stronger hypotheses and a specific bill.

For a selected terminal window choose

```math
B_{r_m}(x_m)\subset B_{R_m}(x_m),\qquad
I_{r_m}=(t_m-r_m^2/\nu,t_m),
```

and a measurable active subset `G_m subset I_{r_m}`.  Assume

```math
\int_{B_{r_m}(x_m)}|\nabla u(x,t)|^2\,dx
\ge
\eta_m\nu^2/r_m
\qquad (t\in G_m),
```

```math
|G_m|\ge \theta_m r_m^2/\nu,
\qquad
\sup_{t\in G_m}\int_{B_{R_m}(x_m)}|u(x,t)|^2\,dx
\le E_{R,m},
```

and the absorption condition

```math
\eta_m\nu^2/r_m
\ge
2C R_m^{-2}E_{R,m}.
```

Then the exact parent/collar bill is

```math
B_m
:=
\nu\int_{G_m}\int_{B_{R_m}(x_m)}|\nabla^2 u|^2\,dx\,dt
\ge
c\,\theta_m\eta_m^2\nu^4/E_{R,m}.
```

So a tower/collar contradiction needs two separate facts for a separated or
bounded-overlap terminal family:

```math
\sum_m B_m
\le C_{\mathrm{HT}}<\infty,
\tag{HT-budget}
```

and

```math
\sum_m \theta_m\eta_m^2/E_{R,m}
=\infty.
\tag{non-summable-collar}
```

The installed affine/collar estimate proves only the individual lower bound for
`B_m` under the displayed hypotheses. It does not supply `(HT-budget)`, and it
does not force `(non-summable-collar)`. A Zeno schedule can still place retained
source mass on windows whose exact collar bills are positive but summable.

## Failure point

The proof needs one of:

```text
uniform lower bound on theta_m eta_m^2/E_{R,m} for retained terminal packets;
scale-normalized tower budget that makes sum_m B_m non-summable;
finite global high-tower/enstrophy-production budget controlling the same B_m;
Carleson packing of terminal source windows tied to the displayed collar bill.
```

The installed affine/collar estimate prices the frozen-core escape locally, but
it does not by itself supply the global contradiction.

## Verdict

`TowerCollarSummability.A` is not proved from installed inputs.

It remains a sufficient but missing gold input. The terminal Zeno layer is not ruled out by local collar pricing alone.

## Final gold-route status

All forward-gold routes tried in this loop fail from installed inputs:

```text
TerminalThicknessModulus.A: failed;
UniformTemporalSourceIntegrability_{p,B_ASAC}.A: failed;
DissipationTetherAbsoluteContinuity.A: failed;
BASACProductionToTerminalAntiAtom.A: failed;
ScaleCriticalSourceCharge.A / ScaleCriticalTreeCarleson.A: failed;
TowerCollarSummability.A: failed.
```

Therefore the stronger forward theorem

```text
TerminalTimeFaceAntiAtom.A / TerminalNewProductionTheorem_{B_ASAC}.A
```

remains open as a gold theorem.

The CM contrapositive consumption route remains separate and already consumed the branch.
