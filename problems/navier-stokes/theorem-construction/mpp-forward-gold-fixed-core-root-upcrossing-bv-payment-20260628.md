---
theorem_id: forward-gold-fixed-core-root-upcrossing-bv-payment-20260628
status: fixed-core-upcrossing-paid-relative-to-signed-return-bv-original-data-storage-still-open
created_at: 2026-06-28
problem: navier-stokes
route: forward-gold same-material stopped routed participation current
refines:
  - StoppedPredictableActiveWeightCompensator.A
  - RepeatedCoreRecordReturnStorageBound.A
  - StoppedNegativeScaleReturnCharge.A
  - StoppedSelectorPredictableWeight.A
depends_on:
  - StoppedPrimitivePLSSignedScalePotentialLift.A
  - StoppedPotentialRecordAverageBound.A
  - StoppedNegativeScaleReturnCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-predictable-weight-first-exit-split-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-active-weight-compensator-from-scale-memory-storage-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-predictable-root-weight-snell-compensator-realization-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-record-return-branch-routing-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fixed-annulus-bounded-record-controls-flux-variation-20260625.md
completion_truth: partial-not-mpp-closed
effect: >-
  Proves the fixed-core/root-upcrossing branch of the predictable-weight
  Carleson pivot once the repeated core is lifted to a signed same-material
  stress-work potential with finite record and negative-return variation.  This
  removes fixed-core upcrossing as an independent selector obstruction.  The
  remaining producer is the original-data theorem that the same material
  pressure-viscosity-incompressibility-velocity packet supplies finite
  negative return/BV storage without importing the downstream full clock.
---

# Fixed-core root-upcrossing BV payment

The first-exit branch is paid by a parent-announced derivative interval.  The
fixed-core branch is different: the selector keeps reading the same material
core.  There is no new interval average to which Cauchy--Schwarz can be applied.
The only honest payment is the signed record of the same Cauchy stress-work
channel.

Physically, this is the reused-squeeze case.  A larger selected read on the same
material core is not new material supply.  It is either positive growth of the
same stress-work record, or the record had to return/reset and then be read
again.

## 1. Fixed-core branch

Fix a stopped parent \(P\).  Let \(\mathfrak A(P)\) be the laminar family of
fixed material cores that survive after first-exit/reset pieces have been
removed.  For \(\mathcal A\in\mathfrak A(P)\), write \(dU_{\mathcal A}\) for the
fixed-core part of the active-weight upcrossing/current measure:

\[
dU_{\mathcal A}
\simeq
\sum_{e\subset\mathcal A}
dA_{e}^{wt}
+
\sum_{e\subset\mathcal A}
H_{e^-}\|B_e^{rep}\|_{\mathcal H_{\rm lift}}^2\,dt .
\tag{1}
\]

Here \(B_e^{rep}\) is the parent-predictable repeated-core component after the
fresh orthogonal piece and the first-exit reset piece have been separated.

The signed scale-potential lift asks for a parent-known same-material potential
\(\Psi_{\mathcal A}\) such that

\[
dU_{\mathcal A}
\le
C_N(d\Psi_{\mathcal A})_+
+dR_{\mathcal A}^{legal}+dStop_{\mathcal A}.
\tag{2}
\]

The potential is built from the original transported stress-work packet.  In a
fixed material chart \(X(a,t)\), with

\[
v=u\circ X,\qquad
q=p\circ X,\qquad
A=(D_aX)^{-1},\qquad
\mathcal T=-qI+2\nu S(u)\circ X,
\tag{3}
\]

the model fixed-core flux coordinate is

\[
F_{\psi_{\mathcal A}}(t)
=
\int
v_i\mathcal T_{ij}A_{\ell j}\partial_{a_\ell}\psi_{\mathcal A}\,da .
\tag{4}
\]

The primitive \(\Psi_{\mathcal A}\) is the stopped signed action record obtained
from this same channel, after parent-predictable inherited transport and legal
collar/reselection errors are removed.  No pressure-only or velocity-only
record is allowed; \((3)\)--\((4)\) keeps the full coupled packet together.

