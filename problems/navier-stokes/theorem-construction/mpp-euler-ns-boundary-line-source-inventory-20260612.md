# MPP Euler/NS Boundary-Line Source Inventory

## Status

Read-only source inventory from the June 12 Euler/NS boundary audit.  The
companion theorem packet is:

```text
problems/navier-stokes/theorem-construction/
mpp-euler-ns-boundary-line-theorem-program-20260612.md
```

This inventory separates retained Euler material from Euler-only or excess
material for the Navier-Stokes proof program.

## Retention Rule

Retain Euler material in the Navier-Stokes PDF only in these two roles:

1. Part/Field comparison witness:
   an already-selected Navier-Stokes packet keeps the
   transport-pressure-incompressible core, but loses exactly fixed-viscosity
   participation or the viscous one-field tether.
2. Smooth-side fixed-`nu` support bridge:
   `EulerSmooth(u_0,[0,T]) -> NSSmooth_nu(u_0,[0,T])` for the same datum, same
   interval, and fixed `nu>0`, marked open until a transfer theorem is proved.

Quarantine generic Euler mirror prose, Euler-only theorem work, slip imagery,
branch history, and status surfaces that do not land in one of those two roles.

## Side B: Nonsmooth Part/Field Comparison

| Surface | Status | Use |
|---|---|---|
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md:115` | proved grammar | `Member_E = EVol + EMom`; base Euler membership is weaker than NS `Part`/`Field`. |
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-class-membership-flux-volume-definition.md:163` | proved grammar | Pressure participation is compatibility, not Euler regularity or one-field coherence. |
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:12` | proved witness | Stationary tangential slip/vortex sheet is the clean Euler model. |
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:98` | proved witness | Keeps Euler pressure/momentum compatibility while failing one-field coherence. |
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-euler-pressure-nonparticipation-vortex-sheet-witness-20260517.md:113` | proved witness | Fixed positive viscosity reads the same sheet as an NS interface defect. |
| `problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-slip-sheet-euler-nonsmoothness-bridge-20260524.md:127` | proved weak Euler nonsmoothness | Periodic slip-sheet support; not fixed smooth-data Euler blowup. |
| `problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-unbounded-shear-euler-ledger-failure-bridge-20260524.md:123` | proved weak Euler nonsmoothness | Unbounded shear/receiver-ledger Euler failure support. |
| `problems/navier-stokes/euler-mirror/theorem-construction/global-periodic-smooth-layer-to-slip-sheet-limit-20260524.md:56` | proved singular-limit support | Smooth Euler shear layers converge to the slip-sheet boundary. |
| `problems/navier-stokes/euler-mirror/theorem-construction/shared-pack-non-one-field-grammar-closure-20260524.md:17` | proved grammar | Shared Pack/non-one-field grammar closure. |
| `problems/navier-stokes/euler-mirror/theorem-construction/shared-pack-non-one-field-grammar-closure-20260524.md:66` | proved grammar | Euler one-field coherence is an added regularity layer over base membership. |
| `problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md:114` | proved NS CM support | `Part` is pressure-viscosity participation. |
| `problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md:142` | proved NS CM support | `Field` is one-field/tower coherence. |
| `problems/navier-stokes/theorem-construction/mpp-member-smooth-contrapositive-witness-face-bridge-20260504.md:246` | proved NS CM support | Nonsmooth terminal witnesses land through Pack/Part/Field. |
| `problems/navier-stokes/theorem-construction/mpp-clay-field-failure-realization-proof-20260607.md:16` | proved NS Field support | Retained-Pack terminal Jump realizes Field failure. |
| `problems/navier-stokes/theorem-construction/mpp-clay-field-failure-realization-proof-20260607.md:77` | proved NS Field support | Field failure case statement for terminal Jump. |
| `problems/navier-stokes/theorem-construction/mpp-field-failure-to-part-collapse-20260522.md:104` | proved collapse support | Field failure collapses to Part under the retained-Pack terminal branch. |

## Side B: Conditional Or Missing Packet Lifts

| Surface | Status | Meaning |
|---|---|---|
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-a-direct-transport-pressure-attempt-20260519.md:261` | conditional | `ELCI.A` gives the moving-collar packet only with an explicit ledger. |
| `problems/navier-stokes/euler-mirror/theorem-construction/mpp-elci-cp-a-separation-closure-20260522.md:176` | conditional/negative split | Base `Member_E` does not supply the collar packet ledger. |
| `problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md:56` | comparison authority | NS Part/Field mechanisms become Euler nonsmooth diagnostics in clean cases. |
| `problems/navier-stokes/euler-mirror/theorem-construction/euler-ns-viscosity-scenario-separation-map-20260521.md:85` | comparison authority | Slip/pressure-compatible one-field failure is the model case. |
| `problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md:126` | comparison support | Euler keeps transport-pressure-incompressibility while lacking NS viscous participation. |
| `problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md:187` | comparison support | Dual map supports NS diagnostics, not closure proof. |
| `problems/navier-stokes/theorem-construction/mpp-ns-cm-smoothness-euler-dual-regularity-map-20260516.md:273` | comparison support | Boundary line is regularity/coherence, not base Euler membership. |
| `problems/navier-stokes/theorem-construction/mpp-euler-control-case-to-ns-attack-map-20260517.md:156` | missing theorem | `ViscousSlipExclusion.A` remains an NS fixed-`nu` attack target. |
| `problems/navier-stokes/theorem-construction/mpp-clay-part-face-exclusion-working-pass-20260607.md:208` | incomplete | Generic Part survival still needs ancestry/compactness/payment. |
| `problems/navier-stokes/theorem-construction/mpp-retained-carrier-no-defect-participation-direct-attempt-20260609.md:149` | incomplete | Strong-compactness and same-ledger payment package missing. |
| `problems/navier-stokes/theorem-construction/mpp-viscosity-class-separation-edge-theorem-program.md:278` | conditional | Viscosity-class separation still has named bridge obligations. |
| `problems/navier-stokes/theorem-construction/mpp-viscosity-class-separation-unconditional-closure-attempt.md:264` | failed unconditional attempt | Zero effective viscous budget does not automatically produce an Euler member. |
| `problems/navier-stokes/theorem-construction/mpp-pressure-endpoint-pack-part-field-witness-test-20260517.md:51` | failed diagnostic | Pressure endpoint route remains a failed diagnostic, not a retained PDF proof role. |

