---
theorem_id: frontier-dissolution-loop-cycle-12-w3-w7-service-closedness-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop
cycle: 12
status: nonpaying-source-gate-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# Cycle 12 source gate: W3 vs W7

The open frontier at this cycle is W3, W7, W8, W9.

Cross-wall identification attempted first: W3 and W7 are not the same wall,
because W3 is the H1/strong-L3 service-persistence theorem for the strict
same-field payment row, while W7 is retained-record graph passage/admission
through the critical limit.

## Source check

W3 is the Door-1 service persistence wall. The audit states the direct theorem:

```math
\texttt{CriticalServicePersistenceFromPayment.A}.
```

In every lawful strict atom zero-payment sequence, the same-field payment must
admit enough pressure/viscous/collar bill to force strong \(L^3\) persistence of
the selected Vieillefosse service, or else disappearing service must be routed
to a stopped/pass, parent-owned, collar/exit, or nonparticipating class. The
Door-1 note proves the conditional mechanism: if the local strain \(H^1\) row is
admitted as retained strict same-field payment, the \(a=r\) critical bubble pays
the localized enstrophy-viscous response and zero payment gives strong \(L^3\)
persistence of the non-affine strain defect. The same note explicitly leaves row
admission/finiteness, Door 2, and global accounting open.

W7 is the retained VPI graph-closedness wall. Its source theorem asks for the
retained record

```math
\mathcal R_n=(U_n,P_n,Q_n,\mathcal F_n,\mathcal M_n,\mathcal S_n)
```

to pass pressure source, pressure row, material-frame rows, material-time rows,
and positive retained VPI service through a critical compactness limit, or else
to expose the lost row as payment, parent/source relay, Field/nonparticipation,
or a Pack/Part/Field route-out. Its installed statement also carries
arbitrary-original-data admission into the retained branch.

## Verdict

The literal identity W3 == W7 is refuted.

W3 does not delete into W7: retained-record graph closedness is not the theorem
that zero strict payment admits the local strain \(H^1\) row and forces
strong-\(L^3\) service persistence. The W7 source itself treats the Door-1
H1/enstrophy-viscous service note as a conditional persistence input once the
needed local row is admitted.

W7 does not delete into W3: service persistence does not pass the pressure
source row, pressure row, material-frame rows, material-time rows, or
arbitrary-original-data retained-branch admission through an arbitrary critical
compactness limit.

No new name is admitted. No deletion is pending.

DELETED: none.
CERTIFICATE: W3==W7 is refuted by Door-1 H1/strong-L3 service persistence versus retained VPI record graph passage/admission; neither direction reduces because W3 carries the strict payment-to-service-persistence row, while W7 carries pressure/source/material-frame/material-time graph closedness plus arbitrary-original-data retained-branch admission.
REMAINING: W3, W7, W8, W9.
