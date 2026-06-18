# MPP LCI.A Fixed-Radius Top-Rung Sobolev Supplier Note

## Status

Candidate theorem-facing companion note.

Role: isolate a one-rung-lower local Sobolev supplier that is sufficient for
the current fixed-ball top-rung Sobolev theorem `FVR.F`.

This note does **not** replace the installed direct top-viscous frontier. That
frontier is already `FVR.F` on disk. Its narrower job is:

```math
\boxed{
\text{freeze a local }H^3\text{-type packet for }U_{N+1}\text{ on the halo balls that already implies the fixed-ball}
\newline
\text{top-rung Sobolev packet theorem }FVR.F,
\text{ hence }FVR.D\text{ and }FVR.A.
}
\tag{FTS.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-increment-top-viscous-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-top-viscous-readout-note.md)
2. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)
3. [mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md)

## Setup

Retain the fixed halo radius

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo}.
\tag{FTS.1}
```

The installed direct `FVR.F` packet is

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTS.2}
```

Define the one-rung-lower local Sobolev supplier

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTS.3}
```

This packet is still localized to the fixed halo balls and still only uses one
field. It is not the thickened collar theorem, and it is not the stronger
`N+2` FEI family.

## Main Reduction

### Proposition `FTS.A` (The one-rung-lower local Sobolev supplier implies the fixed-ball top-rung Sobolev packet)

For every `t\in I`,

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}(t)
\le
C_N\,
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t).
\tag{FTS.A0}
```

Consequently, if

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}\in L^1(I),
\tag{FTS.A1}
```

then

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I),
\qquad
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^2(I),
\qquad
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FTS.A2}
```

So `(FTS.A1)` implies `FVR.F`, hence `FVR.D`, hence `FVR.A`.

### Proof

Each derivative of `U_{N+2}` is a fixed coordinate projection of one higher
derivative of `U_{N+1}`. More precisely, for `\beta=0,1,2`,

```math
\nabla^\beta U_{N+2}
=
\mathcal C_{\beta,N}\,\nabla^{\beta+1}U_{N+1},
\tag{FTS.A3}
```

where `\mathcal C_{\beta,N}` is the fixed finite-dimensional coordinate
projection between derivative slots. Hence on every ball `B(c_j(t),\Lambda)`,

```math
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2
\le
C_N
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTS.A4}
```

Taking the supremum in `j` gives `(FTS.A0)`. Integrating `(FTS.A0)` over `I`
shows that `(FTS.A1)` yields `\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I)`,
i.e. the hypothesis `FVR.F0`. Then `(FVR.6e)` and `(FVR.6b)` give the
remaining conclusions in `(FTS.A2)`. ∎

So the current direct top-viscous frontier `FVR.F` already admits a still-local
one-rung-lower sufficient packet.

The companion note
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
pushes this one step further: it records a one-rung-higher zero-derivative
local packet on the same fixed halo balls that already implies `FTS.C`.

### Target Theorem `FTS.C` (Fixed-radius one-rung-lower local Sobolev supplier theorem)

Prove

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}\in L^1(I).
\tag{FTS.C0}
```

Then `FTS.A` gives `FVR.F`, hence `FVR.D`, hence `FVR.A`.

This is now the intermediate still-local sub-obstruction beneath the installed
direct top-viscous frontier `FVR.F`. The deeper direct local supplier note is
[mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md),
where `FTL.C` packages a one-rung-higher local `L^2` theorem already
sufficient for `FTS.C`; the only direct implications into `FTS.C` still on disk
are that deeper local theorem `FTL.C`, the stronger adjacent thickened-collar
comparison `FTS.B`, and the wider common route `FTS.Ba`, while the coarser
adjacent routes `FVR.B` and `FVR.C` bypass `FTS.C` rather than implying it.

## Relation To The Adjacent Collar Route

### Corollary `FTS.B` (The adjacent thickened collar packet implies the one-rung-lower local Sobolev supplier)

Assume `m\ge 3` and the adjacent collar packet from `(FVR.E0)`:

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTS.B0}
```

Then

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}\in L^\infty(I)\subset L^1(I).
\tag{FTS.B1}
```

### Proof

For each `j`, the fixed ball `B(c_j(t),\Lambda)` lies inside the thickened
collar `\mathcal C_{\rho,\psi}^{\delta+\Lambda}(t)` by the same geometry used
in `(FVR.E2)`. Therefore every local integral in `(FTS.3)` is bounded by the
corresponding collar integral already included in
`\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda}(t)`, so

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta+\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTS.B2}
```

Now `(FTS.B0)` implies `(FTS.B1)`. ∎

This is only a comparison fact. It explains why the thickened collar route is
sufficient, but it does not make that thicker route the sharp theorem-facing
object.

### Corollary `FTS.Ba` (The widened-thickness pressure-side collar packet also implies the top-viscous local Sobolev supplier)

Assume `m\ge 3` and

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTS.Ba0}
```

Then

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}\in L^\infty(I)\subset L^1(I),
\tag{FTS.Ba1}
```

hence `FVR.F`, `FVR.D`, and `FVR.A`.

### Proof

Because

```math
\delta+\Lambda_{\delta,\rho}^{halo}
<
\delta+5\Lambda_{\delta,\rho}^{halo},
\tag{FTS.Ba2}
```

the fixed halo balls `B(c_j(t),\Lambda)` lie inside the thicker collar
`\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`. Repeating
the same argument as in `(FTS.B2)` with the thicker packet gives

```math
\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+1,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t),
\tag{FTS.Ba3}
```

so `(FTS.Ba0)` implies `(FTS.Ba1)`. ∎

### Remark `FTS.Bb` (The widened-thickness sufficient form is again an instance of `CSP.A`)

Just as on the pressure side, the collar-Sobolev theorem `CSP.A` fixes an
arbitrary thickness `\delta_\ast>0`. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}
\tag{FTS.Bb0}
```

turns the generic collar target

```math
\sup_{t\in I}
\mathcal K_{N+1,m,\rho,\psi}^{\delta_\ast}(t)
<
\infty
\tag{FTS.Bb1}
```

into exactly `(FTS.Ba0)`. So the common widened-thickness sufficient route for
both the pressure side and the top-viscous side is still just `CSP.A`, now at
the single thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`.

## Boundary

This note does **not** prove `FTS.C`, i.e.
`\mathfrak S_{N+1,\Lambda}^{top,sob,ctr}\in L^1(I)`.

It only records a still-local sufficient packet beneath the actual direct
frontier `FVR.F`:

```math
\boxed{
\text{the installed top-viscous frontier is already the fixed-ball top-rung Sobolev theorem }FVR.F,
\newline
\text{and }FTL.C\text{ is the exact deeper still-local direct sufficient theorem for that frontier, carrying packet hypothesis }(FTL.H0),}
\newline
\text{with }FTS.C\text{ only the intermediate one-rung-lower Sobolev route beneath it,}
\newline
\text{with }(FTS.3)\text{ the one-rung-lower local Sobolev packet carrying that intermediate route,}
\newline
\text{with the stronger adjacent collar route }FTS.B\text{ and the common widened-thickness collar route }(FTS.Ba0)\text{ the currently installed packet-level implications into }FTS.C,}
\newline
\text{with the coarser adjacent bypasses }FVR.B\text{ and }FVR.C\text{ skipping }FTS.C\text{ altogether rather than implying it,}
\newline
\text{and }(FTL.Ba0)\text{ / }(FTS.Bb1)\text{ show that the widened-thickness sufficient forms are again just }CSP.A\text{ at larger depth/thickness.}
}
\tag{FTS.9}
```
