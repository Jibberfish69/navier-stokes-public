---
theorem_id: forward-gold-signed-height-record-upcrossing-criterion-20260703
status: strict-reduction-proof-installed
created: 2026-07-03
problem: navier-stokes
route: forward-gold-signed-critical-height-restart
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
source_surfaces:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/review-verdict.yaml
  - problems/navier-stokes/theorem-construction/mpp-ns-unified-physical-roof-control-synthesis-20260703.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-restart-after-positive-clipping-demotion-20260702.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-signed-height-peak-control-proof-pass-20260703.md
completion_truth: >-
  This note proves a strict reduction: a scale-aware same-fluid record-upcrossing
  thickness-or-cost criterion implies bounded signed critical height. It does not
  prove the Navier-Stokes MPP and does not prove the PDE criterion itself. The
  remaining Gold theorem is to derive that criterion from the original same-fluid
  Navier-Stokes packet.
---

# Signed-height record-upcrossing criterion

## 1. Physical roof

The object is one smooth Navier-Stokes evolution from one original datum. Gold is
now judged at the signed critical height

\[
H(t)={1\over2}\|\Lambda^{1/2}u(t)\|_2^2,
\]

with signed rate

\[
{dH\over dt}=P(t)-\nu D(t),
\qquad
P(t)=
-\langle \Lambda^{1/2}{\mathbb P}(u\cdot\nabla u),
\Lambda^{1/2}u\rangle,
\qquad
D(t)=\|\Lambda^{3/2}u(t)\|_2^2.
\]

Selected positive variation, child clipping, same-parent storage, atom ledgers,
and shell sums are support coordinates. They count only when they prove a
same-fluid reason that record critical-height peaks cannot appear for free.

## 2. Original-data budget already available

Let

\[
E_0=\|u_0\|_2^2 .
\]

The energy inequality gives

\[
\int_0^T \|\nabla u(t)\|_2^2\,dt\le {E_0\over 2\nu}.
\]

By interpolation,

\[
\|\Lambda^{1/2}u(t)\|_2^4
\le
\|u(t)\|_2^2\|\nabla u(t)\|_2^2
\le
E_0\|\nabla u(t)\|_2^2.
\]

Therefore

\[
\int_0^T H(t)^2\,dt
\le
{E_0^2\over 8\nu}.
\tag{RUC.1}
\]

This is real original-data control. It controls time-averaged height, not peak
height.

## 3. Record-upcrossing criterion

Fix \(H_*\ge H(0)+1\). For each level \(\lambda\ge H_*\), call an interval
\([a,b]\) a record upcrossing at height \(\lambda\) when

\[
H(a)=\lambda,\qquad
H(b)=2\lambda,\qquad
\lambda\le H(t)\le 2\lambda\quad\text{for }a\le t\le b,
\]

after replacing \([a,b]\) by the first connected component of that crossing if
necessary.

The criterion is this.

There are a nonnegative same-fluid charge measure \(d{\mathcal C}\), a finite
original-data budget \(B_{\mathcal C}(u_0)\), and a constant \(c_*>0\) such that

\[
{\mathcal C}([0,T))\le B_{\mathcal C}(u_0),
\tag{RUC.2}
\]

and every record upcrossing \([a,b]\) at level \(\lambda\ge H_*\) satisfies at
least one of the two alternatives

\[
|\{t\in[a,b]:H(t)\ge \lambda\}|\ge {c_*\over \lambda^2}
\tag{RUC.3}
\]

or

\[
{\mathcal C}([a,b])\ge c_* .
\tag{RUC.4}
\]

The charge \({\mathcal C}\) must come from the same Navier-Stokes packet:
viscous drain, pressure reorientation, transport/frame rotation, source
depletion, stop/legal/reselection cost, or a proved bridge from same-parent
storage into this signed-height event. A child count or atom count is not such a
charge by itself.

## 4. The criterion implies peak control

Assume \(H\) is unbounded on \([0,T)\). Then there are infinitely many disjoint
record upcrossings \([a_j,b_j]\) at dyadic levels

\[
\lambda_j=2^jH_*,
\]

chosen by first passage from \(\lambda_j\) to \(2\lambda_j\).

For every upcrossing satisfying the thickness alternative,

\[
\int_{a_j}^{b_j} H(t)^2\,dt
\ge
\lambda_j^2\,|\{t\in[a_j,b_j]:H(t)\ge\lambda_j\}|
\ge c_*.
\]

Infinitely many thickness alternatives contradict `(RUC.1)'. Infinitely many
charge alternatives contradict `(RUC.2)' because the intervals are disjoint and
each carries at least \(c_*\) charge.

Thus only finitely many dyadic record upcrossings can occur. Quantitatively,

\[
\#\{\text{record upcrossings above }H_*\}
\le
c_*^{-1}
\left(
{E_0^2\over 8\nu}+B_{\mathcal C}(u_0)
\right).
\]

So

\[
\sup_{t<T}H(t)<\infty.
\tag{RUC.5}
\]

This proves the reduction.

## 5. What remains for Gold

The remaining Gold theorem is no longer a scalar positive-variation estimate.
It is the physical same-fluid statement that every high record upcrossing of the
signed critical height has either scale-aware thickness or pays a finite-budget
same-fluid charge.

The coupled-storage route can still contribute, but only by producing
\({\mathcal C}\) and proving `(RUC.4)' for thin record upcrossings from the
original parent packet. Raw atomization, same-parent lobe pairing, shell sums,
and selected \(L^1\) displays are support until they feed that charge or prove
the thickness branch.

The next object-level burden is therefore:

\[
\text{derive `(RUC.3)' or `(RUC.4)' for every signed critical-height record
upcrossing from the original Navier-Stokes packet.}
\]
