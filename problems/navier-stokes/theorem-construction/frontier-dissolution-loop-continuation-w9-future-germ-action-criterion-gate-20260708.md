---
theorem_id: frontier-dissolution-loop-continuation-w9-future-germ-action-criterion-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W9 future-germ action criterion
status: exact-action-criterion-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w9-datum-ancestry-not-w7-reduction-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w9-not-administrative-w7-germ-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w9-path-metric-not-controlled-by-w3-w7-w8-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-coordinate-legality-ontology-audit-20260708.md
completion_truth: >-
  This packet gives an exact topological criterion for the W9 action-on-closure
  clause. It proves that compact pointwise certificate states support a
  material-time action only when equality of the time-zero state forces equality
  of the shifted future germ, or when the state has already been enlarged to a
  canonical path-germ coordinate. This refutes another W9-to-W7 deletion route:
  retained graph passage at one time is not future-germ uniqueness. No wall is
  deleted.
---

# W9 future-germ action criterion gate

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: W9 is not W7 with a better
certificate-state name. W7 asks whether the retained pressure/VPI record graph
passes through a critical limit or routes out. W9 asks whether the compactified
certificate states carry a well-defined material-time shift action.

Physical sentence: an actual smooth Navier-Stokes history has a future, but a
compactified certificate state is a reading of that history. If the reading
forgets which future germ it came from, shifting "the state" is not a
well-defined operation on the closure.

## 1. Exact action criterion

Let \(X\) be the compact certificate-state space and let
\[
  Z_j:I_j\to X
\]
be the certified material-time paths. A time-\(h\) action on the time-zero
state closure would be a map
\[
  \Phi_h:X_0\to X,
  \qquad
  \Phi_h(Z(0))=Z(h),
\]
for every retained limit path \(Z\) for which the shift is in the certified
interior window.

This map is well-defined if and only if the following future-germ condition
holds:
\[
  Z^+(0)=Z^-(0)
  \quad\Longrightarrow\quad
  Z^+(h)=Z^-(h)
\]
for every admissible pair of retained limit paths \(Z^+\), \(Z^-\) and every
tested fixed shift \(h\).

The proof is only the definition of a function. If two representatives have the
same time-zero state but different shifted states, \(\Phi_h\) would assign two
values to one input. Conversely, if the implication holds for every pair, the
formula \(\Phi_h(x)=Z(h)\) is independent of the representative \(Z\) with
\(Z(0)=x\).

Thus W9's action-on-closure clause is equivalent to future-germ uniqueness for
the retained certificate state, or to explicit admission of the needed future
germ into the state coordinate.

## 2. Why W7 does not supply it

W7 graph passage can make a one-time retained record legal:
\[
  Q[U_n]\to Q[U],\qquad
  P_n\to P,\qquad
  \liminf \mathcal S_n>0,
\]
or it can route the dropped row through a paid/owned/Field/Pack/Part/Field
alternative. That is a graph-closure statement at the retained limit.

The future-germ criterion is stronger. It says that the retained graph state at
one material time determines the certified graph state after a shift, inside
the same compact closure. The W9 source keeps this stronger clause separate by
requiring certified paths, compact shifted hull, terminal-window room,
continuous fixed shifts, and zero-surplus closed graph data before material-time
flow invariance runs.

Adding the whole future germ to W7 would not delete W9. It would put W9's
surviving content into the W7 state by definition, which is circular and not
net-negative under the cycle law.

## 3. Consequence

The exact nonpaying reduction is:
\[
\text{W9 action on closure}
\quad\Longleftrightarrow\quad
\text{future-germ uniqueness or admitted path-germ state}
\]
plus the already separated terminal-window, closed-zero-surplus, and compact
path-hull inputs.

No checked source proves that W3 service persistence, W7 retained graph
passage, or W8 selected-linear payment supplies this future-germ uniqueness.
The current W9 wall therefore remains open as compact path/action structure,
not as ordinary material flow and not as W7 pointwise graph closedness.

DELETED: none.
CERTIFICATE: W9's material-time action on compactified certificate states is well-defined only if equal time-zero certificate states have equal shifted future germs, or if a canonical path-germ coordinate is admitted; checked W7 retained graph passage is a one-time graph-closure/route-out theorem and does not supply that future-germ uniqueness, while adding the future germ to W7 would import W9 by definition rather than delete it.
REMAINING: W3, W7, W8, W9.
