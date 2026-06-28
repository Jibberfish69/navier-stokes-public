---
theorem_id: forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628
status: schur-residence-thickness-gate-open
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
  gives the affine Schur identity and exposes the exact missing sign. The
  pointwise angle version of that sign is too strong: fresh orthogonal
  production can be invisible at first contact. The sharper retained-production
  form is a Schur residence/thickness gate. Schur-thick retained production is
  paid by the Schur pairing G_J^{-1}m_J against p_J; Schur-thin production must
  be fresh onset, route motion, negative return, viscous/time-thickness loss,
  legal/stop, or same-witness endpoint-face material. The remaining theorem is
  to prove this retention gate and then the finite original-data control of the
  Schur record, negative return, and inverse-Gram route variation.
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

## 5. What is required from this hinge to close smoothness

From the current Gold frontier, the smoothness proof needs exactly this chain.

1. Retained selected production is first admitted as a bounded same-carrier
   original-packet read, before scalar selected readout.
2. Parent-subtracted fresh directions Bessel-pack; exact inherited reuse is
   subtracted; changed inherited reuse is paid by first-exit motion, route
   variation, stop, or legal loss.
3. The affine Schur record `(3)` is the storage for retained same-material
   production after the fresh and moving pieces have been removed.
4. Retained positive production must obey a Schur residence/thickness gate:
   either it is visible to the current Schur gradient, or it is not retained
   reuse and must be charged as fresh onset, motion, negative return, viscous
   time-thickness, stop/legal, or same-witness endpoint-face material.
5. Once that gate is proved, `(7)` supplies the rectified accretive lower bound,
   `(6)` gives no-free-upcrossing, `(8)` gives finite selected affine
   production, and the already installed selected-action/full-clock/\(H^s\)
   continuation relay gives smooth continuation.

Thus the live producer is no longer "find some finite reserve."  It is the
retention gate that turns a positive selected production into either Schur-
visible same-material residence or a paid nonretained branch.

## 6. Residence pressure test: the pointwise angle theorem is false

The hard-block countermodel shows that a pointwise angle theorem cannot be the
right statement.  At a single instant one can have \(m=e_1\), \(G=I\), and
\(p=e_2\), so

\[
\langle G^{-1}m,p\rangle=0
\tag{10}
\]

while the selected positive detector in the \(e_2\) direction is nonzero.
That kills the instantaneous form of `(7)`.

But retained same-direction production has more structure than a single
instant.  On a frozen parent carrier and after the already paid return, motion,
stop, and legal pieces are removed, the component in a retained direction \(e\)
obeys

\[
h_e:=\langle G_J^{-1/2}m_J,e\rangle,
\qquad
q_e:=\langle G_J^{-1/2}p_J,e\rangle,
\qquad
D_t h_e=q_e+\hbox{paid}.
\tag{11}
\]

So an orthogonal direction that keeps producing on the same carrier writes
itself into the Schur record.  It can be invisible at first contact, but it
cannot be both retained, same-direction, and permanently absent from \(m_J\)
unless the production is repeatedly reset, moved, returned, stopped, legally
lost, or squeezed into a thin impulse before the record has residence time.

This gives the correct split.  Define the Schur visibility ratio

\[
\chi_J
:=
{\langle G_J^{-1}m_J,p_J\rangle_+
\over
H_w\|c_{\theta,J}^{+}\|_2^2}
\tag{12}
\]

on events where the denominator is nonzero.  For a fixed \(\eta>0\), the
Schur-thick retained branch is

\[
\chi_J\ge\eta .
\tag{13}
\]

On that branch the desired accretive lower bound is immediate, with an
\(\eta^{-1}\) loss:

\[
H_w\|c_{\theta,J}^{+}\|_2^2
\le
\eta^{-1}\langle G_J^{-1}m_J,p_J\rangle_+ .
\tag{14}
\]

The only possible unpaid branch is therefore the Schur-thin retained branch

\[
\chi_J<\eta .
\tag{15}
\]

The live theorem is exactly the admission rule for `(15)`:

\[
\chi_J<\eta
\Longrightarrow
J\in Fresh_P\cup Motion_P\cup Return_P\cup ViscThick_P
\cup Legal_P\cup Stop_P\cup CM_P^{end}.
\tag{16}
\]

Here \(Fresh_P\) means first directional onset paid by parent-subtracted
Bessel novelty; \(Motion_P\) means parent-announced frame/route change;
\(Return_P\) means negative affine return \(dA_J^-\); \(ViscThick_P\) means the
source was too impulse-like to be retained without paying viscous or temporal
thickness; and \(CM_P^{end}\) is the same-witness endpoint-face branch.

Paid line:

\[
\text{Schur-thick retained production `(13)'}
\Longrightarrow
\text{accretive payment `(14)'}
\Longrightarrow
\text{no-free-upcrossing through `(5)'--`(8)'.}
\tag{17}
\]

Unproved line:

\[
\text{prove the Schur-thin admission rule `(16)' from the same
pressure--viscosity--incompressibility--velocity packet.}
\tag{18}
\]

Thomas-dialogue verdict:

- Is this actually the live object? Yes.  It attacks the sign/accretivity gap
  after the affine Schur identity, not the already installed no-free-zoom
  support packet.
- Did this prove smoothness? No.  It rejects the false pointwise angle theorem
  and isolates the exact retained-production gate still needed for Gold.
- What does it mean physically? A newly orthogonal source can be invisible to
  the old Schur record, but if it remains on the same material carrier it
  becomes part of that record.  If it never gains residence, it is an onset,
  motion, return, viscous-thickness, stop/legal, or endpoint-face event rather
  than retained reuse.
- Is this the full coupled packet or a scalar proxy? Full packet only if
  \(m_J,G_J,p_J,r_J,e_J,K_J\), viscosity, pressure, incompressibility, carrier
  motion, selector loss, and endpoint faces are all kept before selected scalar
  readout.
- Is this already handled in the repo? The hard-block note already proves that
  the instantaneous angle claim is false.  The Schur-thin admission rule `(16)`
  is not installed.
- Did this create another alias? No.  It demotes "positive angle" as too strong
  and "finite reserve" as too vague.  The current hinge is the concrete
  retention gate `(16)`.

Partial, not Gold closed. The next producer is the Schur-thin admission rule
`(16)`, or else the same-witness endpoint-face consumption of its failure.
