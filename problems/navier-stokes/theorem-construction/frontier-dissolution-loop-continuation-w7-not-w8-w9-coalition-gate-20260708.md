---
theorem_id: frontier-dissolution-loop-continuation-w7-not-w8-w9-coalition-gate-20260708
status: coalition-gate-no-deletion
created: 2026-07-08
route: frontier-dissolution-loop / W7 coalition gate against W8+W9
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
inputs_checked:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycle-12-w3-w7-service-closedness-gate-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W7 coalition gate against W8+W9

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: W7 is not identified with W8+W9, because W7 is
retained VPI record graph passage and arbitrary-original-data admission through
an arbitrary critical limit, while W8 supplies a selected-linear payer
coordinate and W9 supplies material-time certificate path/shift invariance only
after the carried certificate rows already live in one compact path topology.

The W7 source names the same-record object

```math
\mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
\qquad Q_n=Q[U_n],
```

and asks the pressure source, pressure row, material-frame rows, material-time
rows, and positive retained VPI record to pass through the critical compactness
limit, or to expose the lost row as payment, parent/source relay,
Field/nonparticipation, or a Pack/Part/Field face.

W8 and W9 do not supply that graph-passage theorem. W8 can provide the
selected-linear WLF.60 / ODP.91 original-data payment coordinate only after its
producer is proved. W9 can shift certified paths only after the certificate
rows are already carried in a compact path hull with terminal-window room and
zero-surplus closed graph data. Together they can support a retained-row
passage proof, but they do not replace the row-passage proof.

Attackable certificate: in the source's own critical compactness language,

```math
\nabla U_n \rightharpoonup \nabla U,
\qquad
Q[U_n]\rightharpoonup Q[U]+\mu_Q
```

can hold with a nonzero quadratic pressure-source defect. A finite payer
coordinate and a constant certified material-time path can both survive while
\(\mu_Q\neq0\). That is exactly the missing W7 alternative: either the retained
pressure/material-frame/VPI graph passes with no dropped row, or the defect is
typed as payment, relay, Field/nonparticipation, or Pack/Part/Field route-out.

Thus the W8+W9 coalition does not delete W7. It proves W7 only with the extra
fact that every retained graph row, including the pressure-source defect
coordinate and the positive VPI record, is carried in the same compact topology
and closed through the critical limit. That extra fact is
`RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`, namely W7 itself.

DELETED: none.
CERTIFICATE: W7 does not reduce to W8+W9: selected-linear payment plus compact certified path/shift invariance can hold while the retained pressure-source/material-frame/VPI graph row drops as \(Q[U_n]\rightharpoonup Q[U]+\mu_Q\); the missing exact fact is still `RetainedVPIRecordGraphClosednessOrTypedRouteOut.A` or a typed route-out for the dropped row.
REMAINING: W3, W7, W8, W9.
