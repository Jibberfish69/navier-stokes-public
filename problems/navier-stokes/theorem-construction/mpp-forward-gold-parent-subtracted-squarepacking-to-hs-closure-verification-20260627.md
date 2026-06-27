---
theorem_id: forward-gold-parent-subtracted-squarepacking-to-hs-closure-verification-20260627
status: downstream-relay-verified-conditional-on-route-energy-bound
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
verifies:
  - ParentSubtractedStoppedRoutedCurrentSquarePacking.A
  - ParentDropFullClockRelayFromSquarePacking.A
  - MaterialClockToFixedHsContinuationReadout.A
uses:
  - ParentSubtractedSelectedReadoutDecomposition.A
  - OriginalHistoryRoutedCurrentEnergyFinite.A / E_route bound
  - HighActiveDensityForcesStopOrLegalReselection.A as current constructive route to E_route
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-inherited-action-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-announced-reset-variation-to-routed-energy-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-subtracted-active-weight-carleson-embedding-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-frame-bessel-critical-weight-fork-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-bessel-producer-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parentdrop-full-clock-relay-from-square-packing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
effect: >-
  Verifies the downstream relay shape for the corrected parent-subtracted selected
  current. The fresh QR residual is Bessel-paid and reset variation is routed into
  E_route by parent-announced first-exit slabs. The downstream H^s relay is
  verified only after E_route is bounded by the original material participation law.
---

# Parent-subtracted square packing to \(H^s\) closure verification

The square-packed increment used downstream is

```math
\Delta_QJ^{new}
=
\Delta_QJ-\Delta_QJ^{parent}.
\tag{1}
```

It is not the raw child traction read.  Exact inherited reuse is parent current
and contributes zero new child action.

## 1. Finite parent-subtracted selected square packing

The parent-known QR theorem gives

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^{fresh}|^2
\le
C(u_0).
\tag{2}
```

The parent-announced reset reduction gives

```math
\sum_i\|b_i-b_{i-1}\|_{\mathfrak H_P}^2
\le
C_N\mathcal E_{\rm route}(P)
+R_{\rm legal}(P)+Stop(P).
\tag{3}
```

The remaining upstream line is the original-history routed-current energy bound

```math
\mathcal E_{\rm route}(P)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{4}
```

Once `(4)` is proved, the selected square packing follows:

```math
\sum_{Q\subset P}
\mathcal R(Q)|\Delta_QJ^{new}|^2
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{5}
```

## 2. Selector identity to selected action

The selector-correct log identity is

```math
\Delta_Q\lambda_{\rm sel}
=
\ell_Q(\Delta_QJ^{new})-\psi_Q+e_Q,
\qquad \psi_Q\ge0,
\tag{6}
```

with the legal and stop errors square-packed.  Therefore

```math
\sum_{Q\subset P}A_{\rm sel}(Q)
\le
C_N(u_0)+R_{\rm legal}(P)+Stop(P).
\tag{7}
```

## 3. Parent drop and full material action

Capacity monotonicity and the selected-action bound give

```math
\sum_{Q'\in ch(Q)}A(Q')
+\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+C R_{\rm legal}(Q)+C Stop(Q).
\tag{8}
```

Summing over the retained laminar tree telescopes the capacity terms:

```math
\sum_QA(Q)
\le
B_{\rm cap}(Q_0)+C_N(u_0)+R_{\rm legal}(Q_0)+Stop(Q_0)
<\infty .
\tag{9}
```

This is finite same-material full action in the corrected parent-subtracted
currency.

## 4. \(H^s\) continuation

The installed material-record readout gives, for fixed \(s>5/2\),

```math
\sum_QA(Q)<\infty
\Longrightarrow
\int d[\log(1+\mathcal P_{N_s}^{mat})]_+<\infty
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s}<\infty .
\tag{10}
```

Classical \(H^s\) local well-posedness continues the same smooth solution past
\(T_*\).  Thus a first finite breakdown time is excluded once the corrected
parent-subtracted square-packing chain is admitted.

## 5. Stale inputs excluded

This verification uses none of the stale producers:

```text
raw inherited child stress reads,
future selected tails,
downstream full-clock finiteness,
local packet storage,
gauge storage,
scalar BV,
pressure-only Schur observability.
```

The chain is:

```text
parent-subtracted QR
-> parent-announced reset variation into E_route
-> original-history bound for E_route
-> selected action
-> parent drop
-> finite material record
-> H^s continuation.
```
