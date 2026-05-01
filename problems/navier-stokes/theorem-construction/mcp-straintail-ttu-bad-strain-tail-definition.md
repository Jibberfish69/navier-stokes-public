# StrainTail.TTU Bad Strain Tail Definition

## Status

Definition layer for the terminal strain-tail route.

## Active labels

Let `A_Q` be the active terminal same-fluid label set for the retained packet. Let

```math
\Phi(a,t)
```

be the material flow for `a\in A_Q` on compact subintervals below `T_*`.

Set

```math
S(x,t):=\operatorname{sym}\nabla u(x,t)
=\frac12(\nabla u(x,t)+\nabla u(x,t)^T).
```

The pack strain ledger is

```math
S_{pack,Q}(t):=
\sup_{a\in A_Q}\|S(\Phi(a,t),t)\|_{op}.
```

## Bad strain tails

For `M>0`, define

```math
\mathcal S_M
:=
\left\{
a\in A_Q:
\int_{t_0}^{T_*}
\|S(\Phi(a,t),t)\|_{op}\,dt>M
\right\}.
```

Define the infinite strain tail by

```math
\mathcal S_\infty
:=
\bigcap_{M>0}\mathcal S_M
=
\left\{
a\in A_Q:
\int_{t_0}^{T_*}
\|S(\Phi(a,t),t)\|_{op}\,dt=\infty
\right\}.
```

## Relation to Pack.TTU

`Pack.TTU` follows from the uniform bound

```math
\int_{t_0}^{T_*}S_{pack,Q}(t)\,dt<\infty.
```

The bad-tail formulation tests a weaker endpoint-typing strategy: instead of proving the full supremal integral directly, type labels in `\mathcal S_\infty` into endpoint faces.

The target theorem is

```math
StrainTail.TTU:
\mathcal S_\infty\ne\varnothing
\Longrightarrow
packing\text{-}detached\vee tower\text{-}blown\vee Jump.
```

## Next item

Test the endpoint typing implication above.