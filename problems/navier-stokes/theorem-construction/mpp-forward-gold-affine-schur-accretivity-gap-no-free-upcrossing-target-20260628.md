---
theorem_id: forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628
status: sharp-storage-target-open-accretive-lower-bound-missing
created: 2026-06-28
problem: navier-stokes
route: forward-gold affine Schur scale-memory record / original packet storage
logical_landing_node: BoundedBelowSameMaterialServiceStorage.A
refines:
  - AffineSchurFiniteStateNoFreeUpcrossing.A
  - OriginalParticipationStorageCoercivity.A
  - BoundedBelowSameMaterialServiceStorage.A
  - PositiveCriticalTransferBound.A
  - NativeBirthChargePacking.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-participation-storage-direct-derivation-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-finite-state-no-free-upcrossing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-below-same-material-service-storage-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-service-storage-equivalence-local-storage-no-go-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-martingale-under-service-storage-adjudication-20260628.md
completion_truth: partial-not-gold-closed
effect: >-
  Records the corrected affine Schur scale-memory state. The original packet
  gives the affine Schur identity and exposes the exact missing sign: selected
  positive production must be accretive against the Schur gradient
  G_J^{-1}m_J. Without that lower bound, the packet supplies a signed pairing
  but not rectified no-free-upcrossing payment. The remaining theorem is finite
  original-data control of the Schur record, negative return, and inverse-Gram
  route variation.
---

# Affine Schur accretivity gap for no-free-upcrossing

Status: sharp target, not Gold closure.

The strongest noncircular storage found so far is the affine Schur scale-memory
record. It identifies the exact missing sign in the original packet derivation.

For each fresh scale interval \(J\), define

\[
m_J(t,x)=\int_J (1,s)\,\widetilde Z^{new}(s,t,x)\,ds,
\tag{1}
\]

and the inverse-weight Gram matrix

\[
\mathsf G_J(t)=\int_J w(s,t)^{-1}(1,s)^T(1,s)\,ds .
\tag{2}
\]

The storage is

\[
\mathfrak S_J(t)=
\int \langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{3}
\]

This is the right coordinate because the selected critical weight is exactly the
inverse-Gram scale geometry of the affine stopped packet.

## 1. What the original packet gives

The original pressure-viscosity-incompressibility-velocity packet gives the
exact evolution

\[
D_t m_J=p_J-r_J+e_J,
\qquad
D_t\mathsf G_J=\mathsf K_J ,
\tag{4}
\]

where \(p_J\) is positive fresh production, \(r_J\) is return/reset, \(e_J\) is
paid or legal error, and \(\mathsf K_J\) is route-geometry motion from the same
coupled material packet.

Differentiating (3) gives

\[
D_t\mathfrak S_J
=
2\langle \mathsf G_J^{-1}m_J,p_J-r_J+e_J\rangle
-
\langle \mathsf G_J^{-1}m_J,\mathsf K_J\mathsf G_J^{-1}m_J\rangle .
\tag{5}
\]

This is an identity. It is not yet a no-free-upcrossing estimate.

## 2. The missing accretive sign

The desired structural payment

\[
dA_J^+
\lesssim
d\mathfrak S_J^+
+dA_J^-
+\mathfrak S_J\,d\mathcal K_J
+dR_{legal}+dStop
\tag{6}
\]

follows only after the selected positive production is accretive against the
Schur gradient:

\[
H_w\|c_{\theta,J}^+\|_2^2
\lesssim
\langle \mathsf G_J^{-1}m_J,p_J\rangle_+ .
\tag{7}
\]

That is the missing line. The original packet gives the signed pairing in (5).
It does not force (7). A fresh production direction can be orthogonal to the
current Schur record, or it can enter through a new affine direction with tiny
raw mass and large inverse-Gram weight. The raw energy sees the raw mass; the
selected clock sees the inverse-Gram weight.

Thus the affine Schur identity exposes the exact place where scale-normalized
selection can still outrun raw packet energy.

## 3. The sharp finite reserve theorem

Gold closes from the affine Schur record exactly under the finite reserve bound

\[
\sum_J
\left(
\sup_t\mathfrak S_J
+
\int dA_J^-
+
\int \mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop .
\tag{8}
\]

Here the three terms are:

1. bounded affine Schur scale-memory record;
2. rectified negative return/reset of the same affine potential;
3. inverse-Gram route-geometry variation.

Under (8), the formal no-free-upcrossing inequality (6) gives finite selected
affine production, then the installed selected-action/full-clock/\(H^s\)
continuation relay applies.

## 4. Proof truth

The affine Schur construction does not prove smoothness. It proves the exact
identity and isolates the missing coercive sign.

The remaining original-packet theorem is

\[
\sum_J
\left(
\sup_t\mathfrak S_J
+
\int dA_J^-
+
\int \mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop ,
\tag{9}
\]

or equivalently, derive the rectified accretive lower bound (7) and the finite
negative-return / inverse-Gram-variation storage from the original
pressure-viscosity-incompressibility-velocity packet.

Partial, not Gold closed. The packet supplies the affine Schur identity; it does
not yet supply the rectified accretive lower bound.
