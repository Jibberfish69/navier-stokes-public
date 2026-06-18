# MPP Weighted-Segment Propagation Lemma

## Status

Candidate theorem-facing split propagation note.

Role: exact `RW.B` surface for propagating the weighted-segment packet from the
packet-side rung-1 source and finite packing control.

This note sits underneath
`mpp-reference-and-weighted-segment-propagation-lemma.md`
and isolates only the weighted-segment side of the live propagation burden.

## Purpose

The exact burden here is:

```math
\boxed{
\text{propagate }\mathcal M^{wseg}_{N+1,r,\psi}(t)
\text{ from }\mathcal Q_{1,r,\psi}^{str},\ P_F^\ast,\ A_F,
\text{ and packet-side next-rung control.}
}
\tag{WS.0}
```

## Setup

Retain the weighted-segment packet from the live reduction note:

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
:=
\sum_{k=0}^{N}\lambda_k
\int \psi(a)^2\,|\varepsilon_h(a,r,t)|^2
\int_0^1
\big|
U_{k+1}\big(x(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t),t\big)
\big|^2\,d\theta\,da.
\tag{WS.1}
```

For a scale window `0<|r|\le \rho`, define

```math
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
:=
\sup_{0<|r|\le \rho}
\mathcal M^{wseg}_{N+1,r,\psi}(t).
\tag{WS.2}
```

Retain the exact rung-1 material source and packet-side packing controls:

```math
\mathcal Q_{1,r,\psi}^{str}(t),
\qquad
P_F^\ast(r,t;\psi),
\qquad
A_F(t;\psi).
\tag{WS.3}
```

## Exact Theorem Shape

### Candidate Theorem WS.A (weighted-segment propagation)

Fix a compactly supported material packet `\psi`, a finite depth `N`, a time
interval `I`, and a scale window `0<|r|\le \rho`.

Assume on `I`:

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
P_F^\ast(r,t;\psi)<\infty,
\tag{WS.4}
```

```math
\sup_{t\in I}A_F(t;\psi)<\infty,
\tag{WS.5}
```

and that the packet-side next-rung bridge control driven by the exact source
`\mathcal Q_{1,r,\psi}^{str}` remains finite on the weighted bridge segments
from `(WS.1)`.

Then

```math
\sup_{t\in I}
\mathcal M^{wseg}_{N+1,\rho,\psi}(t)
<\infty.
\tag{WS.6}
```

This is the exact `RW.B` burden in packet form.

The concrete next-step control surface for this burden is
`mpp-rung1-to-weighted-segment-control-lemma.md`.

## Auxiliary Geometric Sufficiency

The bridge-tube geometry remains auxiliary context, but it gives one exact
sufficient route.

Retain the auxiliary bridge-tube envelope

```math
\mathfrak M^{tube}_{N+1,r,\psi}(t)
\tag{WS.7}
```

from the geometric unpacking note.

### Lemma WS.B (auxiliary bridge-tube route)

If

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
P_F^\ast(r,t;\psi)<\infty,
\tag{WS.8}
```

and

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
\mathfrak M^{tube}_{N+1,r,\psi}(t)<\infty,
\tag{WS.9}
```

then

```math
\sup_{t\in I}\sup_{0<|r|\le \rho}
\mathcal M^{wseg}_{N+1,r,\psi}(t)<\infty.
\tag{WS.10}
```

### Proof

This is the live reduction inequality

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,\mathcal M^{seg}_{N+1,r,\psi}(t),
\tag{WS.11}
```

together with the auxiliary geometric domination

```math
\mathcal M^{seg}_{N+1,r,\psi}(t)
\le
\mathfrak M^{tube}_{N+1,r,\psi}(t).
\tag{WS.12}
```

Since `|r|\le \rho`, taking suprema over `0<|r|\le \rho` and `t\in I` yields
`(WS.10)`. ∎

So the bridge-tube note remains auxiliary, but it gives a clean stronger
sufficient route for the weighted-segment burden.

## Direct Packet-Side Burden

The live packet route is weaker and more faithful:

```math
\mathcal Q_{1,r,\psi}^{str},\ P_F^\ast,\ A_F
\Longrightarrow
\mathcal M^{wseg}_{N+1,r,\psi}.
\tag{WS.13}
```

The live burden is to turn the exact rung-1 material source into next-rung
weighted-segment control without passing through the stronger bridge-tube
envelope.

That direct packet-side step is still open. The auxiliary bridge-tube route
shows only that one can discharge the weighted-segment packet by proving a
stronger geometric envelope.

## Boundary

This note does **not** yet prove:

1. a direct packet-side propagation theorem closing `(WS.13)`;
2. interval control of `\mathcal M^{wseg}` directly from
   `\mathcal Q_{1,r,\psi}^{str}`;
3. the reference-comparison propagation theorem;
4. the downstream closure-packaging theorem.

It isolates only the weighted-segment propagation burden and one auxiliary
stronger route to it.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-construction/mpp-reference-and-weighted-segment-propagation-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-rung1-to-weighted-segment-control-lemma.md`
3. `problems/navier-stokes/theorem-construction/mpp-reference-increment-and-segment-packet-reduction.md`
4. `problems/navier-stokes/theorem-construction/mpp-reference-increment-and-bridge-tube-reduction.md`
5. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