The packet-level nonsmooth-side work still needs:

```text
CleanSameScenarioSelection.A
NoDefectMeasureCleanEulerization.A
PartViscousOnlyLossTyping.A
FieldViscousTetherOnlyLossTyping.A
```

These are classifier obligations for arbitrary surfaces and zero-budget limits.
After a branch is already typed as the clean viscous-only-loss case, the
Part/Field face conclusion is unconditional.

## Side A: Smooth Fixed-`nu` Bridge

| Surface | Status | Meaning |
|---|---|---|
| `problems/navier-stokes/theorem-construction/mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md:3` | open bridge with reductions | Exact target `EulerSmooth -> NSSmooth_nu` is recorded. |
| `problems/navier-stokes/theorem-construction/mpp-direct-fixed-nu-euler-smooth-ns-smooth-hierarchy-20260509.md:182` | open bridge | Missing `EulerSmoothFixedNuRelativeBound.A` / `EulerSmoothToNSTowerBound.A`. |
| `problems/navier-stokes/theorem-construction/mpp-viscosity-cannot-create-first-failure-reduction-20260509.md:41` | proved reduction | First-failure reduction is installed. |
| `problems/navier-stokes/theorem-construction/mpp-viscosity-cannot-create-first-failure-reduction-20260509.md:76` | open target lemma | `ViscosityCannotCreateFirstFailure.A` remains unproved. |
| `problems/navier-stokes/theorem-construction/mpp-euler-smooth-to-ns-smooth-direct-cm-attempt-20260506.md:137` | failed direct proof | Current surfaces do not prove all-fixed-`nu` transfer from Euler smoothness alone. |
| `problems/navier-stokes/theorem-construction/mpp-esns-b1-b2-closure-attempt-20260506.md:61` | failed closure attempt | The estimate imports the desired NS regularity. |
| `problems/navier-stokes/theorem-construction/mpp-esns-next-targets-expanded-proof-audit-20260506.md:84` | conditional audit | Euler-anchored difference inequality leaves an a priori target open. |

Smooth-side PDF handling: keep this as boundary support and mark the bridge open
unless one of the fixed-`nu` transfer lemmas is proved.

## PDF And App Placement Surfaces

| Surface | Status | Required handling |
|---|---|---|
| `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex:338` | current PDF source | Allows Euler as a picture/test for lost viscous tether or one-field law. |
| `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex:458` | current PDF source | Explains Euler removes viscosity while retaining transport/pressure. |
| `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex:1413` | current PDF source | Correctly keeps Euler/fixed-viscosity comparison outside proof until it lands a packet. |
| `problems/navier-stokes/submission-bundle/navier-stokes-submission.tex:1494` | current PDF source | Comparison enters only through selected NS packet and Pack/Part/Field decision. |
| `system/gui/navier-stokes-repo-viewer/src/nsAnalysis.ts:3824` | app placement | Euler/fixed-`nu` lanes are isolated from proof trunks. |
| `system/gui/navier-stokes-repo-viewer/src/nsAnalysis.ts:3838` | app placement gap | Needs a visible child for viscous participation/tether Part/Field comparison witness. |
| `system/gui/navier-stokes-repo-viewer/src/nsAnalysis.ts:8390` | app placement | Current app isolates Euler mirror/fixed-`nu` surfaces. |
| `system/gui/navier-stokes-repo-viewer/src/App.tsx:3432` | app placement | Comparison domain says transfer needs same-witness bridge. |
| `problems/navier-stokes/ns-proof-program-route-table.yaml:910` | route control | Fixed-`nu` transfer is separate/quarantined. |
| `problems/navier-stokes/ns-proof-program-route-table.yaml:1307` | route control | NS Part/Field mechanisms do not become primitive Euler membership laws. |
| `problems/navier-stokes/ns-proof-program-route-table.md:99` | route gap | Markdown route table over-quarantines Euler as exploratory; sync to this taxonomy. |
| `problems/navier-stokes/submission-bundle/source-field-reader-appendix.tex:56059` | appendix gap | Retained comparison block appears to trail before the promised face conclusion. |

## PDF-Purge Guard

The next PDF worker should delete or quarantine Euler material that lacks one of
these checked labels:

```text
retain.part_field_comparison_witness
retain.fixed_nu_smooth_support_open
quarantine.euler_only
quarantine.generic_comparison
quarantine.generated_status
```

The worker should not reintroduce Euler material by keyword search, branch
history, or surface count.  It must first identify the selected NS packet, the
Pack/Part/Field face, and the exact retained role.
