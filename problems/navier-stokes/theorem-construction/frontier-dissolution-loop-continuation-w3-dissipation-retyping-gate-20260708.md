---
theorem_id: frontier-dissolution-loop-continuation-w3-dissipation-retyping-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / W3 partner-candidate gate / dissipation-row retyping
status: partial-retyping-accepted-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycles-11-13-stall-report-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-door1-enstrophy-viscous-service-persistence-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-critical-service-persistence-audit-20260708.md
  - problems/navier-stokes/source-frontier.yaml
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-installed-frontier-20260708.md
---

# W3 Gate: Dissipation-Row Retyping

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: Claude's dissipation-row retyping does not identify
W3 with W7, W8, or W9, because it retypes the W3 Door-1 \(H^1\) response as a
same-field localized enstrophy-viscous row, while W7 is retained graph passage,
W8 is selected-linear original-data payment, and W9 is material-time certificate
path/action closedness.

Physical sentence: in one incompressible field, strain curvature and vorticity
curvature are two readings of the same viscous response; the remaining W3
question is whether that collected localized dissipation is distributed
rung-uniformly through the retained strict tower, or whether concentration of
that row is a typed route-out.

## Source Check

Claude's fixed-window identity is accepted at the level the Door-1 source
itself uses. The Door-1 note says the local strain equation tested against
\(\phi^2S\) contains the row

\[
  \nu\int \phi^2|\nabla S|^2,
\]

with vorticity, pressure, transport, and collar as the other same-record rows.
It then gives localized Hodge-Korn:

\[
  \|\nabla E_n\|_{L^2(Q)}^2
  \le
  C\left(
  \|\nabla\omega(u_n)\|_{L^2(\Lambda Q)}^2
  +\mathsf P_{\rm collar}(u_n)
  +\mathsf P_{\rm owner}(u_n)
  \right),
\]

where \(E_n=S(u_n)-A_n\). Thus the W3 \(H^1\) response is not an external norm.
On a retained fixed packet, it is the localized enstrophy-viscous row plus the
already named collar/owner terms.

The same source also blocks the deletion. Its completion truth is conditional:
if that row is admitted as actual retained strict payment, zero payment gives
strong \(L^3\) persistence of the non-affine strain defect. The final Door-1
paragraph says the retained strict tower still requires row
admission/finiteness, Door 2a, Door 2b, and global no-double-count accounting.

The current source-frontier and live-edge state the same condition: the Door-1
note gives the conditional discharge if the strict bill admits the local strain
\(H^1\) row as retained same-field payment, and the bubble pays the localized
\(H^1\)/enstrophy-dissipation response from the same strain-production budget.
They do not state that finite total dissipation on actual retained intervals is
already a rung-uniform strict tower payment row.

The old ZPF.21 / W2 lane does not supply a new deletion target. The installed
frontier records W2 as already confirmed deleted into W3: the atom-class package
is paid, and the remaining clause is W3's uniformity along the climb. Spending
ZPF.21 again here would only reimport a terminally assigned wall back into its
survivor.

## Gate Verdict

The candidate is accepted as a retyping and rejected as a deletion.

Accepted: the Door-1 \(H^1\) response row is the localized same-field
enstrophy-viscous dissipation row, read in strain coordinates, with collar and
owner terms included exactly as the Door-1 source states.

Rejected as deletion: W3 still asks for the strict retained tower version of
that row. The open fact is not the pointwise/global strain-vorticity identity;
it is the rung-uniform distribution, localized collar ownership, and typed
route-out of concentration of that collected row across the strict tower.

No new wall is admitted. W3 is narrowed internally to: prove the localized
enstrophy-viscous \(H^1\) row is admitted and rung-uniformly distributed as
strict retained tower payment, or route its concentration through the standing
typed grammar.

DELETED: none.
CERTIFICATE: Claude's W3 dissipation-row retyping is accepted only as a fixed-window identity: the Door-1 H1 response is the localized same-field enstrophy-viscous row plus collar/owner terms, but no checked source proves this collected row is rung-uniformly distributed as strict retained tower payment or routes concentration of that row; W3 remains CriticalServicePersistenceFromPayment.A narrowed to the localized H1/enstrophy-viscous row's tower-uniformity/admission-or-route-out burden.
REMAINING: W3, W7, W8, W9.
