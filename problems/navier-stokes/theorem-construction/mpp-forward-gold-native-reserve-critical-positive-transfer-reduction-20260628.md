---
theorem_id: forward-gold-native-reserve-critical-positive-transfer-reduction-20260628
status: critical-positive-transfer-reduction-small-critical-packet-closed-arbitrary-data-open
created: 2026-06-28
problem: navier-stokes
route: forward-gold same-material full-clock / scale-native active participation
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
refines:
  - NativeBirthChargePacking.A
  - ScaleNativeActiveParticipationReserve.A
  - SelectedGeneratorStorageCoercivity.A
  - OriginalScaleMemoryStorageCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-native-active-participation-native-reserve-hinge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-raw-zoom-selector-native-birth-packing-live-edge-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-generator-storage-coercivity-hard-block-20260627.md
effect: >-
  Identifies the scale-native native-reserve inequality with a critical
  fractional energy estimate for the original coupled Navier-Stokes packet. The
  reserve is comparable to nu int ||Lambda^{3/2}u||_2^2 dt. Testing the Leray
  projected equation against Lambda u shows that finite reserve follows from a
  positive critical nonlinear transfer bound. The standard estimate closes only
  for small critical packet size; for arbitrary smooth data the required
  positive-transfer absorption is exactly the remaining Gold theorem.
completion_truth: partial-not-gold-closed
---

# Native reserve as critical positive-transfer reduction

The scale-native reserve is not raw energy dissipation.  It is the next
half-derivative of the coupled packet.

Let

\[
S=\nabla_{\rm sym}u .
\]

The scale-weighted native reserve has the dyadic form

\[
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\sum_{\lambda}\lambda\|P_\lambda S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{1/2}S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{1}
\]

Thus `NativeBirthChargePacking.A` / `SelectedGeneratorStorageCoercivity.A` is,
in physical variables, a finite critical fractional dissipation reserve.

## 1. Coupled fractional packet identity

Apply the Leray projection to Navier-Stokes:

\[
\partial_tu+\mathbb P(u\cdot\nabla u)=\nu\Delta u .
\tag{2}
\]

Testing `(2)` against \(\Lambda u\) gives

\[
{1\over2}{d\over dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{3}
\]

The pressure is not ignored here.  It is carried by \(\mathbb P\), so `(3)` is
the pressure-viscosity-incompressibility packet tested at the critical
half-derivative level.

Let

\[
B(t)
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\tag{4}
\]

Then `(3)` gives

\[
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\le
{1\over2}\|u_0\|_{\dot H^{1/2}}^2
+
\int_0^T B_+(t)\,dt .
\tag{5}
\]

So the finite native reserve follows exactly from a positive-transfer estimate

\[
\int_0^T B_+(t)\,dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt,
\qquad
\theta<1 .
\tag{6}
\]

Equations `(1)`--`(6)` are the direct physical version of the stopped-packet
storage inequality.

## 2. What the standard estimate proves

The standard critical estimate gives

\[
\left|
\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right|
\le
C\|u\|_{\dot H^{1/2}}\|\Lambda^{3/2}u\|_2^2 .
\tag{7}
\]

Therefore `(6)` closes on any interval where

\[
\|u(t)\|_{\dot H^{1/2}}
\le
{\nu\over 2C}.
\tag{8}
\]

In that small critical-packet regime,

\[
\mathfrak R_{\rm nat}(T)
\le
C_\nu\|u_0\|_{\dot H^{1/2}}^2 .
\tag{9}
\]

This is a real closed subcase.  It is not the arbitrary-data Gold theorem.

## 3. Why the energy law is one derivative short

The original energy law gives

\[
\nu\int_0^T\|\Lambda u(t)\|_2^2\,dt
\le
C\|u_0\|_2^2 .
\tag{10}
\]

The scale-native reserve asks for

\[
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\tag{11}
\]

A high-frequency block at frequency \(\lambda\) can have bounded contribution
to `(10)` while contributing an additional factor \(\lambda\) to `(11)`.
This is the same scaling obstruction recorded by the raw zoom selector: raw
strain work can be finite while scale-normalized selected reserve diverges.

Thus finite native reserve cannot be obtained by summing the raw material
energy law.  The missing derivative must be paid by the positive-transfer
structure in `(6)`.

## 4. Stopped-packet form

In transported stopped-packet notation, `(3)` becomes a storage identity

\[
dM_{\sigma,t}
+
\nu\|G_{\rm orig}(\sigma,t)\|^2\,dt\,d\sigma
=
-B_{\sigma,t}\,dt\,d\sigma
+
dR_{\rm legal}
+
dStop .
\tag{12}
\]

After multiplying by the active scale weight \(a(\sigma,t)\), the desired
reserve bound is

\[
\int a(\sigma,t)\|G_{\rm orig}(\sigma,t)\|^2
\le
M(0)
+
\int a(\sigma,t)B_+(\sigma,t)
+
R_{\rm legal}
+
Stop .
\tag{13}
\]

Therefore `SelectedGeneratorStorageCoercivity.A` is equivalent here to a
positive critical transfer bound for \(B_+\), with the selector/stopping errors
packed into legal and stop terms:

\[
\int aB_+
\le
C_N(u_0)\mathcal R(P)
+
\theta\nu\int a\|G_{\rm orig}\|^2
+
R_{\rm legal}(P)+Stop(P),
\qquad
\theta<1 .
\tag{14}
\]

## 5. Exact remaining theorem

The active Gold theorem is now sharpened to:

\[
\boxed{
\texttt{CriticalPositiveTransferReserve.A}
\Rightarrow
\texttt{NativeBirthChargePacking.A / SelectedGeneratorStorageCoercivity.A}.
}
\tag{15}
\]

That theorem must prove `(6)`, or equivalently `(14)`, for arbitrary smooth
data from the original coupled pressure-viscosity-incompressibility-velocity
packet, without importing finite full material clock, future selected tails, or
downstream \(H^s\) continuation.

The honest state is:

\[
\text{small critical packet closes by absorption;}
\qquad
\text{arbitrary data remains open at positive critical transfer.}
\tag{16}
\]

This is the current mathematical edge of the scale-native native-reserve branch.
