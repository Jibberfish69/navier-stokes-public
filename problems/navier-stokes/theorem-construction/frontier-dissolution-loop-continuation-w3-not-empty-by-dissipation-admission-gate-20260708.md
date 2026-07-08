---
theorem_id: frontier-dissolution-loop-continuation-w3-not-empty-by-dissipation-admission-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W3 direct descent / empty-by-admission gate
status: no-deletion; ordinary-dissipation-admission-does-not-supply-strict-tower-uniformity
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w3-dissipation-retyping-gate-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-global-strict-bill-admission-accounting-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
completion_truth: >-
  This is a certificate-only W3 gate. It accepts the fixed-window
  enstrophy-viscous retyping, but refutes the stronger empty-by-admission move:
  ordinary collected dissipation on retained windows is not yet a
  rung-uniform strict retained tower payment row.
---

# W3 Is Not Empty by Ordinary Dissipation Admission

Frontier opened: W3, W7, W8, W9. Cross-wall failure: ordinary dissipation
admission does not identify W3 with W7, W8, or W9, because W3 asks for a strict
tower payment-to-service persistence row, W7 is retained graph passage/admission,
W8 is selected-linear original-data payment, and W9 is material-time certificate
path/action closedness.

Physical sentence: the localized \(H^1\) response is the same velocity field's
viscous enstrophy-strain dissipation on a retained packet, but W3 asks that row
to remain a strict payment row along the retained tower. A finite collected
dissipation amount on each actual window does not by itself say that the row is
distributed uniformly through the selected climb, or that concentration of that
row has been routed out.

## Source Check

The Door-1 source proves only the conditional mechanism:

\[
  \text{admitted retained local strain }H^1\text{ payment row}
  \Longrightarrow
  \text{strong }L^3\text{ persistence of the selected cubic service}.
\]

Its completion truth keeps row admission/finiteness open, and its final
paragraph says the retained strict tower bound still requires that row
admission/finiteness, Door 2a, Door 2b, and global no-double-count accounting.

The global strict-bill accounting source is also conditional. Its completion
truth says it proves no-loss/no-double-count only after the local payment
theorems have already been admitted in the same tower currency. Section 1
includes \(d\mu_{\rm D1}\) as the localized enstrophy-viscous \(H^1\) response,
but Section 4 sums it as a restriction of \(d\mu_{\rm strict}\) only after the
same strict bill has been admitted.

The source-frontier and live-edge surfaces state the same gate: Door 1 closes
only if the strict bill admits the local strain \(H^1\)/enstrophy-dissipation
response as retained same-field payment.

## Certificate

The attempted deletion would need this implication:

\[
  \text{localized enstrophy-viscous row is an ordinary finite dissipation row}
  \Longrightarrow
  \text{the row is a rung-uniform strict retained tower payment row}.
\]

That implication is false at the level of the certificate alone. On a discrete
tower of rungs, let

\[
  \mu_n=\delta_n .
\]

Each \(\mu_n\) is a finite nonnegative row measure. On every fixed initial block
of rungs, \(\mu_n\) eventually vanishes, while the full mass follows the moving
selected rung. Thus ordinary finite row mass and fixed-window admission do not
give tightness or rung-uniform distribution in the retained tower coordinate.
To spend that row as strict payment, one still needs the missing theorem:
uniform retained tower distribution of the localized \(H^1\)/enstrophy row, or
a typed route-out when the row concentrates along the moving selected rung.

This is not a new wall. It is the surviving content of W3 after Claude's
fixed-window retyping: the row is same-field dissipation on the packet, but its
strict tower admission/uniformity remains unproved.

DELETED: none.
CERTIFICATE: W3 is not empty by ordinary dissipation admission: the localized H1/enstrophy-viscous row is a same-field finite dissipation row on fixed retained windows, but the checked sources only spend it after admission into the same strict tower currency; the finite-measure model \(\mu_n=\delta_n\) shows fixed-window finite row mass can follow the moving selected rung without rung-uniform retained tower distribution or typed route-out.
REMAINING: W3, W7, W8, W9.
