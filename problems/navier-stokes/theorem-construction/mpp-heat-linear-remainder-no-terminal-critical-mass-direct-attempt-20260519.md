# MPP Heat Linear Remainder No Terminal Critical Mass Direct Attempt

Date: 2026-05-19

## Status

Bounded direct attempt on the heat-remainder half of
`TerminalCriticalDuhamelSourceExtraction.A`.

This does not close the public-critical bridge by itself. It shows that the
linear heat remainder is not an independent source wall: it reduces to a
same-ledger heat-ancestor localization lemma already aligned with the retained
`Pack` / no-earlier-slice bookkeeping.

## Target

```math
HeatLinearRemainderNoTerminalCriticalMass.A:
\quad
\text{retained earlier-slice control}
\Longrightarrow
\text{linear heat propagation carries no new terminal }L^3\text{ atom}.
```

In the `L^3` bridge, write the terminal-scale Duhamel split as

```math
u_m = v_m+w_m,
\qquad
v_m(t)=e^{(t-t_{m,0})\nu\Delta}u_m(t_{m,0}),
```

where `v_m` is the linear heat remainder from the earlier selected slice and
`w_m` is the nonlinear Duhamel source contribution.

## Direct Attempt

Assume the terminal critical `L^3` concentration is carried by the linear part:

```math
\ell_m^{-2}
\int_{t_m-\ell_m^2}^{t_m}
\int_{B_{\ell_m}(x_m)}
|v_m|^3\,dxdt
\ge c_0>0.
```

Choose fixed constants `0<c_h<C_h<infty` and
`s_m in [t_m-C_h\ell_m^2,t_m-c_h\ell_m^2]`. Split the heat kernel into
`B_{C_par\ell_m}(x_m)` and its complement. Since
`t_m-s_m in [c_h\ell_m^2,C_h\ell_m^2]`, the Gaussian tail satisfies
```math
\int_{\mathbb R^3\setminus B_{C_{par}\ell_m}(x_m)}
G_\nu(t_m-s_m,x_m-y)\,dy
\le A_h e^{-a_h C_{par}^2},
```
with constants `A_h,a_h>0` depending only on `c_h,C_h,\nu`. Splitting the
kernel into this same-ledger parent and its complement gives two alternatives.

If the parent contribution dominates, local `L^3` contraction and the parabolic
maximal inequality force an earlier slice `s_m<=t_m-c_h\ell_m^2` with

```math
\int_{B_{C_{par}\ell_m}(x_m)}|u_m(s_m)|^3\,dx
\ge c_1>0.
```

This is an earlier selected critical slice on the same carrier.

If the off-parent contribution dominates, the terminal mass entered through
heat-kernel tails from outside the selected same-fluid parent. That is not a
new retained heat atom; it is loss of the retained carrier localization and
therefore selects the Pack face.

## Missing Quantitative Lemma

The exact lower lemma is:

```math
SameLedgerHeatAncestorLocalization.A:
\quad
\text{terminal local }L^3\text{ mass of a heat evolution}
\Longrightarrow
\text{same-ledger earlier critical slice}
\vee
\neg Pack_Q.
```

This is a heat-kernel localization lemma, not a nonlinear Navier-Stokes source
estimate. Its constants must be written against the selected terminal cover and
the Pack carrier radius so that the off-parent heat tail is charged to Pack
failure rather than hidden as a public readout.

## Result

Under retained `Pack_Q` and `NoEarlierSelectedCriticalSlice.A`,
`SameLedgerHeatAncestorLocalization.A` gives

```math
HeatLinearRemainderNoTerminalCriticalMass.A.
```

The remaining hard theorem in the `L^3` public bridge is therefore the nonlinear
conversion:

```math
DuhamelCriticalMassToNativeSource.A:
\quad
\text{nonzero terminal critical Duhamel mass}
\Longrightarrow
\mu_*^{sing}>0
\vee
\neg_{sel}ScaleCriticalTreeCarleson.A.
```

The heat part is a ledger/ancestor localization check. The nonlinear Duhamel
part is the actual source-production burden.
