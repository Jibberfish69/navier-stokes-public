# MPP Non-Euler CM Surface Face Sweep

## Status

Installed as the current all-non-Euler Navier-Stokes surface sorting theorem.

This note applies the Carleson/Zeno turnover rule to every current
Navier-Stokes text surface except Euler-related material. The rule is:

```text
do not ask whether the surface proves smoothness;
ask which selected failure it produces, and which CM Part/Field that failure damages.
```

The CM Part/Fields remain:

```text
Pack_Q, Part_{N,Q}, Field_{N,r,Q}.
```

Euler mirror and fixed-positive-viscosity Euler-to-NS transfer surfaces are
outside this pass.

The full machine inventory for this pass is:

```text
problems/navier-stokes/non-euler-surface-face-sweep-index-20260514.yaml
```

It includes every `.md`, `.yaml`, `.yml`, and `.tex` surface under
`problems/navier-stokes/**`, excluding `euler-mirror/**` and filenames targeting
Euler/fixed-nu/Euler-to-NS transfer.

## Theorem `AllNonEulerNSSurfaceFaceSweep.A`

Every non-Euler Navier-Stokes surface in the inventory is now classified as one
of:

1. `Pack` or a `Pack` bridge;
2. `Part` or a `Part` bridge;
3. `Field` or `Field` receiver/readout support;
4. a typed `Part/Field/Zeno` subset route;
5. a source-wall `Field` diagnostic or supplier;
6. supplier/readout/export/manuscript/generated/source-history/runtime support.

No indexed non-Euler surface has independent CM steering authority outside
`Pack_Q`, `Part_{N,Q}`, `Field_{N,r,Q}`, or one of the typed support
categories above. `Member(Q)` is reached only after the triadic CM witness is
installed.

The inventory counts at installation are:

| Sort | Count |
|---|---:|
| `Pack_or_Pack_bridge` | 244 |
| `Part_or_Part_bridge` | 250 |
| `Field_or_Field_readout_support` | 352 |
| `source_wall_Field_diagnostic_or_supplier` | 402 |
| `Zeno_Field_diagnostic_or_supplier` | 15 |
| `typed_subset_Pack_Part_Field_Zeno` | 96 |
| `supplier_readout_support` | 56 |
| `downstream_export_support` | 104 |
| `governance_surface_carries_face_sweep` | 25 |
| `source_recovery_or_history_not_face` | 39 |
| `history_audit_context_support` | 194 |
| `manuscript_export_not_face` | 24 |
| `runtime_governance_not_face` | 31 |
| `generated_submission_copy` | 19 |
| `support_context_needs_no_face_promotion` | 93 |

Total included text surfaces: `1944`. Euler-related exclusions: `71`.

The May 17 narrow refresh adds the eight non-Euler supplier/diagnostic notes
from the PRD, LPSC, square-source, ASAG, non-Carleson Zeno, eigenframe, and
pressure-Hessian attempts.  The two same-date Euler-mirror notes stay excluded.
Those rows record conditional supplier state and retained failure-face sorting;
they do not prove a new positive source-wall theorem.

## Failure-Face Diagnostic Map

The row-by-row diagnostic map is:

```text
problems/navier-stokes/non-euler-failure-face-diagnostic-map-20260514.yaml
```

### `AllNonEulerNSFailureFaceDiagnostic.A`

For every indexed non-Euler surface, the map records:

```text
selected failure type -> CM Part/Field break, or support quarantine.
```

The counts are:

| Diagnostic status | Count |
|---|---:|
| direct Part/Field landing | 846 |
| selected source/Zeno failure landing in Field | 417 |
| typed subset landing | 96 |
| support quarantine | 541 |
| authority/generated carrier | 44 |

The face-break readout is:

| Face readout | Count |
|---|---:|
| `Pack_Q` | 340 |
| `Part_{N,Q}` | 346 |
| `Field_{N,r,Q}` | 865 |
| no independent face | 585 |

These counts are not proof burdens. They are routing diagnostics. A row that
breaks `Field` does not mean `Pack` and `Part` are globally assumed. It means
that for that row, after its local `Pack`/`Part` alternatives are removed or
inherited from the selected branch, the remaining retained failure is a
`Field` exit.

