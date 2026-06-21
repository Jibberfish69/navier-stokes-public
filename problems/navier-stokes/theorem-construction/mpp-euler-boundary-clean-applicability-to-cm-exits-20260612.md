# MPP Euler Boundary Clean Applicability To CM Exits

## Status

Audit correction after the first June 12 answer collapsed concrete CM exit rows
into endpoint families.  This file lists the actual Navier-Stokes CM exit cases
from the repo where the clean Euler boundary theorem applies.

Authority surfaces:

```text
problems/navier-stokes/cm-branch-family-certificate-ledger-20260526.yaml
problems/navier-stokes/theorem-construction/mpp-euler-ns-boundary-line-theorem-program-20260612.md
problems/navier-stokes/theorem-construction/mpp-euler-ns-boundary-line-source-inventory-20260612.md
```

Clean applicability rule:

```text
same selected NS packet
+ Pack survives
+ same transport-pressure-incompressible core survives
+ the only broken mechanism is fixed-viscosity participation
   or the viscous one-field tether
+ no Reynolds stress, source measure, pressure-source residue, or defect measure
=> Euler comparison applies.
```

Once a branch is typed as this clean case, the Part/Field face conclusion is
unconditional.  The classifier work is proving that a concrete repo row is
really this clean case.

## Applies Directly

| repo case | CM Part/Field | why clean Euler comparison applies | anchors |
|---|---|---|---|
| `pressure_viscosity_or_dwell_part_exit` | `not Part_{N,Q}` | This is the selected-carrier case where Pack survives and the same differentiated NS pressure-viscosity tower, dwell law, or same-law participation fails. Euler keeps pressure/incompressibility but lacks the fixed-viscosity participation law. | `cm-branch-family-certificate-ledger-20260526.yaml:196-217`; `mpp-any-finite-failure-witness-cm-exit-20260521.md:154-190`; `mpp-retained-pressure-package-cm-face-placement-20260605.md:49-55` |
| `retained_positive_window_blowup_field_exit` | `Part_{N,Q} + forall r>0 not Field_{N,r,Q}` | Pack and Part survive; every positive scale loses coherent N-level field/readout. This is exactly the viscous one-field tether loss. | `cm-branch-family-certificate-ledger-20260526.yaml:218-238`; `mpp-any-finite-failure-witness-cm-exit-20260521.md:192-230`; `mpp-retained-pressure-package-cm-face-placement-20260605.md:60-117` |
| `Jump_base` / tangential slip sheet | `Field / Jump`, possible `Dead_x` cross-entry | Normal flux and pressure compatibility survive, while tangential slip kills one-field coherence. This is the installed Euler model for the clean Field case; it becomes `Dead_x` only when the same slip is used as participation-failure evidence. | `mpp-endpoint-cover-taxonomy-dead-blown-jump-slip-map-20260517.md:63-121`; `mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:95-128`; `mpp-euler-control-case-to-ns-attack-map-20260517.md:45-121` |
| retained terminal Field row / realized same-fluid terminal Jump | `Pack_Q + Part^{term}_{N,Q} + forall r>0 not Field_{N,r,Q}` | The retained terminal carrier and terminal Part are assumed; all-scales Field failure is realized as same-fluid terminal Jump. That is the clean one-field-loss row, followed by the installed collapse into terminal Part failure. | `mpp-clay-field-failure-realization-proof-20260607.md:24-75`; `mpp-field-failure-to-part-collapse-20260522.md:64-116` |
| `Jump_avg` on the same admitted averaged terminal tail | conditional `Part_{N,Q} + forall r>0 not Field_{N,r,Q}` | `Jump_avg := not Field_avg`; the repaired admission theorem sends positive CM Field scale plus the same-tail `SCF_base` local modulus to `Field_avg`. Without that modulus, this row remains an analytic Field-admission burden rather than a discharged clean Euler case. | `mpp-averaged-jumpavg-field-face-reduction-20260607.md:23-140`; `mpp-averaged-field-face-admission-20260607.md:23-130` |

## Applies Only To A Clean Subcase

