# Navier-Stokes Proof-Program Route Table

## Purpose

This table records the NS-only proof programs as different mathematical roads,
not as interchangeable labels. Its job is to prevent the common false bridge:

```text
estimate for A
quietly used as
closure of B
```

where `A` and `B` live on different carriers, coordinates, scales, or endpoint
objects.

## Authority Snapshot

The current repo picture is internally inconsistent.

| Surface | Reading |
| --- | --- |
| `live-theorem-edge.yaml` | class-membership / law-endpoint matrix is primary |
| `proof-obligation-matrix.yaml` | class-membership route is primary; TPS/SG.4 is downstream |
| `route-lock.yaml` object-law block | class-membership object law governs finite-time class exit |
| `route-lock.yaml` primary-route block | source-grounded four-bridge remains locked-primary |
| `live-theorem-edge.md` | TPS strong/defect bridge is primary |
| `route-hypothesis.yaml` | demoted stale/generated snapshot; current live authority is CM / law-endpoint matrix |
| `route-integrity-report.yaml` | older four-bridge route is primary |

For current theorem work, the safest read is:

```text
primary live program: class-membership / endpoint-exclusion
active positive alternatives: mixed-jet, Lagrangian, fixed-family packet closure
downstream or support: TPS/SG.4, exact-potential, strict-shadow export
exploratory: Euler mirror, localized projector, Hopf-shuffle / BRST / exterior algebra
```

This table records the old conflict and the current repair: `route-hypothesis.yaml`
is no longer a live authority surface.

## Transfer Rule

A result transfers from one program into another only if a theorem states the
transfer. That bridge must name:

| Required field | Meaning |
| --- | --- |
| source program | which program proved the estimate |
| source object | the object actually controlled |
| target program | which program wants to use it |
| target object | the object the target needs closed |
| carrier or coordinate transfer | Eulerian, Lagrangian, transported, carrier, selector, or shadow surface |
| scale conversion | dyadic, collar, threshold, or low-mode conversion |
| pressure/source transfer | pressure, source, commutator, or leakage terms |
| endpoint compatibility | how the estimate interacts with Dead / Blown / Jump or continuation |
| noncircularity check | proof that the bridge does not spend the target conclusion |

## Bridge-License Rule

The core repo risk is bridge-license failure: an estimate can be useful and
still fail to prove the propagated object currently needed by the live route.
Every import must therefore carry an explicit bridge license before it is used
as closure.

## Program Table

| Program | Authority Status | Propagated Object | Surface | Bridge Needed | Current Open Theorem | Allowed Imports | Forbidden Substitutions |
| --- | --- | --- | --- | --- | --- | --- | --- |
| Class-membership / endpoint-exclusion | primary live authority | `M_Q(u,p)` membership witnessed by `Pack / Part / Field` on same-fluid families | `live-theorem-edge.yaml`, `proof-obligation-matrix.yaml`, `mpp-class-membership-contradiction-frontier-packet.md` | bridge estimates into the exact membership object before using them as closure | law / endpoint matrix; then `CFI.A -> OFP.A -> LCI.A` | fixed-family, mixed-jet, Lagrangian, selector, and export estimates only through named bridge theorems | replacing class exit with positive smoothness control; treating one matrix entry as a whole-row discharge |
| Mixed-jet positive controls | active engine / support candidate | Sobolev or analytic mixed-jet tower norms | mixed-jet tower and weighted-envelope theorem notes | theorem that tower control preserves `Pack / Part / Field` membership or supplies a declared continuation route | full mixed-jet convolution / radius-loss closure | support positive continuation or feed CM through a membership bridge | treating tower boundedness as direct CM persistence |
| Frozen-family Eulerian source route | active engine inside `OFP.A` | fixed Eulerian packet increments, frozen-net source ledgers, pressure and strain/cascade channels | `FCI.5f`, `FPCR.C`, `FSCR.C`, `FFSRC.A` surfaces | flow-map, collar, pressure/source, and scale-conversion bridge into transported one-field coherence | noncircular source-side interval control feeding receiver-side `LCI.A` | source estimates feeding `OFP.A` / `LCI.A` through explicit bridge lemmas | using fixed-family control as transported coherence without the moving-collar bridge |
| Lagrangian / deformation route | active deep-engine candidate below route lock | pulled-back velocity/pressure, `F`, `A`, `G`, ellipticity, commutators, pressure recovery | Lagrangian six-lemma, deformation, and Stokes bridge notes | collar and pressure-transfer theorem into `Pack / Part / Field` or receiver-side `LCI.A` | no-loss pressure recovery and evolving-coordinate absorption on the same surface | flow-map, deformation, and pressure-transfer support where explicitly proved | reading Lagrangian energy closure as CM or `LCI.A` closure without bridge |
| TPS / SG.4 selector-defect | downstream / readout context, stale-primary on older generated surfaces | selector-good pair defect `W_J`, `[lambda_J - s_J]_+`, `PD.70`, `Xi_J`, `SG.4` data | TPS strong/defect and selector observability notes | class-membership bridge from selector readout to exact `Pack / Part / Field` object | selector calibration / observability before `SG.4`; downstream `BR.lambda2` | one-field readout support after direct matrix work or after an explicit CM bridge | treating `SG.4` as prerequisite closure for `CFI.A`, `OFP.A`, or `LCI.A` |
| Euclidean strict-shadow / Route A-B export | downstream / export context | `ShadowDef`, `E_sh`, Euclidean carrier control, robustness errors, whole-space data | strict-shadow and Euclidean discharge notes | explicit export theorem from the internal surface to the whole-space surface | full-data lift, strict shadow, global carrier control, and shadow-error coupling | downstream whole-space discharge after internal closure supplies export data | replacing torus-first or CM internal closure with Euclidean export |
| Exact-potential / Hodge / normal-covector readouts | downstream / readout support | branch-specific one-field readout objects and moment/covector witnesses | exact-potential and Hodge witness-to-readout notes | readout-to-`Field` bridge on the live CM object | branch-specific observability and readout closure | support one-field readout after bridge license is named | treating a readout witness as the propagated CM object |
| Euler mirror / localized projector / exterior algebra / Hopf-shuffle / BRST | exploratory / classifier | parallel-equation, coarse, algebraic, or classifier objects | mirror and exploratory theorem notes | none for live closure unless promoted by a direct NS theorem bridge | classification, obstruction finding, or structural refinement | vocabulary and diagnostics only when source-labeled | using exploratory objects as live NS authority |