## Contrapositive Closure Certificates

The proof-certificate file is:

```text
problems/navier-stokes/non-euler-cm-contrapositive-proof-certificates-20260514.yaml
```

### `AllNonEulerCMContrapositiveClosure.A`

Every indexed non-Euler Navier-Stokes row is certificate-classified for the CM
contrapositive program in one of two ways:

1. its selected failure proves a `Pack`, `Part`, or `Field` exit; or
2. the surface is proved unlicensed as a CM theorem source until a named bridge
   promotes it into `Pack`, `Part`, or `Field`.

The certificate counts are:

| Certificate type | Count |
|---|---:|
| proved CM exit | 1359 |
| proved unlicensed for CM contrapositive | 541 |
| proved inherited/no new face | 44 |

The proof-rule counts are:

| Proof rule | Count |
|---|---:|
| direct Part/Field failure | 846 |
| selected retained Field failure | 417 |
| finite face disjunction | 96 |
| no selected CM failure without bridge | 541 |
| authority inheritance/no independent failure | 44 |

Thus there is no non-Euler surface left in the installed inventory that can be
used as an unproved extra CM failure face. A surface either proves its face exit
inside the contrapositive packet, or it is barred from theorem use until a named
bridge upgrades it.

## Soundness Layer

### `InventorySelfInclusion.A`

The inventory includes the index and this theorem note. The word `non-euler`
inside those two filenames is the scope marker for this pass, not an Euler
surface marker.

### `EulerContentExclusionSoundness.A`

The exclusion pass is content-level, not filename-only.  The index excludes the
Euler mirror folder, explicit fixed-`nu` Euler-to-NS transfer notes, and
zero-viscosity / Euler-class comparison surfaces even when their filenames do
not contain `Euler`.

The May 14 exhaustive check moved ten such surfaces out of the non-Euler set:

```text
mpp-esns-b1-b2-closure-attempt-20260506.md
mpp-esns-next-targets-expanded-proof-audit-20260506.md
mpp-effective-viscous-packet-antidegeneration-expansion-20260506.md
mpp-temporal-atom-viscosity-participation-classification-20260506.md
mpp-viscosity-cannot-create-first-failure-reduction-20260509.md
mpp-viscosity-class-separation-edge-theorem-program.md
mpp-viscosity-class-separation-unconditional-closure-attempt.md
mpp-viscosity-homotopy-response-height-proof-20260506.md
mpp-viscosity-no-fold-current-reduction-20260506.md
mpp-viscosity-response-route-unconditional-audit-20260506.md
```

Ordinary Navier-Stokes viscous estimates and Eulerian-coordinate estimates stay
included.  Only Euler/fixed-`nu` transfer or Euler-class comparison surfaces are
excluded.

### Exhaustive Surface Check

The May 14 exhaustive check compares the filesystem text-surface universe
against the index, diagnostic map, and certificate ledger.

```text
total text surfaces checked: 2003
included non-Euler surfaces: 1934
excluded Euler/fixed-nu/Euler-class surfaces: 69
unaccounted text surfaces: 0
missing indexed paths: 0
duplicate indexed paths: 0
index/diagnostic-map mismatch: 0
index/certificate-ledger mismatch: 0
included strong Euler-transfer theorem hits: 0
```

The only included surface that still mentions Euler/fixed-`nu` language in the
strong-pattern scan is this sweep note itself, because it records the exclusion
rule and the moved paths.  It is an authority carrier, not an Euler theorem
surface.

### `IndexClassifierSoundness.A`

The machine index proves exhaustion of the current non-Euler text surface set.
The face label is theorem-role data, not a raw keyword hit. When a surface
mentions `Pack` or `Part` only as a hypothesis for a Field, support, export, or
endpoint role, the role controls.

Manual corrections installed in the index are:

