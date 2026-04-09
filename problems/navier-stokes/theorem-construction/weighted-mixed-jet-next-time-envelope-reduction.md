# Weighted Mixed-Jet Next-Time Envelope Reduction

## Purpose

This note isolates the exact way the next time layer of the mixed-jet tower is
fed by the current tower.

The point is:

```math
\boxed{
\text{the next-time envelope is controlled by weighted dissipation plus the same quadratic tower law.}
}
```

So the time direction of the tower does not introduce a new combinatorial
obstruction beyond the quadratic convolution already isolated earlier.

## Mixed-jet equation

For

```math
J_{m,\alpha}:=\partial_t^m\partial_x^\alpha u,
\qquad
\Pi_{m,\alpha}:=\partial_t^m\partial_x^\alpha p,
\tag{1}
```

the differentiated Navier--Stokes equation is

```math
J_{m+1,\alpha}
=
\nu\Delta J_{m,\alpha}
-
T_{m,\alpha}
-
\nabla\Pi_{m,\alpha},
\tag{2}
```

where

```math
T_{m,\alpha}
:=
\sum_{a=0}^{m}\sum_{\beta\le\alpha}
\binom ma\binom{\alpha}{\beta}
\big(J_{a,\beta}\cdot\nabla\big)J_{m-a,\alpha-\beta}.
\tag{3}
```

## Weighted envelopes

Fix `s>\frac32`. Define the weighted mixed-jet norm

```math
\mathfrak A_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|J_{m,\alpha}\|_{H^s}.
\tag{4}
```

Define the next-time envelope at the natural regularity `H^{s-1}` by

```math
\mathfrak U_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^{m+1}r^{|\alpha|}}{(m+1)!\,\alpha!}\,
\|J_{m+1,\alpha}\|_{H^{s-1}}.
\tag{5}
```

Define the weighted dissipative envelope

```math
\mathfrak D_s^{(2)}(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|\Delta J_{m,\alpha}\|_{H^{s-1}}.
\tag{6}
```

Also define the weighted transport and pressure envelopes

```math
\mathfrak T_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|T_{m,\alpha}\|_{H^{s-1}},
\tag{7}
```

```math
\mathfrak P_s(\tau,r)
:=
\sum_{m\ge0}\sum_{\alpha}
\frac{\tau^m r^{|\alpha|}}{m!\,\alpha!}\,
\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}}.
\tag{8}
```

## Exact reduction

Multiply `(2)` by the weight `\tau^{m+1}r^{|\alpha|}/((m+1)!\alpha!)`,
take `H^{s-1}` norms, and sum.
Using the triangle inequality,

```math
\mathfrak U_s(\tau,r)
\le
\nu
\sum_{m,\alpha}
\frac{\tau^{m+1}r^{|\alpha|}}{(m+1)!\alpha!}
\|\Delta J_{m,\alpha}\|_{H^{s-1}}
+
\sum_{m,\alpha}
\frac{\tau^{m+1}r^{|\alpha|}}{(m+1)!\alpha!}
\|T_{m,\alpha}\|_{H^{s-1}}
+
\sum_{m,\alpha}
\frac{\tau^{m+1}r^{|\alpha|}}{(m+1)!\alpha!}
\|\nabla\Pi_{m,\alpha}\|_{H^{s-1}}.
\tag{9}
```

Since

```math
\frac{\tau^{m+1}}{(m+1)!}
\le
\tau\,\frac{\tau^m}{m!},
\tag{10}
```

we get

```math
\mathfrak U_s(\tau,r)
\le
\nu\tau\,\mathfrak D_s^{(2)}(\tau,r)
+
\tau\,\mathfrak T_s(\tau,r)
+
\tau\,\mathfrak P_s(\tau,r).
\tag{11}
```

From the earlier weighted quadratic convolution reduction,

```math
\mathfrak T_s(\tau,r)+\mathfrak P_s(\tau,r)
\le
C_s\,\mathfrak A_s(\tau,r)^2.
\tag{12}
```

Therefore

```math
\boxed{
\mathfrak U_s(\tau,r)
\le
\nu\tau\,\mathfrak D_s^{(2)}(\tau,r)
+
C_s\tau\,\mathfrak A_s(\tau,r)^2.
}
\tag{13}
```

## Meaning

This proves that the next-time part of the tower is controlled by exactly two
inputs:

1. the weighted dissipative envelope;
2. the same quadratic tower norm already isolated on the mixed-jet route.

So the time ladder does **not** create a new independent nonlinear combinatorics
problem.

The remaining unresolved issue is whether one can turn `(13)` into a true
propagation estimate for `\mathfrak A_s`.

## Limitation

This note does **not** prove an autonomous inequality for `\mathfrak A_s`.

It proves only the exact reduction

```math
\boxed{
\text{next-time weighted envelope}
\le
\text{weighted dissipation}
+
\text{quadratic tower term.}
}
\tag{14}
```
