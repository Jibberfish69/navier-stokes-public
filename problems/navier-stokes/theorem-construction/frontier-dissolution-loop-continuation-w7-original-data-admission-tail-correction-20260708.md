---
theorem_id: frontier-dissolution-loop-continuation-w7-original-data-admission-tail-correction-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W7 original-data admission tail correction
status: overstrong-tail-reading-refuted-no-wall-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission into the retained branch
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-installed-frontier-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-row-passage-graph-closedness-obstruction-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w7-record-admission-direct-gate-20260708.md
completion_truth: >-
  This packet corrects the original-data tail attached to W7. The installed
  wall's shorthand "arbitrary-original-data admission into the retained branch"
  is false if read as unconditional admission of every arbitrary smooth datum
  into the retained VPI branch. The checked source wording is admission into the
  retained branch or typed CM route-out. This deletes no wall: W7 still has to
  prove retained graph passage/admission or typed route-out for the retained
  VPI record, and the full original-data problem still needs the branch
  selection/route-out disjunction.
---

# W7 Original-Data Admission Tail Correction

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: W7's original-data tail is not W8.
W8 is the selected-linear original-data payment on the order-locked full-packet
carrier before positive readout. W7's original-data tail is the branch-selection
statement: arbitrary original data either enter the retained VPI branch being
tested, or the failure is typed through the CM/Pack/Part/Field route-out grammar.

Physical sentence: an arbitrary smooth Navier-Stokes history is not forced to
be a retained positive Vieillefosse-participation branch; if it has no carrier,
no participation, or no coherent positive field, the proof has to route it
through the typed CM faces rather than pretend it entered the retained c0
branch.

## Source Check

The installed frontier records W7 as:
\[
\texttt{RecordAdmissionClosedness.A}
+\text{ arbitrary-original-data admission into the retained branch}.
\tag{OAT.1}
\]

The authority source is more precise. The source-frontier says the remaining
work is:
\[
\text{arbitrary-original-data admission into the retained branch}
\quad\text{or typed CM route-out.}
\tag{OAT.2}
\]
It immediately states the physical split: no-carrier, nonparticipating, or
no-field terminal branches route through the CM Pack/Part/Field tree, while any
retained positive Vieillefosse-participation branch enters the two-door c0
reduction.

The live-edge surface says the same thing: the live retained-branch burdens
include original-data admission into the retained branch or typed CM route-out.
The retained-row passage note then gives the retained-branch theorem:
\[
\texttt{RetainedVPIRecordGraphClosednessOrTypedRouteOut.A}.
\tag{OAT.3}
\]
Within a lawful retained VPI tower sequence, the pressure source, pressure row,
material-frame rows, material-time rows, and positive VPI record must pass
through the critical limit, or the lost row must be exposed as payment,
parent/source relay, Field/nonparticipation, or the relevant Pack/Part/Field
face.

## Correction

The overstrong reading is:
\[
\text{every arbitrary original datum enters the retained VPI branch}.
\tag{OAT.4}
\]
The checked source refutes that reading. The lawful W7 tail is the disjunction:
\[
\begin{aligned}
&\text{retained positive VPI branch admission and graph passage}\\
&\quad\vee\quad
\text{typed CM/Pack/Part/Field/no-carrier/nonparticipation/no-field route-out}.
\end{aligned}
\tag{OAT.5}
\]

This correction does not identify W7 with W8. W8 may provide selected-linear
payment for the order-locked carrier, but it does not decide whether arbitrary
original data enter the retained VPI branch or route out through CM. It also
does not delete W7: the retained branch still needs the graph-closedness /
typed-route-out theorem for \(Q[U_n]\), the pressure row, material-frame rows,
material-time rows, and positive VPI service.

## Gate Result

The installed shorthand should not be used as an unconditional admission claim.
It is source-correct only when read as "admit the arbitrary-original-data branch
into the retained VPI test, or route its failure through the typed CM grammar."
That is a presentation correction, not a paid frontier deletion.

DELETED: none.
CERTIFICATE: The unconditional W7 tail "every arbitrary original datum admits into the retained branch" is refuted by the source admission clause: the authority wording is arbitrary-original-data admission into the retained branch or typed CM route-out, with no-carrier, nonparticipating, and no-field branches routed through Pack/Part/Field; W8 selected-linear original-data payment does not supply this branch-selection disjunction, and W7 still must prove retained VPI graph passage/admission or typed route-out for the retained branch.
REMAINING: W3, W7, W8, W9.
