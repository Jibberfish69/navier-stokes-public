# EndpointSelector.TTU — Tower-Blown Finite Selector Test

## Status

Threshold-selector theorem proved; fixed-selector theorem remains open.

## Tower-blown face

The tower amplitude is

```math
\mathfrak A_{N,Q}(t)
:=
\sup_{x\in Q_t}\sum_{k=0}^{N}(|U_k(x,t)|+|K_k(x,t)|).
```

The endpoint face is

```math
tower\text{-}blown
\quad\Longleftrightarrow\quad
\sup_{t<T_*}\mathfrak A_{N,Q}(t)=\infty.
```

## Threshold selector

For every `M>0`, tower-blown gives a time `t_M<T_*` and a point `x_M\in Q_{t_M}` such that

```math
\sum_{k=0}^{N}(|U_k(x_M,t_M)|+|K_k(x_M,t_M)|)>M.
```

If `x_M=\Phi(a_M,t_M)` for an active label `a_M`, then `{a_M}` is a finite selector witnessing the threshold `M`.

Thus

```math
tower\text{-}blown
\Longrightarrow
\forall M>0\ \exists\text{ finite threshold selector carrying amplitude }>M.
```

## Fixed selector issue

`EndpointSelector.TTU` asks for a fixed finite selector subpacket carrying the same endpoint face through the terminal tail. The threshold selector above may depend on `M`.

A moving-spike pattern can realize larger and larger tower values at fresh active labels or fresh cover cells. Then every threshold has a finite witness, while no single fixed finite selector captures all thresholds.

Therefore the threshold-selector theorem does not prove the fixed-selector theorem.

## Result

The valid result is

```math
tower\text{-}blown
\Longrightarrow
\text{finite threshold selectors exist for every threshold.}
```

The missing strengthening is

```math
TowerSelector.Fixed:
\quad
tower\text{-}blown
\Longrightarrow
\exists\{a_1,\dots,a_J\}\text{ fixed such that tower-blown occurs on this selector packet.}
```

## Boundary

A fixed selector follows from a finite-complexity or compactness-with-integrable-modulus theorem preventing moving spikes. It is not a consequence of the tower-blown definition alone.