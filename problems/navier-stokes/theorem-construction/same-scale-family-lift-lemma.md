# Same-Scale Family Lift Lemma

## Purpose

This note proves the exact lift from the displayed coefficient-free edge-family
hypothesis `(SS\text{-}edge)` to the upper-boundary estimate `(UB)` and moving-spill
estimate `(MS)`.

Unlike the open coefficient-free theorem `(SS)` itself, this family lift is
finite and exact.
The weaker currently-proved lift with the same-scale coefficient term
`\Theta_N^{ss,\sharp}E_N` is recorded separately in
[same-scale-edge-family-and-model-estimate-note.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/same-scale-edge-family-and-model-estimate-note.md).

## Assumptions

Assume the upper boundary has been written as

```math
|\mathfrak B_N^{upper}(t)|
\le
\sum_{a\in\mathcal A_{ub}} |\Pi_{N,a}^{edge}(t)|
+
\mathcal E_N^{ub,collar}(t),
\tag{1}
```

for a finite family `\mathcal A_{ub}` and collar residual
`\mathcal E_N^{ub,collar}`.

Assume the moving spill is written as

```math
\Pi_N^{mov\text{-}spill,L}(t)
\le
\sum_{a\in\mathcal A_{sp}} \Pi_{N,a}^{edge}(t)
+
\mathcal E_N^{sp,collar}(t),
\tag{2}
```

for a finite family `\mathcal A_{sp}` and collar residual
`\mathcal E_N^{sp,collar}`.

Assume the collar residuals satisfy

```math
\int_0^T \mathcal E_N^{ub,collar}(t)\,dt
\le
\varepsilon_{ub}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{ub,*}^{res}2^{-2\delta N},
\tag{3}
```

```math
\int_0^T \mathcal E_N^{sp,collar}(t)\,dt
\le
\varepsilon_{sp}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{sp,*}^{res}2^{-2\delta N}.
\tag{4}
```

Finally assume the following coefficient-free edge-family hypothesis for every packet in
the union family `\mathcal A:=\mathcal A_{ub}\cup\mathcal A_{sp}`:

```math
\int_0^T \Pi_{N,a}^{edge}(t)\,dt
\le
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N},
\qquad a\in\mathcal A.
\tag{SS\text{-}edge}
```

## Lemma

Under the assumptions above,

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\Big(\varepsilon_{ub}^{res}+\sum_{a\in\mathcal A_{ub}}\varepsilon_a\Big)
\nu\int_0^T D_N(t)\,dt
+
\Big(C_{ub,*}^{res}+\sum_{a\in\mathcal A_{ub}}C_{a,*}\Big)2^{-2\delta N},
\tag{UB-lift}
```

and

```math
\int_0^T \Pi_N^{mov\text{-}spill,L}(t)\,dt
\le
\Big(\varepsilon_{sp}^{res}+\sum_{a\in\mathcal A_{sp}}\varepsilon_a\Big)
\nu\int_0^T D_N(t)\,dt
+
\Big(C_{sp,*}^{res}+\sum_{a\in\mathcal A_{sp}}C_{a,*}\Big)2^{-2\delta N}.
\tag{MS-lift}
```

In particular, if the dissipation budgets are chosen so that

```math
\varepsilon_{ub}^{res}+\sum_{a\in\mathcal A_{ub}}\varepsilon_a
\le
\frac{\eta}{8},
\tag{5}
```

and

```math
\varepsilon_{sp}^{res}+\sum_{a\in\mathcal A_{sp}}\varepsilon_a
\le
\frac{\eta}{8},
\tag{6}
```

then `(UB)` and `(MS)` hold.

## Proof

Integrate `(1)` in time:

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\sum_{a\in\mathcal A_{ub}}
\int_0^T |\Pi_{N,a}^{edge}(t)|\,dt
+
\int_0^T \mathcal E_N^{ub,collar}(t)\,dt.
\tag{7}
```

Apply the displayed hypothesis `(SS\text{-}edge)` term by term and then `(3)`:

```math
\int_0^T |\mathfrak B_N^{upper}(t)|\,dt
\le
\sum_{a\in\mathcal A_{ub}}
\Big(
\varepsilon_a \nu\int_0^T D_N(t)\,dt
+
C_{a,*}2^{-2\delta N}
\Big)
+
\varepsilon_{ub}^{res}\nu\int_0^T D_N(t)\,dt
+
C_{ub,*}^{res}2^{-2\delta N}.
\tag{8}
```

Collect coefficients to obtain `(UB-lift)`.

The moving-spill estimate is identical: integrate `(2)`, apply `(SS\text{-}edge)` over
`\mathcal A_{sp}`, then use `(4)`. This gives `(MS-lift)`.

Finally `(5)` and `(6)` convert `(UB-lift)` and `(MS-lift)` into the target
upper-boundary and moving-spill estimates.

## Consequence

The finite family lift is no longer part of the open theorem debt.

The open same-scale burden is therefore reduced to exactly two items:

1. write the explicit upper-boundary family reduction `(1)`;
2. upgrade the currently available coefficient-bearing edge estimate
   `(SS^\sharp\text{-}edge)` to the coefficient-free theorem `(SS\text{-}edge)`.

Everything after that is finite summation.
