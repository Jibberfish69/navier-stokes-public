---
theorem_id: forward-gold-record-upcrossing-same-fluid-charge-audit-20260703
status: conditional-branch-reduction-charge-not-installed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-no-free-acceleration-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md
completion_truth: >-
  This note audits the existing no-free-upcrossing, Schur, superheat, and
  high-weight escape surfaces against the new signed-height record-upcrossing
  criterion. It does not prove Gold closure. It identifies a branch-local charge
  that is already conditional, and it states the exact branch-exhaustion bridge
  needed to turn thin record-spike critical service into the signed-height
  peak-control theorem.
---

# Record-upcrossing same-fluid charge audit

## 1. The target after consolidation

```yaml
physical_roof: original smooth datum -> same-fluid NS material history -> signed critical-height readout -> continuation
proof_mode: gold_forward
target_object: SignedCriticalHeightSignPersistenceOrPeakBound.A
propagated_quantity: record upcrossings of H(t) = (1/2)||Lambda^{1/2}u(t)||_2^2
primitive_equation_or_structure: dH/dt = P(t) - nu D(t)
support_surfaces: no-free-upcrossing, high-weight escape, affine Schur, superheat, coupled storage
closure_standard: every high record upcrossing has scale-aware thickness or pays a finite same-fluid charge
proxy_risk: replacing signed-height records by selected L1, atom counts, child sums, or storage labels
result_class: conditional reduction and obstruction audit
next_hinge: prove RecordLocalCriticalServiceChargeExhaustion.A from the original NS packet
```

The signed-height record criterion says that Gold closes if every high record
upcrossing of

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2
\]

either has time thickness of order \(H^{-2}\), or pays a same-fluid charge whose
total mass is bounded from the original datum.

So the question for existing Gold surfaces is precise: do they already produce
that charge for thin signed-height record events?

The direct scalar test now gives one unavoidable lower edge. A record upcrossing
from \(\lambda\) to \(2\lambda\) forces

\[
\int_a^b D(t)\,dt\ge c\lambda^{1/2}.
\]

That is same-fluid critical service, but it is not an original-data finite
budget. The live bridge must convert this forced service into one of the finite
charges below.

## 2. What existing surfaces already give

### High-weight tube escape

`NoFreeHighWeightTubeEscapeCharge.A` proves a real conditional charge. If a
selected reset or escape quotient is represented by a parent-announced
first-exit derivative interval and the witness tubes have bounded overlap, then

\[
\sum_e\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt
\le
C_N\int_{\operatorname{Hist}(P)}
w\bigl(
|\partial_\sigma Z|^2
+|\operatorname{turnstile}_\sigma|^2
+|\operatorname{exchange}_\sigma|^2
+|\operatorname{covector}_\sigma|^2
\bigr)
+R_{legal}(P).
\tag{RCA.1}
\]

This is the right kind of same-fluid charge: it is built from the parent
derivative/current terms of the original packet, not from a child count.

Its limitation is also exact. The note is conditional on stopped first-exit
derivative representation and bounded overlap. It does not prove that every thin
signed-height record upcrossing localizes into this branch.

### Primitive PLS no-free-upcrossing

The complete-frame and laminar ancestry test proves local orientation and
same-history structure:

\[
\text{positive primitive pump has a same-packet compression partner.}
\]

It also proves that surviving high-ratio visits can be placed on a laminar
same-history ancestry forest.

That is not enough. The half-tail model has finite raw mass while

\[
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty .
\tag{RCA.2}
\]

So local payer assignment is not a finite charge. This is the exact warning for
the signed-height record problem: assigning a payer to every thin record spike
does not prove peak control unless the assigned charge has a finite original-data
budget.

### Affine Schur residence

The affine Schur surface gives a sharp same-parent storage coordinate:

\[
\mathfrak S_J(t)
=
\int \langle m_J,\mathsf G_J^{-1}m_J\rangle\,dx .
\tag{RCA.3}
\]

