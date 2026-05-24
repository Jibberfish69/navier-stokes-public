# Euler / Navier-Stokes Viscosity Scenario Separation Map

## Purpose

This is the branch-local map for where the Euler mirror meets the parent
Navier-Stokes program, where the meeting is smooth or regularity-conditional,
where the meeting is nonsmooth, and what viscosity is doing in each case.

This file is not a proof of global Euler smoothness and not a binary verdict on
Euler. It is a route-control surface: every Euler/NS comparison in the branch
must land in one of these scenario rows before it is used as theorem authority.
The `ESM.N1` and `ESM.N2` rows now have separate global periodic base-`Member_E`
nonsmoothness bridges.

## Governing Separation

The Euler mirror starts from the actual inviscid equation object:

```math
Member_E(Q)=EVol_Q(u)\wedge EMom_Q(u,p).
```

That means local flux-volume balance plus distributional momentum-pressure
fidelity. Smoothness, one-field coherence, Lagrangian carriers, and admissibility
are extra layers. They can be theorem targets, but they are not hidden inside
base Euler membership.

The parent Navier-Stokes program has extra proof labor from fixed positive
viscosity. In the repo-visible comparison surfaces, viscosity acts as:

1. a shear-participation mechanism;
2. a lower-collar sink `2nu D_low`;
3. an `ACT.KX` absorption scheduler through `c_nu N`;
4. a top-viscous and viscous-center readout supplier;
5. a dyadic high-frequency damping term `nu D_N`;
6. a parabolic observability / heat / Stokes engine;
7. a fixed-`nu` class discriminator at the Euler boundary.

Euler keeps transport, pressure Poisson response, flux-volume structure, and
some fixed-cover bookkeeping. It does not keep those seven viscosity jobs unless
a new Euler theorem proves a replacement.

## Referee Case Matrix

| case | verdict | proof/readback | NS control use |
| --- | --- | --- | --- |
| `ESM.S1` fixed-interval classical Euler | smooth by hypothesis | smoothness is assumed on the interval | fixed-`nu` NS comparison can use the same datum/interval, but does not create Euler smoothness |
| `ESM.S2` fixed-thickness stationary shear layer | smooth by hypothesis | each positive-thickness layer is a smooth exact Euler solution | the zero-thickness limit is judged separately |
| `ESM.C1` `ELCI.CP.A` envelopes | proved conditional | same-cover center, oscillation, and pressure-return envelopes give the L1 ledger | replaces `ACT.KX` / `ACT.X-TopVisc` / `2nu` only after those Euler envelopes are supplied |
| `ESM.C2` positive-control / compactness / Route B | proved conditional | theorem order survives under explicit Euler controls | parent damping and parabolic pieces are not imported |
| `ESM.C3` retained-window native forcing | proved conditional | retained local smooth center-ball and point-recovery inputs are assumed | `RSCB.NKF -> NKF.Native -> ACT.KX` is comparison authority only without those inputs |
| `ESM.N1` tangential slip / vortex sheet | nonsmooth control | pressure-compatible weak Euler member; not a one-field classical solution; global periodic slab bridge installed | NS must attack this through participation/viscous smoothing, not pressure alone |
| `ESM.N2` stationary unbounded shear | false base implication | base `Member_E` holds, smoothness and the ELCI ledger fail; global periodic singular-sheet bridge installed | parent receiver success depends on absorption/readout machinery absent from Euler |
| `ESM.N3` zero-thickness smooth-layer limit | nonsmooth control | smooth layers converge to a nonsmooth Euler member | topology/limit closure does not preserve one-field smoothness |
| `ESM.N4` same-datum nonclassical weak branch | nonsmooth control | nonclassical branch is separated from the classical smooth branch | fixed-`nu` transfer cannot identify weak-branch behavior with classical NS smoothness |
| `ESM.N5` boundary/axisymmetric blowup comparison | nonsmooth control | domain-sensitive singularity evidence | not the no-boundary finite-energy Euler case |
| `ESM.N6` shared Pack / non-one-field split | nonsmooth control | shared Pack is flux-volume only; Part/Field are extra regularity/coherence layers | NS Part/Field proofs become Euler nonsmoothness diagnostics, not Euler membership laws |
| `ESM.V1` `ACT.KX` scheduler | non-Euler import | `c_nu N` and first-exit absorption do proof labor | no Euler term replaces that scheduler |
| `ESM.V2` `2nu` / top-viscous receiver | non-Euler import | lower-collar sink and top-viscous ledgers do proof labor | Euler replacement is only the explicit conditional `ELCI.CP.A` split |
| `ESM.V3` `nu D_N` dyadic damping | non-Euler import | high-frequency return comes from viscous coercivity | Euler keeps dyadic bookkeeping without damping |
| `ESM.V4` heat/Stokes/static diffusion | non-Euler import | parabolic observability and semigroups do proof labor | removed at `nu=0` |
| `ESM.V5` selector/export viscous consumers | non-Euler import | pair-defect diffusion and low-mode viscous scale do proof labor | transport/readout geometry survives only as conditional/provenance support |
| `ESM.V6` first-rung viscous-center supplier | non-Euler import | the supplier is literally `nu` times a center Laplacian readout | it vanishes as an Euler mechanism at `nu=0` |

