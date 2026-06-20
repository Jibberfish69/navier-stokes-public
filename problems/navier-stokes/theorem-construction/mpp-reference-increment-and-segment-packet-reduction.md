# MPP Reference-Increment And Segment-Packet Reduction

## Status

Candidate theorem-facing reduction note.

Role: live reduction surface for the residual reference-increment and
weighted-segment packet quantities.

This note is now the live theorem-facing reduction surface for the standalone
class-membership branch.
`mpp-reference-increment-and-bridge-tube-reduction.md`
is auxiliary geometric unpacking context only.

This note does **not** yet close the transported packet. Its job is narrower:

1. replace the raw reference-increment object `\mathcal E^{ref}_{N,r,\psi}` by
   a packetized comparison class;
2. replace the rigid pointwise segment envelope
   `\mathcal M^{seg}_{N+1,r,\psi}` by a packetized weighted segment quantity;
3. restate the increment-stability bridge entirely in packet language.

## Purpose

After the exact increment-stability bridge `(IS.13)`, two objects remained
outside the honest packet layer:

```math
\mathcal E^{ref}_{N,r,\psi}(t),
\qquad
\mathcal M^{seg}_{N+1,r,\psi}(t).
\tag{RS.0}
```

Those are not defects in the increment-stability note. They are the next
reduction burden.

The correct next move is therefore:

```math
\boxed{
\text{turn both remaining objects into packet quantities before asking for propagation.}
}
\tag{RS.1}
```

## Setup

Retain the notation from the comparison and increment-stability notes:

```math
x(a,t):=X(a,t),
\qquad
\eta_\ast(a,r,t):=F(a,t)r,
\qquad
h(a,r,t)=\eta_\ast(a,r,t)+\varepsilon_h(a,r,t).
\tag{RS.2}
```

Also retain

```math
\widetilde E_{N,r,\psi}(t),
\qquad
\mathcal R^{inc}_{N,r,\psi}(t),
\qquad
P_F^\ast(r,t;\psi).
\tag{RS.3}
```

## 1. Packetizing The Reference Increment

The reference increment `\eta_\ast(a,r,t)=F(a,t)r` depends on `a`, so the raw
object

```math
\mathcal E^{ref}_{N,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2
\big|
\delta_{F(a,t)r}U_k(x(a,t),t)
\big|^2\,da
\tag{RS.4}
```

is already material, but not yet a comparison class.

Define the reference-increment range

```math
\mathcal R_r^{ref}(t;\psi)
:=
\big\{
F(a,t)r:a\in\operatorname{supp}\psi
\big\}.
\tag{RS.5}
```

Define the local reference comparison density

```math
\mathfrak e^{ref}_{N,r,\psi}(a,t)
:=
\sup_{\eta\in\mathcal R_r^{ref}(t;\psi)}
\sum_{k=0}^{N}\lambda_k
\big|
\delta_\eta U_k(x(a,t),t)
\big|^2,
\tag{RS.6}
```

and the integrated reference comparison packet

```math
\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
:=
\int \psi(a)^2\,
\mathfrak e^{ref}_{N,r,\psi}(a,t)\,da.
\tag{RS.7}
```

### Lemma RS.A (packetized reference comparison)

For every finite depth `N`, packet `\psi`, label increment `r`, and time `t`,

```math
\mathcal E^{ref}_{N,r,\psi}(t)
\le
\widehat{\mathcal E}^{ref}_{N,r,\psi}(t).
\tag{RS.8}
```

### Proof

For each fixed `a`, the increment `F(a,t)r` belongs to
`\mathcal R_r^{ref}(t;\psi)`, so the pointwise integrand in `(RS.4)` is bounded
by `\mathfrak e^{ref}_{N,r,\psi}(a,t)`. Integrating against `\psi(a)^2\,da`
gives `(RS.8)`. ∎

So the first remaining object is now reduced to a genuine packetized comparison
class.

