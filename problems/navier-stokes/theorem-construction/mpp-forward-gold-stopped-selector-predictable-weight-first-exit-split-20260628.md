---
theorem_id: forward-gold-stopped-selector-predictable-weight-first-exit-split-20260628
status: first-exit-predictable-weight-branch-proved-root-upcrossing-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - StoppedSelectorPredictableWeight.A
  - PredictableActiveWeightTransitionCarleson.A
  - OriginalHistoryParentPredictableFreshInnovationCarleson.A
  - PositiveCriticalTransferBound.A
completion_truth: partial-not-mpp-closed
---

# Stopped selector predictable weight: first-exit split

The current Carleson pivot asks whether the active weight \(H_{e^-}\) is
parent-predictable before the fresh projected charge \(\Pi_e^{fresh}F_e\) is
read.

There are two different cases.

## 1. First-exit/reset branch

On a stopped first-exit edge \(e\), the selector announces a parent-known scale
interval \(I_e\) and witness tube \(W_e\) before the child endpoint innovation is
read.  The active weight is

\[
H_{e^-}(t)
=
H_{I_e}(t)
=
{|I_e|^2\over \int_{I_e}w(\sigma,t)^{-1}\,d\sigma},
\tag{1}
\]

where \(w\) is the original stopped participation metric pulled back along the
parent material history.

Thus \(H_{e^-}\) is \(\mathcal F_{e^-}\)-measurable: it depends only on the
parent interval, parent material metric, stopped route, and first-exit witness
chosen before \(\Pi_e^{fresh}F_e\).

The fresh endpoint derivative representation is

\[
D_e^{fresh}(t)
=
|I_e|^{-1}\int_{I_e}G_e(\sigma,t)\,d\sigma
+Err_e^{legal}(t),
\tag{2}
\]

with

\[
G_e
=
\partial_\sigma Z_e
+\operatorname{turnstile}_e
+\operatorname{exchange}_e
+\operatorname{covector}_e
+\operatorname{frame}_e .
\tag{3}
\]

Weighted Cauchy--Schwarz gives, pointwise in \(t\),

\[
\left\|\int_{I_e}G_e(\sigma,t)\,d\sigma\right\|_2^2
\le
\left(\int_{I_e}w^{-1}\right)
\left(\int_{I_e}w\|G_e\|_2^2\,d\sigma\right).
\tag{4}
\]

Multiplying by `(1)` and using `(2)`,

\[
H_{e^-}(t)\|D_e^{fresh}(t)\|_2^2
\le
C\int_{I_e}w(\sigma,t)\|G_e(\sigma,t)\|_2^2\,d\sigma
+CR_e^{legal}(t).
\tag{5}
\]

The first-exit witness tubes are stopped sparse:

\[
\sum_{e\subset P}1_{W_e}(\sigma,t,x)
\le
C_N+R_{\rm legal}(P).
\tag{6}
\]

Summing `(5)` over first-exit edges gives

\[
\sum_{e\subset P}
\int H_{e^-}\|D_e^{fresh}\|_2^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\Bigl(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}|^2
+|\operatorname{exchange}|^2
+|\operatorname{covector}|^2
+|\operatorname{frame}|^2
\Bigr)
+CR_{\rm legal}(P).
\tag{7}
\]

This proves the predictable-weight Carleson estimate on the stopped first-exit
branch.

Physically: the high active weight is not a selector trick.  It is the reciprocal
Cauchy weight of a parent-announced material interval.  A large selected read on
that interval forces actual original material derivative/current energy on the
same interval.

## 2. Fixed-core/root-upcrossing branch

The proof above does not cover the case where the interval and route are
parent-known but the same endpoint record is being read at larger active weight
without a first-exit derivative interval.  That branch has no derivative average
of the form `(2)`.

There the correct object is the root-service storage:

\[
d\mathcal A_P
+c_Nd\Omega_P^{fresh}
\le
dR_P^{legal}+dStop_P,
\qquad
\mathcal A_P\ge -C_N(u_0).
\tag{8}
\]

In affine-transition language, `(8)` pays active-weight upcrossing, parent-fixed
connection drift, negative return, and reset/angle/collar reservoirs before the
martingale consumer is applied.

Thus `StoppedSelectorPredictableWeight.A` splits as:

\[
\text{first-exit/reset branch}
\quad\text{proved by `(1)`--`(7)`,}
\tag{9}
\]

and

\[
\text{fixed-core/root-upcrossing branch}
\quad\text{equivalent to bounded-below same-material service storage.}
\tag{10}
\]

## 3. Consequence

The first-exit branch now feeds the current Carleson pivot:

\[
\text{parent-announced first exit}
\Rightarrow
\text{predictable active weight}
\Rightarrow
\text{weighted Bessel/Cauchy packing}
\Rightarrow
\text{fresh endpoint current paid by original material charges}.
\tag{11}
\]

The remaining smoothness-bearing branch is not future-tail predictability.  It is
the bounded-below root-service storage for fixed-core active-weight upcrossing.