## Case Class A: Euler Meets NS And Is Smooth / Regularity-Conditional

| case | Euler status | NS contact point | what survives | authority |
| --- | --- | --- | --- | --- |
| A1. Classical Euler on a fixed interval | smooth by hypothesis on that interval | classical NS comparison and fixed-`nu` transfer | transport, pressure, incompressibility, high-regularity flow map | [fixed-`nu` hierarchy](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md) |
| A2. Smooth stationary shear layers at fixed thickness | each `epsilon>0` layer is smooth and classical | positive-scale readout / Field diagnostic | exact Euler solution for each fixed thickness | [smooth-data bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md) |
| A3. Optional one-field Euler regularity | regularity above `Member_E`, not membership | parent `OFP.A` / `Field` | possible transport/pressure defect-control program | [EOFP](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md), [EOFR](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-one-field-forward-preservation-reduction-note.md) |
| A4. `ELCI.A` after a ledger is supplied | closed conditional receiver theorem | parent `LCI.A` receiver shape | moving cover, transported centers, oscillation, pressure ledger under explicit Euler control envelopes | [ELCI.A](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md), [direct attempt](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-a-direct-transport-pressure-attempt-20260519.md), [ELCI.CP.A closure](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md) |
| A5. Positive-control Euler packet | conditional regularity program | scale/control/compactness/Route B scaffold | theorem order, compactness shape, dyadic bookkeeping | [positive-control program](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/positive-control-euler-program.md), [Route B mirror](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md) |
| A6. Transport selector/readout interfaces | regularity support only | selector / export families | packet geometry, pair-defect transport, readout alignment | [selector walkdown](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/selector-geometry-euler-walkdown-program.md), [export walkdown](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/export-whole-space-euler-walkdown-program.md) |
| A7. Compactness on one fixed Euler family | conditional on explicit Euler controls | parent compactness architecture | strong-enough convergence and tensor closure can survive in shape | [integrated Euler program](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/integrated-euler-closure-program.md), [branch audit index](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/branch-audit-index.yaml) |
| A8. Retained-window native forcing | conditional on local smooth center-ball bounds | `RSCB.NKF -> NKF.Native -> ACT.KX` | point forcing recovery survives only as retained-smoothness input, not from base Euler membership | [retained-window theorem](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-retained-window-native-forcing-theorem-program.md) |

Readback: these rows are not automatic Euler smoothness. They are places where
smoothness is assumed, conditional, or an explicitly chosen regularity layer.

## Case Class B: Euler Meets NS And Is Nonsmooth / Not Forced Smooth

| case | Euler status | NS contact point | what fails or separates | authority |
| --- | --- | --- | --- | --- |
| B1. Base `Member_E` | equation member may be nonsmooth | shared Pack only at flux-volume level | `Part`, `Field`, flow map, and smoothness are extra | [Euler membership](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md), [NS dual map](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md) |
| B2. Tangential slip / vortex sheet | base equation member, not classical one-field | `Field` / `Jump`; possible `Dead` cross-entry only after routing | normal flux and pressure compatibility hold while tangential velocity jumps; the periodic slab construction makes this a global base-`Member_E` nonsmoothness theorem with nonsmooth initial data | [vortex-sheet witness](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md), [periodic bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md), [endpoint taxonomy](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md) |
| B3. Smooth layers converging to slip | nonsmooth singular limit of smooth classical layers | positive-scale readout / topology warning | weak or local `L^p` closure does not preserve one-field coherence | [smooth-data bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md) |
| B4. Same-datum non-classical Euler branches | non-classical branch, admissibility-dependent | weak-branch warning for NS transfer | same datum may have nonunique weak branches; not the classical smooth branch | [smooth-data bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md) |
| B5. Fixed-datum boundary blowup | classical blowup in boundary/axisymmetric setting per recorded external route | domain-sensitive Euler singularity scenario | not the no-boundary finite-energy problem | [smooth-data bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-smooth-data-to-euler-nonsmooth-bridge-20260517.md) |
| B6. Vanishing-viscosity defect boundary | boundary object, not clean Euler membership | fixed-positive-viscosity separation | residual viscous/Reynolds/boundary-layer/energy defect is a separate object | [frontier packet](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/euler-mirror-frontier-packet.md), [viscosity ledger](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/viscosity-dependence-ledger.yaml) |
| B7. Endpoint labels over Euler | failures of added classes, not base membership | NS `Dead`, `Blown`, `Jump` endpoint cover | slip is native `Jump`; `Dead` and `Blown` require typed regularity/carrier layers | [EL13 demotion](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-law13-surviving-endpoint-exclusion-program.md), [endpoint taxonomy](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md) |
| B8. Full-general `ELCI.CP.A` from base `Member_E` | false | parent receiver chain | stationary unbounded shear is a base Euler equation member but blows the center/oscillation ledger on collars crossing the singular sheet; the periodic construction globalizes this false implication | [ELCI direct attempt](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-a-direct-transport-pressure-attempt-20260519.md), [ELCI.CP.A closure](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md), [periodic unbounded-shear bridge](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-unbounded-shear-euler-ledger-failure-bridge-20260524.md) |
| B9. Exact-potential branch after heat entry | not an Euler route in installed form | heat/static-diffusion/Stokes/Carleman packets | parabolic principal operator disappears | [exact-potential obstruction](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/exact-potential-euler-entry-obstruction-note.md) |
| B10. Selector to `SG.4` | blocked at parent observability/coercivity | pair-defect diffusion and selector observability | pair-defect transport survives, parabolic budget does not | [selector walkdown](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/selector-geometry-euler-walkdown-program.md) |
| B11. Route B / gradient / scale tail | not closed on Euler in installed form | `nu D_N`, fixed-threshold damping, NS continuation | dyadic quantities survive; coercive damping and NS continuation do not | [Route B mirror](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/route-b-euler-closure-theorem.md), [gradient pack](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/gradient-discharge-source-pack.md) |
| B12. Curvature/geometric branch | provenance only in installed form | Ricci/parabolic gradient damping | geometric role survives, PDE packet is not on the Euler surface | [curvature support note](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/curvature-provenance-euler-support-note.md) |
| B13. Export low-mode consumer | blocked at viscous-scale consumer | whole-space NS low-mode strain threshold | readout survives; `nu 2^(2j0)` consumer is not Euler continuation | [export walkdown](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/export-whole-space-euler-walkdown-program.md) |

