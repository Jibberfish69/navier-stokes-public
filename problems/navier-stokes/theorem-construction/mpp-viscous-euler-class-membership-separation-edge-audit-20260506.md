# MPP Viscous-Euler Class-Membership Separation Edge Audit

## Authority Cap - Historical Route Audit

This older audit predates the May 25 pass/fail CM completion audits. Its open-middle, blunt-converse, or remaining-exclusion language is historical route hygiene. Current CM proof status uses finite Clay witness entry, Pack/Part/Field finite-failure exhaustion, and CM contrapositive embedding. Absence of the raw converse `not CM => not Member` is not an active blocker for the current CM proof.

## Status

Theorem-direction refinement and edge audit.

Claimed status: not a proof of global regularity and not a discharge of the
source wall. This note installs the sharpened problem shape produced by the
new prompt:

```math
\boxed{
\text{Euler-admissible nonsmoothness may be a comparison limit, while fixed-}\nu
\text{ Navier--Stokes nonsmoothness must be a class exit from the stronger viscous object.}
}
\tag{VECM.0}
```

The governing primitive remains:

```math
Exit(Q;\mathfrak O_{NS}^{work})
:=
\neg Member(Q;\mathfrak O_{NS}^{work}).
\tag{VECM.0a}
```

The installed theorem-grade witness-to-member direction remains one-way:

```math
\forall N\ \exists r_N>0:\quad
CM_{N,r_N,Q}\Longrightarrow Member(Q;\mathfrak O_{NS}^{work}),
\qquad
CM_{N,r,Q}=Pack_Q\wedge Part_{N,Q}\wedge Field_{N,r,Q}.
\tag{VECM.0b}
```

The blunt converse `not CM => not Member` is still not installed.

## Current Route Thesis Surface

The exact route thesis from the current prompt is preserved separately in
[mpp-euler-smooth-ns-smooth-contrapositive-route-note-20260506.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-euler-smooth-ns-smooth-contrapositive-route-note-20260506.md).

The governing statement there is the strong scenario implication

```math
\mathcal E_{\mathrm{sm}}(S)
\Longrightarrow
\forall\nu>0,\ \mathcal N_{\nu,\mathrm{sm}}(S),
\tag{VECM.T0}
```

not merely the small-viscosity overlap theorem. The zero-viscosity material in
this audit is support for the second half of the route: inviscid boundary or
defect-boundary behavior can be outside fixed-positive-viscosity NS membership
without being outside Euler membership, and if all possible Navier--Stokes
nonsmoothness is forced into that fixed-`\nu` exit family, fixed positive
viscosity is smooth by contrapositive.

## Prompted Train Of Thought, Preserved

The prompt asks whether the missing law is the law relating the velocity field
to the incompressible volume constraint.

The correction is precise:

```math
\boxed{
\text{incompressible volume preservation gives }Pack,\text{ not full smoothness.}
}
\tag{VECM.1}
```

`Pack` records that one common material geometry carries the same fluid with
volume preservation. It does not by itself bound pointwise speed, derivatives,
or the whole tower. The derivative towers live in `Part` and `Field`:

1. `Part` carries the differentiated PDE tower
   `U_k=\nabla^k u` and the shared pressure-viscosity carrier
   `K_k=-\nabla^{k+1}p+\nu\Delta U_k`.
2. `Field` carries the finite-difference/coherence tower, where neighboring
   derivative towers remain one field instead of fracturing into a jump.
3. `Pack` carries the incompressible volume-preserving flow map and deformation
   geometry.

So the phrase "volume cannot change, therefore smooth everywhere" is too small.
The theorem-grade version is:

```math
\boxed{
Pack + Part + Field
\text{ is the local class-membership witness; }Pack\text{ alone is only the
volume/packing face.}
}
\tag{VECM.2}
```

The productive idea is not that static volume bounds velocity. The productive
idea is that positive viscosity adds a stronger class law than Euler:

