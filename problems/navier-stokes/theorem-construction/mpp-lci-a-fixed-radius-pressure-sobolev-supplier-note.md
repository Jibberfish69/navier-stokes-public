# MPP LCI.A Fixed-Radius Pressure Sobolev Supplier Note

## Status

Candidate theorem-facing companion note.

Role: isolate a one-derivative-lower local Sobolev supplier that is sufficient
for the fixed-ball pressure Sobolev sufficient theorem `FPC.A`.

This note does **not** replace the installed direct pressure frontier. That
frontier is the Holder-side package isolated by `FPC.H` / `FPR.9`. Its
narrower job is:

```math
\boxed{
\text{freeze a local }H^1\text{-type packet for }U_1,\dots,U_{N+1}\text{ on the fixed }5\Lambda\text{-balls that already implies}
\newline
\text{the fixed-ball pressure Sobolev sufficient theorem }FPC.A.
}
\tag{FPS.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md)
2. [mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain the fixed pressure radius

```math
R_{\rho,\delta}^{press}
:=
5\Lambda_{\delta,\rho}^{halo}.
\tag{FPS.1}
```

The fixed-ball Sobolev packet beneath the direct Holder theorem is

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\sum_{\beta=1}^{2}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPS.2}
```

Define the one-derivative-lower local supplier

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+1}
\sum_{\beta=0}^{1}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPS.3}
```

This packet is still localized to the same fixed `5\Lambda` balls. It uses the
next-rung family `U_1,\dots,U_{N+1}` with one derivative less, rather than the
older wider collar packet.

## Main Reduction

### Proposition `FPS.A` (The one-derivative-lower local supplier implies the fixed-ball pressure Sobolev packet)

For every `t\in I`,

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}(t)
\le
C_N\,
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}(t).
\tag{FPS.A0}
```

Consequently, if

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}\in L^1(I),
\tag{FPS.A1}
```

then

```math
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}\in L^1(I),
\qquad
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda},
\ \mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}
\in L^2(I).
\tag{FPS.A2}
```

So `(FPS.A1)` implies the sufficient theorem `FPC.A`, hence the direct
Holder theorem `FPC.H`.

### Proof

For `q=0,\dots,N` and `\beta=1,2`,

```math
\nabla^\beta U_q
=
\nabla^{\beta-1}U_{q+1}.
\tag{FPS.A3}
```

Therefore on every fixed ball `B(c_j(t),R_{\rho,\delta}^{press})`,

```math
\sum_{q=0}^{N}
\sum_{\beta=1}^{2}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
\le
C_N
\sum_{q=1}^{N+1}
\sum_{\beta=0}^{1}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPS.A4}
```

Taking the supremum in `j` yields `(FPS.A0)`. Integrating `(FPS.A0)` over `I`
shows that `(FPS.A1)` implies the hypothesis `FPC.A0`, and then `FPC.A`
gives the remaining conclusions in `(FPS.A2)`. ∎

So the fixed-ball Sobolev sufficient theorem `FPC.A` already admits a
still-local one-derivative-lower sufficient packet.

The companion note
[mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md)
pushes this one step further: it records a one-rung-higher zero-derivative
local packet on the same fixed `5\Lambda` balls that already implies
`(FPS.H0)`.

### Corollary `FPS.H` (The one-derivative-lower local packet is already a direct sufficient theorem for the Holder frontier)

If

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}\in L^1(I),
\tag{FPS.H0}
```

then

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I),
\qquad
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\qquad
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I)\subset L^1(I).
\tag{FPS.H1}
```

So `(FPS.H0)` is already a direct sufficient theorem for the installed pressure
frontier `FPC.H`.

### Proof

By `(FPS.A2)`, hypothesis `(FPS.H0)` implies

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda},
\ \mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}
\in L^2(I).
\tag{FPS.H2}
```

Then `(LRE.C1)` yields

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\tag{FPS.H3}
```

and `(LRE.C2)` returns the oscillation conclusion in `(FPS.H1)`. ∎

## Relation To The Adjacent Wider-Collar Route

### Corollary `FPS.B` (The widened collar packet implies the one-derivative-lower local supplier)

Assume `m\ge 1` and the widened collar packet at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPS.B0}
```

Then

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}\in L^\infty(I)\subset L^1(I).
\tag{FPS.B1}
```

### Proof

For each `j`, the fixed ball `B(c_j(t),R_{\rho,\delta}^{press})` lies in the
widened collar `\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}`
exactly as in `(FPC.B2)`. Since `q\le N+1` and `\beta\le 1\le m`, every local
integral in `(FPS.3)` is one of the summands already measured by
`\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`. So

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t),
\tag{FPS.B2}
```

and `(FPS.B0)` gives `(FPS.B1)`. ∎

This is only a comparison fact. It explains why the widened collar route is
sufficient, but it does not make that wider route the sharp theorem-facing
object.

### Remark `FPS.Ba` (The widened-collar sufficient form is again just `CSP.A` at one larger thickness)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary thickness `\delta_\ast>0`
and targets

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
<
\infty.
\tag{FPS.Ba0}
```

Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}
\tag{FPS.Ba1}
```

turns that generic target into exactly the widened packet hypothesis `(FPS.B0)`:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPS.Ba2}
```

So `FPS.B` does **not** introduce a new packet mechanism. It is again just a
widened-thickness instance of `CSP.A`.

## Boundary

This note does **not** prove
`\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}\in L^1(I)`.

It only records a still-local sufficient packet beneath the fixed-ball Sobolev
sufficient theorem `FPC.A`:

```math
\boxed{
\text{the installed direct pressure frontier is the Holder-side package }FPC.H,
\newline
\text{and }(FPS.H0)\text{ is already a direct sufficient theorem for that frontier, but }FPL.C\text{ is the deeper local }L^2\text{ theorem already sufficient for }(FPS.H0),}
\newline
\text{with }FPC.A\text{ only the intermediate fixed-ball Sobolev sufficient route beneath it,}
\newline
\text{and }(FPS.3)\text{ is the still-local one-derivative-lower packet carrying that direct sufficient theorem without widening to the full }(\delta+5\Lambda)\text{ collar theorem,}
\newline
\text{with the still-lower one-rung-higher local }L^2\text{ packet now isolated separately in }FPL.9,}
\newline
\text{while }(FPS.Ba2)\text{ is only the nearby widened-thickness instance of }CSP.A.
}
\tag{FPS.9}
```

The next deeper still-local packet beneath `(FPS.H0)` is now isolated in
[mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md),
which records `FPL.C` as the exact still-local direct sufficient theorem for
`FPC.H`.
