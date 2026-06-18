# Periodic Continuation Readout To Uniform H^s Bound

## Statement

Let `(u,p)` be a maximal classical solution on `[0,T_*)` for the periodic three-dimensional Navier-Stokes equation. Assume the pointwise endpoint package `End_NS` and the pointwise class witness at depth `N`, with `N` chosen to dominate a Sobolev index

```math
s>5/2.
```

Then

```math
\sup_{0\le t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}<\infty.
```

Consequently the solution extends beyond any finite `T_*`.

## Proof

The pointwise endpoint package supplies the terminal retained cover and the pointwise class witness

```math
CM=Pack\wedge Part\wedge Field.
```

At depth `N`, the field and tower components control all spatial derivatives required to dominate `H^s`, with `s>5/2`. The finite positive-scale cover and finite overlap convert local pointwise derivative bounds into a global periodic Sobolev bound. Thus

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}\le M_s<\infty.
```

The periodic local theory in `H^s`, `s>5/2`, gives a lifespan

```math
\tau=\tau(\nu,s,M_s)>0
```

for data with `H^s` norm at most `M_s`. Choose `t_j\uparrow T_*` with `T_*-t_j<\tau/2`. The local solution launched from `u(t_j)` exists on `[t_j,t_j+\tau]`, which extends past `T_*`. Uniqueness on the overlap identifies it with the original solution. Hence a finite `T_*` contradicts maximality.

Therefore `T_*=\infty`.

## Boundary

This is the displayed periodic continuation lemma. It uses the pointwise endpoint package only after `READ.END` and uses no averaged object directly.
