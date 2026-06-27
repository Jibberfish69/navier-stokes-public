---
theorem_id: forward-gold-affine-quotient-live-edge-branch-payment-audit-20260627
status: live-edge-corrected-affine-quotient-open-two-branch-payments
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh frequency flux
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - AffineQuotientTransitionPayment.A
  - ThreadedFreshCascadePacking.A
  - StoppedPrimitivePLSNoFreeOscillation.A
  - StoppedReturnBVFiniteFromOriginalData.A
  - CriticalWeightedParentChildResetCarleson.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-source-local-increment-to-threaded-cascade-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-fresh-cascade-packing-finite-band-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-cascade-to-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-return-branch-sharp-inputs-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-routed-current-square-packing-from-derivative-bv-assembly-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-history-routed-current-energy-finiteness-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-energy-stable-routed-current-projection-20260627.md
---

# Affine quotient live edge: branch-payment audit

The supplied silent-kernel source-origin argument is installed as local selected
density increment support.  It proves that the silent interior source cannot be
spent as a free local increment: the source is either unselected/gauge, or it is
selected and enters top-strain/material-service/legal payment.

That does not prove the global square-function Carleson estimate.  The global
tail has already moved through the selected-readout differential exhaustion and
the residence/transit split.

## 1. What threaded transit now proves

The threaded fresh-cascade reduction gives

```math
\sum_{\gamma\subset P}\sum_{j\in\gamma}2^jM_j^\gamma
\le
C_NE_{root}(P)+CRes(P)+CResetEscape(P)+CReturnBV(P)+CR_{legal}(P).
\tag{1}
```

Residence is paid.  Parent-predictable finite-band transit telescopes.  Top
outflux is a first-exit reset/escape.  Return to a reused stopped core is a
return/BV branch.

So `ThreadedFreshCascadePacking.A` is no longer the live wall by itself.

## 2. The shared survivor is the affine quotient

The newer transition notes identify the common survivor as the affine quotient
left after the derivative-exact part of the fresh weighted paired carrier:

```math
c_F^{fresh}
=
A_\kappa M_0^{fresh}
+B_\kappa M_1^{fresh}.
\tag{2}
```

The live payment is

```math
\begin{aligned}
AQ(P)
:=&
\int_0^{T^*}H_w(t)\|c_F^{fresh}(t)\|_{L_x^2}^2\,dt\\
\le&
C\int_{\mathcal F_{rep}(P)}
\left(
\operatorname{Rec}_\infty(\Psi_\mathcal A)
+V_-^{return}(\Psi_\mathcal A)
\right)d\mathcal R_{ancestry}(\mathcal A)\\
&+
C\sum_{Q\subset P}\sum_{Q'\in ch_{stop}(Q)}
J_{crit}(Q\to Q')
+R_{legal}(P).
\end{aligned}
\tag{3}
```

This is `AffineQuotientTransitionPayment.A`.

## 3. The two branch payments are both still visible

Repeated-core branch:

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+
StoppedNegativeScaleReturnCharge.A
-> RepeatedCoreRecordReturnStorageBound.A.
```

The scalar BV identity is elementary, but the actual theorem work is the signed
PLS lift before positive projection and the original-history charge for the
negative return.  Bounded record oscillation alone does not pay the branch.

Fresh-reset branch:

```text
CriticalWeightedParentChildResetCarleson.A
via LogScaleResetDerivativeCarrierBound.A.
```

Raw reset distance fails the half-tail.  The reset charge must carry the
selected critical weight and must be produced from original-history log-scale
derivative, collar-turnstile, exchange, or equivalent same-material reset
structure.

## 4. Circular route excluded

The stopped routed-current square-packing assembly is conditional on

```text
OriginalHistoryRoutedCurrentEnergyFinite.A.
```

The installed routed-current projection gives only

```math
\mathcal E_{route}(P)
\le
C\int_{\operatorname{Hist}(P)}\Theta_{full}
+CR_{legal}(P)+CStop(P).
\tag{4}
```

That is a local subledger statement.  It cannot be used as original-history
currency to prove the same full material clock.  Importing downstream
`FullMaterialClockLedger.A` here would be circular.

## 5. Result

The current Gold live edge is:

```text
AffineQuotientTransitionPayment.A
```

with two open branch payments:

```text
RepeatedCoreRecordReturnStorageBound.A
CriticalWeightedParentChildResetCarleson.A.
```

The supplied silent-source theorem and threaded-cascade reduction are consumed
as support.  They are not the global closure.  Partial, not Gold closed.
