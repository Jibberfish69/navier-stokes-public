# Whole-Space R3 Export Audit From Weighted Cascade Route

## Target

Verify the implication

```math
Moment.W+Tail.E+PTail.EXH+ECascade.Sched+LocalHs.EXH\Longrightarrow EXH.R3.
```

## Chain

`Moment.W` supplies the weighted moment bound

```math
\sup_{t\le T}\int (1+|x|^2)^a|u(t,x)|^2dx<\infty.
```

The weighted moment supplies exterior tightness:

```math
Tail.E:
\lim_{R\to\infty}\sup_{t\le T}\int_{|x|>R}|u(t,x)|^2dx=0.
```

`Tail.E` plus local compactness gives pressure-tail convergence:

```math
PTail.EXH:
\nabla p_n\to\nabla p\quad\text{locally.}
```

`Tail.E`, `PTail.EXH`, and `ECascade.Sched` give localized shell-tail suppression:

```math
R3ShellTail:
\sup_{t\le T}E_{N,R}+\int_0^TD_{N,R}\le\rho.
```

`R3ShellTail` plus pressure-tail estimates give local regularity:

```math
LocalHs.EXH:
\sup_{t\le T}\|u(t)\|_{H^s(B_R)}<\infty.
```

Finally, `EXH.R3` consumes local `H^s`, pressure convergence, and exterior tightness to produce a smooth whole-space limit with finite energy.

## Audit Verdict

The weighted route is coherent and acyclic when read with the following supplier order:

```math
PFlux.Supplier\Longrightarrow PFlux.W\Longrightarrow Moment.W\Longrightarrow Tail.E\Longrightarrow PTail.EXH+ECascade.Sched\Longrightarrow LocalHs.EXH\Longrightarrow EXH.R3.
```

## Remaining Analytic Supplier

The active analytic supplier is

```math
PFlux.Supplier:
\sum_k2^{(2a-1)k}\int_0^T\|p\|_{L^2(A_k)}\|u\|_{L^2(A_k)}dt<\infty.
```

The current sharp subtarget is the weighted annular product-source estimate giving enough summability of

```math
\|u\|_{L^4(A_k^*)}^2\|u\|_{L^2(A_k)}.
```

## Boundary

This audit verifies the route logic. The weighted pressure supplier remains the decisive whole-space analytic input.