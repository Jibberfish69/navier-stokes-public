# MPP Nonsmooth Class-Exit To Euler Class-Entrance Audit

Date: 2026-06-12

## Status

Corrective audit of the Euler/NS boundary material.

The governing question is the positive crossing surface Thomas named:

```text
Where does a nonsmooth event meet NS class-exit, and where does that same
class-exit from fixed-viscosity NS become class-entrance for Euler?
```

The audit is source-backed by the installed CM branch certificate ledger, the
all-non-Euler face sweep, the Euler mirror referee ledger, and the Euler
membership definition. It does not solve Euler, and it does not use Euler as a
generic proof engine for Navier-Stokes. It locates the exact crossing surface.

## Core Answer

The crossing is real and repo-visible:

```text
NS class-exit becomes Euler class-entrance exactly when the same nonsmooth event
is outside fixed-positive-viscosity NS membership because it loses Part or Field,
while the Euler object still satisfies base equation membership

  Member_E(Q) = EVol_Q(u) and EMom_Q(u,p).
```

In ordinary terms: NS requires the same carrier to keep participating in the
fixed-viscosity pressure-viscosity tower and to remain one coherent positive-
scale field. Euler requires incompressible flux-volume and weak
momentum-pressure fidelity. A tangential slip sheet, an unbounded shear sheet,
or a weak nonclassical branch can be a real Euler member while being outside the
fixed-viscosity NS class.

That is the line Thomas was drawing. It is strongest on `Part` and `Field`.
`Pack` is mixed: flux-volume Pack failure exits both equations, while
Lagrangian/material-carrier Pack failure may only exit a stronger Euler layer
above base `Member_E`.

## Governing Source Basis

1. The proof-facing NS branch ledger states the governing program as
   `Exit(Q):=not Member(Q)` through `Pack_Q`, `Part_{N,Q}`, and
   `Field_{N,r,Q}`. It requires selected terminal object, CM-test admission,
   first failed face, and proof path; broad labels do not close a branch.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:1`
   through line `30`.

2. The same ledger records a finite-disjunction global gate:

   ```text
   not Pack_Q,
   or Pack_Q and not Part,
   or Pack_Q and Part and for every r>0 not Field.
   ```

   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:89`.

3. The all-non-Euler sweep is exhaustive over the repo's non-Euler NS text
   surfaces: 1944 included, 71 Euler/fixed-nu/Euler-class surfaces excluded. It
   sorts surfaces into Part and Field, typed-subset, or support.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/non-euler-surface-face-sweep-index-20260514.yaml:1`.

4. The diagnostic map states the same boundary at row level: only Pack, Part,
   and Field are CM witnesss; source-wall and readout notes are support
   until a selected retained branch lands in one of those faces. It reports
   `Field_{N,r,Q}: 865`, `Pack_Q: 340`, `Part_{N,Q}: 346`, and
   `no_independent_face: 585` face-break readings.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/non-euler-failure-face-diagnostic-map-20260514.yaml:6`.

5. The Euler membership note defines the target class entrance:

   ```text
   Member_E(Q) = EVol_Q(u) and EMom_Q(u,p).
   ```

   Base membership deliberately does not contain `Part`, `Field`, smoothness, a
   Lagrangian flow map, a one-carrier response law, or an NS pressure-viscosity
   carrier law.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md:82`.

6. The Euler mirror referee ledger says the Euler branch is scenario-by-scenario:
   smooth by explicit hypothesis, nonsmooth control, conditional surface, false
   base implication, non-Euler import, provenance/comparison, or machinery. Its
   nonsmooth rows record behavior compatible with base equation membership while
   failing smoothness, one-field coherence, flow map, or receiver ledger.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml:1`.

7. The continuum closure ledger closes the Euler/NS contact graph into three
   regions: smoothness overlap, viscosity divergence, and nonsmooth Euler
   class-membership boundary. Its nonsmooth rows are exactly `ESM.N1` through
   `ESM.N6`.
   Source:
   `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:1`.

