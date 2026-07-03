---
theorem_id: forward-gold-record-local-positive-production-witness-cover-reduction-20260703
status: strict-reduction-witness-cover-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordLocalCriticalServiceChargeExhaustion.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-selector-predictable-weight-first-exit-split-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-residence-thickness-gate-attempt-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
completion_truth: >-
  This note proves a strict reduction, not Gold closure. It shows that the scalar
  critical-service lower bound is too coarse to choose a finite charge branch.
  The positive-production witness cover is now identified as the signed-height
  record-local projection of the before-clipping parent active-density/full-
  exchange source wall. That parent source wall remains open from arbitrary
  original data.
---

# Record-local positive-production witness cover reduction

## 1. Physical object

There is one smooth Navier-Stokes evolution and one signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\qquad
{dH\over dt}=P(t)-\nu D(t),
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2 .
\tag{PWC.1}
\]

Let \([a,b]\) be a record upcrossing from \(\lambda\) to \(2\lambda\). Then

\[
\int_a^b P_+(t)\,dt\ge\lambda
\tag{PWC.2}
\]

and the scalar product estimate also gives

\[
\int_a^bD(t)\,dt\ge c\lambda^{1/2}.
\tag{PWC.3}
\]

The proof must localize `(PWC.2)', not only `(PWC.3)'. The term \(D(t)\) says
that critical-scale service occurred somewhere in the same velocity field. It
does not by itself name a parent interval, selected direction, Schur current,
first-exit edge, material-rate ratio, or stopped route.

So `(PWC.3)' is a real physical lower edge, but it is not yet a lawful branch
charge.

## 2. The missing cover theorem

The branch-exhaustion theorem becomes noncircular only after this producer:

\[
\texttt{RecordLocalPositiveProductionWitnessCover.A}.
\]

For every thin high signed-height record upcrossing \([a,b]\), construct from the
original same-fluid packet a finite-overlap family of witnesses
\({\mathcal W}_{[a,b]}\) such that:

1. the witnesses are nonanticipatory: their parent interval, material carrier,
   selected direction, and charge coordinate are declared before the child
   positive readout being charged;
2. the witnesses capture a fixed part of the positive production:

   \[
   \sum_{W\in{\mathcal W}_{[a,b]}}\int_{I_W}p_W^+(t)\,dt
   \ge c\lambda - Legal([a,b])-Stop([a,b]);
   \tag{PWC.4}
   \]

3. each witness is classified into one of the physical branches:

   \[
   \begin{array}{ll}
   \text{first-exit/reset} & \text{parent-announced derivative interval,} \\
   \text{Schur-thick retained} & \text{visible same-carrier Schur residence,} \\
   \text{Schur-thin paid} & \text{fresh onset, motion, return, viscosity, endpoint, legal, or stop,} \\
   \text{superheat} & \text{finite first ratio moment or acceleration clock,} \\
   \text{heat-thick} & \text{the time-thickness alternative of the record criterion.}
   \end{array}
   \tag{PWC.5}
   \]

4. on every non-heat-thick branch the classified witness contributes a
   unit-normalized same-fluid charge:

   \[
   \sum_{W\in{\mathcal W}_{[a,b]}\cap branch(k)}
   {\mathfrak c}_k(W)
   \ge c_*
   \tag{PWC.6}
   \]

   whenever that branch carries the fixed positive-production share.

This is an admission theorem. It says the record spike itself supplies a
parent-known physical witness before the branch ledgers are allowed to count it.

## 3. Conditional proof into branch exhaustion

Assume `RecordLocalPositiveProductionWitnessCover.A` and the finite branch
budgets for the charge coordinates used in `(PWC.5)'.

Given a thin record upcrossing, `(PWC.4)' says a fixed amount of positive
production has been captured by parent-known witnesses. If the heat-thick class
carries the fixed share, the event satisfies the thickness alternative and is
not a thin counterexample.

Otherwise a non-heat-thick class carries a fixed share. By `(PWC.6)' the event
pays a definite same-fluid charge in one of the branch coordinates. Finite
overlap lets the total charge over disjoint record upcrossings be bounded by the
original branch budget.

Thus every thin record upcrossing pays finite same-fluid charge, which is
`RecordLocalCriticalServiceChargeExhaustion.A`. The installed record criterion
then gives peak control for \(H(t)\).

## 4. Direct derivation attempt from current repo surfaces

The current repo does not yet prove the witness cover.

The high-weight reset files prove payment after a stopped first-exit derivative
interval has already been admitted. They do not prove that an arbitrary thin
signed-height record spike enters that first-exit branch.

The affine Schur files prove the identity and show how Schur-visible residence
would pay retained production. They also show the raw residence theorem fails:
an instantaneous child-selected positive burst need not be visible to the
parent Schur record.

The superheat files identify the finite residence as the first material-rate
ratio moment, or the stronger acceleration moment. They do not prove that the
positive production causing a record spike has finite ratio-tail mass from the
original datum.

The common missing operation is the same in all three cases:

\[
\text{aggregate positive record production}
\longrightarrow
\text{parent-known physical witnesses with finite overlap.}
\tag{PWC.7}
\]

Choosing the witness after observing the child output would make `(PWC.7)'
circular. It would let the proof select exactly the burst it wants to count
without proving that the same parent packet announced the carrier, direction,
time window, and charge coordinate before the burst.

## 5. Active-density source-wall unification

The unification note
`mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md`
identifies `(PWC.7)' as the record-local face of the before-clipping parent
active-density/full-exchange source wall. In that reading, the missing theorem is
not a new branch ledger. It is the event-local active-density witness theorem:
construct the parent-known source measure for the \(P_+\) that raises \(H(t)\),
with finite overlap and strict no-self-feeding storage, before child positive
clipping.

This keeps the old TFE2748B active-density/full-exchange work as support under
the signed-height restart. It becomes relevant exactly where it supplies the
parent-known witnesses for thin record upcrossings.

## 6. Result

The next Gold producer is not another scalar estimate for \(D\). It is the
nonanticipatory witness-cover theorem for the positive production \(P_+\) that
actually raises the signed critical height.

Once that cover is proved, the existing branch notes say what each witness must
pay. Until it is proved, forced critical service remains physically real but
unlocalized, and the branch charges cannot be applied to every thin record spike.