## 2. Packetizing The Segment Price

The increment-stability note introduced the rigid envelope

```math
\mathcal M^{seg}_{N+1,r,\psi}(t)
:=
\sup_{a\in\operatorname{supp}\psi}
\int_0^1
\sum_{k=0}^{N}\lambda_k
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta.
\tag{RS.9}
```

This is useful as a first theorem shape, but it is stronger than the exact
packet error term really needs.

Define instead the weighted segment packet

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta\,da.
\tag{RS.10}
```

This is an honest packet quantity: the geometry and the next-rung segment price
stay inside the same integral.

### Lemma RS.B (exact weighted-segment control of the increment error)

For every finite depth `N`, packet `\psi`, label increment `r`, and time `t`,

```math
\mathcal R^{inc}_{N,r,\psi}(t)
\le
\mathcal M^{wseg}_{N+1,r,\psi}(t).
\tag{RS.11}
```

### Proof

This is exactly `(IS.7)` rewritten as a named packet quantity. ∎

### Lemma RS.C (strong-envelope domination)

The weighted segment packet is controlled by the stronger envelope:

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t).
\tag{RS.12}
```

### Proof

By definition of `\mathcal M^{seg}_{N+1,r,\psi}(t)`, the segment integral in
`(RS.10)` is pointwise bounded by `\mathcal M^{seg}_{N+1,r,\psi}(t)`. Pull that
factor outside the `a`-integral and use `(IS.8)`:

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
\mathcal M^{seg}_{N+1,r,\psi}(t)
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da
\le
|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t).
```

This is exactly `(RS.12)`. ∎

So the rigid envelope is no longer the live object. It is now a stronger
comparison bound for a genuine packet quantity.

## 3. Fully Packetized Increment-Stability Bridge

Combining `(IS.12)` with `(RS.8)` and `(RS.11)` yields:

### Theorem RS.D (packetized increment-stability bridge)

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
+
2\,\mathcal M^{wseg}_{N+1,r,\psi}(t).
\tag{RS.13}
```

Using `(RS.12)` as an optional stronger estimate gives:

```math
\widetilde E_{N,r,\psi}(t)
\le
2\,\widehat{\mathcal E}^{ref}_{N,r,\psi}(t)
+
2\,|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t).
\tag{RS.14}
```

So the live bridge is now entirely packetized at its leading level, with the
pointwise supremum retained only as a downstream stronger estimate.

## Interpretation

The two hard objects from `(IS.13)` now have cleaner roles:

1. `\widehat{\mathcal E}^{ref}_{N,r,\psi}` is the packetized comparison class
   for reference increments generated by the finite packing class;
2. `\mathcal M^{wseg}_{N+1,r,\psi}` is the honest packetized next-rung price
   for moving from the reference increment to the transported increment;
3. `\mathcal M^{seg}_{N+1,r,\psi}` survives only as a stronger envelope above
   the weighted segment packet.

So the increment-stability route now reads:

```math
\boxed{
\text{transported tower coherence is controlled by a reference-increment packet}
+\text{ a weighted segment packet.}
}
\tag{RS.15}
```

That is the correct packet-level reduction of the bridge.

## Exact Boundary

This note does **not** yet prove:

1. a reduction of `\widehat{\mathcal E}^{ref}_{N,r,\psi}` to a fixed-increment
   Eulerian packet class;
2. a closed propagation theorem for `\mathcal M^{wseg}_{N+1,r,\psi}`;
3. an intrinsic transported evolution law for `\widetilde E_{N,r,\psi}`.

What it does settle is the next exact burden:

```math
\boxed{
\text{the remaining work is now packet propagation and comparison, not hidden pointwise geometry.}
}
\tag{RS.16}
```

## Source Surfaces

Primary source surfaces for this reduction:

1. `problems/navier-stokes/theorem-construction/mpp-eulerian-to-transported-comparison-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-increment-stability-lemma.md`
3. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
4. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
