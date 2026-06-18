# PCTP.hard Pack-Detachment Endpoint Reduction

## Status

Conditional theorem installed for the `PCTP.hard` terminal-tail program.

This note does not prove `OriginalSmoothData => Gamma_pack,Q in L^infty` directly. It proves the derived-face lemma:

```math
Part_{N,Q}+Field_{N,r,Q}+\mathfrak A_{N,Q}\in L^\infty(0,T_*)
\Longrightarrow
\Gamma_{pack,Q}\in L^\infty(0,T_*).
```

Equivalently,

```math
packing\text{-}detached
\Longrightarrow
Dead\vee Jump\vee tower\text{-}blown
```

as a first terminal face on the retained same-fluid tail.

## Setup

Let `X(a,t)` be the Lagrangian flow of the original smooth periodic solution on `[0,T_*)`, and let

```math
F(a,t)=\nabla_aX(a,t).
```

Let

```math
\Gamma_{pack,Q}(t)
:=\sup_{a\in A_Q(t)}\max\{\|F(a,t)\|,\|F(a,t)^{-1}\|\}.
```

Assume on a terminal same-fluid tail:

1. `Part_{N,Q}` persists, so the retained material labels do not drop out of the packet.
2. `Field_{N,r,Q}` persists with a positive lower coherence scale `r_*>0`.
3. The tower amplitude is bounded:

```math
\mathfrak A_{N,Q}(t)\le M_A,
\qquad 0<t<T_*.
```

Take `N>=1`, so the tower readout includes first spatial derivatives of velocity on the coherent cover.

## Lemma

Under the assumptions above, `Gamma_pack,Q` is bounded on `[0,T_*)`.

## Proof

By `Field_{N,r,Q}`, the retained terminal material packet is covered by coherent cylinders with radius bounded below by `r_*`. By compactness of the retained packet on each terminal tail and persistence of `Part_{N,Q}`, finitely many such coherent cylinders cover the packet with no label loss.

By the bounded tower assumption with `N>=1`, the velocity-gradient readout is uniformly bounded on this finite coherent cover. Hence there is a finite constant `M` such that for every retained material label `a` and every `t<T_*`,

```math
\|\nabla u(X(a,t),t)\|\le M.
```

The deformation gradient obeys

```math
\frac{d}{dt}F(a,t)=\nabla u(X(a,t),t)F(a,t),
```

and the inverse obeys

```math
\frac{d}{dt}F(a,t)^{-1}=-F(a,t)^{-1}\nabla u(X(a,t),t).
```

Therefore

```math
\frac{d}{dt}\log\|F(a,t)\|\le M,
\qquad
\frac{d}{dt}\log\|F(a,t)^{-1}\|\le M
```

where the inequalities are read in the upper Dini sense at points where the norms are nonzero. Gronwall gives

```math
\|F(a,t)\|+\|F(a,t)^{-1}\|
\le
C(a,0)e^{Mt},
\qquad 0<t<T_*.
```

Taking the supremum over the retained finite packet and using `T_*<infty`,

```math
\Gamma_{pack,Q}(t)
\le
\Gamma_{pack,Q}(0)e^{MT_*}<\infty.
```

Thus pack detachment cannot occur while `Part`, `Field`, and the tower amplitude remain controlled.

## Consequence

A first endpoint face of type `packing-detached` is never independent on the retained terminal tail. If it occurs first, then at least one of the assumptions used above has already failed:

```math
packing\text{-}detached
\Longrightarrow
\neg Part_{N,Q}\vee\neg Field_{N,r,Q}\vee tower\text{-}blown.
```

In endpoint language:

```math
packing\text{-}detached
\Longrightarrow
Dead\vee Jump\vee tower\text{-}blown.
```

So the remaining `PCTP.hard` analytic work can focus on the three primitive faces:

```math
Dead,
\qquad
Jump,
\qquad
 tower\text{-}blown.
```

## Boundary

This note proves a conditional endpoint-reduction lemma: under `Part`, `Field`, and bounded tower amplitude, pack detachment forces `Dead`, `Jump`, or `tower-blown`. It does not produce `Part`, `Field`, or bounded tower amplitude from `OriginalSmoothData`. Those remain the terminal-tail production obligations.
