# EndpointSelector.TTU — Packing-Detached Finite Selector Test

## Status

Threshold-selector theorem proved. Fixed-selector theorem remains open.

## Packing-detached face

The pack gauge is

```math
\Gamma_{pack,Q}(t)
:=
\sup_{a\in A_Q(t)}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}.
```

The endpoint face is

```math
packing\text{-}detached
\quad\Longleftrightarrow\quad
\sup_{t<T_*}\Gamma_{pack,Q}(t)=\infty.
```

## Threshold selector

For every `M>0`, packing-detached gives a time `t_M<T_*` and an active label `a_M\in A_Q(t_M)` such that

```math
\max\{\|F(a_M,t_M)\|,\|F(a_M,t_M)^{-1}\|\}>M.
```

Thus `{a_M}` is a finite selector witnessing the threshold `M`.

So

```math
packing\text{-}detached
\Longrightarrow
\forall M>0\ \exists\text{ finite threshold selector with pack gauge}>M.
```

## Fixed selector issue

A fixed finite selector set

```math
\{a_1,\dots,a_J\}
```

requires the same labels to carry unbounded pack gauge through the terminal tail. The definition of packing-detached allows the escaping label to depend on `M` or on time. A continuum moving-spike pattern can realize larger pack distortion at fresh labels, while every fixed finite selector remains bounded.

Therefore threshold selectors do not prove a fixed finite selector theorem.

## Result

The valid result is

```math
packing\text{-}detached
\Longrightarrow
\text{finite threshold selectors exist for every threshold.}
```

The missing strengthening is

```math
PackSelector.Fixed:
packing\text{-}detached
\Longrightarrow
\exists\{a_1,\dots,a_J\}\text{ fixed such that packing-detached occurs on this selector packet.}
```

## Boundary

A fixed selector follows from an added finite-complexity, compact-uniformity, or monotone-selector theorem. It is not a consequence of the packing-detached definition alone.