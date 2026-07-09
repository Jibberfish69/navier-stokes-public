---
theorem_id: frontier-dissolution-loop-continuation-w9-instantaneous-state-action-refutation-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W9 ontology-source gate / instantaneous-state action refutation
status: overstrong-instantaneous-state-action-refuted-no-wall-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w9-future-germ-action-criterion-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-bv-state-not-cocycle-action-counterexample-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-static-rows-not-shift-hull-counterexample-20260708.md
completion_truth: >-
  This packet refutes the overstrong presentation of W9 as a material-time
  action on instantaneous compact certificate states. Such an action is
  well-defined only when equal time-zero certificate states have equal shifted
  future germs, or when the state has been enlarged by a canonical path-germ or
  cocycle coordinate. The checked W9 source does not claim the overstrong
  statement: it proves an abstract shift-hull lemma after compact certified
  material-time paths, terminal-window room, continuous fixed shifts, and
  zero-surplus closed graph data are already supplied. Therefore the source
  assumption is corrected, but W9 is not deleted.
---

# W9 instantaneous-state action refutation gate

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: W9 does not identify with W7+W8 or
W3+W7+W8 by reading legal rows along time. W7/W8 supply static retained graph
and payer coordinates, while W9's sourced object is a compact certified
material-time path hull with continuous fixed shifts and closed zero-surplus
certificate rows.

Physical sentence: one smooth Navier-Stokes history can be read later in
material time, but a compactified certificate state is only a reading of a
history. If the reading forgets its future germ, shifting the state is not a
well-defined same-fluid operation on the closure.

## 1. Source statement

The W9 source proves:
\[
  \texttt{CertifiedMaterialTimeShiftHullCompactness.A}
  +
  \texttt{ZeroSurplusCertificateClosedGraph.A}
  \Longrightarrow
  \texttt{MaterialTimeCertificateFlowInvariance.A}.
\]

Its proof assumes certified paths
\[
  Z_j:I_j\to X
\]
and compactness of the shifted family in \(C_{\rm loc}(\mathbb R;X)\), or in a
weak certificate-path topology where fixed shifts are continuous. It shifts
paths:
\[
  \tau_h(\tau_a Z_j)=\tau_{a+h}Z_j.
\]

The B3 audit records the same point negatively: the repo has static compactness
criteria for certificate coordinates, but it has not installed a material-time
semigroup/action preserving the lifted certificate family.

Thus the sourced W9 object is path-hull action, not bare state action.

## 2. Exact refutation of the overstrong reading

Suppose one tries to define the W9 action directly on instantaneous compact
certificate states:
\[
  \Phi_h:X_0\to X,
  \qquad
  \Phi_h(Z(0))=Z(h).
\]

This is a function only if
\[
  Z^+(0)=Z^-(0)
  \quad\Longrightarrow\quad
  Z^+(h)=Z^-(h)
\]
for every retained pair of paths and every tested shift \(h\), or if the state
already carries a canonical path-germ/cocycle coordinate.

The failure is visible in the model \(X=S^1\) with legal graph
\(\mathcal G=X\), zero payer, and
\[
  Z^+(t)=e^{it},
  \qquad
  Z^-(t)=e^{-it}.
\]
Both paths are uniformly Lipschitz and BV on compact material-time intervals,
and both share the instantaneous state
\[
  Z^+(0)=Z^-(0)=1.
\]
For \(h\notin \pi\mathbb Z\), a time-\(h\) action would require both
\[
  \Phi_h(1)=e^{ih}
  \quad\text{and}\quad
  \Phi_h(1)=e^{-ih},
\]
which is impossible.

This is not a Navier-Stokes counterhistory. It is an exact refutation of the
certificate "compact instantaneous legal state plus payer closure plus BV rows
define W9." BV rows compactify paths only after a path hull has been chosen; they
do not make the instantaneous certificate state future-determining.

## 3. Consequence for the remaining wall

The corrected W9 residue is:

\[
\begin{gathered}
\text{compact certified path hull with continuous fixed shifts}\\
+\ \text{terminal-window interior room}\\
+\ \text{zero-surplus payer lift and lower semicontinuity}\\
+\ \text{future-germ uniqueness or a canonical path-germ/cocycle coordinate.}
\end{gathered}
\]

Current W3/W7/W8 sources do not supply that residue. W3 supplies the strict
Door-1 service-payment row after row admission/finiteness/uniformity; W7 supplies
retained pressure/VPI graph passage or route-out; W8 supplies selected-linear
original-data payment. None makes the compact certificate state closure
future-determining, and adding the future germ by definition would import W9's
surviving content rather than delete it.

DELETED: none.
CERTIFICATE: The overstrong W9 presentation as an action on instantaneous compact certificate states is refuted: in \(X=S^1\), the legal zero-payer BV paths \(Z^+(t)=e^{it}\) and \(Z^-(t)=e^{-it}\) have the same time-zero state \(1\), but for \(h\notin\pi\mathbb Z\) a state action would need both \(\Phi_h(1)=e^{ih}\) and \(\Phi_h(1)=e^{-ih}\). The checked W9 source avoids this only by acting on compact certified path hulls, or by requiring a future-germ/cocycle coordinate plus terminal-window and zero-surplus closed-graph clauses; W3/W7/W8 do not supply those clauses.
REMAINING: W3, W7, W8, W9.
