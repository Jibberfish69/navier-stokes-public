---
theorem_id: frontier-dissolution-loop-continuation-fixed-region-flux-frame-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / owner fixed-region flux proposal gate
status: strict-reframe-candidate-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RecordAdmissionClosedness.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycles-11-13-stall-report-20260708.md
  - problems/navier-stokes/theorem-construction/mcp-moving-cylinder-ckn-admissibility-lemma-f2a546e26f.md
  - problems/navier-stokes/theorem-construction/mcp-frame-term-local-energy-inequality-in-same-fluid-moving-frame-1e370d37ab.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-flux-absorption-attempt-20260618.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-density-ckn-fourbody-supplement-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-original-data-scaling-test-20260624.md
  - problems/navier-stokes/ns-completion-route-sync-payload-20260708-iteration-2.yaml
completion_truth: >-
  This gate tests the owner-frame proposal to drop packet custody and work on
  fixed regions / local-energy flux. The proposal is accepted as a strict
  route reframe: fixed Eulerian/suitable closure can remove some packet
  identity bookkeeping if a signed fixed-cylinder flux theorem is proved.
  It is rejected as a deletion. Current checked sources give CKN/local-energy
  admissibility and critical-density criteria, but they do not prove a signed
  pressure-export tax, pressure-trace absorption, scale-critical cubic reserve,
  unweighted normalized CKN budget, W3 tower-uniform service row, W8 selected
  original-data bill, or W9 action/path content.
---

# Fixed-Region Flux Frame Gate

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: the fixed-region flux proposal does not identify
W7 with W9 and does not reduce W3/W7/W8/W9 to one surviving written object,
because closure of the suitable/local-energy class on fixed cylinders gives
admissible weak-limit bookkeeping, while the current frontier asks for a signed
flux/coercivity theorem plus W3 tower-uniform service payment, W8 selected
original-data bill, and W9 material-time action/path content.

Physical sentence: abandoning packet custody removes the moving-label identity
tax, but the same velocity field must still prove that supercritical delivery
into a fixed cylinder is taxed by viscous burn and pressure/stress export with
the right sign and scale; current local-energy sources see that flux but do not
coerce it.

## Source Check

The moving-cylinder CKN lemma and frame-term local-energy calculation are real
support. They show that, under bounded distortion and `SCF_base` smallness, the
same-fluid moving cylinder has CKN-admissible scale-critical quantities, and
the local energy inequality pulls back with controlled frame terms. That is a
closure/admissibility statement, not a signed tax.

The pressure-flux source states the missing sign/coercivity exactly. The
pressure term has the model form

```math
  \mathcal P_\phi = \int p\,u\cdot\nabla\phi .
```

The checked estimate bounds it by critical cubic/pressure currencies, but it
has no sign. Its verdict says pressure/cubic flux absorption would require

```math
  \text{ScaleCriticalCubicFluxReserve.A}
  +
  \text{PressureConormalTraceAbsorption.A},
```

and neither child is installed. Thus a fixed-region local-energy frame sees
the pressure export, but current sources do not prove it is a restoring tax.

The CKN four-body supplement gives another exact boundary. It proves a
criterion: same-carrier critical-density domination plus an unweighted
critical-density budget would forbid the retained terminal selected carrier.
It also states the production failure. Physical CKN mass controls

```math
  \sum_j r_j^2\,\mathcal C(Q_{r_j}),
```

not

```math
  \sum_j \mathcal C(Q_{r_j}).
```

One terminal heat-scale packet per dyadic scale can keep the radius-weighted
physical CKN mass finite while the normalized CKN sum diverges. So fixed
regions do not automatically supply the unweighted scale-critical budget.

The annular flux scaling test says the same thing in stress-work language.
Fixed preterminal annuli have ordinary absolute continuity, but the terminal
heat-scale family needs

```math
  \sum_m
  r_m
  \int_{t_m-r_m^2}^{t_m}
  \left|{d\over dt}F_{r_m}^{phys}(t)\right|\,dt
  <\infty .
```

This is `SignedSmoothSamePacketCommutatorCoercivity.A` written in annular-flux
coordinates. It is not installed by original smooth data or by local-energy
closure alone.

## Gate Verdict

The owner-frame proposal is accepted only as a strict reframe/reduction:
if a fixed-cylinder signed pressure/stress-export correction to the local
energy inequality is proved, then the packet-custody portion of W7/W9 can be
replaced by closed suitable-class bookkeeping on fixed regions.

That antecedent is not installed. The current sources leave the signed
pressure/export tax, pressure-trace absorption, scale-critical cubic reserve,
unweighted normalized CKN budget, and annular flux-variation clock open.
They also do not construct W8's selected-linear original-data bill or W3's
rung-uniform retained service-payment row.

No new wall is admitted. A name such as
`FixedCylinderSignedPressureExportTax.A` would currently be non-net-negative:
it states the missing theorem but does not delete two existing frontier walls
without proof.

DELETED: none.
CERTIFICATE: The fixed-region/local-energy frame is a lawful reframe but not a deletion: current CKN/suitable/local-energy sources provide admissibility and closure support, while the checked pressure-flux source still requires ScaleCriticalCubicFluxReserve.A plus PressureConormalTraceAbsorption.A, the CKN supplement says physical CKN mass controls \(\sum r_j^2\mathcal C(Q_{r_j})\) rather than \(\sum\mathcal C(Q_{r_j})\), and the annular flux scaling test leaves the normalized terminal stress-work variation clock unproved; therefore fixed-region closure does not by itself prove W3 tower-uniform service payment, W7 graph/route-out, W8 selected-linear original-data bill, or W9 compact material-time action/path content.
REMAINING: W3, W7, W8, W9.
