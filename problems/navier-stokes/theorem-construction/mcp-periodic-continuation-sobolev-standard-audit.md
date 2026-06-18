# Periodic Continuation Sobolev Standard Audit

## Status

Closed Sobolev-language continuation audit.

## Standard continuation statement

For `s>5/2`, the periodic Navier-Stokes equation is locally well posed in `H^s(T^3)`. The lifespan depends on

```math
\nu,
\quad s,
\quad \|u(t_0)\|_{H^s(\mathbb T^3)}.
```

If

```math
\sup_{t<T_*}\|u(t)\|_{H^s(\mathbb T^3)}\le M_s<\infty,
```

then there is a uniform lifespan

```math
\tau=\tau(\nu,s,M_s)>0.
```

Choose `t_j` with `T_*-t_j<tau/2`. The solution launched from `u(t_j)` exists past `T_*`; uniqueness identifies it with the original solution on the overlap. Thus finite `T_*` is impossible.

## Readout source of the bound

The pointwise endpoint package gives the terminal cover and pointwise field/tower control at depth `N`, chosen to dominate `s`. Finite overlap and periodic compactness give the global `H^s` bound.

## Verdict

The continuation step is the periodic `H^s`, `s>5/2`, relaunch argument on
`T^3`: the displayed uniform bound gives a common local lifespan from
preterminal times, and uniqueness on overlaps extends the same classical
solution past the endpoint.