| Surface | Corrected role |
|---|---|
| `mpp-field-coherence-remainder-note.md` | `Field_or_Field_readout_support` |
| `mpp-cm-tethering-and-neighboring-participation-theorem.md` | `Part_or_Part_bridge` |
| `mpp-dead-tower-rigidity-reduction-note.md` | `Part_or_Part_bridge` |
| `mpp-one-field-forward-preservation-theorem-program.md` | `Field_or_Field_readout_support` |
| `mpp-terminal-class-membership-six-burden-closure-note.md` | `typed_subset_Pack_Part_Field_Zeno` |
| `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md` | `supplier_readout_support` |
| `mpp-source-drain-definition-alignment-and-discharge-20260504.md` | `supplier_readout_support` |
| `mpp-zeno-terminal-atom-field-face-diagnostic-20260514.md` | `Zeno_Field_diagnostic_or_supplier` |
| `mpp-marvin-upstream-object-formalization-closure-note.md` | `downstream_export_support` |

### `GeneratedAuthorityInheritance.A`

Generated authority YAML, review/release state, submission manifests, and
derived copies are carriers. Their theorem content inherits the
`Part/Field` witness gate from the theorem notes they cite; they do
not create independent faces, and `Member` is reached only after the triadic CM
witness.

### `SourceFrontierGroundedObligationsBoundary.A`

Source-frontier obligations such as mixed-jet, Hopf/shuffle, Lagrangian, Lemma
4B, and energy-insufficiency claims remain support/export obligations until a
named theorem lands them in `Pack`, `Part`, or `Field`.

### `ManuscriptDraftExportBoundary.A`

Manuscript, draft, submission, whole-space/R3 export, strict-shadow, and
generated TeX surfaces are consumers or presentation copies unless a named
bridge promotes them into `Pack`, `Part`, or `Field`.

## Theorem `NonEulerCMSurfaceFaceSweep.A`

For the current non-Euler Navier-Stokes CM-bearing subset, every applicable
surface is now one of the following:

1. already a CM object-law / endpoint-matrix surface;
2. a `Pack` surface;
3. a `Part` surface;
4. a `Field` surface;
5. a typed subset/matrix surface using the three faces;
6. a supplier/readout/export/context surface with no CM steering authority.

There is no remaining applicable fourth face in the current surface set.

## Proof

The proof is an inventory proof against the installed continuation packet.
`mpp-continuation-packet-generated-cm-contrapositive-20260514.md` proves that a
CM failure surface may steer only when it negates one of the continuation
packet slots:

```text
carrier/cover        -> Pack
participation/law    -> Part
one-field coherence  -> Field
```

The readout bridge from CM to the classical `H^s`, `s>5/2`, continuation norm
is not a fourth CM Part/Field.

The primary-surface inventory below is the current `theorem-packet.yaml` list
with fixed-nu Euler transfer entries removed. It is a theorem-packet subcase of
`AllNonEulerNSSurfaceFaceSweep.A`, not the whole repo-wide sweep.

