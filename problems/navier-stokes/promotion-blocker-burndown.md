# Navier-Stokes Clay-Level Promotion Blocker Burn-Down

Status: superseded by the CM referee working sweep, May 26, 2026.

This surface is a stale promotion snapshot, not theorem authority. It must not
be used to claim submission readiness until it is regenerated from
`cm-contrapositive-referee-audit.yaml`.

## Direct-Live Authority Rule

The active torus-first CM proof state is:

```text
finite Clay breakdown witness
  -> torus global material-atlas terminal capture
  -> first failed Part/Field service
  -> Exit(Q):=not Member(Q)
```

The active working sweep installed the torus global material-atlas capture
proof and reclassified unresolved branch-family rows as support with no
proof-bearing status unless a same-atlas Part/Field Part/Field derivation is
proved.
Two submission-level blockers remain: the manuscript proof spine must be
rewritten around the global atlas object, and any full `R^3` Clay claim needs a
separate whole-space export theorem.

## Promotion Gate Snapshot

| Gate | Current value |
|---|---|
| Problem | `navier-stokes` |
| Tier | `clay-level` |
| Disposition | `blocked-pending-manuscript-and-scope-sync` |
| Review verdict | `superseded` |
| Release posture | `not-export-ready` |
| Submission ready | `false` |
| Completion tier achieved | `torus-first-cm-terminal-capture-worked` |
| Terminal safe | `torus-first only; whole-space export open` |
| Release blockers | `2` |
| Direct-live blocking count | `2` |
| Direct-live frontier count | `2` |

## Superseded Gate Requirements

| Requirement | Current artifact | Status |
|---|---|---|
| Promotion record | `problems/navier-stokes/release-decision.yaml` | superseded |
| Dependency audit | `problems/navier-stokes/dependency-audit.yaml` | passed |
| Assumption ledger/audit | `problems/navier-stokes/assumption-ledger.yaml`, `problems/navier-stokes/assumption-audit.yaml` | passed |
| Gap audit | `problems/navier-stokes/gap-audit.yaml` | passed |
| Circularity audit | `problems/navier-stokes/circularity-audit.yaml` | passed |
| Consistency audit | `problems/navier-stokes/consistency-audit.yaml` | passed |
| Failure-mode checks | `problems/navier-stokes/failure-mode-checks.yaml` | passed |
| Review verdict | `problems/navier-stokes/review-verdict.yaml` | superseded by CM referee gate |
| Submission verdict | `problems/navier-stokes/submission-verdict.yaml` | superseded by CM referee gate |
| Reproducibility bundle | `problems/navier-stokes/release-manifest.yaml` | superseded by CM referee gate |
| Paper coverage | `problems/navier-stokes/submission-bundle/current-material-coverage.yaml` | must be regenerated |

## Stale Blocker Demotions

The previous burn-down text recorded nine blockers from an older promotion packet.
Those blockers are superseded by the current CM referee working sweep:

- `source-wall-root-after-reconcile` is historical/support grouping, not a current
  direct-live release blocker.
- `TerminalCMNoExit.A / NoGenuineCMExit.A` is positive no-exit support language,
  not the governing CM burden.
- `SignedPairReserveVisibility.A`, `ZeroMomentReserveVisibility.A`,
  `SourceReserveBirthCharge.A`, and active-height/no-free-sink surfaces are
  support or positive-forward pressure tests unless they prove a genuine in-class
  nonsmooth third branch.
- Missing-audit claims are stale only where the named audits exist and pass.
- Review/release claims of `accept`, `export-ready`, `submission_ready: true`,
  or `full-mpp-closure` are stale until the current CM referee blockers are
  resolved.

## Current Validation Commands

```text
ruby -e 'require "yaml"; Dir["problems/navier-stokes/**/*.yaml"].each { |p| YAML.load_file(p) }; puts "yaml_ok #{Dir["problems/navier-stokes/**/*.yaml"].size}"'
ruby problems/navier-stokes/tools/build_current_material_coverage.rb --check
ruby system/runner/paper_factory.rb check navier-stokes
git diff --check -- problems/navier-stokes
```

## Current Result

The old blocker list is closed as stale, but promotion is not closed. The live
state is blocked on manuscript-spine synchronization and whole-space/periodic
claim scope.
