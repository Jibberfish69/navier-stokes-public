# MPP LCI.A Fixed-Radius Top-Rung L2 Supplier Note

## Status

Candidate theorem-facing companion note.

Role: isolate a one-rung-higher zero-derivative local packet that is
sufficient for the fixed-radius one-rung-lower Sobolev supplier theorem
`FTS.C`.

This note does **not** replace the installed direct top-viscous frontier. That
frontier remains `FVR.F`. Its narrower job is:

```math
\boxed{
\text{freeze a fixed-ball }L^2\text{-type packet for }U_{N+2},U_{N+3},U_{N+4}\text{ on the same halo balls that already implies}
\newline
\text{the local Sobolev supplier }FTS.C,\text{ hence }FVR.F,\ FVR.D,\ \text{and }FVR.A.
}
\tag{FTL.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-sobolev-supplier-note.md)
2. [mpp-lci-a-fixed-increment-top-viscous-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-top-viscous-readout-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain the fixed halo radius

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo}.
\tag{FTL.1}
```

The installed one-rung-lower local Sobolev packet from `(FTS.3)` is

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTL.2}
```

Define the one-rung-higher zero-derivative local supplier

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{\beta=1}^{3}
\left\|
U_{N+1+\beta}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTL.3}
```

This packet is still localized to the same fixed halo balls. It trades the
three derivatives on one field for three adjacent zero-derivative higher-rung
fields, rather than widening to the collar theorem.

## Main Reduction

### Proposition `FTL.A` (The one-rung-higher local `L^2` packet implies the one-rung-lower local Sobolev supplier)

For every `t\in I`,

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t)
\le
C_N\,
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t).
\tag{FTL.A0}
```

### Proof

For `\beta=1,2,3`,

```math
\nabla^\beta U_{N+1}
=
\mathcal C_{\beta,N}\,U_{N+1+\beta},
\tag{FTL.A1}
```

where `\mathcal C_{\beta,N}` is the fixed finite-dimensional coordinate
projection identifying the derivative slots of the tower rung. Hence on every
ball `B(c_j(t),\Lambda)`,

```math
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2
\le
C_N
\sum_{\beta=1}^{3}
\left\|
U_{N+1+\beta}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTL.A2}
```

Taking the supremum in `j` gives `(FTL.A0)`. ∎

So the top-viscous supplier theorem `FTS.C` already admits a still-local
zero-derivative packet one rung higher.

### Target Theorem `FTL.C` (Fixed-radius one-rung-higher local top-family `L^2` supplier theorem)

Prove

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I).
\tag{FTL.C0}
```

Then `(FTL.A0)` gives `FTS.C`, hence `FVR.F`, `FVR.D`, and `FVR.A`.

This is the exact deeper still-local sub-obstruction currently visible beneath
the installed direct top-viscous frontier `FVR.F`, equivalently beneath the
intermediate local supplier `FTS.C`. On the present on-disk route, `(FTL.C0)`
remains the exact branch-local top-viscous wall, while the common local packet
theorem `FCL.C` in
[mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-l2-supplier-note.md)
now gives a one-step deeper common still-local sufficient theorem for the sharp
direct pair.

### Corollary `FTL.H` (The one-rung-higher local `L^2` packet is already a direct sufficient theorem for the top-viscous frontier)

If

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I),
\tag{FTL.H0}
```

then

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I),
\qquad
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^2(I),
\qquad
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FTL.H1}
```

So `(FTL.H0)` is already a direct sufficient theorem for the installed
top-viscous frontier `FVR.F`.

### Proof

Integrating `(FTL.A0)` over `I` gives `FTS.C0`. Then `FTS.A`, `FVR.6e`, and
`FVR.6b` yield the conclusions in `(FTL.H1)`. ∎

## Relation To The Adjacent Collar Route

### Corollary `FTL.Bc` (The route-native lower-order moving-collar packet already implies the local `L^2` packet)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTL.Bc0}
```

Then

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^\infty(I)\subset L^1(I).
\tag{FTL.Bc1}
```

### Proof

For each `j`,

```math
B(c_j(t),\Lambda)
\subset
\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
\tag{FTL.Bc2}
```

by the same geometry used in `(FVR.E2)`. Applying `(CSP.25g0c)` with collar
thickness `\delta_\ast:=\delta+\Lambda_{\delta,\rho}^{halo}` gives

```math
\vartheta_{\rho,\psi,t}^{\delta+\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t),\Lambda).
\tag{FTL.Bc3}
```

