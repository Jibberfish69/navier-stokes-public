---
theorem_id: frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W7 direct descent / retained VPI graph closedness
status: w7-sharpened-internally-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycle-11-w7-w9-closedness-certificate-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycle-13-w8-w9-payment-certificate-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w8-original-data-first-ratio-descent-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W7 Gate: Retained Record Admission And Graph Passage

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: W7 does not delete into W8, because W7 is the
critical compactness graph-passage/admission theorem for the retained VPI
record, while W8 is the selected-linear original-data payment ledger on the
order-locked full-packet carrier.

Physical sentence: the same Navier-Stokes history may have a finite selected
payment ledger, but the retained branch still has to show that the pressure
source, pressure row, material-frame rows, material-time rows, and positive VPI
record pass through the critical limit, or that the lost row is paid, owned by a
parent/source relay, or routed out.

## Source Check

The W7 authority is `RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`. It
works with one same-record packet

```math
\mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
\qquad Q_n=Q[U_n],
```

and asks for the retained graph to pass through a critical compactness limit:
pressure source, pressure row, material-frame rows, material-time rows, and the
positive retained VPI service record must converge strongly enough to produce
an exact retained cone/profile, or the failure must be exposed as payment,
parent/source relay, Field/nonparticipation, or the relevant Pack/Part/Field
face.

The source explicitly says critical weak compactness alone is not enough. A
sequence can have

```math
\nabla U_n \rightharpoonup \nabla U,
\qquad
Q[U_n]\rightharpoonup Q[U]+\mu_Q,
```

with a nonzero quadratic pressure-source defect. In the retained VPI coordinate,
that defect is exactly a dropped row, owner transfer, or route-out object; it is
not harmless bookkeeping.

W8 is a different surviving wall. The W8 descent already sharpens it to
selected-linear route-measure / persistent-affine-quotient original-data
payment on the actual order-locked full-packet carrier. It refutes raw
same-parent support, finite menu/no-recount, raw event ownership, and viscous
heat-thickness square shortcuts by the half-tail. W8 can supply a selected
payment coordinate only after its original-data collection theorem is proved.
It does not prove W7's retained graph passage for \(Q[U_n]\), pressure rows,
material-frame rows, material-time rows, or positive VPI service through an
arbitrary critical limit.

The source-frontier and live-edge surfaces also keep arbitrary-original-data
admission attached to this retained branch. They say the exact-cone pressure
and relay consumers close the endpoint only after
`RetainedVPIRecordGraphClosednessOrTypedRouteOut.A` supplies the critical
compactness passage, and that the full Gold problem still requires
arbitrary-original-data admission into the retained branch or a typed CM
route-out.

## Gate Verdict

W7 is sharpened internally, but no wall is deleted.

W7 is not a payment producer. It is the admission and graph-passage theorem
that decides whether the same retained VPI record remains a lawful retained
record through the critical limit. W8's selected payment ledger can support
that theorem, but it does not replace it.

W7 is not W9 either; that was already source-refuted. W9 acts after a compact
certificate path hull and zero-surplus certificate graph have been supplied.
W7 is the static critical graph passage/admission and arbitrary-original-data
entry problem for the retained record itself.

No new frontier name is admitted. The W7 survivor is the installed wall, now
typed as: prove retained VPI record graph closedness or typed route-out for the
pressure source, pressure row, material-frame rows, material-time rows, and
positive VPI record through arbitrary critical compactness limits, and admit
arbitrary original data into that retained branch or route it through the CM
program.

DELETED: none.
CERTIFICATE: W7 remains because W8's selected-linear original-data payment ledger does not prove retained VPI record graph closedness, critical row passage, or arbitrary-original-data admission; W7 must still pass or route the pressure source, pressure row, material-frame rows, material-time rows, and positive VPI record through the critical limit.
REMAINING: W3, W7, W8, W9.
