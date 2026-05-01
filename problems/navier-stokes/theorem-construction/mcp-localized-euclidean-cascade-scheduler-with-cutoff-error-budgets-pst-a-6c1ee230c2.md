# Localized Euclidean Cascade Scheduler With Cutoff Error Budgets

## Setup

Let `u` be a smooth `R^3` solution on `[0,T]`. For a cutoff `\chi_R=1` on `B_R`, supported in `B_{2R}`, set

```math
E_{N,R}:=\sum_{j\ge N}2^{2j}\|\chi_R\Delta_j u\|_2^2,
\qquad
D_{N,R}:=\sum_{j\ge N}2^{4j}\|\chi_R\Delta_j u\|_2^2.
```

## Error Budget

Define the exterior error

```math
\mathcal E_R(T):=
\sup_{t\le T}\int_{|x|>R}|u(x,t)|^2dx
+\mathrm{PTail}_R(T),
```

where `PTail_R(T)` is the pressure-tail error on `B_R`. Assume

```math
\mathcal E_R(T)\to0
\qquad(R\to\infty).
```

## Theorem `ECascade.Sched`

For every `rho>0`, choose `R` so large that the total cutoff/pressure tail error is below `rho/4`. Then choose `N` and a finite scheduler partition so that

```math
\sup_{t\le T}E_{N,R}(t)+\int_0^TD_{N,R}(t)dt\le \rho.
```

## Proof

The localized dyadic balance has the form

```math
\frac d{dt}E_{N,R}+(1-\eta)\nu D_{N,R}
\le A_{N,R}(t)E_{N,R}+C_*2^{-2\delta N}+Err_{N,R}(t).
```

The interior packet estimates are the repaired cascade estimates. The cutoff commutators are supported in `B_{2R}\setminus B_R` and satisfy

```math
\int_0^T|Err_{N,R}^{cut}(t)|dt
\le C_{N,T}\mathcal E_R(T)^{1/2}+C_TR^{-1}.
```

The pressure-tail contribution satisfies

```math
\int_0^T|Err_{N,R}^{press}(t)|dt\le C_{N,T}\mathrm{PTail}_R(T).
```

Thus

```math
\int_0^TErr_{N,R}(t)dt\le rho/4
```

after `R` is chosen.

For fixed `R,N`, the coefficient `A_{N,R}` is integrable. The same finite-partition scheduler as in `PST.A` gives high-tail propagation with additive forcing

```math
C_*2^{-2\delta N}+Err_{N,R}(t).
```

Choose `N` so that the initial high tail and summable reserve are below the remaining budget. Gronwall on scheduler cells gives the stated estimate.

## Boundary

The theorem supplies localized Euclidean cascade suppression after exterior budgets are available. The exterior budgets are supplied by separate tightness and pressure-tail theorems.