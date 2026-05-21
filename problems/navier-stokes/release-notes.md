# Navier--Stokes Periodic Release Notes

## Supersession

These release notes are not current release authority.  The current controlling
release stack is single-valued as nonterminal:

```text
release-decision: blocked
submission-verdict: not-ready
release_eligible: false
active blocker: cm-direction-alignment
```

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
status: blocked
decision: not-release-approved
promotion_allowed: false
release_approved: false
blockers: cm-direction-alignment
```

The release manifest is:

```text
problems/navier-stokes/release-manifest.yaml
```

## R3 branch exclusion

The whole-space `R^3` branch is separated into its own conditional matrix:

```text
problems/navier-stokes/whole-space-r3-matrix-branch.md
```

The R3 branch remains open at high-order spatial-infinity tail control:

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