```math
\boxed{
\text{if a nonsmooth endpoint is reachable only after deleting the viscosity-bearing
class data, then it is an Euler/inviscid endpoint, not a fixed-}\nu\text{ NS endpoint.}
}
\tag{VECM.3}
```

## Two Class Objects

Fix a still-live window `Q` and a finite depth `N`.

### Euler comparison object

Define the Euler comparison class by

```math
\mathrm{Member}_E(Q)
:=
\mathrm{EVol}_Q(u)
\wedge
\mathrm{EMom}_Q(u,p).
\tag{VECM.4}
```

Here:

1. `EVol` is the Eulerian flux-volume / incompressibility law.
2. `EMom` is weak Euler momentum-pressure fidelity.
3. Lagrangian carrier, admissibility, and one-field coherence are optional
   layers above membership, not primitive class faces.

This class is a comparison object only. It does not state that Euler is smooth,
and it does not import the Navier-Stokes `Pack/Part/Field` row into Euler.

### Fixed-viscosity Navier--Stokes object

Define the fixed-positive-viscosity NS witness by

```math
CM^\nu_{N,r,Q}
:=
Pack_Q
\wedge
Part^\nu_{N,Q}
\wedge
Field^\nu_{N,r,Q}
\wedge
Visc^{fix}_\nu(Q),
\qquad \nu>0.
\tag{VECM.5}
```

The last predicate is already present in the frontier packet:

```math
Member(Q;\mathfrak O^{work}_{NS})
\Longrightarrow
Visc^{fix}_{\nu}(Q),
\qquad
\neg Visc^{fix}_{\nu}(Q)
\Longrightarrow
Exit(Q;\mathfrak O^{work}_{NS}).
\tag{VECM.5a}
```

This is definitional, not a smoothness proof. It says that a break of the
fixed-viscosity carrier is already a class exit from the NS object.

## Vanishing-Viscosity Boundary Class

The non-viscous Euler equation is not an internal fixed-`\nu>0` Navier--Stokes
law. It is the `\nu=0` boundary equation of the parameterized NS family. Make
that boundary object explicit as follows.

For a sequence `\nu_j\downarrow 0`, write

```math
Q_j\overset{E}{\longrightarrow}Q^0
\tag{VECM.5b}
```

when:

1. each `Q_j` is a same-fluid NS window for viscosity `\nu_j>0`;
2. `u^{\nu_j}\to u^0` strongly enough on compact subwindows to pass the
   transport tensor:

```math
(u^{\nu_j}\cdot\nabla)u^{\nu_j}
\longrightarrow
(u^0\cdot\nabla)u^0
\quad\text{in distributions};
\tag{VECM.5c}
```

3. `p^{\nu_j}\to p^0` modulo spatial constants in a topology sufficient for
   the pressure gradient;
4. the viscous carrier vanishes as a term:

```math
\nu_j\Delta u^{\nu_j}\longrightarrow 0
\quad\text{in distributions};
\tag{VECM.5d}
```

5. the incompressible packing law survives:

```math
\nabla\cdot u^0=0.
\tag{VECM.5e}
```

Under these hypotheses, the limit window satisfies the incompressible Euler
equations in Eulerian coordinates:

```math
\partial_t u^0+(u^0\cdot\nabla)u^0+\nabla p^0=0,
\qquad
\nabla\cdot u^0=0.
\tag{VECM.5f}
```

Define the Euler boundary class by

```math
\partial_{\nu=0}\mathfrak O_{NS}^{work}
:=
\left\{
Q^0:\exists \nu_j\downarrow0,\
Q_j\in \mathfrak O_{NS}^{work,\nu_j},\
Q_j\overset{E}{\longrightarrow}Q^0
\right\}.
\tag{VECM.5g}
```

This is the precise sense in which the Euler mirror is a well-defined
zero-viscosity comparison surface for the NS family.

