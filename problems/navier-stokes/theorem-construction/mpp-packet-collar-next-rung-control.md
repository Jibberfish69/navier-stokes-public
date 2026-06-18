# MPP Packet-Collar Next-Rung Control

## Status

Candidate theorem-facing common-object note.

Role: corrected common stronger-object route feeding both `RW.A` and `RW.B` on
the standalone class-membership branch.

This note introduces one common packet-collar next-rung envelope. Once that
envelope is propagated, it feeds both the Eulerian reference-envelope discharge
and the direct weighted-segment control route.

The exact interval-propagation queue beneath this note is now isolated in
`mpp-fixed-family-and-collar-interval-propagation.md`.

## Purpose

The exact burden here is:

```math
\boxed{
\text{define one common packet-collar next-rung envelope that dominates both }
\mathfrak N^{seg}_{N+1,\rho,\psi}
\text{ and the next-rung interpolation error in the Eulerian reference discharge.}
}
\tag{PC.0}
```

This note also records one exact geometric repair:

```math
\boxed{
\text{an }L^2(\psi^2 da)\text{-size for }\varepsilon_h
\text{ does not by itself define a pointwise collar radius.}
}
\tag{PC.0a}
```

So the packet collar is defined directly from the exact reference points and
exact bridge-segment points, not from a scalar `L^2` bridge-error radius.

## Setup

Fix a compactly supported material packet `\psi`, a time interval `I`, and a
scale window `0<|r|\le \rho`.

Write the material packet image as

```math
K_t:=X(\operatorname{supp}\psi,t).
\tag{PC.1}
```

Retain the packet-generated reference increment class
`\mathcal R_{\rho}^{ref}(t;\psi)` and define the interval-uniform reference
radius

```math
\Lambda_{\rho,\psi}^{ref}(I)
:=
\sup_{t\in I}
\sup_{\eta\in\mathcal R_{\rho}^{ref}(t;\psi)}
|\eta|.
\tag{PC.2}
```

Define the fixed interval reference ball

```math
\mathbb B_{\rho,\psi}^{ref}(I)
:=
\big\{
\eta\in\mathbf R^3:|\eta|\le \Lambda_{\rho,\psi}^{ref}(I)
\big\}.
\tag{PC.3}
```

and the corresponding reference-ball packet set

```math
\mathfrak B_{\rho,\psi}(t;I)
:=
\big\{
X(a,t)+\eta:
a\in\operatorname{supp}\psi,\ \eta\in\mathbb B_{\rho,\psi}^{ref}(I)
\big\}.
\tag{PC.4}
```

Retain the exact bridge-segment points from the transported increment identity:

```math
\mathfrak S_{\rho,\psi}(t)
:=
\Big\{
X(a,t)+F(a,t)r+\theta\varepsilon_h(a,r,t):
a\in\operatorname{supp}\psi,\ 0<|r|\le \rho,\ \theta\in[0,1]
\Big\}.
\tag{PC.5}
```

Define the exact packet-collar core

```math
\mathfrak P_{\rho,\psi}(t)
:=
\mathfrak B_{\rho,\psi}(t;I)\cup \mathfrak S_{\rho,\psi}(t).
\tag{PC.6}
```

For a fixed collar thickness `\delta>0`, define the packet collar

```math
\mathcal C_{\rho,\psi}^{\delta}(t)
:=
\big\{
y\in\mathbf R^3:\operatorname{dist}(y,\mathfrak P_{\rho,\psi}(t))\le \delta
\big\}.
\tag{PC.7}
```

