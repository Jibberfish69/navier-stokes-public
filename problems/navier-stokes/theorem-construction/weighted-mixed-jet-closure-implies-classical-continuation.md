# Weighted Mixed-Jet Closure Implies Classical Continuation

## Purpose

This note records the exact sufficiency statement behind the weighted
mixed-jet route.

If one really closes a weighted mixed-jet norm on an interval, then one has
already produced a classical continuation norm on that interval.

## Weighted mixed-jet norm

For `s>\frac52`, define

```math
\mathfrak A_s(\tau,r,t)
:=
\sum_{m\ge0}\sum_{\alpha\in\mathbb N^3}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|J_{m,\alpha}(t)\|_{H^s},
\qquad
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u.
\tag{1}
```

Assume that for some fixed `\tau_0,r_0\ge0`,

```math
\sup_{t\in[0,T)}\mathfrak A_s(\tau_0,r_0,t)<\infty.
\tag{2}
```

## Immediate consequence

The `(m,\alpha)=(0,0)` term appears in `(1)` with coefficient `1`, so

```math
\|u(t)\|_{H^s}
=
\|J_{0,0}(t)\|_{H^s}
\le
\mathfrak A_s(\tau_0,r_0,t).
\tag{3}
```

Therefore `(2)` implies

```math
\sup_{t\in[0,T)}\|u(t)\|_{H^s}<\infty.
\tag{4}
```

The continuation criterion being used is explicit: for `s>\frac52`, local
wellposedness in `H^s` gives an existence time
`\tau_{\mathrm{lwp}}=\tau_{\mathrm{lwp}}(M,\nu)>0` for every datum with
`\|u(t_0)\|_{H^s}\le M`.  If `(4)` holds with bound `M`, the same lower bound on
the local existence time applies at every `t_0<T`.  Choosing
`t_0>T-\tau_{\mathrm{lwp}}(M,\nu)/2` extends the same classical solution past
`T`.

Hence:

```math
\boxed{
\text{uniform closure of one weighted mixed-jet norm already gives classical continuation control.}
}
\tag{5}
```

## Route meaning

This shows exactly what the weighted mixed-jet program is trying to buy.

The route does **not** need a second classical continuation mechanism after the
tower is closed.
The tower closure itself already includes the base classical Sobolev norm.

So the weighted mixed-jet route reduces to:

1. choose a weighted tower norm that actually matches the differentiated
   equation;
2. prove that norm is propagated or closed;
3. read off the base `H^s` continuation bound from the `(0,0)` rung.

## Limitation

This note does **not** prove the propagation step in `(2)`.

It proves only the exact sufficiency statement:

```math
\boxed{
\text{if the weighted mixed-jet tower closes, then the classical continuation norm is already closed.}
}
\tag{6}
```
