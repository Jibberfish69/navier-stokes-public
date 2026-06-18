# A1c_R Via Strain-Control Criterion And Pack-Local Substitute

## Target

On the realized whole-space carrier, prove

```math
A1c_R:\quad \sup_{t<T_*}\|u(t)\|_{H^s(\mathbb R^3)}<\infty,
\qquad s>5/2.
```

## Theorem 1: Full Strain Criterion

If

```math
\int_0^{T_*}\|\nabla u(t)\|_{L^\infty(\mathbb R^3)}dt<\infty,
```

then `A1c_R` holds.

## Proof

The classical commutator estimate gives

```math
\frac12\frac d{dt}\|u\|_{H^s}^2+
u\|\nabla u\|_{H^s}^2
\le C_s\|\nabla u\|_{L^\infty}\|u\|_{H^s}^2.
```

Gronwall gives a finite `H^s` bound on `[0,T_*)`. Since `s>5/2`,
the `H^s` local well-posedness/relaunch criterion gives a lifespan controlled
from below by that bound and extends the same solution past any finite
endpoint. Hence `A1c_R` follows.

## Theorem 2: Pack-Local Substitute

Let `S_{pack,Q}` be a same-fluid strain coefficient satisfying

```math
\sup_{a\in A_Q(t)}\|S(u)(X(a,t),t)\|\le S_{pack,Q}(t),
\qquad
S(u)=\frac12(\nabla u+\nabla u^T).
```

If a finite terminal packet cover `Q_1,...,Q_J` satisfies

```math
\sum_{j=1}^J\int_0^{T_*}S_{pack,Q_j}(t)dt<\infty,
```

and the packet cover supplies the endpoint tower and field readout, then terminal pack gauge stays bounded and the endpoint matrix gives continuation.

## Proof

The deformation gradient obeys

```math
\frac d{dt}F=\nabla u(X,t)F.
```

The antisymmetric part is rotational, while the symmetric part controls singular-value growth. Thus

```math
\frac d{dt}\log\max\{\|F\|,\|F^{-1}\|\}\le S_{pack,Q}(t).
```

The stated integral bound gives `Gamma_pack,Q in L^infty` on every packet. With the tower and field readout, the endpoint matrix removes pack detachment, tower blowup, field jump, and dead participation. The terminal obstruction is excluded.

## Exact Remaining Estimate

The full strain route requires

```math
\nabla u\in L^1_tL^\infty_x.
```

The pack-local route requires a weaker family of packet strain integrals. Both are continuation-grade estimates unless supplied by an independent strain-depletion theorem.

## Boundary

This note proves the continuation criteria and the pack-local substitute implication. The analytic task is proving either the full strain integral or the packet strain integrals from original whole-space data.