Define the pointwise collar next-rung envelope

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
:=
\operatorname*{ess\,sup}_{y\in\mathcal C_{\rho,\psi}^{\delta}(t)}
\sum_{k=0}^{N}\lambda_k |U_{k+1}(y,t)|^2.
\tag{PC.8}
```

Define the collar Sobolev packet

```math
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)
:=
\sum_{j=0}^{m}\sum_{k=0}^{N}\lambda_k
\int \chi_{\rho,\psi,t}^{\delta}(x)^2
\big|
\nabla^j U_{k+1}(x,t)
\big|^2\,dx,
\tag{PC.9}
```

where `\chi_{\rho,\psi,t}^{\delta}` is a smooth cutoff supported on a slightly
enlarged collar and equal to `1` on `\mathcal C_{\rho,\psi}^{\delta}(t)`.

## Exact Geometric Consequences

### Lemma PC.A (the packet collar contains both relevant point classes)

For every `t\in I`:

```math
\big\{
X(a,t)+\eta:
a\in\operatorname{supp}\psi,\ \eta\in\mathcal R_{\rho}^{ref}(t;\psi)
\big\}
\subset \mathfrak B_{\rho,\psi}(t;I)\subset \mathcal C_{\rho,\psi}^{\delta}(t),
\qquad
\mathfrak S_{\rho,\psi}(t)\subset \mathcal C_{\rho,\psi}^{\delta}(t).
\tag{PC.10}
```

### Proof

Immediate from `(PC.2)`--`(PC.7)`. ∎

### Lemma PC.B (the direct segment envelope is dominated by the collar envelope)

For every `t\in I` and every `0<|r|\le \rho`,

```math
\mathfrak N^{seg}_{N+1,r,\psi}(t)
\le
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{PC.11}
```

### Proof

Every point sampled in the segment integral defining
`\mathfrak N^{seg}_{N+1,r,\psi}(t)` lies in `\mathfrak S_{\rho,\psi}(t)`, hence
in the packet collar by `(PC.10)`. The integral over `\theta` is therefore
bounded by the pointwise collar envelope `(PC.8)`. Taking the essential
supremum in `a` gives `(PC.11)`. ∎

### Corollary PC.C (weighted-segment control from the common collar envelope)

Using `(R1.6)` and `(PC.11)`, one has

```math
\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
|r|^2\,P_F^\ast(r,t;\psi)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\qquad
(0<|r|\le \rho).
\tag{PC.12}
```

Hence

```math
\sup_{0<|r|\le \rho}\mathcal M^{wseg}_{N+1,r,\psi}(t)
\le
\rho^2
\sup_{0<|r|\le \rho}P_F^\ast(r,t;\psi)\,
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t).
\tag{PC.13}
```

This is the exact common-object discharge for the weighted-segment side.

## Candidate Theorem Interface

### Candidate Lemma PC.D (collar Sobolev packet controls the collar envelope)

For `m` large enough for local Sobolev embedding in dimension `3`,

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}(t)
\le
C_{PC,m}
\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t).
\tag{PC.14}
```

This is the common stronger-object estimate. Once the higher-rung collar packet
is supplied, this estimate discharges both branch-frontier interfaces.

## Interpretation

The common-object compression route is now exact at the geometric level:

```math
\text{packet-collar next-rung control}
\Longrightarrow
\mathfrak C_{N+1,\rho,\psi}^{\delta},
\tag{PC.15}
```

```math
\mathfrak C_{N+1,\rho,\psi}^{\delta}
\Longrightarrow
\mathfrak N^{seg}_{N+1,\rho,\psi}
\Longrightarrow
\mathcal M^{wseg}_{N+1,\rho,\psi},
\tag{PC.16}
```

and the sister finite-net note uses the same collar envelope to discharge the
Eulerian reference-envelope side.

## Boundary

This note does **not** yet prove:

1. the interval propagation theorem for the collar Sobolev packet
   `\mathcal K_{N+1,m,\rho,\psi}^{\delta}(t)`, now isolated in
   `mpp-fixed-family-and-collar-interval-propagation.md`;
2. the local Sobolev estimate `(PC.14)` on the moving packet collar;
3. the paired fixed-family interval propagation step used in the sister
   finite-net discharge note, also isolated in
   `mpp-fixed-family-and-collar-interval-propagation.md`;
4. the downstream closure-packaging theorem.

It isolates only the corrected common packet-collar route and its exact
weighted-segment consequence.

## Source Surfaces

Primary source surfaces for this note:

1. `problems/navier-stokes/theorem-construction/mpp-rung1-to-weighted-segment-control-lemma.md`
2. `problems/navier-stokes/theorem-construction/mpp-reference-and-weighted-segment-propagation-lemma.md`
3. `problems/navier-stokes/theorem-construction/mpp-transported-material-packet-bridge-lemma.md`
4. `problems/navier-stokes/theorem-construction/mpp-material-packet-closure-program.md`
5. `problems/navier-stokes/theorem-construction/mpp-fixed-family-and-collar-interval-propagation.md`
