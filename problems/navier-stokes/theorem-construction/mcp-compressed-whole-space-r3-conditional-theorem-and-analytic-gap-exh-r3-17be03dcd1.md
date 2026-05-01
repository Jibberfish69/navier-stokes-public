# Compressed Whole-Space R3 Conditional Theorem And Analytic Gap

## Main Conditional Theorem

Let `u_0` be smooth, divergence-free, and rapidly decaying on `R^3`. Assume one of the two whole-space closure packages below.

### Package A: Direct realized-carrier control

```math
A1c_R:\quad
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty,
\qquad s>5/2.
```

### Package B: Periodic-to-R3 exhaustion control

For expanding periodic approximants, assume:

```math
Tail.E:
\lim_{R\to\infty}\sup_n\sup_{t\le T}\int_{|x|>R}|u_n|^2=0,
```

```math
LocalHs.EXH:
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}<\infty,
```

```math
PTail.EXH:
\nabla p_n\to\nabla p\text{ locally},
```

and the localized cascade scheduler with cutoff budgets:

```math
ECascade.Sched:
\sup_{t\le T}E_{N,R}(t)+\int_0^TD_{N,R}(t)dt\le \rho.
```

Then the whole-space `R^3` Navier-Stokes solution is global and smooth.

## Proof

Under Package A, the classical `H^s` continuation criterion gives global smoothness directly.

Under Package B, the exhaustion theorem `EXH.R3` applies. `LocalHs.EXH` gives compactness on every fixed ball. `PTail.EXH` passes the pressure equation to the limit. `Tail.E` prevents exterior energy leakage and supplies finite energy for the limit. `ECascade.Sched` supplies the local cascade control used in the local `H^s` package. Diagonal extraction gives a smooth whole-space solution on every finite time interval. Since the interval is arbitrary, the solution is global.

## Exterior Decay Link

`Decay.Prop` supplies `Tail.E` from a weighted `L^2` moment plus weighted pressure-flux control:

```math
\sup_{t\le T}\int (1+|x|^2)^a|u(t,x)|^2dx<\infty
\Longrightarrow Tail.E.
```

## Exact Remaining Analytic Gap

The remaining whole-space work is to prove either Package A or the full Package B inputs from original data. In concrete terms, the live analytic gap is one of:

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty}dt<\infty,
```

or the exhaustion package:

```math
\text{weighted moment propagation + pressure-flux control + uniform local }H^s\text{ budgets}.
```

## Boundary

This theorem is the compressed whole-space route. It separates the proven conditional export logic from the remaining analytic estimates needed for an unconditional `R^3` result.