It also identifies the missing sign. The original packet supplies a signed
Schur identity, but a first-contact fresh direction can be orthogonal to the
current Schur record. The usable branch is therefore a residence/thickness gate:
retained production must become Schur-visible, while Schur-thin production must
be fresh onset, route motion, negative return, viscous time-thickness, legal,
stop, or endpoint material.

This is exactly shaped like the record-upcrossing criterion. It is not yet the
criterion, because the Schur note leaves the retained-production gate open.

### Superheat acceleration

The superheat note shows that the shell donor identity gives signed attachment,
not finite rectified motion. In intrinsic material-rate time, heat damping is no
longer the stopper. Recirculation is controlled only by an acceleration-weighted
interface-variation clock or by a bounded-below same-material storage.

Thus superheat is a possible same-fluid charge source only after one of those
two finite-budget objects is proved. It currently supplies an obstruction to
cheap peak-thickness arguments, not a completed charge.

## 3. Conditional bridge into the record criterion

The existing route pieces imply the record criterion under the following bridge.
The branch-exhaustion reduction isolates this as
`RecordLocalCriticalServiceChargeExhaustion.A`.

**Record localization-to-charge bridge.** For every high record upcrossing
\([a,b]\) of \(H(t)\), if the thickness alternative fails, then the same-fluid
packet admits one of these finite-budget charge landings on \([a,b]\):

1. a parent-announced high-weight tube escape charge of the form `(RCA.1)';
2. Schur-visible retained residence paid by a bounded-below affine Schur
   storage;
3. Schur-thin nonretained production paid by fresh onset, route motion,
   negative return, viscosity, legal, stop, or endpoint material;
4. superheat acceleration paid by a finite acceleration clock or a bounded-below
   same-material storage.

If those alternatives cover every thin record upcrossing and their charge
measures have finite total mass from the original datum, then the
record-upcrossing criterion gives

\[
\sup_{t<T}H(t)<\infty .
\tag{RCA.4}
\]

This is a strict reduction because `(RCA.4)' follows from the already installed
record criterion once the bridge supplies the charge.

## 4. Why this is still open

The bridge is not installed in the current repo.

The no-free high-weight tube theorem is conditional on a stopped first-exit
representation. The primitive PLS route proves local orientation and laminarity,
but the half-tail countertest shows that local orientation is not a finite
weighted reserve. The affine Schur route gives the correct storage coordinate
and the correct residence/thickness language, but the retained-production gate
is the missing theorem. The superheat route identifies the correct acceleration
clock or storage, but does not prove it finite.

Therefore the existing repo does not yet produce the finite same-fluid charge
\({\mathcal C}\) needed by the signed-height record criterion. It does identify
where that charge has to come from.

## 5. Next theorem object

The next noncircular Gold theorem is the branch-exhaustion form of:

\[
\texttt{RecordUpcrossingSameFluidCharge.A}
\]

For each high signed critical-height record upcrossing, prove that failure of
scale-aware thickness forces one of the finite-budget same-fluid charge landings
above.

This theorem is smaller than the full MPP because the record criterion has
already proved that such a charge implies peak control. It is still not a
support note: it is the exact PDE bridge from the consolidated physical story to
the signed-height Gold target.

The sharp subtheorem now named by the branch-exhaustion reduction is:

\[
\texttt{RecordLocalCriticalServiceChargeExhaustion.A}.
\]

It says that the scalar forced-service lower bound for a thin record spike must
land nonanticipatorily in high-weight reset, affine Schur, superheat
residence/acceleration, or another finite same-fluid branch charge. Any forced
critical service that lands in none of those branches is the remaining
obstruction, not progress.

The witness-cover reduction adds the upstream source condition: the record spike
must produce parent-known positive-production witnesses before those branch
charges are allowed to count it. Aggregate \(D\)-service alone does not supply
that admission map.