## The Crossing Test

A repo row counts as "NS class-exit becomes Euler class-entrance" when all five
checks pass.

1. Same event: the Euler object is the same nonsmooth mechanism, or a checked
   local/global/singular-limit representation of that mechanism.
2. Euler entrance: `EVol+EMom` is proved or imported with stated hypotheses.
3. NS exit: the selected NS packet lands in a CM Part/Field supporting
   `Exit(Q):=not Member(Q)`.
4. Mechanism: the NS failure is loss of fixed-viscosity participation,
   one-field coherence, or optional material-carrier regularity rather than
   failure of Euler flux-volume/momentum itself.
5. No residue leak: the row has no unresolved concentration, Reynolds stress,
   pressure-source residue, source measure, or same-ledger compactness gap.

The crossing is unconditional after these checks have been discharged for a
typed row. The generic zero-budget version of the crossing is conditional,
because the repo has already failed the unconditional closure attempt.

## Face-By-Face Audit

### Pack

Pack is the shared-face warning.

The Euler/NS dual map states:

```text
Pack failure exits both Euler and NS, but NS Part/Field exclusions do not become
Euler one-field membership laws.
```

It then defines `Member_E=EVol+EMom` and says the shared object is
flux-volume/incompressibility while the split object is
participation/coherence.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md:12`.

Audit result:

| NS Pack situation | Euler class-entrance status |
| --- | --- |
| flux-volume / incompressibility fails | no Euler entrance; both equations lose base membership |
| material carrier, Lagrangian chart, positive same-fluid cover, or deformation gauge fails while `EVol+EMom` survives | possible Euler entrance, but only after the Euler object is typed as `Member_E`; it is failure of optional `ELag` or regularity above base membership |
| zero-radius terminal packet / detached donor ancestry | installed NS Pack exit; current row does not itself prove Euler entrance |

### Part

Part is the direct home of Thomas's "not participating in viscous interactions"
case.

NS `Part` carries the differentiated pressure-viscosity tower:

```text
U_k = nabla^k u,
K_k = -nabla^{k+1}p + nu Delta U_k,
D_t U_k = K_k + B_k.
```

Euler has only pressure/incompressibility compatibility at base membership.
Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md:163`.

Audit result:

```text
not Part_{N,Q}
```

is an NS class-exit face. It becomes Euler class-entrance exactly when the same
event still has `EVol+EMom`. The clean example is pressure-compatible slip:
Euler pressure and normal flux are lawful, while NS fixed-viscosity shear
participation fails.

### Field

Field is the cleanest crossing surface.

NS `Field` keeps one coherent positive-scale velocity/pressure field. Euler
base membership can hold while that coherence fails. The dual map says:

