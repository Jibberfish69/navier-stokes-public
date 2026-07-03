---
theorem_id: forward-gold-record-upcrossing-branch-exhaustion-reduction-20260703
status: strict-reduction-branch-exhaustion-open
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: RecordUpcrossingSameFluidCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-record-upcrossing-criterion-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-upcrossing-same-fluid-charge-audit-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-thin-record-upcrossing-production-obstruction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-free-high-weight-tube-escape-charge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-schur-accretivity-gap-no-free-upcrossing-target-20260628.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-moment-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-positive-production-witness-cover-reduction-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-witness-cover-active-density-source-wall-unification-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-local-active-density-witness-cover-proof-pass-20260703.md
completion_truth: >-
  This note consolidates the candidate charge branches into one strict reduction.
  It proves that Gold peak control follows if every thin signed-height record
  upcrossing is nonanticipatorily exhausted by one finite same-fluid charge branch.
  It does not prove the branch-exhaustion theorem or the missing finite budgets.
---

# Record-upcrossing branch-exhaustion reduction

## 1. Starting point

The signed-height record criterion has already reduced Gold peak control to this
physical statement:

\[
\text{every high record upcrossing of }H(t)
\text{ has thickness or pays finite same-fluid charge.}
\]

The direct scalar pass sharpened the pressure on thin record events. If
\([a,b]\) carries a record upcrossing from \(\lambda\) to \(2\lambda\), then

\[
\int_a^bD(t)\,dt\ge c\lambda^{1/2},
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2.
\tag{BER.1}
\]

So a thin record spike is not empty. It forces critical service in the same
Navier-Stokes evolution. The remaining problem is that \(\int D\) is not an
original-data finite budget.

## 2. Candidate finite charges

The repo currently exposes three usable charge families and one fallback
obstruction.

### High-weight first-exit/reset charge

When the spike is represented by stopped first-exit reset/escape intervals with
bounded overlap, the branch charge is

\[
{\mathcal C}_{esc}(P)
=
\sum_{e\in{\mathcal E}_{esc}(P)}
\int H_e(t)\|D_e^{fresh}(t)\|^2\,dt .
\tag{BER.2}
\]

The installed branch theorem bounds this by the original-history routed
derivative/current energy, plus legal terms. This is a real same-fluid charge,
but it is branch-local: it requires parent-announced first-exit representation
and bounded stopped overlap.

### Affine Schur retained-current charge

When the forced service is admitted into the full-output parent-current Schur
branch, the desired finite budget is

\[
\sum_J
\left(
\sup_t\mathfrak S_J
+\int dA_J^-
+\int \mathfrak S_J\,d\mathcal K_J
\right)
\le C_N(u_0)+R_{legal}+Stop .
\tag{BER.3}
\]

This would pay Schur-visible retained production. The Schur-thin complement must
pay fresh onset, route motion, negative return, viscosity/time-thickness, legal,
stop, or endpoint material. The identity and coordinate are installed; the
finite Schur reserve and retained-production gate remain open.

### Superheat material-rate charge

When the forced service sits in faster-than-heat recurrence, the branch charge is
the superheat residence

\[
\sum_j
\int_{\{\rho_j>\delta\}}\rho_j\,d\mu_j<\infty,
\qquad
\rho_j={\Theta_j^{mat}\over 2^{2j}}.
\tag{BER.4}
\]

The stronger no-free-acceleration route asks for

\[
\sum_j
\int_{\{\rho_j>\delta\}}\rho_j^2\,d\mu_j<\infty .
\tag{BER.5}
\]

Subheat absorption and the superheat reduction are installed. The first or
second ratio moment from the original coupled packet remains open.

### Unlocalized forced critical service

If a thin signed-height record spike forces `(BER.1)' but cannot be placed
nonanticipatorily into high-weight reset, affine Schur, superheat, or another
proved finite same-fluid charge, then the repo has isolated the actual missing
branch:

\[
\text{forced critical service with no finite original-data charge landing.}
\tag{BER.6}
\]

This is not a new target to celebrate. It is the obstruction that a proof of
`RecordUpcrossingSameFluidCharge.A` must eliminate.

## 3. Branch-exhaustion theorem

The next strict theorem is:

\[
\texttt{RecordLocalCriticalServiceChargeExhaustion.A}.
\]

For every high signed critical-height record upcrossing \([a,b]\), if the
thickness alternative fails, the forced service `(BER.1)' must admit a
nonanticipatory same-fluid localization into at least one branch charge
\({\mathcal C}^{(k)}\) such that

\[
{\mathcal C}^{(k)}([a,b])\ge c_*,
\tag{BER.7}
\]

and the total branch charge over the original history obeys

\[
\sum_k{\mathcal C}^{(k)}([0,T))\le C_N(u_0)+Paid+Legal+Stop.
\tag{BER.8}
\]

Allowed current branch charges are `(BER.2)', `(BER.3)', `(BER.4)', and
`(BER.5)', plus any new charge proved directly from the same original
Navier-Stokes packet.

The record-local witness-cover reduction sharpens the upstream producer. The
scalar lower bound `(BER.1)' is too coarse to choose one of these branches by
itself. The positive production that raises \(H(t)\) must first be extracted into
nonanticipatory parent-known witnesses, and only then may the branch charges
count it.

## 4. Conditional proof of Gold from branch exhaustion

Assume `RecordLocalCriticalServiceChargeExhaustion.A`.

Let \([a_j,b_j]\) be the dyadic record upcrossings of \(H(t)\) above a fixed high
level. If infinitely many satisfy the thickness alternative, the already proved
record criterion contradicts the finite \(L^2_tH\) budget. If infinitely many
are thin, then `(BER.7)' assigns each a definite finite-budget charge. The
record intervals are disjoint by first-passage construction, so infinitely many
thin record upcrossings contradict `(BER.8)'.

Hence only finitely many high record upcrossings occur, and

\[
\sup_{t<T}H(t)<\infty .
\]

This is a strict reduction from Gold signed-height peak control to branch
exhaustion plus branch-budget finiteness.

## 5. Current truth state

This note does not close Gold. It prevents the route from fragmenting.

The current repo has:

1. a scalar forced-service lower bound for every thin record spike;
2. a conditional high-weight reset charge;
3. an affine Schur charge shape with the retained-production gate open;
4. a superheat residence/acceleration charge shape with the ratio moment open;
5. a strict upstream reduction showing that branch exhaustion needs a
   nonanticipatory positive-production witness cover, not only aggregate
   \(D\)-service;
6. a source-wall unification showing that this witness cover is the record-local
   projection of the parent-announced active-density/full-exchange source
   wall, not a separate branch currency;
7. a proof pass showing that this projection requires signed-height \(P_+dt\)
   trace admission into the parent active source plus noncircular strict
   same-parent storage.

The live Gold work is now exactly the branch-exhaustion theorem plus the missing
event-local active-density witness cover, whose producer face is signed-height
trace admission into strict same-parent active storage, and finite-budget proofs
for the branch charges actually used.
