---
theorem_id: frontier-dissolution-loop-continuation-w3-admitted-h1-row-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W3 direct descent / Door-1 service persistence
status: w3-sharpened-internally-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycle-12-w3-w7-service-closedness-gate-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
---

# W3 Gate: Admitted Local Strain H1 Row

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: W3 does not delete into W7, because W7 passes or
routes retained record rows through a critical graph limit, while W3 asks the
strict bill to admit the local strain \(H^1\) response as retained same-field
payment before strong-\(L^3\) service persistence can be claimed.

Physical sentence: the same Navier-Stokes packet can have the cubic
Vieillefosse service and the viscous \(H^1\) strain response in the same local
strain-production budget, but the proof still has to admit that \(H^1\) response
as a retained strict payment row with the required finiteness and uniformity.

## Source Check

The critical-service audit states W3 as the direct Door-1 theorem:

```math
\texttt{CriticalServicePersistenceFromPayment.A}.
```

In every lawful strict atom zero-payment sequence, the same-field payment must
force enough pressure / viscous / collar bill to give strong \(L^3\) persistence
of the selected Vieillefosse service, or the disappearing service must route to
a declared stopped/pass, parent-owned, collar/exit, or nonparticipating class.
The audit also states the exact critical gap: \(L^2\) compactness alone does not
control cubic service, since a normalized critical bubble can keep unit
\(L^3\)-service while its \(L^2\) defect vanishes.

The Door-1 enstrophy-viscous note supplies the conditional mechanism. In the
localized strain equation,

```math
{1\over2}D_t\int\phi^2|S|^2
+
\nu\int\phi^2|\nabla S|^2
=
-\int\phi^2\operatorname{tr}(S^3)
-\int\phi^2S:\Omega^2
-\int\phi^2S:\nabla^2p
+\operatorname{Collar}_\phi ,
```

the viscous \(H^1\) response is a row of the same local strain-production
budget as the Vieillefosse service. Once that row is admitted as strict retained
payment, localized Hodge-Korn and Sobolev give

```math
\|S(u_n)-A_n\|_{L^2(Q)}+\|\nabla(S(u_n)-A_n)\|_{L^2(Q)}\to0
\quad\Longrightarrow\quad
\|S(u_n)-A_n\|_{L^3(Q)}\to0 .
```

So the \(a=r\) bubble is not a counterexample to an admitted same-field
viscous \(H^1\) bill. It is a counterexample to an \(L^2\)-only bill.

The same Door-1 note explicitly does not prove the remaining admission step. It
says the conditional closes Door 1 only under the strict participation bill that
admits the local strain \(H^1\) response as retained payment, and that the
retained strict tower \(c_0\) bound still requires row admission/finiteness,
Door 2a, Door 2b, and global no-double-count accounting.

The current source-frontier and live-edge surfaces agree. They state that the
Door-1 note gives the conditional discharge if the strict bill admits the local
strain \(H^1\) row as retained same-field payment, while the companion global
strict-bill accounting note sums Door 1, Door 2a, Door 2b, and endpoint rows
only after the local rows are admitted in one bounded-overlap tower bill.

## Gate Verdict

W3 is sharpened internally, but it is not deleted.

The checked sources prove:

```math
\text{admitted retained local strain }H^1\text{ payment}
\Longrightarrow
\text{strong }L^3\text{ persistence of the selected cubic service}
```

on the fixed Door-1 packet/collar geometry, modulo the affine endpoint left to
Door 2.

They do not prove that the local strain \(H^1\) response is admitted as retained
strict payment with the needed finiteness and uniformity in the tower. That is
the surviving W3 content. It is not W7 graph closedness, not W8 original-data
selected-linear collection, and not W9 material-time certificate path
invariance.

No new frontier name is admitted. The W3 survivor is the same installed wall,
now typed as: admit and bound the same-field local strain \(H^1\) payment row in
the retained strict tower strongly enough that zero payment forces selected
Vieillefosse service persistence, or route the disappearing service out by the
standing typed grammar.

DELETED: none.
CERTIFICATE: W3 remains because the checked Door-1 sources prove only the conditional implication from an admitted retained local strain H1 payment row to strong-L3 service persistence; they do not prove the admission/finiteness/uniformity of that H1 row as strict same-field tower payment.
REMAINING: W3, W7, W8, W9.
