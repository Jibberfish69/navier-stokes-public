# Affine-Excess Coefficient-Dependence Audit

## Status

Closed coefficient-dependence audit.

## Coefficients in the manuscript estimate

The affine-excess estimate is

```math
D^+X_R+cN_R\le B_RX_R+C X_R^{1/2}N_R+F_R.
```

The coefficient packet is

```math
B_R=1+A_R+V_R+P_R.
```

Here:

```text
A_R = averaged affine-core coefficient
V_R = moving-frame, cutoff, and viscous-commutator coefficient ledger
P_R = pressure-response coefficient ledger
F_R = source, cutoff, pressure-tail, harmonic, frame, and finite-rung remainders
```

## Dependence check

All constants in the local estimate depend only on

```text
m, N, nu, M_sharp, fixed cutoff profile, finite parameter set
```

and on the scheduler-cell integrals of `B_R` and `F_R`.

The physical radius `R` enters only through normalized quantities. After parabolic scaling, the local inequality has radius-free constants.

## Scheduler check

The scheduler requires

```math
\left(\eta_X+\int_I F_R\right)
\exp\left(\int_I B_R\right)\le2\eta_X,
```

and the nonlinear coefficient-margin condition for the `X_R^{1/2}N_R` term. These are supplied by `L^1` control and absolute continuity on the finite cover.

## Verdict

The coefficient dependence is fully exposed. No unexpanded coefficient is left in the manuscript-level affine-excess estimate.
