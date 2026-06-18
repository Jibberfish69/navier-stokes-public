# Classical `H^1` Continuation Lemma

## Purpose

This note states the exact `H^1` relaunch criterion used at the end of the
Euclidean Route B closure chain.

## Fixed Surface

Let `u` be a classical solution of the three-dimensional incompressible
Navier-Stokes equation on its maximal interval `[0,T_*)\times\mathbb R^3`.

## Lemma Statement

If for some `T<T_*`,

```math
\sup_{0\le t<T}\|u(t)\|_{H^1(\mathbb R^3)}<\infty,
```

then `u` extends as a classical solution beyond `T`.

Equivalently, finite-time breakdown of the classical solution can occur only if
the `H^1` norm blows up along the maximal interval.

## Proof

Set

```math
M:=\sup_{0\le t<T}\|u(t)\|_{H^1(\mathbb R^3)}<\infty.
```

Choose any sequence `t_n\uparrow T`. Then

```math
\|u(t_n)\|_{H^1(\mathbb R^3)}\le M
\qquad\text{for all }n.
```

By the `H^1(\mathbb R^3)` local strong-solution relaunch theorem used here,
there exists a lifespan `\tau=\tau(M)>0`, depending only on the bound `M`, such
that for each `n` the Navier--Stokes system with initial data `u(t_n)` admits a
classical solution on `[t_n,t_n+\tau]`.

Because `\tau` depends only on the uniform `H^1` bound, it is independent of
`n`. Choose `n` so large that `t_n+\tau>T`. Let `v_n` denote the local
classical solution on `[t_n,t_n+\tau]` with initial data `u(t_n)`. Since `u` is
already a classical solution on `[0,T)`, uniqueness in the classical `H^1`
solution class implies

```math
v_n(t)=u(t)
\qquad\text{for }t\in[t_n,T).
```

Therefore `v_n` continues `u` past `T`. Defining the extended field by `u` on
`[0,T)` and `v_n` on `[T,t_n+\tau)` yields a classical solution on
`[0,T')\times\mathbb R^3` for some `T'>T`.

References on the manuscript surface include the local theory and continuation
framework in Ladyzhenskaya and Temam.

## Output

This lemma isolates the final continuation step so the main theorem no longer
jumps directly from a bounded gradient norm to global regularity without naming
the continuation criterion.
