---
theorem_id: forward-gold-referee-failed-root-realization-to-stopped-testing-20260627
status: root-realization-reduced-to-stopped-accretive-testing-open
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped testing
demotes:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-martingale-realization-closure-20260627.md
current_hinge:
  - StoppedAccretiveTestingData.A
  - OriginalHistoryHilbertBMOProducer.A
  - StoppedSelectorCorrectHilbertBMOProducer.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-testing-carleson-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-routed-energy-noncircular-installation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-martingale-square-function-governing-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-silent-kernel-selected-density-local-increment-inclusion-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-martingale-realization-closure-20260627.md
effect: >-
  Records the referee failure of the attempted predictable-root realization
  closure and reduces the noncircular root-weight construction to stopped
  accretive testing data / original-history Hilbert-BMO production. Local
  invisible-source classification, finite-score reset, repeated-core
  projection, and Bessel/Pythagoras remain support or conditional consumers.
---

# Referee failure to stopped testing reduction

The attempted `PredictableRootWeightMartingaleRealization.A` closure failed.
It declared the parent-predictable root weight \(H_P\) and the selected-critical
root currency instead of producing them from the original same-material history.

The failed step was:

```math
d\nu_P=H_P(t,x)\,dt\,dx
```

with \(H_P\) treated as already parent-predictable and already strong enough to
pay selected-critical descendants.  That is exactly the object the Gold route
must produce.

## 1. What remains valid

The following pieces remain valid support:

```text
SilentKernelSelectedDensityLocalIncrement.A
```

gives the local invisible-source fork: boundary-flat pressure-Hodge material is
unselected, or it is selected and paid by top-strain/material service/legal
loss.

```text
StoppedSelectorFiniteScoreOrPaidDrift.A
```

keeps the retained Gold selector finite, stopped, parent-known, and
first-exit based at fixed continuation depth.

```text
StoppedLiftedTransitionBesselCarleson.A
```

is an abstract Bessel/Pythagoras consumer once the root Hilbert geometry and
martingale-difference split exist.

The repeated-core projection record/return note is also only conditional on
that same root projection geometry.

## 2. The actual root producer

The root geometry is produced exactly when the stopped selected source has
testing and cancellation against the same-material transform.  The theorem is:

```text
StoppedAccretiveTestingData.A
```

or equivalently:

```text
OriginalHistoryHilbertBMOProducer.A.
```

For each stopped same-material selector region \(S\), construct a routed source
measure \(\nu^S\), an original-history reserve measure \(\mathcal R\), and
testing functions \(b_P\) such that:

```math
\langle \nu^S,b_P\rangle
=0
\quad
\text{up to } Stop(P)+R_{\rm legal}(P),
\tag{1}
```

and

```math
\|T_S(b_P\nu^S)\|_{L^2(P,\mathcal R)}^2
\le
C\mathcal R(P)+CR_{\rm legal}(P).
\tag{2}
```

The testing defects must pack:

```math
\sum_{P\subseteq P_0}Def_{test}(P)
\le
C\mathcal R(P_0)+CR_{\rm legal}(P_0).
\tag{3}
```

Then stopped \(T(b)\)/martingale theory gives the BMO square function for the
lifted carrier \(Z^S=T_S\nu^S\), which gives the original-history selected
log-amplification Carleson estimate.

## 3. Why this is the right live hinge

Packetwise payment is not enough.  The local estimate

```math
A_{\rm sel}(Q)
\lesssim
B_{\rm Schur}(Q)+E_{\rm top-ex}(Q)+S_{\rm mat}(Q)+R_{\rm legal}(Q)
```

does not give cancellation for the transform \(T_S\).  A singular transform can
have locally finite source mass and still fail the square-function/BMO bound.

The stopped testing theorem is exactly the missing noncircular construction of
the predictable root weight.  It produces the root Hilbert geometry before the
positive descendant readout, instead of naming \(H_P\) after the selected tail.

## 4. Updated Gold edge

The live Gold edge is now:

```text
StoppedAccretiveTestingData.A
  -> OriginalHistoryHilbertBMOProducer.A
  -> OriginalHistorySelectedLogAmplificationCarleson.A
  -> SelectedDensityMartingaleSquareFunctionCarleson.A
  -> finite selected first-ratio action
  -> finite full same-material continuation clock
  -> H^s continuation.
```

The failed closure attempt is retained as a negative audit surface only.  It
must not be promoted as `PredictableRootWeightMartingaleRealization.A`.