## Closure Ecology

The right holistic picture is a closure ecology, not a merged theorem. Each
program keeps its native object. A contact point is valid only where a theorem
shows that one native object supplies a named missing input for another native
object, without spending the target conclusion.

The central live junction remains:

```text
FCI.5f + LCI.A
-> CSP.A
-> OFP.A
-> CFI.B3
-> CFI.A
-> endpoint exclusion
```

The closure ecology is subordinate to that live route. It is a bridge map for
finding suppliers, not a new authority surface.

| Contact | Source Object | Target Slot | Bridge License | Status | Forbidden Overclaim |
| --- | --- | --- | --- | --- | --- |
| deformation geometry to `Pack` | flow map, `F`, deformation gauge, collar strain | `CFI.B1` / pack-side gauge survival | collar strain in `L^1` controls `Gamma_sharp` on the same label collar | structurally reliable support bridge because it uses the flow-map ODE | deformation gauge control does not close all of CM or `OFP.A` |
| deformation geometry to receiver segment geometry | label-halo gradient control, deformation halo regularity | `OFP.C1e3`, `OFP.C1e4`, `WTC.4 -> WTL.A -> LCI.A_{delta+delta_seg}`, `DG_rec` | label-halo regularity must supply only segment-thickness / lower-carrier geometry or the exact `RCF.1` / affine-defect inputs | live and useful against the receiver circularity | segment thickness alone is not `LCI.A`, `CSP.A`, or `Field` |
| deformation drain to tower matrix | `(v,G)`, coefficient commutator, Lagrangian drain functional | Eulerian mixed-source transfer matrix / finite-difference defect energy | prove `K_Lag + D_Lag + C_Lag` shadows into the Eulerian tower inequality | high leverage, least proved | shared heat language is not a theorem bridge |
| tower / finite differences to `Field` | mixed-jet transfer matrix, finite-difference defect energy | finite-difference coherence modulus inside `OFP.A`, or local `TW_ctr` supplier beneath `RCF.A` | tower control must propagate the same localized defect-energy family required by `Field` or the exact transported-center pressure/top-viscous ledgers | route-native support path | tower boundedness is not direct CM persistence |
| tower / frozen family to source ledger | packet source terms, pressure/strain/cutoff ledgers | `FFSRC.A`, `FCI.5f`, with exact pressure wall `FPCR.C` / `FFPB.A0` kept visible | translate tower source control into the fixed-family ledger without spending receiver data | useful source-side bridge | source closure cannot be asserted independently of collar data |
| frozen-family plus receiver/collar to `OFP.A` | source ledger plus lower-carrier receiver package | `FCI.5f + LCI.A -> CSP.A -> OFP.A` | source and receiver halves must remain separate until the stated recombination theorem | highest-authority executable junction | fixed-family control is not transported one-field coherence by itself |
| TPS / `SG.4` after endpoint progress | selector defect / strain readout | downstream survivor consumer | requires class-membership bridge from survivor branch to selector readout | downstream certification or sharpening only | `SG.4` cannot retake route authority |
| Euclidean strict shadow after internal closure | strict export/lift carrier and shadow errors | whole-space export after torus/internal closure | explicit export theorem from internal closure to whole-space data | downstream export mechanism | Euclidean shadow cannot replace the internal CM route |

