# Whole-Space Export/Localization Retry

Status: failed as a direct export theorem. The whole-space branch remains separate.

## Target

```math
\text{periodic averaged terminal-tail route}
\Longrightarrow
\text{localized }\mathbb R^3\text{ terminal-tail route}.
```

## Diagnosis

The periodic route uses compactness of `T^3`, a finite terminal cover with no spatial infinity, a periodic zero-mean pressure gauge, and periodic energy bounds. The whole-space branch requires replacement of each of those ingredients.

The required Euclidean package is:

```math
READ.COVER_{\mathbb R^3},
\qquad
Field.Read_{\mathbb R^3},
\qquad
DTC.Read_{\mathbb R^3},
\qquad
ECQ.A_{\mathbb R^3}.
```

## Failed export points

1. A finite periodic cover does not directly become a finite whole-space cover.
2. Exhaustion by large balls introduces boundary and far-field terms.
3. The local pressure split gains a genuine far-field pressure tail:

```math
p=p_i^{loc}+h_i,
```

where the harmonic tail must be controlled by decay/energy localization at infinity.
4. Constants in `DTC.Read` and `Field.Read` must remain uniform under the exhaustion radius.

## Verdict

The whole-space export theorem remains open. The correct next theorem target is

```math
Euclidean.Export:
\text{localized finite-energy terminal cover}
+\text{far-field pressure-tail control}
+\text{uniform exhaustion constants}
\Longrightarrow
READ.COVER_{\mathbb R^3}+DTC.Read_{\mathbb R^3}+Field.Read_{\mathbb R^3}.
```

## Boundary

The current closed theorem remains the periodic zero-force branch. The whole-space branch needs a separate Euclidean localization/export package.
