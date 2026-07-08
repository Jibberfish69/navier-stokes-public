---
theorem_id: frontier-dissolution-loop-continuation-w7-not-w3-w9-coalition-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W7 coalition gate
status: w7-not-reduced-to-w3-plus-w9-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w3-admitted-h1-row-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-stall-row3-defect-pinned-not-free-modulus-gate-20260708.md
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W7 Gate Against W3 + W9

Frontier opened: W3, W7, W8, W9. Cross-wall failure: W7 does not reduce to
W3+W9, because W3 preserves selected cubic service after admitted payment and
W9 gives compact certified material-time path/shift machinery after certificate
rows are carried, while W7 is the retained VPI graph-passage/admission theorem
for the pressure source, pressure row, material-frame rows, material-time rows,
and positive VPI record through a critical limit.

Physical sentence: the same Navier-Stokes retained window can keep the selected
service row and be placed inside a certified material-time path, while the
quadratic pressure-source graph still fails to pass through the critical limit
as \(Q[U_n]\rightharpoonup Q[U]+\mu_Q\).

## Source Check

W3 is a service-persistence row. The checked Door-1 sources prove only that,
after an admitted local strain \(H^1\) payment row is available, zero strict
payment forces strong-\(L^3\) persistence of the selected cubic service. W3
does not decide whether the pressure source, pressure row, material-frame rows,
or retained positive VPI graph close through a critical compactness limit.

W9 is a material-time certificate path row. The checked shift-hull source proves
an abstract fact: once certified paths \(Z_j:I_j\to X\) are compact in a
shift-continuous certificate-path topology with terminal-window room and closed
zero-surplus graph, material-time flow invariance follows. The same source
lists the rows that must be carried in the certificate state: pressure law /
Reynolds defect, material ancestry, finite cover, tower data, service readout,
and zero payer. The Row-3 gate accepted those rows only on prelimit actual
certified windows or as pointwise vanished-or-legally-carried certificate
coordinates; it did not prove retained VPI graph passage.

W7 asks for a different exact fact:

```math
Q[U_n]\to Q[U],
\quad
P_n\to P,\quad
\mathcal F_n\to\mathcal F,\quad
\mathcal M_n\to\mathcal M,\quad
\liminf\mathcal S_n>0,
```

or else a typed route-out/payment/parent-source ownership for the row that
fails. The source says critical weak compactness can instead produce

```math
\nabla U_n\rightharpoonup\nabla U,
\qquad
Q[U_n]\rightharpoonup Q[U]+\mu_Q,
\qquad
\mu_Q\neq0.
```

That \(\mu_Q\) is not removed by saying the certificate path is compact. It must
be graph-closed into the retained pressure/VPI row, admitted as a paid defect,
owned by a parent/source relay, or routed through Field/nonparticipation or the
relevant Pack/Part/Field face.

## Gate Verdict

No wall is deleted. W3+W9 can support W7 only after W7's graph-passage theorem
has supplied or routed the retained pressure/VPI row; they do not construct it.

Attackable certificate: a constant or compact certified material-time path may
carry a service row and a legally named pressure-source defect coordinate, while
the retained VPI graph still has not passed the critical limit as an exact
same-record pressure source. The missing exact fact remains
`RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`.

DELETED: none.
CERTIFICATE: W7 does not reduce to W3+W9: W3 preserves selected cubic service after admitted payment and W9 supplies compact certified path/shift machinery after rows are carried, but neither source proves retained VPI graph passage for the pressure source, pressure row, material-frame rows, material-time rows, and positive VPI record; the critical defect \(Q[U_n]\rightharpoonup Q[U]+\mu_Q\) still needs graph closedness, paid/owned carriage, or typed route-out.
REMAINING: W3, W7, W8, W9.
