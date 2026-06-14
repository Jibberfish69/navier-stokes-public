# TPS High-Frequency Tail To Coarse-Flow Deviation Bridge

## Purpose

This note records the clean bridge from a dyadic high-frequency tail estimate
to the actual-versus-coarse Lagrangian deviation term
`\delta_J(t)` appearing in
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md).

The point is that the selector-local TPS route does not need a separate ad hoc
control mechanism for `\delta_J`. It already receives one from any route that
supplies a time-integrable high-frequency tail for the velocity.

For the current live route, this bridge is internal to the torus-first branch.
Any whole-space analogue belongs to a later export theorem, not to the primary
TPS chain.

## Setup

Fix a smooth periodic solution `u` of three-dimensional incompressible
Navier--Stokes on `[0,T_J]\times\mathbb T^3`, and use the same symbol for its
periodic lift to `\mathbb R^3`. For one fixed frequency cutoff `J`, split

```math
u=u_{\le J}+u_{>J}.
\tag{HF.1}
```

Let `X(a,t)` be a chosen lift to `\mathbb R^3` of the full torus Lagrangian
flow and `X_{\le J}(a,t)` the corresponding chosen lift of the coarse torus
flow, both started from the same lifted initial point for each `a\in G_J`:

```math
\partial_t X(a,t)=u(X(a,t),t),
\qquad
\partial_t X_{\le J}(a,t)=u_{\le J}(X_{\le J}(a,t),t),
\qquad
X(a,0)=X_{\le J}(a,0)=a.
\tag{HF.2}
```

Define the flow deviation

```math
Y_J(a,t):=X(a,t)-X_{\le J}(a,t),
\qquad
\delta_J(t):=\operatorname*{ess\,sup}_{a\in G_J}|Y_J(a,t)|.
\tag{HF.3}
```

Also set

```math
L_{\le J}(t):=\|\nabla u_{\le J}(t)\|_{L_x^\infty},
\qquad
U_{>J}(t):=\|u_{>J}(t)\|_{L_x^\infty}.
\tag{HF.4}
```

## Lemma TPS-flow-dev. Exact ODE Comparison For `\delta_J`

For almost every `t\in[0,T_J]` and every `a`,

```math
\frac{d}{dt}|Y_J(a,t)|
\le
L_{\le J}(t)\,|Y_J(a,t)|+U_{>J}(t).
\tag{HF.5}
```

Consequently,

```math
|Y_J(a,t)|
\le
\int_0^t
\exp\!\Big(\int_s^t L_{\le J}(\tau)\,d\tau\Big)
U_{>J}(s)\,ds,
\tag{HF.6}
```

and therefore

```math
\boxed{
\delta_J(t)
\le
\int_0^t
\exp\!\Big(\int_s^t L_{\le J}(\tau)\,d\tau\Big)
U_{>J}(s)\,ds.
}
\tag{HF.7}
```

### Proof

Subtract the two flow equations:

```math
\partial_t Y_J(a,t)
=
u(X(a,t),t)-u_{\le J}(X_{\le J}(a,t),t)
\\=
\big(u_{\le J}(X(a,t),t)-u_{\le J}(X_{\le J}(a,t),t)\big)
+
u_{>J}(X(a,t),t).
\tag{HF.8}
```

Using the Lipschitz bound for `u_{\le J}` and the definition of `U_{>J}`,

```math
|\partial_t Y_J(a,t)|
\le
L_{\le J}(t)\,|Y_J(a,t)|+U_{>J}(t).
\tag{HF.9}
```

Taking the upper Dini derivative of `|Y_J(a,t)|` yields `(HF.5)`, and Gronwall
gives `(HF.6)`. Taking the essential supremum over `a\in G_J` gives `(HF.7)`.

## Corollary TPS-flow-dev-small. Integrable Tail Implies Small Deviation

If

```math
\int_0^{T_J}L_{\le J}(t)\,dt\le M_J,
\qquad
\eta_J:=\int_0^{T_J}U_{>J}(t)\,dt,
\tag{HF.10}
```

then

```math
\boxed{
\sup_{0\le t\le T_J}\delta_J(t)\le e^{M_J}\eta_J.
}
\tag{HF.11}
```

In particular, if `M_J` stays bounded and `\eta_J=o(\ell_J)`, then the
coarse-flow hypothesis `(CF.12)` in
[tps-coarse-flow-pair-gap-theorem-candidate.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/tps-coarse-flow-pair-gap-theorem-candidate.md)
holds.

## Corollary TPS-HFG-bridge. The Dyadic Gain Route Supplies `\delta_J`

Assume the dyadic high-frequency gain quantity from
[dyadic-high-frequency-gain-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/dyadic-high-frequency-gain-theorem.md)
is finite on `[0,T_J]`:

```math
\mathcal H(T_J)
:=
\sum_{k\ge 0}
2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}
<
\infty.
\tag{HF.12}
```

Then:

```math
\int_0^{T_J}\|\nabla u_{\le J}(t)\|_{L_x^\infty}\,dt
\le
C_{\nabla}
\sum_{k\le J}
2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}
\le
\mathcal H(T_J),
\tag{HF.13}
```

and

```math
\int_0^{T_J}\|u_{>J}(t)\|_{L_x^\infty}\,dt
\le
C_u
\sum_{k>J}
2^{\frac12 k}\|\Delta_k\omega\|_{L_t^1L_x^2(0,T_J)}
\le
2^{-J}\mathcal H(T_J).
\tag{HF.14}
```

Hence

```math
\boxed{
\sup_{0\le t\le T_J}\delta_J(t)
\le
C_\delta
\exp\!\big(C\mathcal H(T_J)\big)\,2^{-J}\mathcal H(T_J).
}
\tag{HF.15}
```

### Proof

By Biot--Savart and Bernstein, for each dyadic shell `k`,

```math
\|\Delta_k u\|_{L_x^\infty}
\le
C_B
2^{\frac32 k}\|\Delta_k u\|_{L_x^2}
\le
C_{BS}
2^{\frac12 k}\|\Delta_k\omega\|_{L_x^2},
\tag{HF.16}
```

and

```math
\|\nabla\Delta_k u\|_{L_x^\infty}
\le
C_B'
2^k\|\Delta_k u\|_{L_x^\infty}
\le
C_{\nabla BS}
2^{\frac32 k}\|\Delta_k\omega\|_{L_x^2}.
\tag{HF.17}
```

Summing `(HF.17)` over `k\le J` and integrating in time gives `(HF.13)`.
Summing `(HF.16)` over `k>J` gives

```math
\sum_{k>J}
2^{\frac12 k}\|\Delta_k\omega\|_{L_t^1L_x^2}
\le
2^{-J}
\sum_{k>J}
2^{\frac32 k}\|\Delta_k\omega\|_{L_t^1L_x^2},
\tag{HF.18}
```

which yields `(HF.14)`. Inserting `(HF.13)`-`(HF.14)` into `(HF.11)` gives
`(HF.15)`.

## Meaning

This is the first clean interface between the selector-local TPS route and the
existing dyadic high-frequency route.

It says:

```math
\boxed{
\text{a time-integrable dyadic high-frequency velocity tail already controls the TPS flow error } \delta_J.
}
\tag{HF.19}
```

So the coarse-flow pair-gap theorem is not isolated. Any theorem package that
produces a sufficiently small high-frequency tail on the same interval feeds
directly into the TPS nonshadowing mechanism through `(HF.15)`.
