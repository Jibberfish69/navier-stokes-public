---
theorem_id: frontier-dissolution-loop-cycle-13-w8-w9-payment-certificate-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
cycle: 13
status: nonpaying-source-gate-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/spine.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-material-time-certificate-shift-hull-invariance-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-zero-surplus-certificate-closed-graph-reduction-20260706.md
---

# Cycle 13 source gate: W8 vs W9

The open frontier at this cycle is W3, W7, W8, W9.

Cross-wall identification attempted first: W8 and W9 are not the same wall,
because W8 is the original-data early-row WLF/ODP payment producer on the
order-locked selected carrier, while W9 is the material-time certificate
path-invariance bundle after compact path hull and zero-surplus graph closure
are supplied.

## Source check

W8 is the WLF.60 / ODP.91 early-row payment wall. The live authority reads it as
the finite parent-weighted selected first-admission pulse measure with strict
viscosity feedback on the order-locked full-packet selected carrier. Its
surviving content is the selected-critical parent-weighted root upper bound for
the lower fresh source and upper selected positive queue, with same-packet
order-lock overlap and selected-overrun tail payment on that carrier. ODP.91
still needs the projected original-history reserve Carleson bound ODP.111, whose
unpaid producer is the persistent affine quotient ODP.160 / ODP.125. Same-parent
detection, raw Bessel admission, no-recount, primitive ownership, and local
first-admission are installed support until the recombined full packet is
selected before positive-part readout.

W9 is the material-time certificate flow-invariance wall. The checked theorem is
the abstract implication

```math
\texttt{CertifiedMaterialTimeShiftHullCompactness.A}
+
\texttt{ZeroSurplusCertificateClosedGraph.A}
\Longrightarrow
\texttt{MaterialTimeCertificateFlowInvariance.A}.
```

The certificate state keeps datum, fixed viscosity, actual pressure law or
legally carried Reynolds defect, material ancestry, finite cover, differentiated
same-law tower, stable service readout, zero same-packet surplus payer state,
and terminal-window shift room. The zero-surplus source separately requires
payer-measure lift, lower semicontinuity, and no terminal-window escape.

## Verdict

The literal identity W8 == W9 is refuted.

W9 does not delete into W8: WLF.60 / ODP.91 does not by itself build the compact
certified path hull, material-time shift interior, actual pressure-law/Reynolds
certificate, ancestry/tower certificate, service modulus, or zero-surplus payer
closed graph required by `MaterialTimeCertificateFlowInvariance.A`.

W8 does not delete into W9: material-time certificate invariance does not prove
the original-data parent-weighted selected first-admission pulse measure,
ODP.111 reserve Carleson, ODP.160/ODP.125 persistent affine quotient producer,
same-packet order-lock overlap, or selected-overrun tail payment on the
order-locked full-packet carrier.

No new name is admitted. No deletion is pending.

DELETED: none.
CERTIFICATE: W8==W9 is refuted by original-data WLF/ODP early-row payment versus material-time compact certificate-flow invariance; neither direction reduces because W8 carries the order-locked full-packet selected-carrier payment/ODP producer clauses, while W9 carries compact path-hull, shift-room, pressure-law/ancestry/tower/service, zero-payer, and terminal-window certificate clauses.
REMAINING: W3, W7, W8, W9.
