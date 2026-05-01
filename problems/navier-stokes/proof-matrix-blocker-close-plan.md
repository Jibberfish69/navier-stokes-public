# Navier-Stokes Proof Matrix Blocker Close Plan

Source: `problems/navier-stokes/source-frontier.yaml`  
Source SHA: `b79ba37b6e9029784daaa70d7846ed5bba9c57dd`  
Generated from matrix timestamp: `2026-04-29T19:00:03Z`

## Current Matrix Summary

| Metric | Count |
|---|---:|
| Total obligations | 24 |
| Grounded | 16 |
| Bridge pending | 6 |
| Unresolved | 2 |
| Blocking | 8 |
| All discharged | false |

Submission blockers recorded by the matrix:

- 2 unresolved proof obligations.
- 6 bridge obligations awaiting local discharge.
- Stand-alone status remains `revise`.

## Close Order

1. Close `proof-dependency-1` and `proof-dependency-2` as target-fidelity / monotone-bridge localization.
2. Close `proof-dependency-4` as energy-insufficiency-to-cascade localization.
3. Resolve `proof-dependency-5` as the first real analytic gap: cascade suppression by periodic shell or dyadic tail estimate.
4. Close `proof-dependency-6` and `proof-dependency-7` as monotone/compactness bridge packaging.
5. Resolve `proof-dependency-8` as the second real analytic gap: compactness-to-continuation via heat-governed deformation or continuation bridge.
6. Close `proof-dependency-9` as branch terminal packaging: periodic Clay branch first, whole-space statement as downstream discharge.

## Blocking Obligations

### proof-dependency-1

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: official Clay target on `R^3` or `T^3` -> regularized or morphic-regularized success does not close original problem.
- Matrix note: dependency direction visible; explicit local discharge required before submission.
- Required close artifact: theorem-construction note that pins the target equation and explains why every regularized/morphic surrogate is only admissible as a bridge after source-to-original transfer.
- Candidate source surfaces:
  - `problems/navier-stokes/claim-ladder.md`
  - `problems/navier-stokes/target-fidelity-discharge-source-pack.md`
  - `problems/navier-stokes/route-lock.yaml`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `TFD.A` target-fidelity discharge.

### proof-dependency-2

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: regularized/morphic success insufficiency -> original framework names `Q(t)` as a monotone bridge.
- Matrix evidence: strong local source evidence already attached; support score `225`.
- Required close artifact: local discharge note promoting the already-attached evidence into a submission-safe bridge theorem.
- Candidate source surfaces:
  - `problems/navier-stokes/claim-ladder.md`
  - `problems/navier-stokes/monotone-functional-discharge-source-pack.md`
  - `problems/navier-stokes/formalization-ledger.md`
  - `problems/navier-stokes/proof-source-pack.md`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `QBR.A` monotone-bridge identity.

### proof-dependency-4

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: global energy/enstrophy insufficiency -> live obstruction is small-scale or high-frequency cascade feeding blow-up.
- Matrix note: dependency direction visible; explicit local discharge required before submission.
- Required close artifact: energy-insufficiency-to-cascade theorem note showing the remaining obstruction after energy/enstrophy control is cascade transfer rather than baseline energy loss.
- Candidate source surfaces:
  - `problems/navier-stokes/energy-insufficiency-source-pack.md`
  - `problems/navier-stokes/cascade-after-monotone-bridge-source-pack.md`
  - `problems/navier-stokes/interdependencies-discharge-source-pack.md`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `EIC.A` energy-insufficiency-to-cascade bridge.

### proof-dependency-5

- Status: `unresolved`
- Kind: proof-dependency
- Bridge: cascade obstruction -> periodic shell or dyadic tail estimate suppresses dangerous high-frequency transfer on the chosen torus-first theorem surface.
- Matrix note: structural only; proof links absent from submission-safe theorem packet.
- Required close artifact: analytic theorem proving the periodic shell / dyadic tail suppression estimate on the active torus-first surface.
- Candidate source surfaces:
  - `problems/navier-stokes/cascade-after-monotone-bridge-source-pack.md`
  - `problems/navier-stokes/theorem-construction/modernized-four-body-schema-torus-tower-geometry.md`
  - `problems/navier-stokes/theorem-construction/tower-rewrite-under-ym-heat-shadow-bridge.md`
