# AACT.KX Coefficient-Margin Repair Loop Closure

Status: local discharge claimed for the no-`Jump_avg` averaged branch.

## Target

Repair the averaged ACT budget so that the no-`Jump_avg` branch supplies

```math
DTC.A_{avg}.
```

## Local coefficient margin

On each shrunken same-fluid moving cylinder, local `AACT.KX` gives

```math
D^+X_R+cN_R\le B_R(t)X_R+C_X X_R^{1/2}N_R+F_R(t),
\qquad B_R,F_R\in L^1.
```

Choose `eta_X` with

```math
C_X(2\eta_X)^{1/2}\le c/2.
```

On the first-exit interval `X_R\le 2 eta_X`, the nonlinear dissipation coefficient stays below the retained margin, giving

```math
D^+X_R+{c\over2}N_R\le B_R(t)X_R+F_R(t).
```

If the scheduler cell satisfies

```math
\left(\eta_X+\int F_R\right)\exp\left(\int B_R\right)\le2\eta_X,
```

Gronwall gives

```math
X_R\in L^\infty,
\qquad N_R\in L^1.
```

## Restart repair

The restart seed is produced by reanchoring. At each scheduler restart, choose a fresh same-fluid SCF-good cylinder from `TGC.A.cover`, shrink it, and apply `ATD_m^\varepsilon`. This yields

```math
X_R(s)\le\eta_X
```

in the fresh frame.

## Global no-jump scheduler

The no-`Jump_avg` terminal tail has a finite SCF-good cover with lower radius and finite overlap. For the finite route parameter set, the summed majorants

```math
B_*(t),\qquad F_*(t)
```

lie in `L^1`. Absolute continuity of these budgets gives a finite scheduler partition satisfying the local bootstrap condition on every active packet.

Summing the local closed packets yields

```math
X_{avg}\in L^\infty,
\qquad
N_{avg}\in L^1,
\qquad
K_{\le m}^{avg}\in L^1.
```

Thus the averaged dynamic tower certificate is supplied:

```math
\boxed{AACT.KX.local+TGC.A.cover+ATD_m^\varepsilon+\neg Jump_{avg}\Longrightarrow DTC.A_{avg}.}
```

## Loop decision

The `AACT.KX` coefficient-margin target is closed for the no-`Jump_avg` branch. The next branch target is `Jump_avg` elimination.
