---
theorem_id: frontier-dissolution-loop-continuation-w9-datum-ancestry-not-w7-reduction-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W9 datum-ancestry residue / W7 reduction gate
status: w9-to-w7-datum-ancestry-reduction-refuted-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-b3-material-time-flow-certificate-closure-audit-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-bv-state-not-cocycle-action-counterexample-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W9 datum-ancestry faithfulness is not yet a W7 deletion

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: the Claude S1 response usefully narrows W9's
action residue to datum/ancestry faithfulness through compact closure, but this
does not identify W9 with W7 because checked W7 passes one retained record graph
through a critical limit while W9 still requires a path-valued compact
shift-hull with continuous material-time shifts and terminal-window room.

Physical sentence: an actual smooth Navier-Stokes history has a unique future
on its retained interval, but W9 asks for the same future-determining structure
after taking a compact limit of certified material-time paths; a one-time
retained graph limit does not itself give the path germ, shift action, or
uniform room needed to move the limit in material time.

## Source check

The W9 shift-hull source states the required object explicitly. It assumes
certified paths
\[
  Z_j:I_j\to X
\]
from actual retained Navier-Stokes windows, a compact shifted hull in
\[
  C_{\rm loc}(\mathbb R;X)
\]
or a corresponding weak certificate-path topology, and continuity of fixed
shifts. Only under those path-topology and terminal-window hypotheses does the
abstract calculation
\[
  \tau_h(\tau_a Z_j)=\tau_{a+h}Z_j
\]
prove material-time invariance.

The B3 audit says the same theorem is not installed. Its exact remaining row is
`MaterialTimeCertificateFlowInvariance.A`: the material-time flow must act on
the certified profile family and preserve same datum, pressure law, material
ancestry, finite cover, differentiated tower, zero-payer marginal set, and
positive service readout, modulo only legal carried defects.

The checked W7 gate has a different shape. W7's retained graph theorem uses one
same-record packet
\[
  \mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
  \qquad Q_n=Q[U_n],
\]
and asks the retained limit to pass pressure source, pressure row,
material-frame rows, material-time rows, and positive VPI service through a
critical compactness limit, or to expose payment, parent/source relay,
Field/nonparticipation, or a Pack/Part/Field route-out. That is static
retained-record graph passage and arbitrary-original-data admission. It does
not state a common path topology for \(Z_j\), continuous fixed shifts, a
canonical path-germ coordinate, or terminal-window interior room.

Claude's attack against the S1 model therefore fails exactly as scoped. The
bare S1 model is not an admissible W9 certificate space, because it forgets
datum, ancestry, cover, tower, service, and payer rows. That confirms the
certificate's point: compact instantaneous states plus BV rows do not define
the W9 action. To turn the useful datum/ancestry sharpening into a deletion,
one still has to prove the stronger sentence that the W7 row-passage theorem
includes future-determining datum/ancestry rows at compact limit states in a
path topology where fixed material-time shifts act continuously.

## Gate verdict

This gate confirms the S1 certificate as scoped and rejects the proposed W9 to
W7 deletion.

No new wall is admitted. The surviving W9 content is the same one already named
by the shift-hull and B3 sources: path-uniform certificate regularity across
all rows, shifted-window room, zero-surplus closed graph data, and action on
the compactified certificate hull. The datum/ancestry version is a useful W7
instance only after a path-germ / future-determining coordinate is proved at
the compact closure.

DELETED: none.
CERTIFICATE: W9 does not reduce to W7 merely because actual histories have datum/ancestry uniqueness: checked W7 passes a retained record graph through a critical limit, while W9 requires certified paths \(Z_j:I_j\to X\), compact shifted hull topology, continuous fixed shifts, terminal-window room, and zero-surplus closed graph data; therefore the missing exact fact is a W7 row-passage theorem that also preserves a future-determining path-germ/action coordinate through compact closure.
REMAINING: W3, W7, W8, W9.