Therefore the `\alpha=0` slots with `q=N+2,N+3,N+4` in
`\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda_{\delta,\rho}^{halo}}`
give

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTL.Bc4}
```

Now `(FTL.Bc0)` gives `(FTL.Bc1)`. ∎

This is sharper than the adjacent thickened-collar comparison `(FTL.B1)`: it
uses the route-native lower-order moving-collar packet that underlies
`CSP.B3a1`, rather than the coarser full collar packet at the same thickness.

### Consequence `FTL.G` (The top-viscous local branch returns to the receiver-side collar burden)

Because `(FTL.Bc0)` is exactly the route-native lower-order moving-collar
packet instance of `CSP.B3a1` at thickness
`\delta+\Lambda_{\delta,\rho}^{halo}` and depth `N+4`, the top-viscous local
chain no longer creates an independent theorem burden once that receiver-side
collar packet is available. Concretely,

```math
(CSP.B3a1)
\Longrightarrow
(FTL.Bc0)
\Longrightarrow
FTL.C0
\Longrightarrow
FTL.H0
\Longrightarrow
FVR.F0.
\tag{FTL.G0}
```

So on the installed no-jump route, the honest live burden is no longer the
local top-viscous wall `FTL.C` by itself. It has returned to the receiver-side
collar burden `CSP.B3a1`, and only secondarily to the still-local top-viscous
frontier through that route-native collar packet instance.

The companion return-instance note
[mpp-csp-b3a1-fei-return-instance-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-csp-b3a1-fei-return-instance-note.md)
now records that this route-native packet instance is likewise not a new collar
theorem surface: `(FTL.Bc0)` is exactly `CSP.B3a1` read at thickness
`\delta+\Lambda_{\delta,\rho}^{halo}` and depth `N+4`.

### Corollary `FTL.B` (The adjacent thickened collar packet at higher depth implies the local `L^2` packet)

Assume `m\ge 0` and

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTL.B0}
```

Then

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^\infty(I)\subset L^1(I).
\tag{FTL.B1}
```

### Proof

For each `j`, the fixed ball `B(c_j(t),\Lambda)` lies inside the thickened
collar `\mathcal C_{\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)` by the
same geometry used in `(FVR.E2)`. Every local integral in `(FTL.3)` is one of
the `j=0` summands already measured by
`\mathcal K_{N+4,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)`, so

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTL.B2}
```

Now `(FTL.B0)` gives `(FTL.B1)`. ∎

This is only a comparison fact. It explains why the thicker current-collar
route would suffice at higher depth, but it does not make that thicker route
the sharp theorem-facing object.

### Corollary `FTL.Ba` (The widened-thickness common collar route also implies the local `L^2` packet)

Assume `m\ge 0` and

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTL.Ba0}
```

Then

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^\infty(I)\subset L^1(I),
\tag{FTL.Ba1}
```

hence `FTS.C`, `FVR.F`, `FVR.D`, and `FVR.A`.

### Proof

Because

```math
\delta+\Lambda_{\delta,\rho}^{halo}
<
\delta+5\Lambda_{\delta,\rho}^{halo},
\tag{FTL.Ba2}
```

the fixed halo balls `B(c_j(t),\Lambda)` lie inside the thicker collar
`\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`. Repeating
the same argument as in `(FTL.B2)` with the thicker packet gives

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTL.Ba3}
```

Now `(FTL.Ba0)` implies `(FTL.Ba1)`. ∎

### Remark `FTL.Bb` (The widened-thickness sufficient form is again just `CSP.A` at larger depth)

Just as on the pressure side, the collar-Sobolev theorem `CSP.A` fixes an
arbitrary thickness `\delta_\ast>0`. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\qquad
N_\ast:=N+3,
\tag{FTL.Bb0}
```

turns the generic collar target into exactly `(FTL.Ba0)`. So the widened common
route is still just `CSP.A`, now at one larger thickness and three higher
depths than the packet level used in `FTS.B`.

## Boundary

This note does **not** prove `FTL.C`, i.e.
`\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I)`.

It only records a still-local zero-derivative packet beneath the already local
Sobolev supplier `FTS.C`:

```math
\boxed{
\text{the installed top-viscous frontier remains }FVR.F,
\newline
\text{with }FTL.C\text{ the exact deeper still-local direct sufficient theorem for that frontier, carrying packet hypothesis }(FTL.H0),}
\newline
\text{with }(FTL.Bc0)\text{ the sharper route-native collar return beneath that local wall,}
\newline
\text{with }FTS.C\text{ only the intermediate one-rung-lower Sobolev route beneath it,}
\newline
\text{and }(FTL.3)\text{ a one-rung-higher local }L^2\text{ packet that already suffices for }FTS.C\text{ without widening to the collar theorem,}
\newline
\text{while }(FTL.Ba0)\text{ is only the nearby widened-thickness, higher-depth instance of }CSP.A.
}
\tag{FTL.9}
```