If `(VECM.5d)` fails and a nonzero viscous or energy-defect measure survives,
the limit is **not** the Euler boundary class. It is a separate
defect-boundary object and must be named separately before it can be used in the
class-membership route.

### Theorem `VECM.C` (Euler boundary objects are fixed-viscosity class exits)

Fix `\nu_\ast>0`. If a boundary window `Q^0` is Euler-clean in the sense of
`(VECM.5g)` and is not separately liftable to the fixed-viscosity carrier,

```math
\neg Visc^{fix}_{\nu_\ast}(Q^0),
\tag{VECM.5h}
```

then it is outside the fixed-`\nu_\ast` NS class:

```math
\boxed{
Q^0\in \partial_{\nu=0}\mathfrak O_{NS}^{work}
\wedge
\neg Visc^{fix}_{\nu_\ast}(Q^0)
\Longrightarrow
Exit(Q^0;\mathfrak O_{NS}^{work,\nu_\ast}).
}
\tag{VECM.5i}
```

Proof. By `(VECM.5a)`, membership in the fixed `\nu_\ast>0` NS object implies
the fixed-viscosity carrier predicate `Visc^{fix}_{\nu_\ast}`. Therefore the
failure of that predicate implies
`Exit(Q^0;\mathfrak O_{NS}^{work,\nu_\ast})`. The role of
`Q^0\in\partial_{\nu=0}\mathfrak O_{NS}^{work}` is not to prove exclusion; it
classifies the non-viscous limit as the Euler boundary surface of the
parameterized NS family. `\square`

Degenerate overlap caveat: a particular smooth Euler flow may also satisfy a
positive-viscosity equation under an additional special lift. Such a flow is not
a pure Euler-only class-exit witness. The theorem above applies to the
Euler-clean boundary behavior that fails the fixed `\nu_\ast` carrier predicate.

## Core Theorem Program

### Theorem `VECM.A` (Viscous-Euler class separation)

Assume a candidate first endpoint on a same-fluid window family `Q_s` with
fixed `\nu>0`. Suppose the endpoint can be represented inside the Euler
comparison class but not inside the fixed-viscosity NS class:

```math
\mathrm{Member}_E(Q_s)\text{ remains comparison-admissible},
\qquad
\neg CM^\nu_{N,r,Q_s}.
\tag{VECM.6}
```

Then the first NS failure must occur on one of the viscosity-bearing edges
listed in the edge table below:

```math
\boxed{
\neg CM^\nu
\Longrightarrow
\neg Visc^{fix}_\nu
\vee
\neg Part^\nu_{\mathrm{visc}}
\vee
\neg Field^\nu_{\mathrm{defect}}
\vee
\neg Source^\nu_{\mathrm{parabolic}}.
}
\tag{VECM.7}
```

In words: if the geometry and transport-pressure side can still be read in the
Euler mirror, then the genuine NS obstruction is not "volume changed." It is
failure of the extra fixed-viscosity data that Euler does not carry.

### Theorem `VEL.A` (Euler-limit-only exclusion)

If every nonsmooth endpoint compatible with the Euler comparison class requires
a sequence of NS windows with

```math
\nu_j\downarrow 0
\tag{VECM.8}
```

in the precise sense that the viscosity-bearing predicates in `(VECM.7)` lose
their positive lower contribution only along the vanishing-viscosity sequence,
then no such endpoint occurs for any fixed `\nu>0`.

Equivalently:

```math
\boxed{
\text{blowup only at }\nu=0
\quad\Longrightarrow\quad
\text{no fixed-positive-viscosity NS blowup.}
}
\tag{VECM.9}
```

This is useful only after the phrase "only at `\nu=0`" is proved as a theorem
through the edge list below. It cannot be used as a slogan.

## Edge-Theorem Audit

Scope: current-facing Navier--Stokes class-membership, source-wall,
signed-current, and Euler-mirror surfaces read through MCP and the local repo.
This is the edge set to which the prompted logic directly applies.

