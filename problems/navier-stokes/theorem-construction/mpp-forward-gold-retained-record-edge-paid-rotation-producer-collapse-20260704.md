---
theorem_id: forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704
status: strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold-signed-height-record-net-work
target_object: RetainedRecordEdgeProjectorSelectorPaidRotation.A
role: >
  Collapses the two paid-rotation suppliers to the original-history
  selected-critical fresh source tent bound / scale-memory bound.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-paid-rotation-split-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-detector-silent-service-pre-readout-reserve-primitive-half-tail-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-visible-silent-exchange-root-reserve-direct-audit-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-correct-hilbert-bmo-producer-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-source-carrier-to-critical-fresh-source-tent-carleson-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-goodlambda-weight-tail-equivalence-20260626.md
completion_truth: >-
  This note does not prove paid rotation or Gold closure. It proves a strict
  reduction: after parent-announced selector capture and the local silent/source
  routing already installed, the detector-silent reserve and selector-motion
  payment are both consumers of the same original-history selected-critical
  fresh source tent Carleson / scale-memory bound. Without that bound, the
  half-tail counterprofile remains.
---

# Retained record-edge paid rotation producer collapse

## 1. Same physical packet

The paid-rotation branch is still one retained packet before readout. The packet
has pressure/projector service, a stopped selector channel, and possible motion
between the pressure-active direction and the selector-announced primitive cone.

The previous split identified two ways that motion can be paid:

```math
\text{near-silent service reserve}
\qquad\text{or}\qquad
\text{selector/order-lock full-exchange payment}.
\tag{RPC.1}
```

Those are two readouts of the same physical burden. The near-silent branch is
same-packet material service. The selector/order-lock branch is same-packet
variation of the stopped selector packet. Both ask whether the original material
history has enough selected-critical reserve before the future record reads a
positive edge.

## 2. Detector-silent reserve as a consumer

The detector-silent audit proves the local mechanism:

```math
\text{detector-silent or near-silent selected work}
\Longrightarrow
\text{same-packet material service locally}.
\tag{RPC.2}
```

It also proves that local routing is not the reserve. The missing input is the
strict half-barrier / bounded-below same-material reserve:

```math
\texttt{StoppedPrimitivePLSStrictHalfBarrierBreak.A}
\Longrightarrow
\texttt{RecordMenuDetectorSilentServicePreReadoutReserve.A}
\tag{RPC.3}
```

after the installed local silent-source and complete-frame routing.

The stopped selector-correct Hilbert/BMO synthesis gives the consumer direction:
a selected-density reverse-Holder gain on the stopped original-history tree
implies the strict half-barrier. Thus the detector-silent side is not an
independent pressure theorem once the selected-density gain is proved.

## 3. Selector-motion payment as a consumer

The selector-stratum BV note proves that unpaid selector/channel/order-lock
crossing is charged to variation of the same stopped selector packet:

```math
R_{\rm stop}^{unpaid}(P)
\le
C_N
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\right)
 +R_{\rm legal}(P).
\tag{RPC.4}
```

The stopped visible/silent/exchange audit identifies the remaining finite-action
producer:

```math
\sum_{S\subseteq P}
\left(
\Omega_S^{strain/ex}+D_S^{vis/rad}
\right)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P).
\tag{RPC.5}
```

This is `StoppedFullExchangeActionCarleson.A`, equivalently the selected
compression/root reserve in stopped coordinates. It is not proved by the BV
lemma; the BV lemma is a consumer once `(RPC.5)' is available.

## 4. One nonduplicate producer

The stopped source-carrier reduction already identifies the sharper original
producer:

```math
\texttt{CriticalFreshSourceTentCarleson.A}
\quad\text{or}\quad
\texttt{FreshSourceCriticalScaleMemoryBound.A}.
\tag{RPC.6}
```

For each retained stopped root \(P\), this asks that the genuinely fresh
visible/silent/exchange increments left after spent-source projection,
selector/reselection payment, silent-source normal form, full-exchange refunds,
entrance/legal, subheat, and recirculation removals satisfy the selected-critical
tent bound with the critical weight generated before terminal selection.

With `(RPC.6)', the checked consumer chain is:

```math
\begin{aligned}
\texttt{CriticalFreshSourceTentCarleson.A}
&\Longrightarrow
\texttt{StoppedFullExchangeActionCarleson.A}\\
&\Longrightarrow
\texttt{StoppedSourceCarrierAndPaidReselection.A}\\
&\Longrightarrow
\text{stopped selected-density reverse Holder}\\
&\Longrightarrow
\texttt{StoppedPrimitivePLSStrictHalfBarrierBreak.A}.
\end{aligned}
\tag{RPC.7}
```

Combining `(RPC.3)' and `(RPC.4)'--`(RPC.7)' gives:

```math
\begin{aligned}
&\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}\\
&+\texttt{CriticalFreshSourceTentCarleson.A}
  \quad\text{or}\quad
  \texttt{FreshSourceCriticalScaleMemoryBound.A}\\
&+\text{installed local silent/source and selector-BV support}\\
&\Longrightarrow
\texttt{RetainedRecordEdgeProjectorSelectorPaidRotation.A}.
\end{aligned}
\tag{RPC.8}
```

## 5. Obstruction check

The half-tail model is the same in both payment coordinates:

```math
\nu_\ell={2^{-\ell}\over \ell+1},
\qquad
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{RPC.9}
```

Local silent-source routing, complete-frame orientation, selector BV crossing,
raw Bessel freshness, and raw material strain/viscosity ledgers are all
compatible with `(RPC.9)'. Therefore none of those support facts proves paid
rotation for arbitrary retained record edges. The missing physical feature is
the selected-critical weight \(2^\ell\) coming from original-history scale
memory, annular stress/strain exchange, or bounded-below same-material storage.

## 6. Current truth state

This is a strict reduction. Paid rotation is not a second or third local theorem
beside the Gold wall. Once parent-announced selector capture has admitted the
edge before readout, the remaining producer is the selected-critical fresh source
tent Carleson / scale-memory bound. Proving that bound would pay both
near-silent service and selector/channel motion for the same retained edge.
