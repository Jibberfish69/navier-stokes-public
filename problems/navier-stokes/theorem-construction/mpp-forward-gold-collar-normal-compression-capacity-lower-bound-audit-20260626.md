---
theorem_id: forward-gold-collar-normal-compression-capacity-lower-bound-audit-20260626
status: lower-bound-already-branch-local-upper-root-reserve-still-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
audits_hinge:
  - CollarNormalCompressionCapacityLowerBound.A
  - ShrinkingCoreNoEscapeCapacity.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - RepeatedCorePositiveVariationRootBound.A
refined_hinge:
  - SelectedCompressionRootReserve.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-scale-invariant-noescape-after-null-service-routing-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-pressure-probe-demotion-material-service-routing-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-complete-frame-tracefree-primitive-pls-payment-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
---

# Collar-normal compression capacity lower-bound audit

## 1. What the sidecar hinge already proves

After pressure-visible/null routing, each selected shrinking core satisfies

\[
A(Q)
\le
C\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+R_{\rm legal}(Q)
\Bigr).
\tag{CN.1}
\]

Therefore, on a retained core with normalized selected action,

\[
A(Q)\simeq 1,
\]

one already gets the branch-local lower bound

\[
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+R_{\rm legal}(Q)
\ge c_0 .
\tag{CN.2}
\]

This is not the missing theorem.  It is the immediate consequence of the
pressure-visible/null split and complete-frame trace-free routing.

## 2. What is actually missing

To rule out an infinite shrinking-core half-tail, the proof needs an upper
root reserve:

\[
\sum_{Q\in\mathcal T}
\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
\Bigr)
\le
C_N(u_0)+R_{\rm legal}.
\tag{CN.3}
\]

Together, `(CN.2)` and `(CN.3)` exclude infinitely many selected unit cores.

But `(CN.3)` is not supplied by a lower-bound theorem.  It is exactly the
selected root-reserve theorem in compression coordinates.

## 3. Why raw capacity still cannot supply it

For a shrinking heat-scale affine core of radius \(r\), raw pressure-Hodge or
collar capacity scales like

\[
\operatorname{Cap}_{raw}(Q_r)\lesssim r.
\tag{CN.4}
\]

The selected normalized action is scale invariant:

\[
A(Q_r)\simeq 1.
\tag{CN.5}
\]

Thus raw capacity can still be summable on a dyadic shrinking chain while the
selected action diverges.

The collar-normal and covector terms in `(CN.1)` are stronger than raw capacity
only if their total positive variation is controlled from the original material
history.  That is the missing selected compression reserve, not a local lower
bound.

## 4. Geometric meaning

The packet-normal term is material collar compression:

\[
\mathcal S_{\rm normal}
\sim
[-\,n\cdot Sn]_+ .
\tag{CN.6}
\]

The covector term is wave-covector compression:

\[
\mathcal S_{\rm covector}
\sim
[-\,\widehat\xi\cdot S\widehat\xi]_+ .
\tag{CN.7}
\]

Along one material ancestry line, these are positive variations of transported
directions in the Cauchy-Green / pressure-Hodge-frame / collar-normal record.
Across shrinking cores, they are the same selected compression currency
distributed over a laminar material tree.

So the reusable theorem is:

\[
\boxed{
\texttt{SelectedCompressionRootReserve.A}
}
\]

Statement:

\[
\sum_{Q\in\mathcal T}
\Bigl(
\langle U_Q,\mathsf S_QU_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
\Bigr)
\le
C_N(u_0)+R_{\rm legal}.
\tag{CN.8}
\]

This single root reserve includes the reused-core branch and the shrinking-core
branch after pressure-visible/null routing.

## 5. Result

`CollarNormalCompressionCapacityLowerBound.A` is not wrong, but it is not the
closing theorem.  Its branch-local lower bound is already available from
`(CN.1)`.

The unsolved Gold theorem is the finite original-history root reserve for the
selected compression service:

\[
\texttt{SelectedCompressionRootReserve.A}.
\tag{CN.9}
\]

Equivalently, prove either branch form:

\[
\texttt{RepeatedCorePositiveVariationRootBound.A}
\]

or

\[
\texttt{ScaleInvariantSelectedCapacityNoEscape.A},
\]

but each must be understood as an upper root-reserve theorem, not merely as a
per-core lower bound.