| Edge theorem / object | Seat | Viscosity status | How the new logic applies |
| --- | --- | --- | --- |
| `CFP.0a` / `Visc^{fix}_nu(Q)` | `Member` / class-exit insert | Fixed-positive-viscosity class predicate | This is the cleanest formal home for "NS nonsmoothness is a class exit while Euler/inviscid behavior may remain a comparison class." |
| `Pack_Q` | `Pack` | Incompressibility / flow-map, not viscous | Volume preservation lives here. It cannot by itself bound velocity or smoothness; it only supplies the static packing face. |
| `Part_{N,Q}` | `Part` | Contains the differentiated NS tower and `nu Delta U_k` carrier | This is where derivative towers fit on the PDE side. Fixed `nu>0` adds a carrier not present in Euler. |
| `Field_{N,r,Q}` | `Field` | Contains finite-difference tower coherence and defect dissipation | This is where neighbor-to-neighbor smoothness/coherence is read. Euler loses the positive defect-dissipation term. |
| `NDT.A` / shared participation no-drop | `(Part,Dead)` endpoint row | Uses installed membership plus neighboring response | The prompt's "viscosity keeps points participating" belongs here only after being typed as shared participation, not as pointwise nonzero velocity. |
| `CTN.A` / CM tethering-neighboring participation | Law 2 / participation response | Explicitly pressure plus viscosity on the same field | This is the theorem-facing version of universal viscous drag: local tower escalation must force neighboring participation response. |
| `RSCB.NKF -> NKF.Native` | retained receiver spine | Partly retained-center pressure, partly viscous native forcing | Euler may keep pressure/point-recovery patterns, but the NS theorem spends viscous forcing/integration terms. |
| `ACT.KX` | pre-`LCI.A` receiver core | Sharp hard break: `c_nu N`, `eta_X`, `ACT.X-TopVisc` | This is the first concrete place where the new idea bites. NS has a fixed-`nu` absorption scheduler; Euler does not. |
| `ACT.X-TopVisc` | internal `ACT.KX` cell | Pure top-viscous readout | Direct witness that the parent chain is not merely incompressible transport. |
| `ACT.X-Readout -> ACT.A -> RCF.A -> LCI.A` | receiver readout chain | Downstream of `ACT.KX` | Available for NS only after the fixed-`nu` receiver budget is installed; unavailable to Euler until `ELCI.A` replaces it. |
| `LCI.A` | lower-carrier interval integrability | Parent proof absorbs by `2nu D^{low}` | The Euler mirror identifies this as the first literal obstruction: no dissipative sink to absorb the centered/oscillation defect. |
| `ELCI.A` | Euler mirror replacement | Transport/pressure only, no viscosity | This is the comparison class slot. If `ELCI.A` can hold while NS endpoint still fails, the failure must be a viscous class-separation edge. |
| `\partial_{\nu=0}\mathfrak O_{NS}^{work}` / `VECM.C` | vanishing-viscosity boundary | Euler boundary class | Defines the non-viscous Euler equations as a well-typed `\nu=0` boundary of the NS family and as fixed-`\nu_\ast` class-exit whenever `Visc^{fix}_{\nu_\ast}` fails. |
| `FCI.5f` | post-`LCI.A` source closure | Uses fixed route source estimates; may include viscous absorption upstream | It applies after `LCI.A`; the new logic checks whether source closure is genuinely fixed-`nu` or only transport-pressure. |
| `CSP.A` | collar/source packet | Downstream bridge | Applies as a transfer point from receiver/source packets into one-field preservation. |
| `OFP.A` | one-field forward preservation | Consumes defect-energy law and collar/lower-carrier packet | The new logic asks whether one-field coherence is fixed-`nu` parabolic or merely Euler transport-pressure. |
| `CFI.A` | class-membership forward invariance | Assembles `Pack`, `Part`, `Field` along same-fluid family | This is the final CM persistence theorem where `VECM.A` must land if promoted. |
| `END.Pack` | endpoint face | Pack / packing-detached / blown | The prompt's static-volume intuition belongs here only after deformation gauge and tower-blown cases are distinguished. |
| `END.Field` | endpoint face | Field / Jump | Euler-admissible nonsmoothness most naturally tests this row: nonsmooth weak/inviscid behavior can be comparison-internal while NS fixed-`nu` must preserve `Field`. |
| `END.TowerBound` / `DTC-to-TowerBound` | endpoint face | Tower amplitude readout | This is where derivative-tower blowup is priced, not raw point-speed alone. |
| `End_NS` | endpoint assembly | Endpoint certificate map | If all faces are excluded after positive inputs, `CFI.A + End_NS` gives no finite-time class exit. |
| `GoodScaleNonCollapse.A` | readout-cover interface | Not itself viscosity, but fed by source-wall control | The new idea can try to prove good scales as a fixed-`nu` consequence rather than a generic compactness fact. |
| `READ.COVER` / `UniformReadCover.A` | terminal readout | Interface, not root | Applies only after good-scale noncollapse. It should not be promoted as the missing viscosity law. |
| `ScaleCriticalTreeCarleson.A` | live source-wall root | Parabolic/source-control face | Direct positive target for the new idea: prove fixed `nu>0` prevents the scale-critical source square from behaving like an inviscid terminal pulse. |
| `SquareReserveEvolution.A` | direct source-wall sufficient theorem | Parabolic donor-square evolution | Most concrete new route: derive a positive-`nu` evolution law for donor square reserve; Euler should be allowed to fail this. |
| `NativeTrilinearDefectDomination.A` | native zero-loss source wall | Strain/source defect face | The new logic asks whether the positive native trilinear source can survive only in an inviscid comparison class. |
| `UniformTemporalSourceIntegrability_p.A` / `TemporalNonAtomicSource.A` | Zeno temporal branch | Heat-scale temporal anti-atom if source square is controlled | Applies as "no terminal atom for fixed `nu>0`; atoms may be Euler-limit phenomena." |
| `ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A` | alternate live root | Invokes rigid terminal class | Natural home for vanishing-viscosity comparison: terminal residue may be Euler-class admissible, but fixed-`nu` NS must force residue zero. |
| `TerminalSkewLocalizationLedger.A` | signed-current first gate | Pre-localizes signed exchange | New logic says this cannot be pure bookkeeping; it must identify fixed-`nu` localized source-current data. |
| `SkewSaturationAdmissibility.A` | signed-current subgate | Saturation admissibility | Tests whether terminal skew saturation is compatible with fixed-viscosity class membership. |
| `WeightedLiftedSkewDefectLegal.A` | signed-current hard subgate | Weighted/lifted commutator with variable-sign strain production | This is a fixed-`nu` legality wall. If closure needs `nu->0`, this is where it should appear. |
| `OffSaturationBoundaryPricing.A` | signed-current subgate | Boundary pricing | Applies as a legal-loss term in fixed-viscosity signed-current localization. |
| `CycleHeatAction.A` / `CycleHeatAction.Amp` | signed-current cycle route | Heat/parabolic action | Direct positive-viscosity object. Euler has no heat action; a proof here would be a clean NS/Euler separation. |
| `ParabolicNoFreeSink.A` | signed-current source route | No sink without parabolic payment | Strong formulation of fixed-viscosity "no free donor death." |
| `TerminalSignedSaturation.A` | signed-current source route | Terminal saturation gate | Tests whether a terminal source sink can stay internal to fixed-`nu` class membership. |
| `ParabolicEdgeResistance.A` | signed-current source route | Localized parabolic resistance with scale-critical remainder | If independent, it would prove the source wall by fixed-`nu` resistance; current notes say the remainder is route-equivalent to the source wall. |
| `TerminalAmplitudeGain.A` | heat-action amplitude correction | Required because cubic transfer defeats quadratic heat at scale-critical amplitude | The new idea must pay this. Positive viscosity alone is not enough unless amplitude gain is supplied. |
| `PackGainLedger.A` / `RetainedPackGainProduction.A` | retained-face amplitude route | Not implied by finite `Pack_Q` deformation gauge | Prevents false promotion of "bounded volume geometry" into accumulated low-strain gain. |
| `PCTP.hard / TTU.A` | downstream terminal-tail consumer | Consumer/readout, not CM primitive | The idea applies only after a bridge into `Field.Read`/`DTC.Read` or a Pack/Part/Field face. |
| `AWG.A`, `SOURCE.NO-PULSE.A`, `TGC.A` | source-pulse / averaged-route suppliers | Supplier/readout support | They cannot replace CM. The new idea may supply them only if explicitly bridged into `Field` or source-wall control. |
| `TPS / PSJ+ / PD.70 / SG.4` | downstream one-field consumer wall | Branch-specific readout | Applies only as a consumer of `Field`/one-field coherence. It is not the primitive fixed-viscosity separation law. |
| Euclidean strict-shadow / whole-space export | downstream export | Export only | The idea does not move this branch until the torus-first/fixed-`nu` CM route has a theorem-grade bridge. |

