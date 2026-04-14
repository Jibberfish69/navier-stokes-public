# MPP Increment-Stability Lemma

## Status

Candidate theorem-facing live-path note.

Role: live quantitative bridge from packing mismatch to transported tower
control.

This note turns the geometric bridge

```math
h(a,r,t)=F(a,t)r+\varepsilon_h(a,r,t)
```

into the first quantitative comparison between transported tower defects and
reference tower defects built on the packet's finite packing class.

This note is the live next move after the safe comparison repair in
`mpp-eulerian-to-transported-comparison-lemma.md`.

## Purpose

The `\int\sup` comparison repair is exact, but it is only a bookkeeping bound.

The real theorem step is to compare

```math
\delta_{h(a,r,t)}U_k(X(a,t),t)
```

against the reference increment

```math
\delta_{F(a,t)r}U_k(X(a,t),t).
```

That is where the packing bridge starts doing quantitative work:
the error is driven directly by `\varepsilon_h(a,r,t)`, and `(EC.7)` then feeds
into the transported tower comparison.

## Setup

Use the packet notation already fixed:

1. `X(a,t)` is the flow map;
2. `F(a,t)=D_aX(a,t)`;
3. `U_k=\nabla^k u`;
4. `h(a,r,t)=X(a+r,t)-X(a,t)`;
5. `\varepsilon_h(a,r,t):=h(a,r,t)-F(a,t)r`.

Write

```math
x(a,t):=X(a,t),
\qquad
\eta_\ast(a,r,t):=F(a,t)r.
\tag{IS.0}
```

Then

```math
h(a,r,t)=\eta_\ast(a,r,t)+\varepsilon_h(a,r,t).
\tag{IS.1}
```

## Exact Pointwise Increment-Stability Identity

For every smooth field `U_k`, point `x`, and increments `h,\eta`,

```math
\delta_hU_k(x)-\delta_\eta U_k(x)
=
U_k(x+h)-U_k(x+\eta).
\tag{IS.2}
```

By the fundamental theorem of calculus along the segment from `x+\eta` to
`x+h`,

```math
U_k(x+h)-U_k(x+\eta)
=
\int_0^1
\nabla U_k\big(x+\eta+\theta(h-\eta)\big)\cdot(h-\eta)\,d\theta.
\tag{IS.3}
```

Hence the exact pointwise bound is

```math
\big|\delta_hU_k(x)-\delta_\eta U_k(x)\big|
\le
|h-\eta|
\int_0^1
\big|\nabla U_k\big(x+\eta+\theta(h-\eta)\big)\big|\,d\theta.
\tag{IS.4}
```

Specializing to `x=x(a,t)`, `h=h(a,r,t)`, and `\eta=\eta_\ast(a,r,t)=F(a,t)r`,
one gets

```math
\big|
\delta_{h(a,r,t)}U_k(x(a,t),t)
-
\delta_{F(a,t)r}U_k(x(a,t),t)
\big|
\le
|\varepsilon_h(a,r,t)|
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|\,d\theta.
\tag{IS.5}
```

This is the exact increment-stability bridge.

## Packet Error Ledger

Define the packetwise increment-stability error

```math
\mathcal R^{inc}_{N,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}
\psi(a)^2
\big|
\delta_{h(a,r,t)}U_k(x(a,t),t)
-
\delta_{F(a,t)r}U_k(x(a,t),t)
\big|^2\,da.
\tag{IS.6}
```

Using `(IS.5)` and Jensen in the `\theta` variable gives the exact bound

```math
\mathcal R^{inc}_{N,r,\psi}(t)
\le
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}
\psi(a)^2\,|\varepsilon_h(a,r,t)|^2
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2
\,d\theta\,da.
\tag{IS.7}
```

So the increment-stability error is exactly the product of:

1. the geometric increment error `|\varepsilon_h|^2`;
2. a next-rung segment quantity evaluated along the bridge from `F(a,t)r` to
   `h(a,r,t)`.

## Geometric Feed From Packing Control

From `(EC.7)`,

```math
\int_{\mathbf R^3}
\psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da
\le
|r|^2\,P_F^\ast(r,t;\psi).
\tag{IS.8}
```

So `P_F^\ast` now does real work:
it feeds directly into the error term in `(IS.7)`.

To separate the geometry from the next-rung amplitude, define the segment
envelope

```math
\mathcal M^{seg}_{N+1,r,\psi}(t)
:=
\sup_{a\in\operatorname{supp}\psi}
\int_0^1
\sum_{k=0}^{N}\lambda_k
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2
\,d\theta.
\tag{IS.9}
```

Then `(IS.7)` and `(IS.8)` give the quantitative bridge

```math
\mathcal R^{inc}_{N,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t).
\tag{IS.10}
```

This is the first explicit place where packing coherence feeds directly into
transported tower control.

## Reference-Increment Packet

Define the reference-increment packet

```math
\mathcal E^{ref}_{N,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int_{\mathbf R^3}
\psi(a)^2
\big|
\delta_{F(a,t)r}U_k(x(a,t),t)
\big|^2\,da.
\tag{IS.11}
```

Then by `(a+b)^2\le 2a^2+2b^2`,

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\mathcal E^{ref}_{N,r,\psi}(t)
+
2\,\mathcal R^{inc}_{N,r,\psi}(t).
\tag{IS.12}
```

Combining `(IS.10)` and `(IS.12)` yields

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\mathcal E^{ref}_{N,r,\psi}(t)
+
2\,|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t).
\tag{IS.13}
```

The remaining unresolved objects are the reference-increment packet
`\mathcal E^{ref}_{N,r,\psi}` and the bridge-tube envelope
`\mathcal M^{seg}_{N+1,r,\psi}`.

This is the quantitative theorem shape the comparison note could not yet reach.

## Interpretation

The route is now explicit:

1. `\mathcal E^{ref}_{N,r,\psi}` measures tower coherence on the packet's own
   finite packing reference increments;
2. `P_F^\ast` measures how far the true transported increment departs from that
   finite packing reference;
3. `\mathcal M^{seg}_{N+1,r,\psi}` is the next-rung price for that departure.

So the real bridge is:

```math
P_F^\ast\text{ small}
\Longrightarrow
\varepsilon_h\text{ small}
\Longrightarrow
\text{transported defects stay close to reference-increment defects,}
\tag{IS.14}
```

with the exact quantitative version recorded in `(IS.13)`.

## Boundary

This note proves the exact pointwise increment-stability identity `(IS.3)` and
the packetwise bound `(IS.13)`.

The next exact reduction, namely isolating the reference-increment packet and
the bridge-tube envelope as explicit Eulerian window objects, is recorded in
`mpp-reference-increment-and-bridge-tube-reduction.md`.

It does **not** yet prove:

1. a reduction of `\mathcal E^{ref}_{N,r,\psi}` to the fixed-increment
   Eulerian packet `E_N(h,t;\psi)`;
2. a closed propagation theorem for `\mathcal M^{seg}_{N+1,r,\psi}`;
3. a full intrinsic transported evolution law for `\widetilde E_{N,r,\psi}`.

What it does settle is the live next bridge:

```math
\boxed{
\text{packing control now enters transported tower control through an exact increment-stability estimate,}
}
```

```math
\boxed{
\text{rather than only through an integral-of-sup comparison wrapper.}
}
\tag{IS.15}
```
