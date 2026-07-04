---
theorem_id: forward-gold-retained-record-edge-projector-selector-paid-rotation-split-20260704
status: strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold-signed-height-record-net-work
target_object: RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A
role: >
  Splits the paid-rotation branch into detector-near-silent service reserve and
  selector/order-lock rotation paid by full-exchange/selected-density action for
  the same retained record edge before readout.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-projector-selector-angle-lock-obstruction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-pressure-active-silent-service-pre-readout-reserve-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-pressure-active-quotient-angle-collar-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-menu-detector-silent-service-pre-readout-reserve-primitive-half-tail-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-stratum-crossing-bv-closure-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-transition-continuity-announceable-reset-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-order-lock-selected-density-first-ratio-alignment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-cone-aperture-consumed-support-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-record-edge-paid-rotation-producer-collapse-20260704.md
completion_truth: >-
  This note does not prove the angle-lock-or-paid-rotation theorem. It proves a
  stricter split of the paid-rotation branch: near-silent projector/selector
  mismatch needs the existing detector-silent pre-readout reserve, while true
  selector/order-lock channel rotation is paid only through parent-announced
  selector motion plus full-exchange/selected-density action. Those producer
  theorems remain open for arbitrary retained record edges.
---

# Retained record-edge projector/selector paid-rotation split

## 1. Same physical packet

Fix one retained future-positive exact-projector record edge before readout. The
packet has a pressure/projector active functional \(m_{\xi_e}\) and a
parent-announced stopped selector channel \(\Gamma_{\mathfrak R_e}\). The angle
lock note showed that same packet identity does not force

```math
[m_{\xi_e}(Z_e)]_+
\lesssim
[\Gamma_{\mathfrak R_e}(Z_e)]_+.
\tag{PRS.1}
```

When `(PRS.1)' fails, the failure has only two physical meanings for the same
edge.

First, the residue may be detector-silent or detector-near-silent relative to
the parent root/full-exchange gauges. Then it is not pressure-active storage; it
must be material-service paid before readout.

Second, the residue may be pressure-active, but the stopped selector channel is
rotating away from that active direction. Then the mismatch is selector,
order-lock, primitive-channel, covector, collar, or pressure-projection motion
of the same packet; it is payable only as stopped selector variation/full
exchange action, or as legal, stop, chart/collar transfer, or exit before
readout.

## 2. Existing support and its limit

The pressure-active/silent reduction already gives the first branch:

```math
\texttt{RecordMenuDetectorSilentServicePreReadoutReserve.A}
\Longrightarrow
\text{silent or near-silent record work is paid before readout}.
\tag{PRS.2}
```

The checked state of that theorem is strict reduction, not proof. Local
complete-frame and silent-source identities route the event to same-packet
service, but the finite record reserve still requires an independent
original-history primitive full-action/strict half-barrier/weighted laminar
reserve.

The selector-stratum and stopped-selector notes give the second branch only
after a parent-known selector packet exists. A stopped selector packet records
the selected label, pressure-Hodge projection coordinate, collar, order-lock,
and finite rung data. Unpaid crossings of its finite strata are bounded by
selector-packet variation:

```math
R_{\rm stop}^{unpaid}
\le
C_N\operatorname{Var}(Y)+R_{\rm legal}.
\tag{PRS.3}
```

That variation is same-packet strain/exchange, viscous/radius, collar/frame,
projector motion, legal, or stop service. But the same note leaves the finite
producer as the stopped full-exchange action / selected-density gain. It does
not give a free payment for arbitrary future record edges.

The stopped cone-aperture note says that inside the stopped-core branch, leaving
the selector cone means reset, non-retention, legal/donor loss, or channel
transfer. Again, this is support after common-selector refinement; it is not a
proof that an arbitrary retained exact-projector record edge was already in that
stopped branch before readout.

## 3. Strict split

The paid-rotation branch reduces to:

```math
\begin{aligned}
&\texttt{RetainedRecordEdgeParentAnnouncedSelectorCapture.A}\\
&+\texttt{RecordMenuDetectorSilentServicePreReadoutReserve.A}\\
&+\texttt{StoppedFullExchangeActionCarleson.A}
  \quad\text{or equivalent selected-density first-ratio gain}\\
&\Longrightarrow
\texttt{RetainedRecordEdgeProjectorSelectorPaidRotation.A}.
\end{aligned}
\tag{PRS.4}
```

Here `RetainedRecordEdgeProjectorSelectorPaidRotation.A` means the following:
for the same retained edge, every failure of the pressure/projector active
functional to lie in the selector-announced primitive cone is charged before
readout either to detector-silent/near-silent material-service reserve, to
selector/order-lock/full-exchange variation of the same packet, or to legal,
stop, chart/collar transfer, or Pack/Part/Field exit.

With the angle-lock branch already isolated, this gives:

```math
\texttt{RetainedRecordEdgeProjectorSelectorPaidRotation.A}
\Longrightarrow
\texttt{RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A}
\tag{PRS.5}
```

on the non-angle-locked branch.

## 4. Current truth state

This is a strict reduction. The repo has real support for both payment
coordinates:

```math
\text{local silent/near-silent service routing},
\qquad
\text{selector-stratum BV/payment after stopped selection}.
\tag{PRS.6}
```

Those supports do not yet pay the arbitrary retained record edge. The remaining
physical work is to prove that the edge is parent-announced before readout and
that its rotation cost is finite in original-history units: detector-silent
reserve on the service side, and stopped full-exchange/selected-density action
on the selector-motion side.

The producer-collapse note sharpens the last sentence: after parent-announced
selector capture, the detector-silent reserve and the selector-motion payment
are both consumers of
`CriticalFreshSourceTentCarleson.A / FreshSourceCriticalScaleMemoryBound.A`.
Local silent routing and selector BV support do not beat the half-tail without
that selected-critical original-history weight.
