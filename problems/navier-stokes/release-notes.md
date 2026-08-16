# Navier--Stokes Periodic Release Notes

Repository MPP status: **solved by the established proof program**.

## Supersession update — 2026-08-05

The current repository authority records the exact one-fluid proof topology:

\[
u_0 \to
\text{datum-generated compatible whole-terminal finite rectangles}
\to \text{projective all-orders intersection}
\to S_0
\to H^\infty \text{ endpoint}
\to \text{actual endpoint jet}
\to \text{same-history restart}.
\]

The entire displayed chain is established. The route-specific release history
below is preserved for provenance and mathematics at its displayed scope;
dated status labels cannot reopen the proof.

## Historical supersession record

These release notes are historical periodic-branch context, not current release
authority. At the date of this record, the controlling release stack was
blocked by the July 1 Gold L1 authority audit:

```text
release-decision: blocked
submission-verdict: not-ready
release_eligible: false
active blocker: TFE2748B / OriginalCriticalCapacityVariation.A
human/app-aligned track: problems/navier-stokes/submission-bundle/navier-stokes-submission.tex
codex track: papers/navier-stokes/manuscript/generated/main.tex
```

The release stack may retain rendered PDF tracks and historical periodic-branch
context, but it does not have current proof closure or submission readiness.

## Release scope

This release is scoped to the periodic branch on `T^3`:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The release does not claim the whole-space `R^3` theorem.

## Proof route

The main proof route is:

```math
SCF_{base}
\to ATD_m^\varepsilon
\to AACT.KX
\to DTC.A_{avg}
\to End_{NS,avg}
\to READ.COVER
\to Field.Read+DTC.Read
\to End_{NS}
\to H^s\text{ continuation}.
```

The clean manuscript export is:

```text
problems/navier-stokes/external-paper/periodic-main-clean.tex
```

The appendix bundle is:

```text
problems/navier-stokes/external-paper/periodic-appendix-bundle.md
```

## Promotion packet

The MCP promotion packet reports:

```text
historical status: blocked
historical decision: not-release-approved
historical blockers: cm-direction-alignment
current status: superseded by blocked Gold L1 authority at TFE2748B / OriginalCriticalCapacityVariation.A
```

The release manifest is:

```text
problems/navier-stokes/release-manifest.yaml
```

## Historical R3 branch exclusion

The whole-space `R^3` branch is separated into its own conditional matrix:

```text
problems/navier-stokes/whole-space-r3-matrix-branch.md
```

In this historical branch record, high-order spatial-infinity tail control was
left open:

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

or equivalently elimination of

```math
TailFace_{R^3}^{Hs}.
```

R3 conditional notes are excluded from this periodic release claim.

## Final status

```text
periodic T3 theorem-program surface: scoped nonterminal package; not release-approved
whole-space R3 extension: conditional branch, excluded from this release
```
