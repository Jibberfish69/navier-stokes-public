# NS T3 Release Approved 20260501

## Status

Superseded release tag.  This file is retained as historical provenance only.
Current live authority blocks release on:

```text
OriginalSmoothData=>SourcePulseExclusion.A
OriginalSmoothData=>mu_*^sing=0
```

## Promotion packet

```text
problem: navier-stokes
tier: clay-level
status: blocked
decision: not-release-approved
promotion_allowed: false
release_approved: false
blockers: OriginalSmoothData=>SourcePulseExclusion.A
```

## Scope

The approved theorem surface is periodic:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

## Fixed release artifacts

```text
external-paper/main.tex sha1=ed77cff806ce81c69d5d40c54aa336491df51993
release-manifest.yaml sha1=690c4e6525160dae90b3b61811d907c7652ee76e
release-decision.yaml sha1=2b4a62c38e0aad4ab285728972103c195b42aab2
proof-obligation-matrix.yaml sha1=5f8063efddb303946dd838c615bcf2a43d957abb
theorem-packet.yaml sha1=0f74c1242c626dcc061d4183065b4e4970e0029d
review-verdict.yaml sha1=37c2778c04e95956e6da64be4964cf3db384b792
```

## Reader-facing artifacts

```text
problems/navier-stokes/external-paper/periodic-main-clean.tex
problems/navier-stokes/external-paper/periodic-appendix-bundle.md
problems/navier-stokes/release-notes.md
problems/navier-stokes/final-release-snapshot.md
```

## Exclusion

The whole-space `R^3` branch is excluded from this release. It remains conditional on `Tail.Hs_R3` / `ExtCascade_s_R3` and is tracked separately in `whole-space-r3-matrix-branch.md`.
