# SCFBase Defect Measure Construction

## Status

Conditional construction layer for `SCFBase.ConcentrationCompactness`.

## Objective

Construct the analytic measures that can carry terminal concentration in the two blocking components of

```math
SCF_{base}=E_u+D_u+P+G_\Phi.
```

The geometric term `G_\Phi` is controlled by `Pack.TTU`. The open analytic terms are

```math
D_u
\qquad\text{and}\qquad
P^{loc}.
```

## Gradient/dissipation measure

The energy inequality gives

```math
\nabla u\in L^2_{t,x}([t_0,T_*)\times\mathbb T^3).
```

Hence the density

```math
|\nabla u|^2\,dx\,dt
```

defines a finite Radon measure on spacetime:

```math
\mu_D:=|\nabla u|^2\,dx\,dt.
```

On a pack-stabilized same-fluid cylinder `Q_r^\Phi(a,t)`, define the localized dissipation mass

```math
\mu_D(Q_r^\Phi(a,t))
=
\int_{Q_r^\Phi(a,t)}|\nabla u|^2\,dx\,dt.
```

The scale-critical component `D_u(Q_r^\Phi)` is the normalized form of this mass, with geometry constants controlled by `Pack.TTU`.

## Local pressure measure

For each cutoff chart in a finite transported atlas, split

```math
p=p^{loc}+h,
\qquad
-\Delta p^{loc}=\partial_i\partial_j(\chi u_i u_j).
```

The local pressure part is defined relative to the cutoff `\chi`. On each chart, set

```math
\mu_{P,\chi}:=|p^{loc}_\chi|^{3/2}\,dx\,dt.
```

The Leray bounds give
`u\in L^\infty_tL^2_x\cap L^2_t\dot H^1_x`; interpolation gives
`u\in L^{10/3}_{t,x}` on finite-measure cylinders, so
`\chi u\otimes u\in L^{5/3}_{t,x}`.  Calderon-Zygmund estimates give
`p^{loc}_\chi\in L^{5/3}_{t,x}`, hence local finiteness of

```math
\int |p^{loc}_\chi|^{3/2}.
```

Therefore `\mu_{P,\chi}` is a finite local Radon measure on each cutoff chart.

The harmonic tail `h` is controlled separately by the energy ledger and smooth kernel separation:

```math
\|\nabla^m h\|_{L^\infty(B')}
\le C_m\|u_0\|_{L^2}^2.
```

Thus the pressure defect carrier is the local part `p^{loc}`.

## Terminal defect functional

For a sequence of pack-stabilized cylinders

```math
Q_{r_n}^\Phi(a_n,t_n),
\qquad
 t_n\uparrow T_*,
\qquad
 r_n\downarrow0\text{ or }r_n\le r_0,
```

define the normalized defect masses

```math
\mathcal D_n
:=
D_u(Q_{r_n}^\Phi(a_n,t_n))
+P(Q_{r_n}^\Phi(a_n,t_n)).
```

A concentration sequence is one for which

```math
\limsup_{n\to\infty}\mathcal D_n>0
```

at arbitrarily small terminal scales or along terminal moving centers.

This sequence-level defect is the object needed for concentration compactness. The finite Radon measures `\mu_D` and `\mu_{P,\chi}` provide the compactness carriers; the endpoint theorem still needs a compactness principle forcing such moving concentration to select a finite terminal defect or endpoint face.

## What is now constructed

The available measures are

```math
\mu_D=|\nabla u|^2dxdt,
```

and, chartwise,

```math
\mu_{P,\chi}=|p^{loc}_\chi|^{3/2}dxdt.
```

These are finite on the relevant pack-stabilized chart/cylinder families.

## Remaining target

The next theorem is

```math
MovingConcentration.Compactness:
\text{failure of }SCFBase.Modulus
\Longrightarrow
\text{a nonzero terminal defect carried by }\mu_D+\mu_{P,\chi}.
```

Then one must prove

```math
\text{nonzero terminal defect}
\Longrightarrow
tower\text{-}blown\vee Jump_{avg}.
```

## Boundary

This note constructs the defect measures. It does not yet prove that moving concentration compactifies into a finite endpoint defect. That compactness step is the next mathematical burden.
