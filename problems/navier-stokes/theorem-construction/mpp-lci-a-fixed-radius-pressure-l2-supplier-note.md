# MPP LCI.A Fixed-Radius Pressure L2 Supplier Note

## Status

Candidate theorem-facing companion note.

Role: isolate a one-rung-higher zero-derivative local packet that is
sufficient for the fixed-ball pressure `H^1` supplier theorem `FPS.A1`.

This note does **not** replace the installed direct pressure frontier. That
frontier remains the Holder-side package `FPC.H` / `FPR.9`. Its narrower job
is:

```math
\boxed{
\text{freeze a fixed-ball }L^2\text{-type packet for }U_1,\dots,U_{N+2}\text{ on the same }5\Lambda\text{-balls that already implies}
\newline
\text{the local }H^1\text{ supplier }FPS.A1,\text{ hence }FPC.A\text{ and }FPC.H.
}
\tag{FPL.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-sobolev-supplier-note.md)
2. [mpp-lci-a-fixed-radius-pressure-center-ball-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-center-ball-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain the fixed pressure radius

```math
R_{\rho,\delta}^{press}
:=
5\Lambda_{\delta,\rho}^{halo}.
\tag{FPL.1}
```

The installed one-derivative-lower local packet from `(FPS.3)` is

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+1}
\sum_{\beta=0}^{1}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPL.2}
```

Define the one-rung-higher zero-derivative local supplier

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+2}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPL.3}
```

This packet is still localized to the same fixed `5\Lambda` balls. It trades
one derivative for one rung, rather than widening to the collar theorem.

## Main Reduction

### Proposition `FPL.A` (The one-rung-higher local `L^2` packet implies the fixed-ball pressure `H^1` supplier)

For every `t\in I`,

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}(t)
\le
C_N\,
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t).
\tag{FPL.A0}
```

Consequently, if

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I),
\tag{FPL.A1}
```

then

```math
\mathcal B_{N+1,\rho,\psi}^{press,5\Lambda,H1}\in L^1(I),
\qquad
\mathcal B_{N,\rho,\psi}^{press,5\Lambda,sob}\in L^1(I),
\qquad
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I).
\tag{FPL.A2}
```

So `(FPL.A1)` implies `FPS.A1`, hence `FPC.A`, hence the direct Holder theorem
`FPC.H`.

### Proof

For `q=1,\dots,N+1` and `\beta=0,1`,

```math
\nabla^\beta U_q
=
\mathcal C_{\beta,q}\,U_{q+\beta},
\tag{FPL.A3}
```

where `\mathcal C_{\beta,q}` is the fixed finite-dimensional coordinate
projection between derivative slots; for `\beta=0` this is the identity.
Therefore on every fixed ball `B(c_j(t),R_{\rho,\delta}^{press})`,

```math
\sum_{q=1}^{N+1}
\sum_{\beta=0}^{1}
\left\|
\nabla^\beta U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
\le
C_N
\sum_{q=1}^{N+2}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FPL.A4}
```

Taking the supremum in `j` gives `(FPL.A0)`. Integrating `(FPL.A0)` over `I`
gives `(FPL.A1) \Rightarrow (FPS.A1)`, and then `FPS.A` and `FPC.A` yield the
remaining conclusions in `(FPL.A2)`. ∎

So the fixed-ball pressure sufficient route already admits a still-local
zero-derivative packet one rung higher.

### Target Theorem `FPL.C` (Fixed-radius one-rung-higher local pressure `L^2` supplier theorem)

Prove

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I).
\tag{FPL.C0}
```

Then `FPL.H` gives the direct frontier `FPC.H`, while `FPS.H` / `FPS.A` and
`FPC.A` are recovered as intermediate sufficient routes inside the same
pressure-side stack.

This is the exact still-local sub-obstruction currently visible beneath the
installed direct pressure frontier `FPC.H`. On the present on-disk route,
`(FPL.C0)` remains the exact branch-local pressure wall, while the common local
packet theorem `FCL.C` in
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
now gives a one-step deeper common still-local sufficient theorem for the sharp
direct pair. The installed implications into `(FPL.C0)` are therefore `FCL.C`,
the route-native lower-order moving-collar corollary `(FPL.Bc0)`, the
widened-collar comparison `FPL.B`, and its widened-thickness instance
`(FPL.Ba1)`, while `(FPS.H0)` / `FPC.A` remain intermediate sufficient routes
above it inside the same pressure-side stack.

### Corollary `FPL.H` (The one-rung-higher local `L^2` packet is already a direct sufficient theorem for the Holder frontier)

If

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I),
\tag{FPL.H0}
```

then

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I),
\qquad
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\qquad
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I)\subset L^1(I).
\tag{FPL.H1}
```

So `FPL.C` is already the exact still-local direct sufficient theorem for the
installed pressure frontier `FPC.H`.

### Proof

