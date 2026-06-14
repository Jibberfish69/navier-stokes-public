# MPP Jump_avg Active-Window Gain Reduction Note

## Status

Theorem-facing reduction note.

This note does not eliminate `Jump_avg`. It collapses the two surviving
`Jump_avg` atoms

```math
JAVG.Amp
```

and

```math
AAG.A
```

to one common missing estimate:

```math
AWG.A
```

the active-window gain theorem.

## Setup

On a terminal same-fluid CKN cylinder `Q_R^\Phi`, write

```math
A_R^{aff}
:=
R^{-1}\sup_{t\in I_R}
\int_{B_R^\Phi(t)}|u-u_R^{aff}|^2,
```

```math
Z_R
:=
R^{-1}\iint_{Q_R^\Phi}|\nabla u|^2
+
R^{-2}\iint_{Q_R^\Phi}|p^{loc}|^{3/2}.
```

The affine-normalized base packet is decomposed as

```math
SCF_{base}(Q_R^\Phi)
=
E_R^{aff}+Z_R+G_R^\Phi,
```

where `E_R^{aff}` is controlled by `A_R^{aff}` and `D_R` through

```math
E_R^{aff}
\le
C(A_R^{aff}D_R)^{3/4}.
```

The pack/geometric term `G_R^\Phi` is already handled on retained same-fluid
packets. Therefore `Jump_avg` can only escape through:

1. the pressure/dissipation carrier `Z_R`, or
2. the affine-amplitude channel `A_R^{aff}`.

## Active-Window Gain `AWG.A`

The missing theorem can be stated as follows.

For every bounded-overlap terminal same-fluid family

```math
\mathcal Q=\{Q_{R_\ell}^\Phi\}_\ell
```

extracted from the `Jump_avg` schedule, there is a same-carrier active-window
reserve `\mathcal R_\ell` such that

```math
\sum_\ell
\left[
A_{R_\ell}^{aff}
+
SCF_{norm}^{\nu}(Q_{R_\ell}^\Phi)
\right]
\le
C(E_0,\nu,\text{atlas},\text{source})
+
\sum_\ell \mathcal R_\ell,
\tag{AWG.1}
```

with

```math
\sum_\ell \mathcal R_\ell
\le
C_R.
\tag{AWG.2}
```

Equivalently, in dyadic shell language, `AWG.A` is any heat-scale
square-source / active-shell gain estimate that gives both:

```math
\sum_\ell A_{R_\ell}^{aff}\mathbf 1_{\{Z_{R_\ell}\ll1\}}
\le C,
\tag{AWG.lower}
```

and

```math
\sum_\ell SCF_{norm}^{\nu}(Q_{R_\ell}^\Phi)
\le C.
\tag{AWG.upper}
```

for the same terminal family and the same same-fluid carrier.

## `AWG.A` Implies The Lower Side

Assume `Jump_avg`. Then there are terminal windows with

```math
SCF_{base}(Q_{R_\ell}^\Phi)>\varepsilon_m.
```

After pack/geometric control, each such window satisfies either

```math
Z_{R_\ell}\ge c_m
```

or

```math
A_{R_\ell}^{aff}\ge a_m.
```

The first alternative gives the required `\nu_{SCF}` lower unit. The second is
the exact amplitude escape isolated in
`mpp-javg-affine-poincare-component-selection-attempt-note.md`.

By `(AWG.lower)`, infinitely many separated amplitude escapes cannot occur
without spending a finite active-window budget. Thus on any infinite terminal
`Jump_avg` subtail, either `\nu_{SCF}` carries a positive normalized lower unit
on infinitely many windows, or the active-window budget is exhausted. The latter
contradicts `(AWG.1)`--`(AWG.2)` after extraction of the bounded-overlap
terminal family.

Therefore `AWG.A` supplies the missing lower-production theorem:

```math
AWG.A\Longrightarrow JAVG.1.
```

In particular, `JAVG.Amp` is not an independent primitive once `AWG.A` is
available. It is the lower-facing shadow of the same active-window gain.

## `AWG.A` Implies The Upper Side

The conditional upper theorem already installed in
`mpp-javg2-active-shell-gain-to-carleson-note.md` proves

```math
AAG.A\Longrightarrow JAVG.2.
```

But `(AWG.upper)` is exactly the scale-normalized `\nu_{SCF}` Carleson estimate
that `JAVG.2` needs. Hence

```math
AWG.A\Longrightarrow JAVG.2.
```

Thus `AAG.A` is also not an independent primitive at the final `Jump_avg`
frontier. It is the dyadic-shell formulation of the upper-facing half of
`AWG.A`.

## No-Escape Consequence

Combining the preceding two implications gives

```math
AWG.A
\Longrightarrow
JAVG.1+JAVG.2
\Longrightarrow
(Jump_{avg}\Rightarrow\bot).
```

This proof is branch-native. It does not use:

```math
Field_{avg},
\qquad
CFI.A_{avg},
\qquad
AACT.Global.noJump,
\qquad
AVG.END.A
```

as upstream inputs on the `Jump_avg` branch.

## Why This Is The Same Wall

The local-energy conversion attempt showed that affine amplitude can persist or
move unless a heat-scale gain forces it to pay dissipation, pressure, or an
active reserve.

The active-shell attempt showed that raw energy and first-moment dissipation do
not control the scale-normalized active-square density.

These are not two separate analytic failures. They are the same failure seen
from opposite sides:

```math
\boxed{
\text{terminal active windows can carry scale-normalized amplitude unless a
square-source / active-gain law forbids it.}
}
```

## Updated Target

The exact `Jump_avg` target is therefore:

```math
\boxed{
OriginalSmoothData\Longrightarrow AWG.A.
}
```

Any proof of this target may be supplied in one of the following native forms:

```math
\text{heat-scale square-source estimate},
```

```math
\text{direct active-window Carleson estimate},
```

```math
\text{terminal active-amplitude no-hopping theorem},
```

or

```math
\text{monotone dominance of the active-window normalized charge}.
```

Until one of these is proved, `Jump_avg` remains open. Once one is proved,
`Jump_avg` is eliminated without assuming `Field_avg` on that branch.