```text
NS field proofs give Euler nonsmoothness diagnostics: one-field coherence may
fail while Member_E and EPart^press still hold.
```

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md:126`.

Audit result:

```text
Part_{N,Q} + forall r>0 not Field_{N,r,Q}
```

is NS class-exit. It becomes Euler class-entrance when the same event is an
Euler weak member with failed optional `EReg`/`EField`. Tangential slip,
periodic slip sheets, unbounded shear, GoodScale failure, `Jump_avg`, and
retained critical concentration are Field-side versions of this pattern once
their same-witness hypotheses are installed.

## CM Branch Ledger: Exhaustive Row Audit

This table follows every record in
`cm-branch-family-certificate-ledger-20260526.yaml`.

| Ledger row | NS class-exit face | Where nonsmooth meets class-exit | Euler class-entrance status |
| --- | --- | --- | --- |
| `zero_radius_terminal_packet_pack_exit` | `not Pack_Q` | no positive terminal radius / Zeno endpoint | NS Pack exit is installed. Euler entrance is not installed by this row because the same object lacks the positive carrier. A separate `EVol+EMom` construction would be needed. |
| `unpaid_donor_refill_or_detached_ancestry_pack_exit` | `not Pack_Q` | detached donor ancestry or no positive same-fluid carrier | NS Pack exit is installed. Euler entrance only exists after retyping as an Euler flux-volume/momentum object; the current row is no-carrier NS exit. |
| `raw_terminal_source_residue_pack_or_part_exit` | `not Pack_Q` or `Pack_Q + not Part` | raw source or pressure-source residue | This is not clean Euler entrance while the residue remains. It enters the Euler boundary only after no-residue compactness or a named defect-boundary/Liouville cleanup. |
| `pressure_viscosity_or_dwell_part_exit` | `not Part_{N,Q}` | carrier survives, same pressure-viscosity tower/dwell/source participation fails | Direct crossing candidate. When the same transport-pressure object satisfies `EVol+EMom`, this is exactly NS class-exit by loss of viscous participation and Euler class-entrance. |
| `retained_positive_window_blowup_field_exit` | `Pack_Q + Part_{N,Q} + forall r>0 not Field` | Pack and Part survive; every positive scale loses coherent field/readout | Direct Field crossing. Euler reads the same event as `Member_E` plus failure of optional `EReg/EField`, provided `EVol+EMom` is preserved. |
| `retained_native_source_residue_field_diagnostic` | conditional Field diagnostic | native residue already converted into lawful participating source/readout object | Conditional crossing only after participation license. Raw residue remains Pack/Part, not Euler entrance. |
| `retained_positive_scale_native_reserve_birth` | unresolved/support | positive-scale reserve surplus | No independent crossing yet. It must be paid on the same ledger or derived into Part/Field. |
| `active_height_low_strain_typed_disjunction` | finite typed disjunction | carrier failures, dwell/participation failures, licensed Field/Zeno subcases | Crossing applies only in the certified Part and Field subcases. Hidden signed-pair support is not class entrance. |
| `signed_current_no_free_sink_family` | no independent face | signed-current/no-free-sink support | No direct crossing. It can feed a crossing only after a named theorem routes it to Part/Field. |
| `endpoint_good_scale_no_pulse_readout` | support or Field after Pack+Part | downstream readout/good-scale/no-pulse branch | GoodScale failure becomes a Field crossing after retained Pack+Part. Before that, the row is support. |
| `terminal_l3_duhamel_mass_same_witness_cm_part_field_question` | Pack/Part, or Field under retained Pack+Part | same-witness terminal L3 Duhamel mass | Installed CM Part/Field. Its retained Pack+Part critical branch is a Field crossing candidate after same-ledger/no-residue conditions; generic public-critical translators remain support. |
| `local_critical_translator_same_witness` | no independent face until same-atlas localization | generic public critical concentration | Not yet crossing. It becomes a Field crossing only after same-atlas localization and Field incompatibility are proved. |
| `transfer_and_mirror_comparison` | no independent face | comparison branch | No direct NS CM Part/Field. It requires exact transfer to a selected NS packet with Part/Field decision. |

Line evidence:

- global ledger law and face-disjunction:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:1`
  through line `99`;
- Pack rows:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:132`;
- raw residue and Part row:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:172`
  through line `217`;
- retained Field row and conditional residue row:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:218`
  through line `259`;
- demoted/support rows and transfer row:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml:280`
  through line `450`.

## Euler Mirror Scenario Audit

This table follows the `ESM` case matrix in the Euler mirror referee ledger and
the continuum closure ledger.

