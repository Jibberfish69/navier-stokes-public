---
theorem_id: frontier-dissolution-loop-continuation-w7-field-current-reynolds-defect-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W7 field-current closure gate
status: w7-field-current-deletion-refuted-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
target_claim: fixed-window spacetime current closure deletes W7
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-spacetime-current-field-view-gate-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-not-w3-w8-w9-ontology-full-coalition-gate-20260708.md
completion_truth: >-
  This packet attacks the tempting field-view deletion of W7. It proves that
  common spacetime-current compactness does not by itself give retained VPI
  graph closedness. Weak closure of smooth Navier-Stokes currents gives a
  Navier-Stokes-Reynolds limit with Reynolds defect R whenever
  u_j tensor u_j converges to u tensor u plus R. W7 is deleted only if the
  defect vanishes, is pressure-gauge compatible with every retained pressure
  service row, or is legally carried/routed as a certificate defect. Current
  sources state that fork as open. No wall is deleted.
---

# W7 Field-Current Reynolds-Defect Gate

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: W7 does not identify with W9 under
the spacetime-current field view. W9's shift-action clause can be made
automatic once a common current hull is already admitted, while W7 asks whether
the nonlinear pressure/VPI graph itself closes inside that current hull or
routes out.

Physical sentence: the whole velocity field can carry its spacetime current
through a weak limit, but unresolved high-frequency self-interaction can remain
as a Reynolds stress; that stress is exactly the pressure/VPI row defect W7 must
close, carry, or route out.

## 1. The tempting deletion

The field-current packet proved a useful recoordination:
\[
  \text{common fixed-window spacetime certificate current}
  \Longrightarrow
  \text{W9 shift-action clause by continuous time-shift pullback}.
\]

The tempting W7 deletion says that the same common current also makes retained
graph passage automatic: if \((u_j,p_j)\) are smooth same-viscosity histories
and the full spacetime current converges, then the pressure law should pass
because pressure is slaved to the field.

That is the ontological overreach. Pressure is slaved on each smooth prelimit.
The retained graph theorem asks whether the nonlinear source row remains slaved
after critical weak compactness.

## 2. Exact defect calculation

The checked Reynolds-defect source gives the closure calculation. If
\[
  u_j\rightharpoonup u,\qquad p_j\rightharpoonup p,\qquad
  u_j\otimes u_j\rightharpoonup M
\]
in distributions and
\[
  R:=M-u\otimes u,
\]
then the weak limit of smooth Navier-Stokes satisfies
\[
  \partial_tu+\operatorname{div}(u\otimes u)+\nabla p-\nu\Delta u
  =
  -\operatorname{div}R .
\]
After the Leray projection, the ordinary Navier-Stokes law is recovered only
when
\[
  \mathbb P\,\operatorname{div}R=0
\]
with the pressure coordinate adjusted consistently. Strong local \(L^2\)
convergence is one sufficient way to force \(R=0\).

Thus common field-current closure gives a lawful weak limit, not automatically
a retained Navier-Stokes pressure/VPI graph. Without the exact defect clause,
the limit is a Navier-Stokes-Reynolds certificate.

## 3. Why pressure-gauge compatibility is not free

If \(\operatorname{div}R=\nabla q\), the velocity law can absorb \(q\) into
pressure. That still does not delete W7. The retained pressure-service row must
use the adjusted pressure coordinate. A scalar service moment or VPI pressure
row cannot be kept from the old pressure while the velocity law uses the
absorbed pressure.

The localized anisotropic defect test is the concrete obstruction. For
\[
  R=\chi Q,\qquad Q\in{\rm Sym}(3),\quad Q\notin\mathbb RI,\quad
  0\ne\chi\in C_c^\infty,
\]
the checked source computes
\[
  \nabla\times(Q\nabla\chi)
  =
  ((q_3-q_2)\partial_{23}\chi,\,
    (q_1-q_3)\partial_{31}\chi,\,
    (q_2-q_1)\partial_{12}\chi),
\]
so \(\mathbb P\,\operatorname{div}R\ne0\) unless the defect is scalar or the
support is trivial. A localized anisotropic quadratic defect is therefore not
automatically a pressure gauge. It needs cancellation, legal carriage, or route
out.

The null branch is also not free. The source states the exact characterization:
\[
  \mathbb P\,\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  R=qI+S,\qquad \operatorname{div}S=0.
\]
The scalar part is pressure gauge, but the divergence-free symmetric stress
\(S\) remains a tensor certificate. If it came from weak \(L^2\) covariance, its
positive trace ballast is unresolved kinetic energy and must land in cover,
ancestry, tower, and payer rows, or route out.

## 4. W7 survivor

This refutes the field-current empty-by-admission candidate for W7.

W7 is not asking whether the field has a weak spacetime current. It asks
whether the retained VPI record graph is closed:
\[
  Q[U_n]\to Q[U],\qquad P_n\to P,\qquad
  \mathcal F_n\to\mathcal F,\qquad
  \mathcal M_n\to\mathcal M,\qquad
  \liminf\mathcal S_n>0,
\]
or whether the lost row is paid, parent/source-owned, Field/nonparticipating,
or routed through the relevant Pack/Part/Field face.

The field-current view improves the ontology: the defect is a row of the same
field, not a second fluid and not a free pressure bank. It does not prove that
the defect vanishes, is pressure-gauge compatible with the retained service
coordinate, is W8-paid, or is W9-carried in a closed certificate path.

## 5. Verdict

No new wall is admitted. The W7 deletion criterion after the field-current
recoordination is exact:

\[
\begin{gathered}
\text{common spacetime current}\\
+\ (R=0\ \text{or}\ \mathbb P\operatorname{div}R=0
   \text{ with pressure-service compatibility}\\
\text{or legal carriage/typed route-out of }R)\\
\Longrightarrow
\text{W7 retained pressure/VPI graph passage or route-out}.
\end{gathered}
\]

Current sources do not prove the second line. The wall survives.

Partner refutation target: refute this certificate alone by citing a checked
source proving that every Reynolds defect in the retained field-current closure
vanishes, is pressure-gauge compatible with all retained VPI pressure-service
rows, is W8-collected as selected-linear original-data bill, or is W9-carried as
a closed zero-surplus certificate row with terminal-window room; or prove every
failure routes through the typed CM faces.

DELETED: none.
CERTIFICATE: Fixed-window spacetime-current closure does not empty W7: if \(u_j\rightharpoonup u\) and \(u_j\otimes u_j\rightharpoonup u\otimes u+R\), the limit satisfies Navier-Stokes-Reynolds with forcing \(-\operatorname{div}R\); ordinary retained pressure/VPI graph passage follows only when \(R=0\), or \(\mathbb P\operatorname{div}R=0\) with pressure-service compatibility, or \(R\) is legally carried/routed. The checked Reynolds-defect source gives localized anisotropic defects with \(\mathbb P\operatorname{div}R\ne0\) and leaves legal carriage through cover/ancestry/tower/payer rows open, so W7 remains the Reynolds-defect closure/compatibility/route-out burden.
REMAINING: W3, W7, W8, W9.
