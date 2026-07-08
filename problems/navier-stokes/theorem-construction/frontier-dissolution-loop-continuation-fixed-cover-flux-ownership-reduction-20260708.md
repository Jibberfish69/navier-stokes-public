---
theorem_id: frontier-dissolution-loop-continuation-fixed-cover-flux-ownership-reduction-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / fixed-cover flux ownership overlap
status: strict-reduction-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-fixed-region-flux-frame-gate-20260708.md
  - problems/navier-stokes/theorem-construction/mcp-frame-term-local-energy-inequality-in-same-fluid-moving-frame-1e370d37ab.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-flux-absorption-attempt-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-original-data-scaling-test-20260624.md
completion_truth: >-
  This packet records the positive overlap in the owner fixed-frame proposal.
  A fixed cover can carry global ownership exactly when the dangerous density
  has a common Eulerian balance: internal boundary flux cancels under a
  partition of unity, so packet exit is not loss but transfer to neighboring
  field regions. This is a strict reduction of the packet-identity intuition,
  not a wall deletion, because the dangerous selected record still needs an
  exact balance with signed pressure/stress export, critical unweighted budget,
  selected-linear original-data payment, and typed defect closure.
---

# Fixed-Cover Flux Ownership Reduction

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: fixed-cover flux cancellation does not identify
W7 with W9 and does not delete W3 or W8, because it converts packet-boundary
handoff into field-level internal flux cancellation only after a dangerous
record density and its common flux law are already installed.

Physical sentence: if a dangerous strain/pressure/vorticity record exits one
fixed region, it enters the neighboring field region; the payer is the whole
field, but this works only for a record with an exact Eulerian balance and a
signed/paid defect term.

## Exact Overlap Identity

Let \(\{\chi_\alpha\}\) be a smooth fixed partition of unity on the active
region, with \(\sum_\alpha\chi_\alpha=1\). Suppose a dangerous record density
\(R(u,p)\) has a common Eulerian balance on the same smooth Navier-Stokes field:

```math
  \partial_t R+\nabla\cdot J_R = G_R-B_R+\operatorname{Route}_R .
```

Then each fixed cell has

```math
  {d\over dt}\int \chi_\alpha R
  =
  \int \chi_\alpha(G_R-B_R+\operatorname{Route}_R)
  +
  \int J_R\cdot\nabla\chi_\alpha .
```

Summing over \(\alpha\), the internal flux cancels exactly:

```math
  \sum_\alpha\int J_R\cdot\nabla\chi_\alpha
  =
  \int J_R\cdot\nabla\left(\sum_\alpha\chi_\alpha\right)
  =
  0 .
```

Thus the fixed-frame overlap is real: packet exit is not disappearance; it is
the boundary-flux term in a global field balance. On a whole-space branch, the
outer boundary term is then handled by decay, by a terminal flux theorem, or by
a typed route-out.

## Why This Does Not Delete the Frontier

The identity above is formal until the dangerous record \(R\) and flux \(J_R\)
are the exact c0-bearing objects. For ordinary kinetic energy, Navier-Stokes has
the classical local energy balance/inequality, and the field-level cancellation
is standard. That controls global energy, not the selected critical
strain/pressure/vorticity record whose runaway would threaten the endpoint.

The checked pressure-flux source states the unresolved part. The pressure flux
\(\int p\,u\cdot\nabla\phi\) is visible in fixed regions, but current sources
do not give it a sign or coercive absorption. They require
`ScaleCriticalCubicFluxReserve.A` plus
`PressureConormalTraceAbsorption.A`.

The checked CKN supplement states the scale issue. Physical CKN mass supplies a
radius-weighted sum \(\sum r_j^2\mathcal C(Q_{r_j})\), not the unweighted
normalized sum \(\sum\mathcal C(Q_{r_j})\) needed to rule out one terminal
heat-scale packet at every dyadic scale.

The annular flux scaling test gives the same obstruction in flux language: the
fixed preterminal fluxes are absolutely continuous, but the terminal proof
needs the normalized stress-work variation clock

```math
  \sum_m r_m
  \int_{t_m-r_m^2}^{t_m}
  \left|{d\over dt}F_{r_m}^{phys}(t)\right|\,dt
  <\infty .
```

## Reduction Verdict

The overlap should be used, but it is a reduction target:

```math
  \text{dangerous selected record has a signed fixed-cover flux balance}
  \Longrightarrow
  \text{packet-boundary identity loss becomes global field flux cancellation}.
```

This can consume the false packet-custody worry once the balance is proved.
It does not supply W3's tower-uniform retained service payment, W8's
selected-linear original-data bill, W7's critical graph/route-out for the
dangerous record, or W9's compact material-time action/path reading.

No new wall is admitted. The exact proof object to attack is the signed
fixed-cover balance for the selected dangerous record, with every pressure,
viscous, vorticity, selection, and terminal-boundary defect paid or routed.

DELETED: none.
CERTIFICATE: Fixed-cover flux cancellation gives a real ownership bridge only after a common dangerous-density balance \(\partial_tR+\nabla\cdot J_R=G_R-B_R+\operatorname{Route}_R\) is installed; then \(\sum_\alpha\int J_R\cdot\nabla\chi_\alpha=0\) for a fixed partition of unity, so packet exit becomes internal field transfer. Current sources do not install that balance for the selected c0-bearing record: pressure flux still lacks sign/coercive absorption, physical CKN mass is radius-weighted rather than an unweighted normalized critical budget, and terminal stress-work variation is still open. Therefore the overlap is a strict reduction target, not a deletion of W3/W7/W8/W9.
REMAINING: W3, W7, W8, W9.
