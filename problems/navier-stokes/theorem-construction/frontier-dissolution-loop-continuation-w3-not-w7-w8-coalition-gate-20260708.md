---
theorem_id: frontier-dissolution-loop-continuation-w3-not-w7-w8-coalition-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / coalition gate / W3 versus W7+W8
status: coalition-reduction-refuted-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wlf60-parent-weighted-first-admission-proof-pressure-test-20260704.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w3-admitted-h1-row-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w8-original-data-first-ratio-descent-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W3 Coalition Gate Against W7+W8

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: W3 does not reduce to W7+W8 because W7 supplies
retained graph passage/admission and W8 supplies selected-linear original-data
payment, but neither checked source admits and bounds the local strain \(H^1\)
response as a finite, uniform, retained same-field payment row in the strict
tower.

Physical sentence: the same Navier-Stokes packet may have a retained record
that survives the critical limit and an original-history selected payment
ledger, while W3 still asks that the local viscous strain response itself be
carried as a retained payment row before zero payment can force selected cubic
Vieillefosse service persistence.

## Source Check

The W3 Door-1 sources state a conditional theorem, not a finished admission.
The critical-service audit says that a zero-payment sequence needs strong
\(L^3\) persistence of the participating strain modulo the selected affine
channel. It records the smaller conditional implication:

\[
  \text{admitted retained local strain }H^1\text{ payment row}
  \quad\Longrightarrow\quad
  \text{strong }L^3\text{ persistence of selected cubic service}.
\]

The Door-1 enstrophy-viscous note explains why that row is a same-field row:
the viscous \(H^1\)-level strain response appears in the same local
strain-production identity as the cubic Vieillefosse service. It also states
the surviving condition: Door 1 closes only under the strict participation bill
that admits this local strain \(H^1\) response as retained payment.

W7 has the right admission vocabulary but the wrong object. Its checked source
is `RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`: pressure source,
pressure row, material-frame rows, material-time rows, and the positive retained
VPI record must pass through a critical compactness limit, or row loss must be
typed as payment, parent/source relay, Field/nonparticipation, or
Pack/Part/Field route-out. That is retained graph closedness for the VPI record.
The checked W7 source does not state the Door-1 local strain \(H^1\) payment-row
admission/finiteness/uniformity theorem.

W8 has the right payment vocabulary but the wrong collection. Its checked source
is WLF.60 / ODP.91: finite parent-weighted selected first-admission pulse
measure / selected-linear route-measure payment on the order-locked full-packet
carrier, with same-packet order-lock overlap, selected-overrun tail payment, and
persistent affine-quotient original-history production still open. The W8
half-tail gates also show that raw square support or generic route-measure
support does not prove the selected-linear first-ratio bill.

Thus W7+W8 provide two sides of the surrounding strict tower: retained record
passage and selected original-data payment. The missing W3 fact is still the
bridge from those surrounding rows to the local Door-1 row:

\[
  \text{W7 retained graph passage}
  +
  \text{W8 selected-linear original-data payment}
  \not\Rightarrow
  \text{admitted retained local strain }H^1\text{ payment row}
\]

in any checked source.

## Gate Verdict

No deletion is available. The coalition identifies the natural support route for
W3, but the exact admission fact is absent.

An adversary can attack the certificate by citing a checked theorem that, from
W7 retained VPI record passage/admission plus W8 selected-linear WLF.60/ODP.91
original-data payment on the order-locked carrier, admits the Door-1 local
strain \(H^1\) response as a finite, uniform, retained same-field tower payment
row. Without that theorem, W3 remains independent as sourced.

DELETED: none.
CERTIFICATE: W3 does not reduce to W7+W8: checked W7 passes/routes retained record rows through critical graph closure, and checked W8 supplies selected-linear WLF.60/ODP.91 original-data payment on the order-locked full-packet carrier, but no checked source admits the Door-1 local strain H1 response as a finite/uniform retained same-field payment row in the strict tower; W3 remains CriticalServicePersistenceFromPayment.A at that H1-row admission/finiteness/uniformity point.
REMAINING: W3, W7, W8, W9.
