---
theorem_id: forward-gold-positive-critical-transfer-dyadic-flux-affine-threading-reduction-20260628
status: positive-critical-transfer-reduced-to-weighted-upcascade-affine-threading-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold scale-native native reserve / positive critical transfer
logical_landing_node: NativeBirthChargePacking.A
attacks_hinge:
  - PositiveCriticalTransferBound.A
  - NativeBirthChargePacking.A
  - SelectedGeneratorStorageCoercivity.A
  - CriticalFreshSourceTentCarleson.A
refined_hinge:
  - PositiveCriticalTransferDyadicFluxReduction.A
  - FreshFrequencyFluxNoFreeUpcascade.A
  - AffineQuotientTransitionPayment.A
  - FreshPositiveAffineEndpointMassKill.A
  - FreshMuNCarlesonEndpointThreading.A
  - MovingLowHighInterfaceLowerEdge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-raw-zoom-selector-native-birth-packing-live-edge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-weighted-paired-carrier-frequency-flux-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-frequency-flux-residence-transit-dichotomy-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-fresh-cascade-packing-finite-band-reset-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-threaded-cascade-to-affine-quotient-transition-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-birth-affine-endpoint-threading-synthesis-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-positive-affine-endpoint-mass-threading-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-scale-native-reserve-atom-joint-interface-reduction-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-parent-child-reset-critical-weight-countertest-20260627.md
  - problems/navier-stokes/theorem-construction/exact-dyadic-interaction-decomposition.md
effect: >-
  Identifies PositiveCriticalTransferBound.A with the critical weighted dyadic
  upward-frequency flux. This closes the bookkeeping gap between the fractional
  native-reserve identity and the existing fresh-frequency / affine-endpoint
  route, but does not prove Gold: the remaining theorem is the weighted
  no-free-upcascade / endpoint-interface payment for arbitrary data.
---

# Positive critical transfer dyadic-flux affine-threading reduction

Status: reduction, not closure.

The finite native reserve is the critical fractional energy

```math
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt.
```

The critical Leray identity is

```math
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{1}
```

So `PositiveCriticalTransferBound.A` asks for absorption of the positive part of
the right side:

```math
\int_0^T B_+(t)\,dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1,
\tag{2}
```

where

```math
B(t)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
```

The useful point is that \(B\) is not a new scalar mystery. It is the weighted
upward dyadic flux of the original coupled packet.

## Dyadic flux identity

Let \(u_j=P_j u\), \(E_j={1\over2}\|u_j\|_2^2\), and set

```math
\mathcal B_j(t)
=
-\langle P_j\mathbb P(u\cdot\nabla u),u_j\rangle .
```

For smooth solutions,

```math
{d\over dt}E_j(t)
+
\nu\|\nabla u_j(t)\|_2^2
=
\mathcal B_j(t).
\tag{3}
```

Define the cumulative upward flux across the dyadic cut \(j\) by

```math
\Pi_j(t)=\sum_{k>j}\mathcal B_k(t),
```

with the usual smooth-frequency boundary limit. Then

```math
\mathcal B_j=\Pi_{j-1}-\Pi_j.
\tag{4}
```

Multiplying `(3)` by \(2^j\), summing in \(j\), and using `(4)` gives

```math
{1\over2}{d\over dt}\sum_j2^j\|u_j\|_2^2
+
\nu\sum_j2^j\|\nabla u_j\|_2^2
=
\sum_j2^j(\Pi_{j-1}-\Pi_j)
=
\sum_j(2^{j+1}-2^j)\Pi_j .
\tag{5}
```

Modulo finite-band Littlewood-Paley constants and harmless low/high truncation
terms, `(5)` is `(1)`. Hence

```math
B_+(t)
\lesssim
\sum_j2^j[\Pi_j(t)]_+
+
R_{\rm LP}(t).
\tag{6}
```

Conversely, the selected positive weighted upcascade is the concrete frequency
normal form of the same critical transfer. Thus the arbitrary-data producer is:

```math
\int_0^T\sum_j2^j[\Pi_j(t)]_+\,dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
+
R_{\rm legal}+Stop .
\tag{7}
```

This is `PositiveCriticalTransferDyadicFluxReduction.A`.

## Relation to the installed Gold route

The weighted positive flux in `(7)` is exactly the object isolated earlier as

```math
\texttt{FreshFrequencyFluxNoFreeUpcascade.A}.
```

The existing chain below it is:

```math
\texttt{FreshFrequencyFluxNoFreeUpcascade.A}
\rightarrow
\texttt{FreshFrequencyFluxResidenceTransitDichotomy.A}
\rightarrow
\texttt{ThreadedFreshCascadePacking.A}
\rightarrow
\texttt{AffineQuotientTransitionPayment.A}.
\tag{8}
```

The affine quotient branch then sharpens the fresh producer to

```math
\texttt{FreshPositiveAffineEndpointMassKill.A}
\rightarrow
\texttt{FreshMuNCarlesonEndpointThreading.A}
```

and, on the selected-scale native atom surface, to the moving low-high interface
lower edge

```math
\texttt{MovingLowHighInterfaceSelectedAtom.A}
+
\texttt{MovingLowHighInterfaceLowerEdge.A}.
```

So the positive critical transfer theorem is now pinned to the same endpoint /
interface branch as the scale-native birth packing. It is not a separate
post-selection storage estimate.

## What remains open

The standard estimate gives only

```math
|B(t)|
\le
C\|u(t)\|_{\dot H^{1/2}}\|\Lambda^{3/2}u(t)\|_2^2.
\tag{9}
```

This closes small critical packets. For arbitrary smooth data, `(9)` makes the
coefficient the same critical quantity that Gold is trying to control.

The half-tail countertest is the exact obstruction to replacing `(7)` by raw
energy dissipation:

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
```

Thus raw strain work, raw Bessel packing, raw reset distance, or raw
bounded-test admission does not prove `(7)`. The remaining theorem must produce
the selected first-ratio weight from the original coupled packet.

The current sharp open producer can be stated in either equivalent form:

```math
\texttt{FreshPositiveAffineEndpointMassKill.A}
\quad\text{through}\quad
\texttt{FreshMuNCarlesonEndpointThreading.A},
\tag{10}
```

or

```math
\texttt{MovingLowHighInterfaceLowerEdge.A}.
\tag{11}
```

The return/reset side has a precise role. Fixed stopped-score return/BV is
closed only relative to the parent-known selector and root-geometry current
currency. Projection-jump / first-exit Carleson is installed at route-energy
level. The critical-weighted reset reserve still needs the same original
weighted upcascade/native reserve producer; otherwise it is just the half-tail
problem in reset language.

## Result

`PositiveCriticalTransferBound.A` has been reduced to the weighted dyadic
no-free-upcascade theorem. The Gold live edge is therefore sharper:

```math
\texttt{PositiveCriticalTransferBound.A}
\le
\texttt{FreshFrequencyFluxNoFreeUpcascade.A}
\le
\texttt{AffineQuotientTransitionPayment.A}
\le
\texttt{FreshPositiveAffineEndpointMassKill.A}
\ /\ 
\texttt{MovingLowHighInterfaceLowerEdge.A},
```

with the critical branch payments kept explicit.

This does not prove smoothness. It removes the duplicate "positive transfer"
target and identifies the remaining original-storage theorem: a retained
scale-native upward refill must pay the critical selected weight from the same
pressure-viscosity-incompressibility packet before selected readout.