## What This Changes

The new route should not try to prove:

```math
Pack_Q\Longrightarrow |u|+|\nabla u|+\cdots <\infty.
\tag{VECM.10}
```

That is false as a route grammar. `Pack` is the volume/geometry face, not the
whole PDE tower.

The route should instead try to prove:

```math
\boxed{
\text{any endpoint that is still Euler-comparison-admissible but NS-forbidden
must fail at a fixed-}\nu\text{ edge, and fixed }\nu>0\text{ blocks that edge.}
}
\tag{VECM.11}
```

The theorem target sharpened by this audit is:

```math
\boxed{
SquareReserveEvolution.A
\text{ or }
NativeTrilinearDefectDomination.A
\text{ as a fixed-positive-viscosity class-separation theorem.}
}
\tag{VECM.12}
```

The signed-current alternative is:

```math
\boxed{
WeightedLiftedSkewDefectLegal.A
+ParabolicNoFreeSink.A
+TerminalSignedSaturation.A
\Longrightarrow
ScaleCriticalTreeCarleson.A.
}
\tag{VECM.13}
```

But the audit preserves the current hard boundary: the signed-current path is
not independent unless the weighted/lifted commutator legality and
flux-amplitude remainder are closed without reimporting
`ScaleCriticalTreeCarleson.A`.

