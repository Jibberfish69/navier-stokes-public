# Classical `H^s`, `s>5/2`, Continuation Lemma

## Purpose

This note replaces the old `H^1` relaunch criterion.  For three-dimensional
classical Navier--Stokes, the continuation bridge used here is a uniform
`H^s(\mathbb R^3)` bound with `s>5/2`, or an explicitly named equivalent
criterion.  A bounded `H^1` energy norm is support only; it is not the classical
continuation criterion.

## Fixed Surface

Let `u` be a classical solution of the three-dimensional incompressible
Navier-Stokes equation on its maximal interval `[0,T_*)\times\mathbb R^3`.

## Lemma Statement

Fix `s>5/2`. If for some `T<T_*`,

```math
\sup_{0\le t<T}\|u(t)\|_{H^s(\mathbb R^3)}<\infty,
```

then `u` extends as a classical solution beyond `T`.

Equivalently, finite-time breakdown of the classical solution can occur only if
the selected `H^s`, `s>5/2`, continuation norm blows up along the maximal
interval.

## Proof

Set

```math
M_s:=\sup_{0\le t<T}\|u(t)\|_{H^s(\mathbb R^3)}<\infty.
```

Choose any sequence `t_n\uparrow T`. Then

```math
\|u(t_n)\|_{H^s(\mathbb R^3)}\le M_s
\qquad\text{for all }n.
```

By the `H^s(\mathbb R^3)`, `s>5/2`, local strong-solution relaunch theorem used
here, there exists a lifespan `\tau=\tau(\nu,s,M_s)>0`, depending only on the
bound `M_s`, such that for each `n` the Navier--Stokes system with initial data
`u(t_n)` admits a classical solution on `[t_n,t_n+\tau]`.

Because `\tau` depends only on the uniform `H^s` bound, it is independent of
`n`. Choose `n` so large that `t_n+\tau>T`. Let `v_n` denote the local
classical solution on `[t_n,t_n+\tau]` with initial data `u(t_n)`. Since `u` is
already a classical solution on `[0,T)`, uniqueness in the classical `H^s`
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
jumps directly from a bounded gradient norm to global regularity.  Any route
that reaches only bounded `H^1` has reached an energy-level support statement,
not this classical continuation bridge.