| # | Surface | CM sort |
|---|---|---|
| 1 | `route-lock.yaml` | governing object law; names Part/Field but proves no face |
| 2 | `modernized-four-body-schema-torus-tower-geometry.md` | context/support only |
| 3 | `live-frontier-honest-cut-reduction.md` | route audit; mentions endpoint cells but proves no face |
| 4 | `strict-shadow-no-remainder-corollary.md` | downstream export; not CM |
| 5 | `euclidean-strict-shadow-clay-discharge-criterion.md` | downstream export; not CM |
| 6 | `clay-discharge-ladder-from-current-reductions.md` | route inventory; not CM |
| 7 | `tps-strong-bridge-sg-lemma-family.md` | downstream selector branch; not CM |
| 8 | `tps-dynamic-source-fit-and-open-frontier.md` | downstream selector/source branch; not CM |
| 9 | `tps-coarse-flow-pair-gap-theorem-candidate.md` | downstream candidate; not CM |
| 10 | `mpp-terminal-class-membership-six-burden-closure-note.md` | CM participation-field record: `LCI.A/FCI.5f/OFP.A/CFI.A/End_NS`; closes through Part/Field endpoint package under named hypotheses |
| 11 | `mpp-class-membership-contradiction-frontier-packet.md` | route context; first failure language only |
| 12 | `mpp-class-membership-forward-invariance-theorem-program.md` | membership bridge; consumes Part+Field to `Member`, not a separate face |
| 13 | `mpp-one-field-forward-preservation-theorem-program.md` | `Field` support; failure is one-field coherence failure |
| 14 | `mpp-lower-carrier-interval-integrability-theorem-program.md` | receiver/collar support into `Field` |
| 15 | `mpp-lci-a-enlarged-ball-oscillation-closure-note.md` | LCI supplier; subordinate to `Field` receiver chain |
| 16 | `mpp-lci-a-halo-gradient-carrier-return-note.md` | LCI supplier; subordinate to `Field` receiver chain |
| 17 | `mpp-lci-a-widened-receiver-return-note.md` | LCI supplier; subordinate to `Field` receiver chain |
| 18 | `mpp-lci-a-widened-thickness-collar-wall-note.md` | LCI supplier; subordinate to `Field` receiver chain |
| 19 | `mpp-lci-a-widened-thickness-lower-carrier-note.md` | LCI supplier; subordinate to `Field` receiver chain |
| 20 | `mpp-lci-a-end-to-end-receiver-and-class-certificate-map.md` | CM map; receiver/LCI feeds `Field`, then `CFI.A+End_NS` |
| 21 | `mpp-lci-a-uniform-lower-carrier-finite-parameter-closure-note.md` | LCI support into `Field` |
| 22 | `mpp-lci-a-direct-transported-center-package-note.md` | DTC/LCI support into `Field` |
| 23 | `mpp-class-membership-endpoint-matrix-closure-contract-note.md` | endpoint matrix: `(Pack, packing-detached)`, `(Part, Dead)`, `(Field, Jump)` plus tower/cross bookkeeping |
| 24 | `mpp-class-membership-full-bridge-ledger-note.md` | bridge ledger; ordered Part/Field witness record, not a new face |
| 25 | `mpp-readout-endpoint-compatibility-completion-note.md` | readout bridge: `Field.Read`, `DTC.Read`, `READ.END`; downstream from CM |
| 26 | `mpp-lci-a-pre-csp-still-live-receiver-admission-note.md` | receiver admission into `Field` chain |
| 27 | `mpp-collar-to-jump-pivot-note.md` | diagnostic sidecar; possible `Field/Jump` manifestation, not installed as a face |
| 28 | `mpp-lci-a-transported-center-residual-forcing-note.md` | RCF/LCI support into `Field` |
| 29 | `mpp-frozen-family-pressure-channel-reduction-note.md` | pressure/source supplier; no direct CM Part/Field |
| 30 | `mpp-frozen-family-resonant-pressure-sufficient-reduction-note.md` | pressure/source supplier; no direct CM Part/Field |
| 31 | `mpp-pressure-source-supplier-verification-ledger-note.md` | source supplier ledger; no direct CM Part/Field |
| 32 | `mpp-normalized-adjoint-amplitude-four-certificate-discharge-20260504.md` | demoted source-drain support; no direct CM Part/Field |
| 33 | `mpp-source-drain-definition-alignment-and-discharge-20260504.md` | demoted source-drain support; no direct CM Part/Field |
| 34 | `mpp-independent-math-verification-audit.md` | audit only |
| 35 | `mpp-pctp-hard-governance-consumption-audit-note.md` | supplier/readout only |
| 36 | `mcp-canonical-pctp-hard-bridge-from-averaged-terminal-tail-route-cfi-a-1500f83b37.md` | downstream readout: averaged Field/readout to endpoint |
| 37 | `mpp-pctp-hard-matrix-readable-discharge.md` | downstream readout: `CM_avg=Part+Field_avg`, then readout to `Field` |
| 38 | `mpp-pctp-hard-terminal-tail-uniformization-assembly.md` | downstream readout: averaged-to-pointwise Field/readout |
| 39 | `mcp-pctp-hard-discharge-via-averaged-terminal-tail-uniformization-avg-end-a-a92107787f.md` | downstream readout; not CM primitive |
| 40 | `mcp-pctp-hard-averaged-assembly-through-read-end.md` | downstream `READ.END`; not CM primitive |
| 41 | `tps-pair-defect-pde-packet.md` | downstream branch support; not CM |
| 42 | `tps-selector-observability-to-sg4-bridge-proof-attempt.md` | SG.4 branch; not CM |
| 43 | `psj-plus-terminal-assembly.md` | branch-local assembly; not CM |
| 44 | `psj-plus-1-overlap-terminal-closure.md` | branch-local overlap closure; not CM |
| 45 | `spectral-transversality-cocycle-bridge-to-sg4.md` | SG.4 branch; not CM |
| 46 | `spectral-transversality-in-measure-implies-pd70.md` | PD.70/SG.4 branch; not CM |
| 47 | `mpp-euler-smooth-ns-smooth-contrapositive-route-note-20260506.md` | excluded: fixed-nu Euler-to-NS transfer |
| 48 | `mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md` | excluded: fixed-nu Euler-to-NS transfer |