## Formal Proof Shape To Attempt Next

The strongest bounded attempt opened by this note is:

### `VECM.B1` (Fixed-viscosity square-reserve evolution)

For every terminal active window family and every fixed `\nu>0`, prove

```math
\mathcal R_N(W)
\le
Charge_N(W)
+
(1-\delta_\nu)\mathcal R_N(Past(W))
+
Loss_{legal}(W)
+
o_N(1),
\qquad
\delta_\nu>0.
\tag{VECM.14}
```

The key is that `\delta_\nu` must be positive for fixed `\nu>0` and may
degenerate as `\nu\downarrow 0`. If this is proved, the theorem has exactly the
desired meaning:

```math
\boxed{
\text{Euler may lose the reserve decay constant, but fixed-}\nu\text{ NS does not.}
}
\tag{VECM.15}
```

Then:

```math
VECM.B1
\Longrightarrow
SquareReserveEvolution.A
\Longrightarrow
ScaleCriticalTreeCarleson.A
\Longrightarrow
GoodScaleNonCollapse.A
\Longrightarrow
READ.COVER.
\tag{VECM.16}
```

and the result feeds the existing CM route rather than replacing it.

### `VECM.B2` (Fixed-viscosity temporal anti-atom)

Alternatively, prove for the terminal positive source measure:

