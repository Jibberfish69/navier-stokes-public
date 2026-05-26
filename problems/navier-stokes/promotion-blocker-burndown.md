# Navier-Stokes Clay-Level Promotion Blocker Burn-Down

Status: reconciled to direct-live CM authority, May 26, 2026.

This surface is a promotion gate snapshot, not a theorem frontier. It may not
respawn source-wall, no-genuine-exit, signed-pair, or positive-forward blocker
language unless a later audit proves one of the two reopening conditions below.

## Direct-Live Authority Rule

The active CM proof state is:

```text
finite Clay breakdown witness
  -> CM-test entry
  -> Pack/Part/Field finite failure type
  -> Exit(Q):=not Member(Q)
```

A blocker can reopen this promotion gate only by proving one of:

1. a finite same-surface nonsmooth branch remains a legal in-class `Member(Q)`
   continuation while also carrying the terminal Pack/Part/Field failure witness;
2. an alleged finite Clay breakdown witness does not enter the canonical
   same-fluid CM terminal packet tree or cannot be exhausted by Pack/Part/Field.

The current surface-field audit found no accepted surface proving either
condition.

## Promotion Gate Snapshot

| Gate | Current value |
|---|---|
| Problem | `navier-stokes` |
| Tier | `clay-level` |
| Disposition | `submission-candidate` |
| Review verdict | `accept` |
| Release posture | `export-ready` |
| Submission ready | `true` |
| Completion tier achieved | `full-mpp-closure` |
| Terminal safe | `true` |
| Release blockers | `0` |
| Direct-live blocking count | `0` |
| Direct-live frontier count | `0` |

## Cleared Gate Requirements

| Requirement | Current artifact | Status |
|---|---|---|
| Promotion record | `problems/navier-stokes/release-decision.yaml` | passed |
| Dependency audit | `problems/navier-stokes/dependency-audit.yaml` | passed |
| Assumption ledger/audit | `problems/navier-stokes/assumption-ledger.yaml`, `problems/navier-stokes/assumption-audit.yaml` | passed |
| Gap audit | `problems/navier-stokes/gap-audit.yaml` | passed |
| Circularity audit | `problems/navier-stokes/circularity-audit.yaml` | passed |
| Consistency audit | `problems/navier-stokes/consistency-audit.yaml` | passed |
| Failure-mode checks | `problems/navier-stokes/failure-mode-checks.yaml` | passed |
| Review verdict | `problems/navier-stokes/review-verdict.yaml` | accept |
| Submission verdict | `problems/navier-stokes/submission-verdict.yaml` | submission ready |
| Reproducibility bundle | `problems/navier-stokes/release-manifest.yaml` | passed |
| Paper coverage | `problems/navier-stokes/submission-bundle/current-material-coverage.yaml` | passed |

## Stale Blocker Demotions

The previous burn-down text recorded nine blockers from an older promotion packet.
Those blockers are superseded by the current release-surface reconciliation:

- `source-wall-root-after-reconcile` is historical/support grouping, not a current
  direct-live release blocker.
- `TerminalCMNoExit.A / NoGenuineCMExit.A` is positive no-exit support language,
  not the governing CM burden.
- `SignedPairReserveVisibility.A`, `ZeroMomentReserveVisibility.A`,
  `SourceReserveBirthCharge.A`, and active-height/no-free-sink surfaces are
  support or positive-forward pressure tests unless they prove a genuine in-class
  nonsmooth third branch.
- Missing-audit claims are stale: the audit and failure-mode surfaces listed
  above exist and pass.
- Review/release claims of `revise`, `blocked`, `not-release-approved`, or
  `submission_ready: false` are stale against the current review, submission, and
  release-decision surfaces.

## Current Validation Commands

```text
ruby -e 'require "yaml"; Dir["problems/navier-stokes/**/*.yaml"].each { |p| YAML.load_file(p) }; puts "yaml_ok #{Dir["problems/navier-stokes/**/*.yaml"].size}"'
ruby problems/navier-stokes/tools/build_current_material_coverage.rb --check
ruby system/runner/paper_factory.rb check navier-stokes
git diff --check -- problems/navier-stokes
```

## Result

The Clay-level promotion blocker burn-down is closed. Future promotion-blocker
text must cite a current direct-live surface and prove one reopening condition
before it can mark the Navier-Stokes CM contrapositive proof as blocked.
