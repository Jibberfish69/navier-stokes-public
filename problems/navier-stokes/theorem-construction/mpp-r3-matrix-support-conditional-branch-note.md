# R3 Matrix Support Conditional Branch Note

## Status

Conditional branch-support note. This is not a proof of the whole-space theorem.

The periodic `T^3` proof surface remains the current closed theorem-program branch. The whole-space `R^3` branch is an extension branch with additional spatial-infinity nodes.

## Branch separation

The periodic proof uses compactness of `T^3`, zero-mean pressure normalization, finite terminal covers, and finite-cover Sobolev patching. These features do not transfer automatically to `R^3`.

The `R^3` branch requires dedicated nodes for:

1. whole-space pressure normalization and Riesz pressure readout;
2. noncompact readout cover;
3. exterior `L^2` tightness;
4. exterior `H^s` tightness;
5. tail endpoint face handling;
6. whole-space tower-to-continuation.

## Required R3 matrix nodes

A dedicated R3 proof matrix should contain at least these nodes:

```math
SCF_{base,R^3}
```

```math
Tail.L2_{R^3}
```

```math
Tail.Hs_{R^3}
```

```math
TailFace_{R^3}^{Hs}\text{ eliminated}
```

```math
READ.COVER_{R^3}
```

```math
DTC.Read_{R^3}\text{ with Riesz pressure local/far split}
```

```math
TTU.A_{R^3}
```

```math
Tower.Cont_{R^3}
```

```math
R3.Main.
```

At current resolution:

```math
Tail.L2_{R^3}\quad\text{is discharged},
```

while

```math
Tail.Hs_{R^3}
\quad\text{and}\quad
TailFace_{R^3}^{Hs}\text{ eliminated}
```

remain open.

## Conditional R3 theorem boundary

The branch currently supports the conditional theorem

```math
OriginalSmoothData_{R^3}+Tail.Hs_{R^3}
\Longrightarrow
TTU.A_{R^3}
\Longrightarrow
\sup_{t<T_*}\|u(t)\|_{H^s(R^3)}<\infty
\Longrightarrow
T_*=\infty.
```

It does not support

```math
OriginalSmoothData_{R^3}\Longrightarrow T_*=\infty
```

until `Tail.Hs_R3` is proved or `TailFace_R3^Hs` is eliminated by a noncircular endpoint theorem.

## Promotion rule

No R3 proof-promotion packet should accept the periodic matrix alone as whole-space evidence. The R3 branch needs its own matrix row for `Tail.Hs_R3` / `TailFace_R3^Hs` and its own audit surfaces.

## Verdict

The R3 extension branch is organized and conditionally reduced. Its live mathematical obstruction is exterior high-order tail control at spatial infinity. The next theorem target is a noncircular exterior high-order cascade theorem, or the branch must remain conditional.