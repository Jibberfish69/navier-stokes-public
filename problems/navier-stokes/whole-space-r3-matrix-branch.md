# Whole-Space R3 Matrix Branch

## Status

Separate conditional branch matrix for the whole-space `R^3` extension.

This matrix is explicitly outside the closed periodic `T^3` release surface.

## Closed branch boundary

The current release-approved theorem surface is periodic:

```math
u_0\in C^\infty_\sigma(\mathbb T^3),
\qquad
\int_{\mathbb T^3}u_0\,dx=0
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb T^3).
```

The following R3 branch must not be used as release evidence for that periodic surface.

## R3 target

The desired whole-space theorem is

```math
u_0\in C^\infty_\sigma(\mathbb R^3)\cap H^s(\mathbb R^3),
\qquad s>5/2
\Longrightarrow
u\in C^\infty([0,\infty)\times\mathbb R^3).
```

At current resolution the supported theorem is conditional:

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
T_*=\infty.
```

## Required R3 matrix nodes

| Node | Status | Role |
|---|---|---|
| `SCF_base_R3` | conditional/local | scale-critical moving-cylinder packet on `R^3` |
| `Pressure.R3` | conditional/local | Riesz pressure with local/far split |
| `Tail.L2_R3` | discharged | exterior finite-energy mass tightness |
| `Tail.Hs_R3` | open | exterior high-order tail tightness |
| `TailFace_R3^Hs` | open | high-frequency derivative escape at infinity |
| `READ.COVER_R3` | conditional | compact core plus tail exclusion |
| `DTC.Read_R3` | conditional | pointwise readout using Riesz pressure split |
| `TTU.A_R3` | conditional | whole-space terminal-tail uniformization |
| `Tower.Cont_R3` | conditional | compact-core tower plus exterior `H^s` tail implies continuation |
| `R3.Main` | open | unconditional whole-space global smoothness |

## Live blocker

The live R3 blocker is

```math
OriginalSmoothData_{R^3}\Longrightarrow Tail.Hs_{R^3}
```

or a noncircular endpoint theorem eliminating

```math
TailFace_{R^3}^{Hs}.
```

The attempted exterior cascade theorem

```math
ExtCascade_s^{R^3}
```

remains unproved from current inputs.

## Promotion rule

A future R3 proof-promotion packet must require this R3 matrix and must show `Tail.Hs_R3` or `TailFace_R3^Hs` closed. The periodic promotion packet remains scoped to the closed `T^3` theorem surface.