## Root Presentations

The live source-wall root group has separate presentations. Their selected
failures sort as follows.

The object-level major pass is now recorded separately in
`mpp-major-non-euler-cm-contrapositive-closures-20260514.md` as
`MajorNonEulerCMContrapositiveClosure.A`.  The all-surface sweep remains the
inventory and row-diagnostic ledger; the major note is the proof-facing closure
for the surfaces the live edge actually names.

| Surface | Selected failure | Face |
|---|---|---|
| `ScaleCriticalTreeCarleson.A` | retained terminal source-reserve tree after raw legal/readout/non-selected alternatives are removed | `Field`, by `RetainedSCTCFailureFieldExit.A` |
| `ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A` | selected terminal source atom, equivalently `ZeroHeatTimeSourceResidue.A` after no-earlier selected source | `Field`, by `RetainedZenoAtomFieldExit.A` |
| `TerminalSignedSaturation.A` / signed-current route | structural route into terminal positive source balance; direct failures reduce to source-wall or Zeno alternatives | no independent face; terminal selected source branch is `Field`, while its retained-pack-gain and participation subfailures are `Pack`/`Part` |
| `RetainedFaceAmplitudeGain.A` | retained amplitude gain fails while the same packet is still being followed | conditional `Pack`/`Part`: failure is `not PackGainLedger.A` or `not PartEnvelopeAmplitudeConservation.A`; if those are supplied and a high-tail source residue remains, it returns to the `Field` source wall |
| `WeightedLiftedDefectCarleson.A` | positive terminal active strain-production carrier | no independent face; reduces to source-wall/Zeno or to explicit signed-current subfailures |
| `ParabolicEdgeResistance.A` | scale-critical flux-amplitude remainder | no independent face; reduces to the same active-square/source-wall branch |
| `SquareReserveEvolution.A` / `ReserveCreationCharge.A` | first-time donor square reserve creation | source-wall supplier route; selected retained failure is the Carleson `Field` diagnostic once `ScaleCriticalTreeCarleson.A` fails |
| `ActiveHeightFluxTrichotomy.A` | first large positive height flux | subset: `Pack` gain event, `Part`/dwell failure, legal `Field` source charge, or Zeno atom |
| `LowStrainBVCharge.A` | weighted temporal variation of sampled low strain | subset: `Part`, `Field` source, Zeno atom, or parabolic-burst inheritance |
| `PCTP.hard / SOURCE.NO-PULSE.A / AWG.A / TGC.A / no-Jump_avg` | downstream supplier/readout package | no CM primitive; may feed `Field`/endpoint readout only after bridge license |

Thus the root group is closed as a face-sorting object:

```text
Carleson selected failure -> Field
Zeno selected failure     -> Field
height/low-strain         -> Part/Field/Zeno subset
signed-current/native-square-reserve presentations -> support routes reducing to those cases
PCTP/source/no-jump readout -> downstream support, not a CM Part/Field
```

## Named Boundary Lemmas

### `RetainedAmplitudeFaceBoundary.A`

The retained-amplitude surface is not a new Field face by itself. The installed
direct test says:

```text
PackGainLedger.A + PartEnvelopeAmplitudeConservation.A
  => RetainedFaceAmplitudeGain.A.
```

Therefore the selected failure of `RetainedFaceAmplitudeGain.A` has only three
legal readings:

```text
not PackGainLedger.A
or not PartEnvelopeAmplitudeConservation.A
or a residual high-tail/source-wall term after those two inputs are supplied.
```

