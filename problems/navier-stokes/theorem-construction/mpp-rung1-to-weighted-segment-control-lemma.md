# MPP Rung1-To-Weighted-Segment Control Lemma

## Status

Candidate theorem-facing control note.

Role: exact concrete next-step surface for `RW.B`.

This note sits underneath
`mpp-weighted-segment-propagation-lemma.md`
and isolates the direct packet-side route from the exact rung-1 material source
to the weighted-segment packet.

## Purpose

The exact burden here is:

```math
\boxed{
\mathcal Q_{1,r,\psi}^{str},\ P_F^\ast,\ A_F,\ \text{next-rung segment control}
\Longrightarrow
\mathcal M^{wseg}_{N+1,r,\psi}.
}
\tag{R1.0}
```

This is the exact next move for `RW.B`.

## Setup

Retain the weighted-segment packet from the live reduction surface:

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta\,da.
\tag{R1.1}
```

Retain the exact source and packing-control packets:

```math
\mathcal Q_{1,r,\psi}^{str}(t),
\qquad
P_F^\ast(r,t;\psi),
\qquad
A_F(t;\psi).
\tag{R1.2}
```

Define the direct next-rung segment envelope

```math
\mathfrak N^{seg}_{N+1,r,\psi}(t)
:=
\operatorname*{ess\,sup}_{a\in\operatorname{supp}\psi}
\sum_{k=0}^{N}\lambda_k
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta.
\tag{R1.3}
```

For a scale window `0<|r|\le \rho`, define

```math
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)
:=
\sup_{0<|r|\le \rho}
\mathfrak N^{seg}_{N+1,r,\psi}(t).
\tag{R1.4}
```

This is the exact packet-side next-rung segment-control object that sits one
level above `\mathcal M^{wseg}` without passing through the stronger
bridge-tube envelope.

## Exact Packet-Side Reduction

### Lemma R1.A (direct weighted-segment reduction)

For every finite depth `N`, packet `\psi`, increment `r`, and time `t`,

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
\mathfrak N^{seg}_{N+1,r,\psi}(t)
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da.
\tag{R1.5}
```

Hence, by the exact packing bridge `(IS.8)`,

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,
\mathfrak N^{seg}_{N+1,r,\psi}(t).
\tag{R1.6}
```

### Proof

For a.e. `a`, the segment integral in `(R1.1)` is bounded by the envelope
`\mathfrak N^{seg}_{N+1,r,\psi}(t)` from `(R1.3)`. Pulling that bound outside
the `a`-integral gives `(R1.5)`. Combining with

```math
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2\,da
\le
|r|^2\,P_F^\ast(r,t;\psi)
\tag{R1.7}
```

from `(IS.8)` yields `(R1.6)`. ∎

## Exact Theorem Interface

### Candidate Theorem R1.B (rung-1 source to weighted-segment control)

Fix a compactly supported material packet `\psi`, a finite depth `N`, a time
interval `I`, and a scale window `0<|r|\le \rho`.

Assume on `I`:

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
P_F^\ast(r,t;\psi)<\infty,
\tag{R1.8}
```

```math
\sup_{t\in I}A_F(t;\psi)<\infty,
\tag{R1.9}
```

and that the exact rung-1 material source
`\mathcal Q_{1,r,\psi}^{str}` together with packet-side next-rung control
propagates the direct segment envelope:

```math
\sup_{t\in I}
\mathfrak N^{seg}_{N+1,\rho,\psi}(t)<\infty.
\tag{R1.10}
```

Then

```math
\sup_{t\in I}
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)<\infty.
\tag{R1.11}
```

### Proof

Take the supremum of `(R1.6)` over `0<|r|\le \rho` and `t\in I`. Since
`|r|\le \rho`, the bounds `(R1.8)` and `(R1.10)` imply `(R1.11)`. ∎

## Interpretation

The live burden is now completely explicit:

```math
\text{turn the exact rung-1 material source into interval control of }
\mathfrak N^{seg}_{N+1,\rho,\psi},
\text{ then recover }\mathcal M^{wseg}_{N+1,\rho,\psi}
\text{ by }(R1.6).
\tag{R1.12}
```

So the unresolved step is no longer hidden inside `\mathcal M^{wseg}` itself.
It has been exposed as the direct packet-side next-rung segment control problem.

## Boundary

This note does **not** yet prove:

1. a direct interval estimate for `(R1.10)` from
   `\mathcal Q_{1,r,\psi}^{str}`;
2. a closed next-rung packet evolution law using only `A_F`,
   `P_F^\ast`, and the PDE-native transport structure;
3. the reference-comparison propagation theorem;
4. the downstream closure-packaging theorem.

It isolates only the exact packet-side control step needed to make `RW.B`
concrete without passing through the stronger bridge-tube envelope.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-construction/mpp-weighted-segment-propagation-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-reference-increment-and-segment-packet-reduction.md`
3. `problems/navier-stokes/theorem-construction/mpp-increment-stability-lemma.md`
4. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