| ESM row | Euler class-entrance meaning | NS class-exit contact | Status |
| --- | --- | --- | --- |
| `ESM.S1` | smooth Euler by hypothesis | smooth overlap / fixed-interval comparison | support bridge, not nonsmooth entrance |
| `ESM.S2` | smooth fixed-thickness shear by hypothesis | smooth overlap; zero-thickness limit separate | support bridge, not nonsmooth entrance |
| `ESM.C1` | `ELCI.CP.A` under explicit envelopes | replacement for viscous receiver only after assumptions | conditional smooth/control surface |
| `ESM.C2` | positive-control/compactness/Route B under explicit Euler controls | possible inviscid replacement for NS damping | conditional smooth/control surface |
| `ESM.C3` | retained-window native forcing after smooth center-ball hypotheses | overlap under added hypotheses | conditional smooth/control surface |
| `ESM.N1` | tangential slip / vortex-sheet weak Euler member | NS Field/Jump, possible Part cross-entry | exact class-entrance witness |
| `ESM.N2` | stationary unbounded shear is base `Member_E` but fails smoothness/receiver ledger | NS receiver/Field/ledger analogue | exact class-entrance witness for base membership with ledger failure |
| `ESM.N3` | smooth layers converge to nonsmooth `Member_E` slip sheet | singular-limit version of Field/Jump | exact singular-limit entrance, not fixed-datum blowup |
| `ESM.N4` | same smooth datum has nonclassical weak Euler branches | weak `Member_E` branch | external weak-branch entrance, not classical blowup/admissibility selection |
| `ESM.N5` | boundary/axisymmetric Euler smooth-data blowup class | comparison only; domain-specific | external boundary-class nonsmooth Euler result |
| `ESM.N6` | shared Pack / non-one-field grammar | the conceptual crossing rule itself | grammar closure; concrete witnesses supplied by `N1` and `N2` |
| `ESM.V1`-`ESM.V6` | no Euler entrance by themselves | exact NS viscosity labor: ACT.KX, lower-collar absorption, top-viscous readout, dyadic damping, heat/Stokes, selector/export, first-rung viscous-center | viscosity divergence rows; need separate inviscid replacement or `Member_E` construction |

Line evidence:

- scenario classifications:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml:20`;
- `ESM.N1` through `ESM.N6`:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/referee-audit-ledger.yaml:114`;
- continuum closure and global boundary outputs:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:70`;
- global periodic base-nonsmoothness:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:110`;
- no-boundary smooth-data class boundary:
  `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:174`.

## Installed Exact Class-Entrance Witnesses

### 1. Local Tangential Slip / Vortex Sheet

The local slip-sheet note proves a weak Euler member satisfying `EVol` and
`EMom` while failing one-field coherence. It then says that fixed `nu>0`
Navier-Stokes sees the tangential jump through `nu Delta u` as an interface
distribution, exactly the pressure-viscosity/Field defect.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:10`
through line `128`.

Status:

```text
installed exact crossing:
Euler Member_E + EPart^press + not EReg
fixed-nu NS not regular member / Part-Field defect
```

This is the cleanest expression of Thomas's claim.

### 2. Global Periodic Slip Sheet

The periodic bridge globalizes the slip sheet as a finite-energy weak Euler
member on `I x T^d`, with tangential jumps and nonsmoothness. It says the local
nonsmooth event is literally part of the global Euler member.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md:1`
through line `155`.

Status:

```text
installed exact Euler class entrance;
global weak Member_E, nonsmooth initial data.
```

### 3. Global Periodic Unbounded Shear

The unbounded-shear bridge constructs a finite-energy weak Euler member whose
velocity is unbounded on a singular sheet and whose receiver ledger fails.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-unbounded-shear-euler-ledger-failure-bridge-20260524.md:1`
through line `156`.

Status:

```text
installed exact Euler class entrance;
Member_E holds while classical smoothness and receiver ledger fail.
```

### 4. Smooth-Layer Singular Limit

The continuum ledger records `ESM.N3` as smooth classical stationary Euler
solutions converging to the global slip-sheet member in finite `L^p` spaces and
distributionally.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:127`.

Status:

```text
class entrance by singular limit;
not one fixed smooth datum becoming singular in time.
```

### 5. Same-Datum Weak Branch