By `(FPL.A2)`, hypothesis `(FPL.H0)` implies

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I).
\tag{FPL.H2}
```

Then `(LRE.C1)` and `(LRE.C2)` give the remaining conclusions in `(FPL.H1)`. ∎

## Relation To The Adjacent Collar Route

### Corollary `FPL.Bc` (The route-native lower-order moving-collar packet already implies the one-rung-higher local pressure `L^2` packet)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPL.Bc0}
```

Then

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FPL.Bc1}
```

### Proof

For each `j`,

```math
B(c_j(t),R_{\rho,\delta}^{press})
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
\tag{FPL.Bc2}
```

exactly as in `(FPC.B2)`. Applying `(CSP.25g0c)` with collar thickness
`\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}` gives

```math
\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t),R_{\rho,\delta}^{press}).
\tag{FPL.Bc3}
```

Therefore the `\alpha=0` slots with `q=1,\dots,N+2` in
`\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}`
give

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
\le
\mathcal G_{N+2,N+2,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FPL.Bc4}
```

Now `(FPL.Bc0)` gives `(FPL.Bc1)`. ∎

This is sharper than the widened-collar comparison `(FPL.B1)`: it uses the
route-native lower-order moving-collar packet that underlies `CSP.B3a1`,
rather than the coarser full widened-thickness collar packet.

### Consequence `FPL.G` (The pressure-side local branch returns to the receiver-side collar burden)

Because `(FPL.Bc0)` is exactly the route-native lower-order moving-collar
packet theorem `CSP.B3a1` at thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`
and depth `N+2`, the pressure-side local chain no longer creates an
independent theorem burden once that receiver-side collar packet is available.
Concretely,

```math
(CSP.B3a1)
\Longrightarrow
(FPL.Bc0)
\Longrightarrow
FPL.C0
\Longrightarrow
FPL.H0
\Longrightarrow
FPC.H.
\tag{FPL.G0}
```

So on the installed no-jump route, the honest live burden is no longer the
local pressure wall `FPL.C` by itself. It has returned to the receiver-side
collar burden `CSP.B3a1`, and only secondarily to the still-local pressure
frontier through that route-native collar packet instance.

The companion return-instance note
[mpp-csp-b3a1-fei-return-instance-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-csp-b3a1-fei-return-instance-note.md)
now records that this route-native packet instance is not a new collar theorem
surface at all: `(FPL.Bc0)` is exactly `CSP.B3a1` read at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}` and depth `N+2`.

## Relation To The Adjacent Wider-Collar Route

### Corollary `FPL.B` (The widened collar packet implies the one-rung-higher local `L^2` packet)

Assume the widened collar packet at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`:

```math
\sup_{t\in I}
\mathcal K_{N+2,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPL.B0}
```

Then

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FPL.B1}
```

### Proof

For each `j`, the fixed ball `B(c_j(t),R_{\rho,\delta}^{press})` lies in the
widened collar `\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}`
exactly as in `(FPC.B2)`. Every local integral in `(FPL.3)` is therefore one of
the `\beta=0` summands already measured by
`\mathcal K_{N+2,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`, so

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+2,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FPL.B2}
```

Now `(FPL.B0)` gives `(FPL.B1)`. ∎

This is only a comparison fact. It explains why the widened collar route is
sufficient, but it does not make that wider route the sharp theorem-facing
object.

### Remark `FPL.Ba` (The widened-collar sufficient form is again just `CSP.A` at one larger thickness and one higher depth)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary thickness `\delta_\ast>0`
and depth parameter. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\qquad
N_\ast:=N+1,
\tag{FPL.Ba0}
```

turns the generic collar target into exactly the widened packet hypothesis
`(FPL.B0)`:

```math
\sup_{t\in I}
\mathcal K_{N+2,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FPL.Ba1}
```

So `FPL.B` does **not** introduce a new packet mechanism. It is again just a
widened-thickness, one-depth-higher instance of `CSP.A`.

## Boundary

This note does **not** prove `FPL.C`, i.e.
`\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I)`.

It only records a still-local zero-derivative packet beneath the already local
`H^1` packet `FPS.A1`:

```math
\boxed{
\text{the installed pressure branch still runs through the Holder-side package }FPC.H,
\newline
\text{but the terminal still-local wall on that branch is }FPL.C,\text{ carrying packet hypothesis }(FPL.H0),\text{ with }FPC.A\text{ and }(FPS.H0)\text{ only intermediate sufficient routes inside the pressure-side stack,}
\newline
\text{and }(FPL.3)\text{ a one-rung-higher local }L^2\text{ packet that already suffices for }(FPS.H0)\text{ without widening to the full }(\delta+5\Lambda)\text{ collar theorem,}
\newline
\text{with }(FPL.Bc0)\text{ the sharper route-native moving-collar supplier and }FPL.G\text{ the installed return of that pressure-side local chain to the receiver-side collar burden }CSP.B3a1,}
\newline
\text{while }FPL.B\text{ and }(FPL.Ba1)\text{ are only the nearby widened-thickness collar implications into that local wall.}
}
\tag{FPL.9}
```