The first reading is a `Pack`-extension failure. The second reading is a `Part`
participation/envelope failure. The third reading is not an amplitude face; it
returns to the source-wall diagnostics already sorted by Carleson/Zeno.

Thus `RetainedFaceAmplitudeGain.A` is closed as a face-boundary object, but the
plain implication `Part_{N,Q} plus Field-window evidence => RetainedFaceAmplitudeGain.A` is not
promoted by this sweep.

### `ActiveHeightFluxFaceRouting.A`

`ActiveHeightFluxTrichotomy.A` is a routing theorem shape, not a positive
smoothness theorem. A first large positive height flux on the retained packet
has to land in exactly one of the declared channels:

```text
Pack gain,
Part/dwell failure,
legal Field source charge,
or Zeno terminal residue atom.
```

The Zeno atom channel is not a fourth face. On the selected retained branch it
is already sorted by `ZenoAtomFailureToFaceWitness.A` and
`RetainedZenoAtomFieldExit.A`.

### `PostASACSignedCurrentBoundary.A`

The post-ASAC signed-current route pays the active-alignment and positive
pair-weight pieces before it reaches the terminal no-free-sink branch:

```text
ASAC.A + PositivePairWeightDefectCharge.A
  + ProjectedCutoffLedger.A + LegalBoundaryLedger.A
  + LocalDonorBalance.A + EntranceLeafDecay.A
  + ZenoSourceResidueRigidity.A
  => TerminalWeightedNoFreeSink.A.
```

After the non-Zeno donor trees telescope, the remaining selected atom is
`ZenoSourceResidueRigidity.A`, hence the already-sorted Zeno source-residue
branch. Signed-current language therefore remains support unless it is reduced
to one of the explicit `Pack`, `Part`, `Field`, or Zeno channels above.

### Receiver And Readout Boundary

`LCI.A`, `CJ.A_low`, `ACT.KX`, `OFP.A`, `Field.Read`, `DTC.Read`, and `READ.END`
belong to the receiver/readout side of `Field`. Their failures can expose a
Field receiver problem, but they do not become `Pack` or `Part` merely because
their hypotheses mention pack gauges or shared participation. If a bounded pack
gauge hypothesis fails, that separate hypothesis is `Pack`; the LCI/CJ selected
receiver failure remains Field-side support.

Zero heat-time source residue has the same boundary: it is a Zeno/Field atom in
the current installed sweep. It can be used as a `Part` failure only after a
separate theorem bridges zero heat-time residue into `Part_{N,Q}`.

## Pack And Part Are Not Held Alive By Default

The Carleson and Zeno diagnostic notes assumed `Pack` and `Part` survived only
because their selected failures had already been reduced to retained same-fluid
terminal source defects. That is not the general rule.

For any surface in this sweep:

```text
carrier/cover loss              -> Pack
same PDE / participation loss   -> Part
one-field/source/readout loss   -> Field
mixed endpoint or trichotomy    -> stated subset
downstream/export/transfer      -> not CM in this pass
```

This is the holistic closure of the current applicable surface set. It proves
the face sorting across the non-Euler surface inventory. It does not prove every
positive supplier theorem that some support surfaces still name.

## All-Surface Closure Proof

The index proves the repo-wide part by exhausting the non-Euler surface field.
Each indexed surface is classified by path role and theorem role, with the
manual correction table overriding raw vocabulary hits:

```text
theorem-construction surfaces -> face sort or support sort by theorem content
authority/generated surfaces  -> carry the installed sweep; no new face
submission/manuscript surfaces -> export/copy support; no new face
source/history surfaces       -> provenance; no new face without promotion
runtime/governance surfaces   -> operational support; no theorem face
authority carriers            -> inherit the Part/Field witness gate
```

The only theorem-bearing categories capable of CM promotion are exactly the
face categories and typed subset categories. The support categories are closed
by quarantine: they may carry evidence, provenance, export text, or generated
copies, but they cannot steer the CM program unless a named theorem promotes
them into `Pack`, `Part`, or `Field`.

Thus the earlier theorem-packet sweep is now genuinely global over the
non-Euler NS surface field.