The continuum ledger records `ESM.N4` as a same-datum weak branch import:
Wiedemann supplies global weak bounded-energy Euler solutions for any
solenoidal `L^2` datum, hence for smooth divergence-free data.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:139`.

Status:

```text
same-datum weak Euler class entrance;
not classical finite-time blowup or admissibility-selected uniqueness.
```

### 6. Boundary / Axisymmetric Euler Blowup

The continuum ledger records `ESM.N5` as a Chen-Hou boundary/axisymmetric
smooth-data blowup class. It is domain-sensitive and kept separate from
no-boundary `R^3` or `T^3` finite-energy smooth-data blowup.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/euler-mirror/euler-ns-continuum-closure-ledger.yaml:151`.

Status:

```text
Euler nonsmooth class result in a boundary/axisymmetric class;
comparison support for the boundary line, not an NS proof mechanism by itself.
```

## Installed NS Endpoint Matches

### Endpoint Matrix / Dead, Blown, Jump

The endpoint taxonomy states that for NS:

```text
not CM -> Dead or packing-detached or tower-blown or Jump.
```

For Euler, the same labels are comparison/stronger-regularity labels only:

```text
Member_E = EVol and EMom may hold while Dead/Blown/Jump hold for an added class.
```

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md:11`.

The endpoint matrix keeps the rows as `Pack`, `Part`, `Field`, and lists
`(Part,Dead)`, `(Pack,packing-detached)`, `(Field,Jump)`, tower-bound, and cross
bundles as the discharges.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-class-membership-endpoint-matrix-closure-contract-note.md:28`.

### Slip / Jump

Tangential slip keeps normal compatibility but breaks one-field coherence:

```text
[u dot n]=0, [u_tan] != 0.
```

The note records this as `Jump_base`. On Euler, `Member_E + slip` is possible as
weak membership; slip is an `EReg/EField` failure only after adding that stronger
regularity class.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md:63`.

Status:

```text
direct match:
NS Field/Jump exit
Euler Member_E entrance with optional EReg/EField failure.
```

### GoodScale Failure

The GoodScale theorem says retained `Pack_Q + Part_{N,Q}` plus
`not GoodScale.TTU` implies `forall r>0 not Field_{N,r,Q}`. Its physical reading
is: material address and pressure-viscosity law remain, while no positive
neighborhood supports coherent same-fluid field readout.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-goodscale-failure-to-field-exit-hhalf-20260528.md:7`.

Status:

```text
NS Field exit installed;
Euler class entrance only after the same event is represented as EVol+EMom.
```

### Averaged `Jump_avg`

The repaired averaged face note installs only the conditional implication:

```text
Pack_Q + Part_{N,Q} + Jump_avg(T)
  + SCFBaseLocalModulus_N(T,r)
  => not Field_{N,r,Q} at that r.
```

The old all-radii Field exit is available only after each retained positive
Field scale supplies that same-tail `SCF_base` modulus, or after the Field face
is strengthened to include it.  Without that input, this row is an analytic
Field-admission burden rather than an installed class exit.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-averaged-field-face-admission-20260607.md:21`.

Status:

```text
NS Field exit conditional on the same-tail SCF_base modulus;
Euler analogue only after that conditional Field exit is actually derived.
```

### SourcePulse

The source-pulse execution note states the governing target:

```text
terminal source-pulse used as genuine nonsmooth occurrence
  => not Pack or not Part or not Field.
```

It finds Pack on the packing-detached alternative, says direct Part is not
installed from source mass alone, and says Field closes on jump manifestation
under retained Pack+Part.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-cmexit-three-face-execution-note.md:1`.

The tower-placement reduction then gives:

```text
genuine source-pulse witness + Pack + Part + END.TowerAmp on the same family
  => not Field.
```

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-sourcepulse-field-face-tower-placement-reduction-note.md:21`.

Status:

```text
Field crossing only after jump/tower placement is installed;
raw source pulse or source measure is not Euler class entrance by itself.
```

### Terminal L3 Duhamel Mass

The L3 correction note installs a CM-facing witness use:

```text
terminal L3 Duhamel response mass
  => not Pack or not Part or Legal.