```math
\left\|
\|F_n^{src,+}(s,\cdot)\|_{\mathcal M_y}
\right\|_{L_s^p((-1,0))}
\le C_{\nu,R},
\qquad p>1,
\tag{VECM.17}
```

where `C_{\nu,R}` may worsen as `\nu\downarrow 0` but is finite for fixed
`\nu>0`. This gives:

```math
VECM.B2
\Longrightarrow
TemporalNonAtomicSource.A
\Longrightarrow
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
\tag{VECM.18}
```

## Failure Modes Checked

1. Static incompressible volume does not directly bound velocity.
2. `Pack` alone does not install `Part`, `Field`, or `Member`.
3. Ordinary stagnation or zero velocity is not a class exit.
4. Euler comparison is not assumed smooth or nonsmooth; it is only the
   viscosity-deleted comparison class.
5. A vanishing-viscosity slogan is not enough. The route needs a theorem where
   the decisive constant is positive for every fixed `\nu>0` and may degenerate
   only as `\nu\downarrow 0`.
6. An Euler boundary class requires the viscous term to vanish as a term.
   If a defect measure remains, the limit is not the classical Euler mirror and
   must be routed as a separate defect-boundary object.
7. TPS / `SG.4` remains downstream one-field readout and cannot be promoted
   back to the lane-wide primitive.
8. Signed-current heat-action routes remain conditional until the
   weighted/lifted legality and scale-critical amplitude remainder are paid.

## Source References

External equation/limit references used for the `\nu=0` boundary lock:

1. Peter Constantin, "On the Euler equations of incompressible fluids",
   [https://web.math.princeton.edu/~const/eule.pdf](https://web.math.princeton.edu/~const/eule.pdf).
2. Xiaoming Wang, "A Kato Type Theorem on Zero Viscosity Limit of
   Navier-Stokes Flows",
   [https://www.math.fsu.edu/~wxm/paper/kato.pdf](https://www.math.fsu.edu/~wxm/paper/kato.pdf).

Primary surfaces:

1. `problems/navier-stokes/theorem-construction/mpp-class-membership-contradiction-frontier-packet.md`
2. `problems/navier-stokes/theorem-construction/mpp-exact-class-membership-witness-theorem.md`
3. `problems/navier-stokes/theorem-construction/mpp-shared-packing-exact-predicate-draft.md`
4. `problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md`
5. `problems/navier-stokes/theorem-construction/mpp-shared-participation-no-drop-theorem.md`
6. `problems/navier-stokes/theorem-construction/mpp-cm-tethering-and-neighboring-participation-theorem.md`
7. `problems/navier-stokes/theorem-construction/mpp-class-membership-forward-invariance-theorem-program.md`
8. `problems/navier-stokes/theorem-construction/mpp-one-field-forward-preservation-theorem-program.md`
9. `problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md`
10. `problems/navier-stokes/euler-mirror/viscosity-dependence-ledger.yaml`
11. `problems/navier-stokes/euler-mirror/branch-manifest.yaml`
12. `problems/navier-stokes/euler-mirror/theorem-construction/euler-mirror-frontier-packet.md`
13. `problems/navier-stokes/euler-mirror/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md`
14. `problems/navier-stokes/theorem-construction/mpp-goodscale-rehydrated-sourcewall-execution-20260505.md`
15. `problems/navier-stokes/theorem-construction/mpp-cycle-heat-action-abstract-flow-reduction-20260505.md`
16. `problems/navier-stokes/live-theorem-edge.yaml`
17. `problems/navier-stokes/source-frontier.yaml`

## Claimed Output

This audit installs a new edge-facing theorem program, not a solved theorem:

```math
\boxed{
\text{complete the MPP route by proving the remaining source wall as a
fixed-positive-viscosity class-separation law, not as volume preservation alone.}
}
\tag{VECM.19}
```

The first exact attempted theorem should be `VECM.B1` unless a stronger
source-measure anti-atom proof for `VECM.B2` becomes available.
