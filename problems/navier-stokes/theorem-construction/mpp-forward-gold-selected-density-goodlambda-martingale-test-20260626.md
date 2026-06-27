---
theorem_id: forward-gold-selected-density-goodlambda-martingale-test-20260626
status: reduces-to-selected-density-square-function-carleson
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - SelectedDensityUniformIntegrability.A
  - OriginalHistorySelectedReserve.A
  - SelectedCompressionRootReserve.A
---

# Selected-density good-lambda martingale test

## 1. Target

The current exact target is a strict density improvement excluding the critical
half-tail:

```math
N_{L+1}\le \theta N_L+B_L,
\qquad
\theta<\frac12,
\qquad
\sum_L2^LB_L<\infty .
\tag{1}
```

This is equivalent to a selected first-ratio bound.

## 2. Martingale formulation

Let the retained material tree carry a selected density `f` relative to the
root reserve measure `d\mathcal R`, so that

```math
A(Q)=\int_Q f\,d\mathcal R
\tag{2}
```

after normalization of the branch-local Schur/normal/covector/reselection
service.

The dyadic martingale averages are

```math
f_Q={1\over\mathcal R(Q)}\int_Q f\,d\mathcal R .
\tag{3}
```

The critical half-tail survives when high averages persist on one nested chain
without square-function or entropy cost.

## 3. What would close it

A martingale square-function Carleson bound would give the strict gain:

```math
\sum_{Q\subseteq Q_0}
\left|f_Q-f_{\operatorname{par}(Q)}\right|^2
\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{4}
```

Indeed, a chain that keeps

```math
A(Q_k)\simeq1
\tag{5}
```

while the reserve scale decreases must either keep the same high average or
increase it. Persistent high averages with finite root mass force either
entropy/square-function growth or a density atom. Bound (4) rules out the
unpaid atom/upcrossing and yields (1) by the standard dyadic good-lambda
argument.

Equivalent usable forms are:

```math
\int f^{1+\varepsilon}\,d\mathcal R\le C_N(u_0),
\tag{6}
```

or

```math
\int f\log(1+f)\,d\mathcal R\le C_N(u_0)
\tag{7}
```

with constants strong enough to beat the critical half-tail.

## 4. Installed inputs do not yet give the square function

The installed pressure-visible/null routing gives the identity of the density
components:

```math
f
\sim
f_{\rm Schur}
+f_{\rm normal}
+f_{\rm covector}
+f_{\rm select}
+f_{\rm legal}.
\tag{8}
```

It does not give (4), (6), or (7).

Energy gives raw `L^1`-type control of physical service densities. The critical
model

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{9}
```

still has finite raw mass and divergent first-ratio moment. Thus raw `L^1`
control is below the needed theorem.

CKN/epsilon regularity gives smallness-implies-regularity and partial-regularity
information. It does not supply the selected martingale square function for the
retained critical half-tail without already proving the selected density
anti-concentration.

## 5. Exact sharpened theorem

The correct next theorem is:

```text
SelectedDensityMartingaleSquareFunctionCarleson.A
```

Statement:

For the pressure-visible/null-routed selected density on one original smooth
material history,

```math
\sum_{Q\subseteq Q_0}
\left|f_Q-f_{\operatorname{par}(Q)}\right|^2
\mathcal R(Q)
\le
C_N(u_0)\mathcal R(Q_0)+R_{\rm legal}(Q_0).
\tag{10}
```

This theorem implies `SelectedDensityUniformIntegrability.A`, then
`OriginalHistorySelectedReserve.A`, then the selected first-ratio action bound.

## 6. Result

The selected-density good-lambda route is viable only through a real martingale
square-function / entropy Carleson estimate for the selected density. The
installed branch-local identities identify the density and its material carrier;
they do not yet prove the square-function Carleson bound.
