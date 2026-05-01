# GoodScale Downstream Endpoint Contradiction After Bad-Set Typing

## Status

Conditional endpoint-contradiction template.

## Setup

Assume the active SCF-bad set is nonempty:

```math
\mathcal B_{\varepsilon_m}^{\Phi}
\cap Q^\Phi([t_0,T_*),A_\sharp)\ne\varnothing.
```

A successful bad-set typing theorem supplies one endpoint face. The two available typing routes are

```math
SCF\text{-}bad\Longrightarrow Jump_{avg},
```

and, under tower-depth and pressure-readout compatibility,

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown.
```

## Conditional contradiction

If the typed face is already excluded by an upstream endpoint package, the bad set is impossible.

For the tower route, the needed upstream row is

```math
TowerBound.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg tower\text{-}blown.
```

Then

```math
SCF\text{-}bad\Longrightarrow tower\text{-}blown
```

contradicts `TowerBound.Upstream`, and hence

```math
GoodScale.TTU.
```

For the jump route, the needed upstream row is

```math
JumpExclusion.Upstream:
OriginalSmoothData+Pack.TTU
\Longrightarrow
\neg Jump_{avg}.
```

Then

```math
SCF\text{-}bad\Longrightarrow Jump_{avg}
```

contradicts `JumpExclusion.Upstream`, and hence gives `GoodScale.TTU`.

## Downstream closure after GoodScale

Once `GoodScale.TTU` is established, the downstream chain is clean:

```math
Pack.TTU+GoodScale.TTU
\Longrightarrow
READ.COVER+ATD_m^\varepsilon.
```

Then

```math
READ.COVER+ATD_m^\varepsilon
\Longrightarrow
TowerCover.TTU+Field.TTU.
```

With `DTC.Read` and `Field.Read`, one obtains

```math
Tower.TTU+Field.
```

Together with the endpoint matrix,

```math
CFI.A+End_{NS}\Longrightarrow\text{no finite-time class exit}.
```

## Boundary

This contradiction template consumes an upstream endpoint-face exclusion. It cannot use `READ.COVER`, `DTC.Read`, `Field.Read`, or `End_NS` produced downstream from `GoodScale.TTU` to exclude the same bad set.

## Current remaining targets

The live upstream target is either

```math
TowerBound.Upstream
```

or

```math
JumpExclusion.Upstream.
```

A separate route may supply these through

```math
SCFBase.Modulus,
\qquad
SCFBase.FiniteComplexity,
\qquad
SCFBad.Persistence.Modulus.
```