## 2. Scalar BV payment

The proof after `(2)` is elementary and complete.  For every finite stopped
subinterval \(I\) of the core order,

\[
(d\Psi_{\mathcal A})_+(I)
=
\Psi_{\mathcal A}(I_+)-\Psi_{\mathcal A}(I_-)
+(d\Psi_{\mathcal A})_-(I).
\tag{5}
\]

Taking the positive record envelope gives

\[
(d\Psi_{\mathcal A})_+(I)
\le
\operatorname{Rec}_{I}(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A};I).
\tag{6}
\]

Combining `(2)` and `(6)`,

\[
U_{\mathcal A}(I)
\le
C_N
\left(
\operatorname{Rec}_{I}(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A};I)
\right)
+R_{\mathcal A}^{legal}+Stop_{\mathcal A}.
\tag{7}
\]

Thus fixed-core upcrossing is not an independent selector phenomenon.  It is
positive variation of the same material record, and positive variation equals
record growth plus negative return.

## 3. Laminar summation

The fixed cores are stopped laminar.  Let \(d\mu_P(\mathcal A)\) be the parent
ancestry measure generated by the stopped decomposition.  Summing `(7)` gives

\[
U_{\rm fixed}(P)
\le
C_N
\int_{\mathfrak A(P)}
\left(
\operatorname{Rec}_\infty(\Psi_{\mathcal A})
+V_-^{return}(\Psi_{\mathcal A})
\right)d\mu_P(\mathcal A)
+R_{\rm legal}(P)+Stop(P).
\tag{8}
\]

Therefore the fixed-core branch is paid by the two record/return estimates

\[
\int_{\mathfrak A(P)}
\operatorname{Rec}_\infty(\Psi_{\mathcal A})\,d\mu_P(\mathcal A)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P),
\tag{9}
\]

and

\[
\int_{\mathfrak A(P)}
V_-^{return}(\Psi_{\mathcal A})\,d\mu_P(\mathcal A)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{10}
\]

With `(9)`--`(10)`, `(8)` becomes

\[
U_{\rm fixed}(P)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P).
\tag{11}
\]

This is exactly the fixed-core/root-upcrossing contribution needed in
`StoppedPredictableActiveWeightCompensator.A`.

## 4. What is proved here

This note proves:

\[
\text{signed potential lift}
+
\text{finite record}
+
\text{finite negative return}
\Longrightarrow
\text{fixed-core active-weight upcrossing Carleson}.
\tag{12}
\]

Together with the first-exit/reset branch, the predictable-weight pivot becomes

\[
\text{first-exit derivative Cauchy}
+
\text{fixed-core record/return BV}
\Longrightarrow
\text{stopped selector predictable-weight Carleson}.
\tag{13}
\]

The remaining producer is not a projection theorem and not a Bessel theorem.
It is the original-data estimate `(10)` for the negative return of the same
coupled material stress-work packet.

## 5. Original-packet boundary

The fixed-annulus lemma already proves the local identity needed to identify the
channel: differentiating `(4)` only produces the same transported velocity,
pressure, coefficient, collar, and viscous-service records.  Thus fixed-core
oscillation is not a detached boundary signal.

The missing original-data step is stronger:

\[
\int_{\mathfrak A(P)}
V_-^{return}(\Psi_{\mathcal A})\,d\mu_P(\mathcal A)
\le
C_N(u_0)\mathcal R(P)+R_{\rm legal}(P)+Stop(P)
\tag{14}
\]

without assuming the full material record/service clock whose finiteness would
already imply continuation.  This is the fixed-core face of the bounded-below
same-material service storage target.

So the branch state is now sharp: fixed-core/root-upcrossing is paid once
original finite return BV is paid.

The MPP is not closed by this branch statement.  The open theorem is the noncircular derivation
of `(14)` from the original pressure-viscosity-incompressibility-velocity packet.