## Closure Loops

| Loop | Role | Chain | Critical Theorem | Authority |
| --- | --- | --- | --- | --- |
| Route-native `OFP` loop | executable live-edge closure | `FFSRC.A` or exact `FCI.5f` plus `LCI.A` / receiver closure -> `CSP.A` -> `OFP.A` -> `CFI.A` | `FFPB.A0` or exact pressure wall path; `RCF.A` / `LCI.A`; thickened collar consumer; widened receiver return | highest |
| deformation-assisted receiver loop | targeted supplier search | deformation strain / halo-gradient control -> `DG_rec` -> `RCF.1` + affine-defect first-rung input -> `RCF.A` / `LCI.A` | prove `DG_rec` noncircularly; then decide whether the result is only supplier theorem `DTR.A` or true closure `DTR.C` | promising |
| deformation-to-tower drain loop | high-risk mechanism search | Lagrangian drain on `(v,G)` -> Eulerian tower shadow inequality -> local `TW_ctr` -> pressure/top-viscous center forcing -> `RCF.A` or `Field` | `K_Lag` drain shadows to Eulerian defect-energy control without spending `LCI.A` / `CSP.A` | speculative, high payoff |
| tower-to-source loop | narrow source-side support | mixed-jet transfer control -> fixed-family packet source bounds -> pressure / strain / cutoff ledgers -> `FCI.5f` | tower coefficient control gives widened pressure bridge or exact frozen-net pressure wall | useful but not whole-route closure |
| survivor dictionary loop | obstruction alignment | tail leakage, tower flux/debt, deformation commutator, frozen-family source debt, receiver collar defect | one-way translations first; equivalence only after proof | organizing only |

## Corrected Synthesis

The clean program is:

```text
deformation drain
-> tower flux control
-> source ledger + receiver collar closure
-> one-field preservation
-> class-membership forward invariance
-> endpoint exclusion
```

The immediate theorem-facing question is narrower:

```text
Can deformation geometry or tower control prove the remaining receiver/collar
theorem feeding LCI.A?
```

That is the best contact point because the source side already has an organized
near-closure package, while the live burden returns to the receiver side once
the strengthened source branch is granted.

The sharpened theorem-facing version is now:

```text
DTR.A: DG_rec + TW_ctr -> (RCF.1) + (RCF.2) + (RCF.A0)
DTR.B: DTR.A + RCF.A -> LCI.A
DTR.C+: DG_rec + TW_ctr^aff -> A_ctr in L2 directly
DTR.E: ATE.A affine-normalized receiver packet inequality -> RCF.A -> LCI.A
DTR.Eb: Dini inequality for full affine bookkeeping energy -> RCF.A -> LCI.A
```

`DTR.A` is only a supplier theorem. `DTR.C+` is the true receiver-closure target:
the tower input must close the affine-frame transformed forcing/recycle problem,
not merely supply the residual pressure/top-viscous ledger. `DTR.E` names the
concrete packet version of that target: the state packet is affine-normalized,
while affine-defect, pressure-tail, and tower remainder terms stay in the source
ledger for the `ATE.A` inequality. `DTR.Eb` is the broader bookkeeping-energy
form and is licensed only if its Dini inequality is proved directly.
After the `ATE.1` center-state identity, the usable `ATE.A` object is the local
affine receiver packet on enlarged transported-center balls; the center-only
packet has zero intrinsic dissipation and is only the algebraic skeleton.
The local packet reduces the remaining work to two live estimates:

```text
S_press^aff + S_top-visc^aff in L1(I)
```

and

```text
S_mid^aff + Cut_mid + Cut_osc + Cut_visc in L1(I).
```

`ATE.4` is then the local Sobolev/Morrey readout, and `ATE.5` is the
source-ledger readout from `ATE.3`, the pressure-tail supplier, `m>=3`, and the
local affine Gronwall bound.

The bundled version of the same target is `ACT.A`: one affine-center master
packet should close `D_1^aff in L1(I)`, `F_ctr_res in L1(I)`, and
`H_osc^alpha in L2(I)` together. This is licensed only if the affine-center
energy inequality is proved with external or dissipatively absorbed `L1`
coefficients. The bootstrap

```text
E_ACT in Linfty => B_ACT,F_ACT in L1 => E_ACT in Linfty
```

