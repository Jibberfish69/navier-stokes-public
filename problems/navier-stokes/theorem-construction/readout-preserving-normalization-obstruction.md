# Readout-Preserving Normalization Obstruction

## Target

The proposed repair was a normalization `\mathcal N_j` satisfying

```math
\|\nabla_D\mathcal N_j\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j}
```

while preserving classical readout up to lower-order leakage:

```math
\rho(\mathcal N_jZ)=\rho(Z)+\text{lower-order leakage}.
```

## Obstruction

Let `Z=Ae`, where `e` is a fixed coherent selected mode. If `\mathcal N_j` preserves readout exactly on the selected coherent range, then

```math
\rho(\mathcal N_jAe)=\rho(Ae).
```

On a faithful linear readout surface this preserves the exact amplitude:

```math
\|\nabla\rho(\mathcal N_jAe)\|_\infty
=
A\|\nabla\rho(e)\|_\infty.
```

For fixed `j`, choosing `A` large violates the viscous-scale bound. Thus exact readout preservation cannot coexist with amplitude normalization at fixed shell.

If instead `\mathcal N_j` rescales amplitude, say

```math
\mathcal N_j(Ae)=\lambda(A,j)Ae,
\qquad
\lambda(A,j)A\le c_0\nu2^{2j},
```

then the readout defect is

```math
\rho(Ae)-\rho(\mathcal N_jAe)=(1-\lambda(A,j))A\rho(e).
```

For large `A` with `\lambda(A,j)A\le c_0\nu2^{2j}`, the defect equals
`(A-\lambda(A,j)A)\rho(e)`, so its size grows linearly in `A` relative to the
fixed selected coherent mode.

## Consequence

A readout-preserving normalization cannot be the missing theorem unless the route first proves an amplitude bound placing the selected coherent block already inside the active viscous scale.

The valid alternatives are:

```math
\text{dynamic active-shell threshold from the carrier amplitude,}
```

or

```math
\text{weighted carrier absorption of coefficient-bearing terms.}
```

The existing weighted-carrier surface absorbs same-scale coefficient terms into `\widetilde\Lambda_N^\sharp E_N`, but it does not produce a coefficient-free all-shell normalization.

## Final obstruction

The carrier-export route returns to the same amplitude problem:

```math
\|\nabla_D\mathbb S_D(j)\mathbb H_DX\|_\infty\le c\nu2^{2j}
```

requires either an active-shell threshold, an independent amplitude theorem, or a different carrier energy whose coefficient-bearing term is part of the controlled quantity.
