---
theorem_id: frontier-dissolution-loop-cycle-11-w7-w9-closedness-certificate-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
cycle: 11
status: nonpaying-source-gate-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/live-theorem-edge.yaml
---

# Cycle 11 source gate: W7 vs W9

The open frontier at this cycle is W3, W7, W8, W9.

Cross-wall identification attempted first: W7 and W9 are not the same wall,
because W7 is retained-record graph passage/admission through a critical limit,
while W9 is material-time path invariance after a compact certified shift hull
and zero-surplus certificate graph have already been supplied.

## Source check

W7 is the retained VPI record graph-closedness wall. Its source record is

```math
\mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n),
\qquad Q_n=Q[U_n],
```

and the required passage is pressure source, pressure row, material-frame rows,
material-time rows, and positive retained VPI service through the critical
compactness limit. The smaller theorem is
`RetainedVPIRecordGraphClosednessOrTypedRouteOut.A`: a retained same-fluid VPI
tower either passes those rows strongly enough to produce the exact retained
cone/profile, or the lost row is paid, parent/source-owned, Field/nonparticipating,
or lands in the relevant Pack/Part/Field face. The installed W7 also carries
arbitrary-original-data admission into this retained branch.

W9 is the material-time certificate flow-invariance wall. Its source theorem
proves only the abstract shift-hull mechanism:

```math
\texttt{CertifiedMaterialTimeShiftHullCompactness.A}
+
\texttt{ZeroSurplusCertificateClosedGraph.A}
\Longrightarrow
\texttt{MaterialTimeCertificateFlowInvariance.A}.
```

The certificate state records datum, fixed viscosity, pressure law, material
ancestry, finite cover, tower coordinates, service readout, and payer data.
The closed zero-surplus graph separately requires the same datum and viscosity,
actual pressure law or legally carried Reynolds defect, material ancestry,
finite cover, differentiated same-law tower data, stable service readout, and
zero same-packet surplus payer state. The zero-surplus source further reduces
closedness to payer-measure lift, lower semicontinuity, and terminal-window
no-escape.

## Verdict

The literal identity W7 == W9 is refuted.

W9 does not delete into W7: retained-record graph closedness is a one-time
critical compactness/admission theorem for the retained VPI record, and it does
not by itself build the compact certified material-time path hull, same-shift
interior room, or zero-surplus payer lift/lower-semicontinuity needed for
`MaterialTimeCertificateFlowInvariance.A`.

W7 does not delete into W9: material-time flow invariance assumes certified
paths in the certificate topology and proves invariance of their shift hull; it
does not prove arbitrary-original-data admission into the retained branch, nor
the retained VPI graph passage of \(Q[U_n]\), pressure rows, material-frame
rows, and positive VPI service through an arbitrary critical compactness limit.

No new name is admitted. No deletion is pending.

DELETED: none.
CERTIFICATE: W7==W9 is refuted by retained-record graph passage/admission versus compact certified material-time shift-hull plus zero-surplus certificate-flow invariance; neither direction reduces because W7 retains arbitrary-original-data retained-branch admission and critical graph passage, while W9 retains path-hull, shift-invariance, zero-payer, and terminal-window certificate clauses.
REMAINING: W3, W7, W8, W9.

---

## CLAUDE CANDIDATE (Cycle 12 opening; PENDING partner refutation; anchored on this file's own source check)

Cross-wall attempt first: W9 ≡ W7 already failed above (walls distinct). Smaller candidate: **W9's second input, `ZeroSurplusCertificateClosedGraph.A`, is a CONSUMER of W7** — this file's own source check lists the certificate state as exactly the record's rows (datum, fixed viscosity, pressure law, material ancestry, finite cover, tower coordinates, service readout, payer data). Under the VPI frame the certificate IS the record's row-graph read as a legal document; if W7 passes the rows through the critical limit, the certificate built from them closes. Consequence if it survives: **W9 narrows to its first input alone — `CertifiedMaterialTimeShiftHullCompactness.A`** — and the four-wall frontier's independent analytic content becomes: W3 (uniformity), W7 (row passage), W8 (producer), W9' (shift-hull compactness only). Attack surfaces: (i) the ZERO-SURPLUS clause — surplus accounting may be certificate-specific content with no counterpart row in the record graph; (ii) whether certificate closed-graph needs the LEGAL clauses (selector labels, zero-payer) to pass, which are W9's own content, making the consumption circular. Not paid; pending the gate.
