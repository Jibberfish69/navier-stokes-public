---
created: 2026-06-28
problem: navier-stokes
lane: forward-positive-gold
status: direct-absorption-open-small-critical-closed
theorem_id: PositiveCriticalTransferBound.A
parent_hinge:
  - NativeBirthChargePacking.A
  - SelectedGeneratorStorageCoercivity.A
  - ScaleNativeActiveParticipationNativeReserveHinge.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-reserve-critical-fractional-transfer-reduction-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-forward-native-reserve-birth-packing-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-scale-memory-storage-coercivity-boundary-20260627.md
---

# Positive Critical Transfer Direct Attack

This note attacks the analytic face of the native reserve theorem directly.
It does not close the arbitrary-data Gold route.  It records the exact identity
that produces the native reserve, the small-critical closure, and the missing
large-data positive-transfer mechanism.

## 1. Native reserve identity

Let
\[
S=\nabla_{\rm sym}u .
\]

The scale-native reserve identified by the stopped selected-packet route is
\[
\mathfrak R_{\rm nat}(T)
\simeq
\nu\int_0^T\sum_\lambda \lambda\|P_\lambda S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{1/2}S(t)\|_2^2\,dt
\simeq
\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt .
\]

Apply the Leray projector to Navier-Stokes:
\[
\partial_t u+\mathbb P(u\cdot\nabla u)=\nu\Delta u .
\]

Testing against \(\Lambda u\) gives the exact critical energy identity
\[
\frac12\frac{d}{dt}\|\Lambda^{1/2}u\|_2^2
+
\nu\|\Lambda^{3/2}u\|_2^2
=
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle .
\]

Pressure and incompressibility are still present through \(\mathbb P\).  This is
the original coupled pressure-viscosity-incompressibility-velocity packet, not a
velocity-only scalar model.

Thus the desired finite native reserve follows from the positive-transfer
absorption
\[
\int_0^T
\left(
-\left\langle
\Lambda^{1/2}\mathbb P(u\cdot\nabla u),
\Lambda^{1/2}u
\right\rangle
\right)_+dt
\le
C(u_0)
+
\theta\nu\int_0^T\|\Lambda^{3/2}u(t)\|_2^2\,dt
\]
for some \(\theta<1\).

This is the analytic form of `PositiveCriticalTransferBound.A`.

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
\]

Therefore the absorption closes when
\[
\|u(t)\|_{\dot H^{1/2}}\le \frac{\nu}{2C}.
\]

In that small-critical regime,
\[
\mathfrak R_{\rm nat}(T)
\le
C\|u_0\|_{\dot H^{1/2}}^2 .
\]

For arbitrary smooth data this is not enough.  The coefficient
\(\|u(t)\|_{\dot H^{1/2}}\) is itself the critical quantity.  Treating it as
bounded by a small universal number assumes the missing theorem.

## 3. Dyadic transfer form

Let
\[
u_j=P_j u,\qquad
E_{1/2}(t)=\sum_j 2^j\|u_j(t)\|_2^2,\qquad
D_{3/2}(t)=\sum_j 2^{3j}\|u_j(t)\|_2^2 .
\]

The nonlinear transfer at shell \(j\) is
\[
T_j(t)
=
-2^j\left\langle
P_j\mathbb P(u\cdot\nabla u),u_j
\right\rangle .
\]

The critical identity is
\[
\frac12E_{1/2}'(t)+\nu D_{3/2}(t)=\sum_jT_j(t).
\]

The desired positive-transfer theorem is the one-sided shell statement
\[
\int_0^T\sum_j(T_j(t))_+\,dt
\le
C(u_0)
+
\theta\nu\int_0^T D_{3/2}(t)\,dt .
\]

The signed sum \(\sum_jT_j\) is controlled by the critical energy identity.  The
rectified sum \(\sum_j(T_j)_+\) is stronger.  The signed identity allows transfer
between shells; it does not by itself bound total positive upward transfer.

The \(L^2\) skew cancellation similarly does not control the weighted
one-sided critical shell transfer.  Coherent strain-aligned triads can make
positive transfer on selected shells while negative transfer is hidden in a
different shell or orientation.  That is why ordinary energy cannot pay the
scale-native reserve.

## 4. Direct local absorption failure

At a fixed time, the ratio
\[
\frac{\sum_j(T_j)_+}{\nu D_{3/2}}
\]
can be large when the critical amplitude \(\|u\|_{\dot H^{1/2}}\) is large.
The standard estimate gives exactly that dependence.  No local instantaneous
estimate of the form
\[
\sum_j(T_j)_+
\le
C(u_0)+\theta\nu D_{3/2}
\]
is available from energy, incompressibility, or the Leray projection alone.

A finite burst of positive critical transfer can be charged to critical storage.
The Gold obstruction is the possibility of repeatedly regenerating such bursts
along the same terminal material history.  That is precisely the scale-native
birth-packing problem.

## 5. Correct replacement theorem

The direct absorption route reduces to one of the following genuinely new
large-data mechanisms:

1. `SelectedGeneratorAccretiveTesting.A`: prove that selected positive critical
   transfer is not arbitrary shell transfer, but an accretively tested component
   of the original coupled packet with bounded positive variation.

2. `PositiveCriticalTransferDepletion.A`: prove that every positive critical
   transfer burst depletes a bounded original-history reserve unless it is
   stop/legal/reselection/selector drift.

3. `CriticalElementPositiveTransferRigidity.A`: assume the absorption fails,
   extract a minimal same-material terminal transfer profile, and prove that a
   nonzero profile contradicts the coupled pressure-viscosity-incompressibility
   material law or has zero retained selected action.

4. `NativeBirthChargePacking.A`: prove the birth-packing statement directly:
   every retained scale-native high-ratio birth is assigned to finite
   original-history native reserve with bounded multiplicity.

These are equivalent Gold-bearing presentations of the same remaining hard
producer.  None is supplied by raw energy, determinant-only payment, raw
bounded-test Bessel, route-energy finiteness, or the signed \(H^{1/2}\) identity
alone.

## 6. Current proof state

The derivation proves the correct native reserve identity and closes the
small-critical packet case.  For arbitrary smooth data it sharpens the live
theorem to:
\[
\boxed{
\texttt{PositiveCriticalTransferBound.A}
}
\]
namely one-sided absorption of the positive Leray-projected critical nonlinear
transfer by a finite original-data term plus a strict fraction of the native
reserve.

Until that positive-transfer theorem, or one of the equivalent accretive
testing / depletion / critical-element rigidity forms above, is proved, the
Gold route remains a reduced open proof, not a closed MPP proof.
