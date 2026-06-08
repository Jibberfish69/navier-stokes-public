# Final Periodic T3 Release Snapshot

## Supersession

This snapshot is superseded. Current live authority is the dual-track
submission-candidate package, not this blocked periodic snapshot:

```text
human/app-aligned track: problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
codex track: papers/navier-stokes/manuscript/generated/main.tex
release-decision: submission-candidate
submission-verdict: submission-ready
```

## Promotion packet

```text
problem: navier-stokes
tier: clay-level
historical status: blocked
historical decision: not-release-approved
current status: superseded by the rendered dual-track submission-candidate package
```

## Core release artifacts

```text
problems/navier-stokes/external-paper/main.tex
sha1=ed77cff806ce81c69d5d40c54aa336491df51993
```

```text
problems/navier-stokes/theorem-packet.yaml
sha1=0f74c1242c626dcc061d4183065b4e4970e0029d
```

```text
problems/navier-stokes/source-frontier.yaml
sha1=5f8063efddb303946dd838c615bcf2a43d957abb
```

```text
problems/navier-stokes/release-manifest.yaml
sha1=690c4e6525160dae90b3b61811d907c7652ee76e
```

```text
problems/navier-stokes/release-decision.yaml
sha1=2b4a62c38e0aad4ab285728972103c195b42aab2
```

## Final readback checks

```text
problems/navier-stokes/external-paper/periodic-main-clean.tex
sha1=23d7e81553dae343c75cc6adbec67772a4cb857f
readback: present
```

```text
problems/navier-stokes/external-paper/periodic-appendix-bundle.md
sha1=caea3923aa63402335261b3eae2d9e26580ccc1c
readback: present
```

```text
problems/navier-stokes/release-notes.md
sha1=021f09e02f2bd4b60890322d3cab8a4b951f40cc
readback: present
```

## Scope

This release covers the periodic `T^3` theorem surface:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The whole-space `R^3` branch is stored in a separate conditional matrix and remains outside this release snapshot.