- Pass condition: matrix status changes from `unresolved` to `grounded`, `blocking: false`.
- Suggested theorem label: `PDT.A` periodic dyadic tail suppression.
- Risk: this is a primary analytic blocker rather than a packaging blocker.

### proof-dependency-6

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: periodic shell/dyadic tail estimate -> monotone functional stabilizes global energy/enstrophy layer and enables compactness package on same periodic classical surface.
- Required close artifact: theorem note linking tail suppression and `Q(t)` monotonicity to compactness-package entry.
- Candidate source surfaces:
  - `problems/navier-stokes/monotone-functional-discharge-source-pack.md`
  - `problems/navier-stokes/theorem-construction/monotone-functional-package.md`
  - `problems/navier-stokes/theorem-construction/compactness-package.md`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `MCP.A` monotone-compactness bridge.

### proof-dependency-7

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: monotone/compactness input -> strong local compactness and nonlinear tensor closure on periodic/operator approximation family.
- Required close artifact: compactness-to-nonlinear-tensor-closure theorem note with exact topology, convergence mode, and nonlinear product passage.
- Candidate source surfaces:
  - `problems/navier-stokes/theorem-construction/compactness-package.md`
  - `problems/navier-stokes/source-grounded-framework-map.md`
  - `problems/navier-stokes/curvature-based-regularity-discharge-source-pack.md`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `CNTC.A` compactness nonlinear tensor closure.

### proof-dependency-8

- Status: `unresolved`
- Kind: proof-dependency
- Bridge: scale-barrier plus compactness/nonlinear closure -> heat-governed deformation or continuation bridge forces continuation control on same periodic theorem surface.
- Matrix note: structural only; proof links absent from submission-safe theorem packet.
- Required close artifact: continuation theorem linking the compactness/tensor closure package to the deformation or heat-governed continuation control.
- Candidate source surfaces:
  - `problems/navier-stokes/theorem-construction/ym-heat-to-torus-heat-to-classical-shadow-bridge.md`
  - `problems/navier-stokes/theorem-construction/spatial-derivative-curvature-dissipation-theorem-target.md`
  - `problems/navier-stokes/curvature-based-regularity-discharge-source-pack.md`
- Pass condition: matrix status changes from `unresolved` to `grounded`, `blocking: false`.
- Suggested theorem label: `HDC.A` heat-deformation continuation bridge.
- Risk: this is a primary analytic blocker rather than a packaging blocker.

### proof-dependency-9

- Status: `bridge-pending`
- Kind: proof-dependency
- Bridge: scale-barrier, monotone, compactness, continuation packages on active periodic branch -> periodic Clay branch with `f=0`; whole-space `R^3` statement is downstream discharge/export.
- Required close artifact: branch terminal theorem packaging periodic conclusion and preserving whole-space export boundary.
- Candidate source surfaces:
  - `problems/navier-stokes/claim-ladder.md`
  - `problems/navier-stokes/route-lock.yaml`
  - `problems/navier-stokes/theorem-construction/main-theorem-draft.md`
- Pass condition: matrix status changes to `grounded`, `blocking: false`.
- Suggested theorem label: `PCB.A` periodic Clay branch terminal.

## Audit Inputs Created By This Plan

This file provides direct input for:

- `dependency-audit.yaml`
- `gap-audit.yaml`
- `assumption-audit.yaml`
- `circularity-audit.yaml`
- `consistency-audit.yaml`

The two unresolved obligations, `proof-dependency-5` and `proof-dependency-8`, should feed the gap ledger first.

## Next Artifact

Create `problems/navier-stokes/dependency-audit.yaml` only after each bridge-pending entry has one explicit close artifact or a recorded gap ticket. A passing dependency audit requires all eight blockers above to be grounded or explicitly marked as scoped/waived under release policy.
