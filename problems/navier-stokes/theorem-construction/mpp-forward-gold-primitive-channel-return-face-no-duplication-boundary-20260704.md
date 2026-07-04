---
theorem_id: forward-gold-primitive-channel-return-face-no-duplication-boundary-20260704
status: strict-reduction-and-checked-obstruction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-critical-height / primitive return face multiplicity
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - PrimitiveChannelSelectedReturnNoDuplication.A
  - PrimitiveChannelReturnFaceFiniteMultiplicity.A
role: >-
  Sharpens the no-duplication input in the selected-face negative-return budget.
  Finite overlap of record witnesses or dyadic bookkeeping is not enough. The
  return measure of the selector-owned primitive channel must itself be
  restricted by a stopped same-face partition or bounded-multiplicity face map,
  with duplicate claims paid, stopped, legal, or exited before counting.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-channel-selected-face-negative-return-budget-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-face-primitive-channel-predictable-trace-custody-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-signed-channel-localization-proof-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-face-partner-return-localization-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-net-work-admission-proof-pass-20260703.md
completion_truth: >-
  This note does not prove PrimitiveChannelSelectedReturnNoDuplication.A. It
  proves the formal finite-multiplicity implication and records the obstruction:
  finite-overlap record witnesses, disjoint record intervals, or chamber return
  do not prevent one primitive negative-return event from being claimed by many
  selected faces unless the face map is finite-multiplicity in the return
  measure itself.
---

# Primitive-channel return-face no-duplication boundary

## 1. Physical object

Fix the selector-owned primitive channel of one retained Navier-Stokes record
edge. Its negative return measure

\[
d\mu_{\kappa}^{ret,-}:=[Y_{\kappa,S}]_-\,d\sigma dt
\tag{RND.1}
\]

is a physical event: the same packet returns, reorients, loses sign, or pays
pressure/transport/frame/viscous service on that primitive channel.

The selected-face budget may spend this event only on the selected faces that
actually contain it before readout. It may not spend the same physical return
once for every later positive record face that wants a payment.

## 2. The missing finite-multiplicity theorem

The no-duplication input becomes:

\[
\texttt{PrimitiveChannelReturnFaceFiniteMultiplicity.A}.
\tag{RND.2}
\]

Statement. For the pre-readout traced faces \(F_e\) of the selector-owned
primitive channels, there is a fixed \(M_N<\infty\) such that

\[
\sum_e \mathbf 1_{F_e}\,d\mu_{\kappa_e}^{ret,-}
\le
M_N\,d\mu^{ret,-}
+dPaid+dLegal+dStop+dExit .
\tag{RND.3}
\]

Equivalently, the selected return faces form a stopped disjoint or
finite-overlap partition of the primitive return measure, and every overlap
excess is routed before it is counted.

Then

\[
\texttt{PrimitiveChannelReturnFaceFiniteMultiplicity.A}
\Longrightarrow
\texttt{PrimitiveChannelSelectedReturnNoDuplication.A}.
\tag{RND.4}
\]

This is the exact physical content of no-duplication: one negative return event
has one same-fluid address, up to bounded finite overlap and paid overlap
residue.

## 3. Formal proof

Assume `(RND.3)'. Integrating gives

\[
\sum_e\int_{F_e}d\mu_{\kappa_e}^{ret,-}
\le
M_N\int d\mu^{ret,-}
+Paid+Legal+Stop+Exit .
\tag{RND.5}
\]

This is exactly the no-duplication clause needed by the selected-face
negative-return budget reduction. Combined with the stopped original-history
return/BV theorem, `(RND.5)' turns the physical return measure into a finite
selected-face return budget.

The proof is measure-theoretic. The mathematical wall is proving `(RND.3)' for
the actual pre-readout primitive faces from the original Navier-Stokes history.

## 4. Checked obstructions

### 4.1 Record-window finite overlap is the wrong measure

The signed-height record-net work pass constructs finite-overlap parent-known
witness windows for positive record work. That is support. It does not by
itself say that the negative return measure \(d\mu_{\kappa}^{ret,-}\) sees the
same finite overlap.

The return measure can concentrate on the overlaps or on reset/partner pieces
that the positive witness finite-overlap cover did not control.

### 4.2 Disjoint records can reuse one return

Disjoint record intervals in the signed-height height variable do not prevent a
single stopped primitive return event from serving several selected faces if the
faces are nested in selector label, chart, or primitive-channel coordinates.
Disjointness in record time is not disjointness in primitive return address.

### 4.3 Post-readout face maps create unbounded multiplicity

If the face map \(e\mapsto F_e\) is chosen after positive readout, the same
negative lobe can be inserted into every selected face that needs a return:

\[
\sum_{e=1}^N \mathbf 1_{F_e}(z)=N
\tag{RND.6}
\]

at one return event \(z\). The chamber return is finite, but the selected-face
charge is \(N\) times the physical return. This is double spending of one
same-fluid event.

## 5. Current proof truth

The repo has proof-grade formal localization after a same-face channel and
budget are assumed. It has finite-overlap support for record witnesses and
stopped-selector transactions in their own coordinates.

It does not yet prove `PrimitiveChannelReturnFaceFiniteMultiplicity.A` for the
primitive negative-return measure. Therefore
`PrimitiveChannelSelectedReturnNoDuplication.A` remains open.

The next physical burden is narrow: construct the selected primitive return
face map before readout and prove that a negative return event of the same
channel is assigned to selected faces with bounded multiplicity, or that every
extra claim is already paid, legal, stopped, or exited.
