---
theorem_id: forward-gold-stopped-source-carrier-production-direct-test-20260627
status: stopped-consumer-proved-production-reduces-to-stopped-root-and-reselection-carleson
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped log-amplification
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedSourceCarrierAndPaidReselection.A
  - StoppedIndependentRootHilbertCarrierBound.A
  - PaidReselectionStoppingCarleson.A
  - OriginalHistorySelectedLogAmplificationCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stopped-source-carrier-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extended-selector-carrier-root-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-source-origin-hilbert-energy-dissipation-selector-readout-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-selected-reserve-normal-form-20260626.md
---

# Stopped source-carrier production direct test

This note audits the stopped-carrier reduction as a proof, not just as a better
formulation.

The stopped formulation is the right way to avoid a false global selector
nondegeneracy theorem.  It closes the consumer side.  It does not yet produce
the original-history estimates needed to close Gold.

## 1. Consumer side is valid

On each stopped material interval \(S\), the selected readout is fixed-carrier:

```math
\log r_Q
=
\ell_Q(\Delta_QZ^S)-\psi_Q+e_Q^S,
\qquad Q\subseteq S
\tag{1}
```

with \(Z^S\) built from the signed original-history carrier

```math
Z^S=Z^S_{\rm vis}\oplus Z^S_{\rm sil}\oplus Z^S_{\rm ex}.
\tag{2}
```

If

```math
\sum_{S\subseteq P}\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{3}
```

and

```math
\operatorname{Stop}(P)
+
\sum_{S\subseteq P}\sum_{Q\subseteq S}
|e_Q^S|^2\mathcal R(Q)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P),
\tag{4}
```

then the installed stochastic-exponential martingale theorem applies on the
stopped tree and gives

```math
f\in RH_{1+\varepsilon}(d\mathcal R).
\tag{5}
```

This consumer implication is standard and does not need another PDE theorem.

## 2. First production line: stopped root square function

Within one stopped interval, Bessel/Pythagoras gives

```math
\sum_{Q\subseteq S}
\|\Delta_QZ^S\|_{\mathcal H_{\rm src}}^2\mathcal R(Q)
\le
C\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
+R_{\rm legal}(S).
\tag{6}
```

Summing `(6)` over stopped intervals requires the root estimate

```math
\boxed{
\sum_{S\subseteq P}
\|Z^S\|_{\mathcal H_{\rm src}}^2\mathcal R(S)
\le
C_N(u_0)\mathcal R(P)+R_{\rm stop}(P).
}
\tag{7}
```

This is not automatic.  A stopped interval can restart the same original
material ancestry many times.  Per-stop Bessel geometry controls descendants of
one stopped root, but it does not bound the sum of stopped-root energies.

The invalid shortcut is

```math
Z^S=L_A^{-1}f_{\rm sel}^{desc}(S).
\tag{8}
```

Then `(7)` is the future selected tail written as Hilbert energy.  That is
equivalent to the theorem being proved.

Thus `(7)` is the first real production theorem:

```text
StoppedIndependentRootHilbertCarrierBound.A
```

with \(R_{\rm stop}\) made only from original-history ledgers: pressure-visible
Schur service, silent-bubble source-origin service, strain-Hessian exchange,
selector/order-lock payment, Body defects, and legal residuals.

## 3. Second production line: paid reselection stopping

The stopping measure is paid only if

```math
\boxed{
\operatorname{Stop}(P)
\le
C\,\Omega_{\rm ol/sel}(P)
+C\,K_{\rm sel}(P)
+C\,K_C^+(P)
+R_{\rm legal}(P)
}
\tag{9}
```

with the right side independently finite on the retained original history.

The installed selector notes prove `(9)` in two cases:

- finite-menu / fixed-carrier heredity, where no label stopping remains on the
  retained subtail;
- already-visible selector/collar/order-lock defect, where the stopping event
  has been placed in a paid ledger before reverse Holder is invoked.

The continuum moving-selector case is not proved by stopping.  Stopping only
names the event.  An unpaid infinite stopping family is the same critical
selected half-tail in reselection coordinates:

```math
A(Q_k)\simeq1,
\qquad
\sum_k R_{\rm raw}(Q_k)<\infty,
\qquad
\sum_k A(Q_k)=\infty.
\tag{10}
```

Thus `(9)` is the second real production theorem:

```text
PaidReselectionStoppingCarleson.A
```

## 4. Relation to the two bad-tree branches

Failure of `(7)` is the reused-core branch in stopped Hilbert language:
repeated stopped roots reuse an original material ancestry without a finite
root Hilbert bill.

Failure of `(9)` is the shrinking/reselecting-core branch in stopped language:
the selector keeps restarting on smaller windows while raw service remains
summable.

Therefore `StoppedSourceCarrierAndPaidReselection.A` is not a third route.  It
is the clean synthesis of the two existing Gold branches.

## 5. Result

The stopped reduction improves the proof architecture:

```math
\text{stopped root square function}
+
\text{paid reselection stopping}
\Longrightarrow
\text{selected reverse Holder}
\Longrightarrow
\text{strict first-ratio gain}.
\tag{11}
```

The production theorem is still open.  The exact remaining estimates are
`(7)` and `(9)`, and neither may use the future selected tail as a residual,
root norm, or stopping charge.