Readback: the clean bad Euler model is pressure-compatible tangential slip /
one-field failure. This is exactly why the parent NS proof must spend viscosity
at `Part`, `Field`, and the receiver chain; pressure alone is not doing that job.

## What Viscosity Is Doing

| viscosity job | parent NS role | Euler status | theorem consequence |
| --- | --- | --- | --- |
| Shear participation | makes pressure-viscosity participation a stronger object than pressure compatibility | absent | Euler slip can satisfy base equation membership |
| `2nu D_low` lower-collar sink | absorbs centered and oscillation Young terms in the lower-carrier identity | absent | `ELCI.A` is closed only by explicit `ELCI.CP.A` envelopes; base `Member_E` does not supply it |
| `c_nu N` / `eta_X` scheduler | absorbs simultaneous core/excess growth in `ACT.KX` | absent | `ACT.KX` is comparison order only |
| `ACT.X-TopVisc` and top-viscous readout | supplies top-rung and center ledgers | demoted | top-viscous files are provenance, not Euler inputs |
| first-rung viscous-center supplier | supplies `nu Delta U_1` center readout under the lower-carrier route | absent | no Euler term remains when `nu=0` |
| `nu D_N` dyadic damping | closes gradient, scale-tail, and Route B continuation inequalities | absent | dyadic bookkeeping survives without the parent closure |
| heat/Stokes/static diffusion | gives semigroup and observability machinery | absent | exact-potential road is non-Euler/provenance unless rebuilt outside this terminal branch |
| selector pair-defect diffusion | supports observability/coercivity to one-sided budgets | absent | selector road stops at transport pair-defect packet |
| fixed positive `nu` class | distinguishes NS internal objects from Euler boundary/defect objects | comparison only | vanishing-viscosity residuals are separate defect-boundary cases |
| parabolic smoothing / compactness | can supply time regularity and strong convergence inputs | not automatic | compactness is conditional on one fixed Euler family with explicit controls |
| viscous low-mode scale | calibrates export consumer through `nu 2^(2j0)` | absent | export must feed an Euler continuation quantity instead |

## Consequence For The Receiver Target

The previous target label `ELCI.CP.A` is still the receiver seat, and the May 22
closure theorem has now fixed the split:

```math
\boxed{
ELCI.CP.A\text{-}Separation:
\text{ under explicit same-cover Euler controls, }
A_E^{ctr}+\Omega_E^{osc}+\Pi_E^{ctr}\in L^1(I)
\text{ holds, while base }Member_E
\text{ alone does not force it.}
}
```

The May 22 closure note proves the positive side under explicit same-cover
center, oscillation, and pressure-return envelopes. It proves the negative side
with stationary unbounded shear, showing that base equation membership does not
force the ledger.

That is the responsible Euler replacement for the parent
`ACT.KX` / `ACT.X-TopVisc` / `2nu` absorption chain: the receiver ledger is
closed as regularity-conditional, and the base equation case is explicitly
separated from it.
