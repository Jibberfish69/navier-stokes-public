# Whole-Space Branch Attempt

Status: failed as a direct branch extension. The whole-space problem remains a separate branch.

## Target

The whole-space target is

```math
u_0^{vel}=u_0\in C^\infty(\mathbb R^3),
\qquad
\nabla\cdot u_0=0
\Longrightarrow
T_* = \infty.
```

with appropriate finite-energy/decay hypotheses as required by the whole-space formulation.

## Boundary from the periodic proof

The completed averaged terminal-tail route is periodic:

```math
T^3,
\qquad
f=0,
\qquad
\int_{T^3}u_0=0.
```

It uses compactness of the periodic domain, finite covers without spatial infinity, periodic pressure normalization, and periodic energy bounds.

These do not automatically export to `R^3`.

## Required whole-space additions

A whole-space branch needs at least:

1. Euclidean localization replacing compact periodic finite cover extraction;
2. far-field pressure-tail estimates at spatial infinity;
3. localization-compatible version of `READ.COVER`, `Field.Read`, and `DTC.Read`;
4. whole-space continuation criterion in the chosen data class;
5. an export theorem showing the averaged route survives exhaustion by large balls or a direct Euclidean version of the terminal-tail route.

## Verdict

The whole-space branch is not solved by the periodic result. The correct status is:

```math
\text{periodic zero-force branch closed conditionally; whole-space branch remains separate.}
```

## Next whole-space theorem target

The next honest target is an export/localization theorem:

```math
\text{Periodic averaged terminal-tail route analog}
\Longrightarrow
\text{Euclidean localized terminal-tail route on }\mathbb R^3.
```