```

Under retained Pack+Part, it feeds the retained public translator Field exit.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-terminal-l3-duhamel-mass-cm-face-correction-20260523.md:21`.

Status:

```text
installed NS class-exit witness;
Euler entrance only after same-ledger/no-residue and EVol+EMom are proved for
the matching object.
```

### R3 Exterior Tail

The R3 endpoint note says the direct positive `Tail.Hs_R3` theorem is stronger
than the CM route needs. A surviving exterior nonlinear-source tail is consumed
as:

```text
not Pack_Q or not Part_{M,Q} or forall rho>0 not Field_{M,rho,Q}.
```

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-r3-exterior-tail-cm-endpoint-consumption-20260608.md:7`.

Status:

```text
installed NS endpoint consumption;
Euler entrance only for the retained Field-style subcase where EVol+EMom is
preserved and no source/residue object remains.
```

## Zero Effective Viscous Budget

This is the place where the repo agrees with Thomas's intuition only after the
right hypotheses are present.

The theorem program defines an Euler-comparison terminal defect by effective
receiver budget tending to zero and the limiting class law being
`Member_E=EVol+EMom`. It then states the conditional bridge lemmas:
`EulerOnlyDefectClassification.A` and `SameLedgerLimitTransfer.A`.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-viscosity-class-separation-edge-theorem-program.md:96`.

The expanded anti-degeneration note gives the correct zero-budget implication:

```text
zero effective budget + StrongCompactness + NoResidue => Member_E.
```

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-effective-viscous-packet-antidegeneration-expansion-20260506.md:70`.

The unconditional closure attempt fails because zero effective budget can leave
concentration, oscillation, Reynolds stress, pressure-source residue, source
measures, and same-ledger compactness losses.

Source:
`/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-viscosity-class-separation-unconditional-closure-attempt.md:132`.

Conclusion:

```text
Clean typed Part/Field loss -> Euler entrance once EVol+EMom is proved.
Generic zero-budget loss -> conditional until no-residue and compactness are
proved.
```

## PDF Consequence

Euler material is useful in the NS PDF only where it pays one of these two jobs.

1. It shows the crossing:

   ```text
   the same nonsmooth event is outside fixed-nu NS class membership and inside
   base Euler membership.
   ```

   The strongest installed examples are the slip/vortex sheet, global periodic
   slip sheet, global unbounded shear, smooth-layer singular limit, same-datum
   weak branch, and shared-Pack/non-one-field grammar.

2. It records the separate smooth-side support bridge:

   ```text
   EulerSmooth on a fixed interval supports NSSmooth_nu for the same fixed
   datum and fixed nu only as a support/comparison bridge.
   ```

Everything else is excess for the NS proof unless it is explicitly attached to a
selected `Part/Field` face or to `Member_E=EVol+EMom`.

## Final Audit Verdict

The concept is captured in the repo, but the honest statement is this:

```text
Non-smooth NS events meet class-exit at Part/Field.

They become Euler class-entrance at the Part/Field boundary precisely when the
same event still satisfies Euler base membership EVol+EMom.

The installed exact witnesses are slip/vortex sheet, periodic slip, periodic
unbounded shear, singular smooth-layer limit, same-datum weak branch, and the
shared-Pack/non-one-field grammar.

The installed NS endpoint matches are pressure-viscosity/dwell Part exit,
retained Field/Jump exit, GoodScale failure, Jump_avg, source-pulse after
Field/tower placement, terminal L3 retained critical placement, and R3 retained
Field-tail consumption.

Raw residues, source measures, generic public-critical translators, support
readouts, and generic zero-effective-budget limits do not become Euler entrance
until no-residue, strong compactness, and same-ledger transfer are proved.
```

That is the boundary line the PDF should preserve: Euler is not a side quest in
the NS proof. Euler is the class on the other side of selected NS Part/Field
failures, where the nonsmooth event leaves fixed-viscosity membership but enters
base inviscid membership.