is explicitly not a proof.

The valid completion is finite-stage:

```text
ACT.Stage(0)..ACT.Stage(m+2) => ACT.E2.
```

At rung `r`, lower affine rungs may be used as already-controlled external
data. The same-stage `E_ACT` bound may not be used as a coefficient. The middle
block is triangular; the live checks are the affine-ball pressure response and
the cutoff/frame estimate.

There is also a conditional scale-small branch:

```text
ACT.ScaleSmall:
dX_exc + cN <= L X_exc + (C_cut+C_press) X_exc^(1/2) N + F
```

with `L,F in L1`. If the initial affine excess and additive source budget stay
below the epsilon-star threshold, the `X_exc^(1/2)N` term is absorbed and
`ACT.E1/E2` follows on that affine interval. This is excess-only: center zero
modes must be gauged away or carried separately, and a full-strip proof needs a
small-budget scheduler or retained-window decomposition.

The named atom split is:

```text
ACT.X-Def:
  X_exc is the small affine excess.
  Y_read = A_core^ctr + A_buf^ctr + X_exc is the full readout packet.
  A_core^ctr is the lower pre-pressure center ledger.
  A_buf^ctr is the m+1,m+2 readout/top-viscous buffer ledger.

ACT.X-Energy:
  dX_exc + cN <= L X_exc + (C_cut+C_press) X_exc^(1/2) N + F.

ACT.X-Boot:
  the epsilon-star first-exit argument absorbs only X_exc^(1/2)N.

ACT.X-Readout:
  spends Y_read; A_core^ctr is supplied by ACT.Actr_core and A_buf^ctr is
  recovered through readout/buffer control, not pre-pressure Gronwall data.

Scheduler:
  restart only X_exc at budget endpoints using the current transported center frame.
```

The center-amplitude rule is a live estimate, not bookkeeping. It must be
proved directly from the affine-center equations or explicitly paid for inside
`L,F` before `ACT.X-Readout` is promoted.

Sharper form:

```text
ACT.Actr_core:
  K_le_m^ctr in L1(I) => A_core^ctr in Linfty(I).

K_le_m^ctr:
  K_0(c_j) + E_j^(1) + Ktilde_{q,j}, 2 <= q <= m.

A_buf^ctr:
  contains the m+1 and m+2 readout/top-viscous buffer modes.
  It is recovered through Y_read after ACT.X-Boot. A pre-boot proof would
  require optional top forcing sum_{q=m+1}^{m+2}|Ktilde_q|^2 in L1(I), which
  risks rung creep.

ACT.X-Press:
  ACT.Actr_core + local fixed-ball pressure response.
  Finite pressure far-tail is energy-controlled in Linfty(I).
  The remainder-remainder pressure term contributes C_press X_exc^(1/2) N.
```

Compact receiver chain:

```text
ACT.Actr_core
+ ACT.X-Def
+ ACT.X-Energy
+ ACT.X-Cut
+ ACT.X-Press
+ ACT.X-Mid
+ ACT.X-TopVisc
+ ACT.X-Boot
+ ACT.X-Readout
=> ACT.A
=> RCF.A
=> LCI.A
```

This is the proof plan, not a discharge. The next proof targets are
`ACT.Actr_core`, `ACT.X-Press`, and the `RWS.A` threshold with
`C_cut+C_press`.

## Exploratory Or Parked Branches

| Branch | Current Use |
| --- | --- |
| Euler mirror | quarantined exploratory parallel-equation branch |
| exact-potential / V2 | supplier or readout branch, not lane authority |
| localized projector / coarse summability | exploratory or supplier branch |
| exterior algebra / Hopf-shuffle / BRST | structural refinement or exploratory branch |

## False-Bridge Examples

| Invalid move | Missing theorem |
| --- | --- |
| fixed Eulerian packet increment estimate used as transported one-field coherence | moving flow-map, collar thickness, deformation distortion, pressure/source, and scale-conversion bridge |
| SG.4 selector-defect statement used as `CFI.A` / `OFP.A` / `LCI.A` | class-membership bridge from selector readout to the exact `Pack / Part / Field` object |
| mixed-jet tower estimate used as class-exit exclusion | theorem proving tower control forces persistence of the membership object |
| Lagrangian deformation estimate used as receiver-side `LCI.A` | pressure/source transfer plus moving-collar receiver bridge |
| Euclidean strict-shadow closure used as torus-first internal closure | downstream export theorem from the internal surface to the whole-space surface |

## Operational Consequence

Multiple routes are useful. The risk is bridge-license failure.

Every route note, theorem packet, or proof obligation should say which object it
propagates and which bridge theorem is required before another program may use
it as closure.