| repo case | status | clean subcase | excluded remainder | anchors |
|---|---|---|---|---|
| `raw_terminal_source_residue_pack_or_part_exit` | mostly excluded | The `not Part_{N,Q}` branch is clean only when the residue has reduced to failure of lawful pressure-viscosity participation with no retained source residue. | Raw source residue introduces an unpaid source measure, so the clean Euler comparison does not apply to the raw row. | `cm-branch-family-certificate-ledger-20260526.yaml:172-195`; `mpp-terminal-source-residue-cm-exit-20260522.md:63-164` |
| `terminal_l3_duhamel_mass_same_witness_cm_part_field_question` | conditional subcase | Under retained `Pack_Q + Part_{N,Q}`, the local L3 critical concentration can become a Field incompatibility row. That retained Field subcase can use the Euler comparison after same-ledger localization and no-residue typing. | The Part/Field/source-work alternatives and generic public-critical translator language do not qualify. | `cm-branch-family-certificate-ledger-20260526.yaml:356-379`; `mpp-finite-terminal-obstruction-inventory-row-audit-20260605.md:59-107`; `mpp-terminal-l3-duhamel-mass-cm-face-correction-20260523.md:64-83`; `mpp-retained-pack-part-critical-concentration-to-field-bridge-20260519.md:62-105` |
| `SourcePulseFieldExit.A` / source-pulse jump manifestation | conditional subcase | Applies only after the source-pulse branch is on the retained `Part plus Field-window evidence` track and the endpoint manifestation is `Jump`, so the remaining failure is shrinking-scale one-field fracture. | Native source-pulse measure, packing-detached, and tower-blown alternatives are not clean Euler comparison rows. | `mpp-sourcepulse-cmexit-three-face-execution-note.md:100-120`; `mpp-sourcepulse-field-face-tower-placement-reduction-note.md:21-131` |
| `retained_pressure_package_cm_part_field_question_placement` | direct on two subcases | Part subcase: pressure package no longer writes as same pressure-viscosity tower. Field subcase: Pack and Part survive, receiver chain still cannot supply positive coherent Field scale. | Pass-side receiver support is not an exit. | `mpp-retained-pressure-package-cm-face-placement-20260605.md:43-120` |
| `active_height_low_strain_typed_disjunction` | only certified subcases | Applies to the Part/dwell subcase or to an already licensed Field/Zeno-to-Field subcase when the mechanism is viscous participation or one-field tether loss. | The hidden signed-pair chain, supplier support, and Pack/Zeno carrier failures do not qualify. | `cm-branch-family-certificate-ledger-20260526.yaml:286-310`; `mpp-major-non-euler-cm-contrapositive-closures-20260514.md:173-190` |
| generic `local_critical_translator_same_witness` | future conditional | A named class `X` can qualify only after same-atlas localization, retained Part/Field, and Field incompatibility are proved. | Generic public-critical, endpoint/no-pulse, readout, reserve-birth, signed-current, and transfer/mirror rows remain support. | `cm-branch-family-certificate-ledger-20260526.yaml:380-405`; `mpp-retained-pack-part-critical-concentration-to-field-bridge-20260519.md:106-149` |

## Does Not Apply

| repo case | reason | anchors |
|---|---|---|
| `zero_radius_terminal_packet_pack_exit` | Pack fails first; there is no retained same selected packet for the clean Part/Field Euler comparison. | `cm-branch-family-certificate-ledger-20260526.yaml:132-151` |
| `unpaid_donor_refill_or_detached_ancestry_pack_exit` | Pack/carrier failure, not viscous-only Part/Field loss. | `cm-branch-family-certificate-ledger-20260526.yaml:152-171` |
| `retained_native_source_residue_field_diagnostic` | Source residue remains the object; raw residue is seated at Part/Field first, and the retained Field wording is demoted diagnostic support. | `cm-branch-family-certificate-ledger-20260526.yaml:239-259`; `mpp-retained-native-source-residue-field-exit-reduction-20260516.md:8-59` |
| `retained_positive_scale_native_reserve_birth` | Positive supplier/support row; no installed same-atlas first-Part/Field derivation. | `cm-branch-family-certificate-ledger-20260526.yaml:260-285` |
| `signed_current_no_free_sink_family` | Not an independent CM Part/Field; returns to Part/Field/Zeno or support. | `cm-branch-family-certificate-ledger-20260526.yaml:311-331` |
| `endpoint_good_scale_no_pulse_readout` as a branch label | Downstream readout support, not a CM Part/Field until restated as a selected Field failure after Pack and Part. | `cm-branch-family-certificate-ledger-20260526.yaml:332-355` |
| `pressure_residue_field_diagnostic` | Pressure residue/source-wall diagnostic; not clean one-field tether loss. | `mpp-pressure-branch-exhaustion-to-field-face-diagnostic-20260517.md:33-85` |
| `tower-blown` / endpoint tower-amplitude rows | Tower amplitude is not the clean Euler Part/Field comparison; it needs tower-bound or endpoint-matrix handling. | `mpp-class-membership-endpoint-matrix-closure-contract-note.md:206-219`; `mpp-sourcepulse-cmexit-three-face-execution-note.md:137-168` |
| `transfer_and_mirror_comparison` row from the old branch ledger | Outside the non-Euler NS CM proof until an exact selected NS packet transfer theorem lands in Part or Field. | `cm-branch-family-certificate-ledger-20260526.yaml:406-425` |

## Short Answer

The clean Euler boundary comparison attaches to:

```text
1. pressure-viscosity / dwell Part failure;
2. retained one-field Field failure;
3. tangential-slip / Jump_base Field model;
4. retained terminal Jump / Field row and its Part-collapse cross-entry;
5. Jump_avg after AveragedFieldFaceAdmission.A plus the same-tail SCF_base modulus;
6. retained pressure-package Part or Field placements;
7. source-pulse only on the retained Part plus Field-window evidence jump-manifestation subcase;
8. terminal L3 Duhamel mass only on the retained Part plus Field-window evidence Field-incompatibility subcase;
9. generic critical translators only after same-atlas localization plus Field incompatibility.
```

It does not attach to Pack exits, raw source residues, pressure-residue
diagnostics, tower-blown rows, signed-current/support rows, reserve-birth
supplier rows, or transfer/mirror rows before same-packet promotion.
