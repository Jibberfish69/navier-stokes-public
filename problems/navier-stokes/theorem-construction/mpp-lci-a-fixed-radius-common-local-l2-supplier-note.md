# MPP LCI.A Fixed-Radius Common Local L2 Supplier Note

## Status

Candidate theorem-facing companion note.

Role: isolate one common fixed-radius local `L^2` packet on the transported-center
net that is sufficient for both the pressure-side local theorem `FPL.C` and the
top-viscous local theorem `FTL.C`.

This note does **not** replace the installed sharp direct pair. That pair
remains `(FPC.H,FVR.F)`. Its narrower job is:

```math
\boxed{
\text{freeze one common fixed-ball }L^2\text{ packet for }U_1,\dots,U_{N+4}\text{ on the same }5\Lambda\text{-balls that already implies}
\newline
\text{the pressure-side local theorem }FPL.C\text{ and the top-viscous local theorem }FTL.C,\text{ hence the sharp direct pair }(FPC.H,FVR.F).
}
\tag{FCL.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-pressure-l2-supplier-note.md)
2. [mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
R_{\rho,\delta}^{press}:=5\Lambda.
\tag{FCL.1}
```

The installed branch-local packets are

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+2}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
\tag{FCL.2a}
```

and

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FCL.2b}
```

Define the common local packet

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{q=1}^{N+4}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FCL.3}
```

This packet stays on the same transported-center family and the same `5\Lambda`
ball geometry already used on the pressure side. It does not widen to the
collar theorem; it only collects the pressure and top-viscous local fields into
one common ball packet.

## Main Reduction

### Proposition `FCL.A` (The common fixed-radius local packet implies both branch-local `L^2` supplier theorems)

For every `t\in I`,

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t),
\tag{FCL.A0}
```

and

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t).
\tag{FCL.A1}
```

Consequently, if

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I),
\tag{FCL.A2}
```

then

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I),
\qquad
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I),
\tag{FCL.A3}
```

hence `FPL.C`, `FTL.C`, `FPC.H`, and `FVR.F`.

### Proof

The first inequality is the restriction of
`(FCL.3)` to the subfamily `q=1,\dots,N+2`.

For the second inequality, fix `j`. Because

```math
\Lambda<R_{\rho,\delta}^{press}=5\Lambda,
\tag{FCL.A4}
```

we have

```math
B(c_j(t),\Lambda)\subset B(c_j(t),R_{\rho,\delta}^{press}).
\tag{FCL.A5}
```

Therefore

```math
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2
\le
\sum_{q=1}^{N+4}
\left\|
U_q(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FCL.A6}
```

Taking the supremum in `j` gives `(FCL.A1)`. Integrating `(FCL.A0)` and
`(FCL.A1)` over `I` yields `(FCL.A3)`, and then `FPL.H` and `FTL.H` give the
stated direct-frontier conclusions. ∎

### Target Theorem `FCL.C` (Common fixed-radius local `L^2` supplier theorem for the sharp direct pair)

Prove

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I).
\tag{FCL.C0}
```

Then `(FCL.A3)` gives both branch-local theorems `FPL.C` and `FTL.C`, hence
the sharp direct pair `(FPC.H,FVR.F)`.

This is the exact deeper common still-local direct sufficient theorem currently
visible beneath the sharp direct pair. The branch-local theorems `FPL.C` and
`FTL.C` remain the exact local sub-obstructions on their respective pressure and
top-viscous branches. Relative to the pressure branch, the exact larger-radius
top-tail surplus inside `(FCL.C0)` is now isolated separately in
[mpp-lci-a-fixed-radius-common-local-top-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-residue-note.md)
as the exact residual theorem `FTR.C`, so `FCL.C` reduces asymmetrically to the
package `(FPL.C,FTR.C)`. Relative to the top-viscous branch, the companion note
[mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
sharpens that further to the annular shell theorem `FTSR.C`. Its own companion
[mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md)
now rewrites that shell as the finite shifted-center cover theorem `FTOC.C`, and
one step deeper through the shifted-center slab theorem `FTOC.D` to the
one-rung-lower shifted-slab Sobolev theorem `FTOC.F`. But its installed return
consequence `FTOC.G` then shows that this shifted-slab branch no longer leaves
an independent live theorem burden on the no-jump route: it has returned to the
receiver-side collar theorem `CSP.B3a1`, while the common floor still also
spends the separate branch-local top wall `FTL.C` and the pressure wall
`FPL.C`.

### Corollary `FCL.Ca` (The common local floor is already downstream of the branch-local pair plus the widened receiver-side collar return)

Assume

```math
\mathcal B_{N+2,\rho,\psi}^{press,5\Lambda,L2}\in L^1(I),
\tag{FCL.C1}
```

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}\in L^1(I),
\tag{FCL.C2}
```

and

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FCL.C3}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I).
\tag{FCL.C4}
```

### Proof

Hypothesis `(FCL.C3)` is exactly `(FTOC.Bf0)`, so Consequence `FTOC.G` gives
`FTSR.C0`. Combining that with `(FCL.C2)` and `(FTSR.A0)` yields `FTR.C0`.
Combining `FTR.C0` with `(FCL.C1)` and `(FTR.A2)` yields `(FCL.C4)`. ∎

### Corollary `FCL.H` (The common fixed-radius local packet is already a direct sufficient theorem for the sharp direct pair)

If

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I),
\tag{FCL.H0}
```

then

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I),
\qquad
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I),
\qquad
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I),
\tag{FCL.H1a}
```

and

```math
\mathcal B_{N+2,\Lambda}^{sob,ctr}\in L^1(I),
\qquad
\mathfrak U_{N+2,\Lambda}^{top,ctr}\in L^2(I),
\qquad
\mathcal W_{N,\eta}^{N+2,ctr}\in L^2(I).
\tag{FCL.H1b}
```

So `(FCL.C0)` is already a direct sufficient theorem for the sharp direct pair
`(FPC.H,FVR.F)`.

### Proof

By `(FCL.A3)`, hypothesis `(FCL.H0)` gives the branch-local hypotheses
`(FPL.H0)` and `(FTL.H0)`. Then `FPL.H` yields `(FCL.H1a)` and `FTL.H` yields
`(FCL.H1b)`. ∎

## Relation To The Adjacent Collar Route

### Corollary `FCL.Bc` (The route-native lower-order moving-collar packet already implies the common local packet)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FCL.Bc0}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FCL.Bc1}
```

### Proof

For each `j`,

```math
B(c_j(t),R_{\rho,\delta}^{press})
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
\tag{FCL.Bc2}
```

exactly as in `(FPL.Bc2)`. Applying `(CSP.25g0c)` with collar thickness
`\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}` gives

```math
\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t),R_{\rho,\delta}^{press}).
\tag{FCL.Bc3}
```

Therefore the `\alpha=0` slots with `q=1,\dots,N+4` in
`\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}`
give

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t)
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FCL.Bc4}
```

Now `(FCL.Bc0)` gives `(FCL.Bc1)`. ∎

This is sharper than the common widened-thickness comparison `(FCL.B1)`: it
uses the route-native lower-order moving-collar packet that underlies
`CSP.B3a1`, rather than the coarser full widened-thickness collar packet.

## Relation To The Adjacent Wider-Collar Route

### Corollary `FCL.B` (The common widened-thickness collar packet implies the common local packet)

Assume

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FCL.B0}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FCL.B1}
```

### Proof

For each `j`, the fixed ball
`B(c_j(t),R_{\rho,\delta}^{press})=B(c_j(t),5\Lambda)` lies inside the widened
collar `\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)` by the
same geometry used in `(FPL.B2)`. Every local integral in `(FCL.3)` is
therefore one of the `j=0` summands already measured by
`\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`, so

```math
\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FCL.B2}
```

Now `(FCL.B0)` gives `(FCL.B1)`. ∎

This is only a comparison fact. It explains why the common widened-thickness
collar route suffices, but it does not make that wider route the sharp
theorem-facing object.

### Remark `FCL.Ba` (The widened-thickness sufficient form is again just `CSP.A` at larger depth)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary thickness `\delta_\ast>0`
and depth parameter. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\qquad
N_\ast:=N+3,
\tag{FCL.Ba0}
```

turns the generic collar target into exactly the widened packet hypothesis
`(FCL.B0)`.

## Boundary

This note does **not** prove `FCL.C`, i.e.
`\mathcal B_{N+4,\rho,\psi}^{pair,5\Lambda,L2}\in L^1(I)`.

It only records one common still-local zero-derivative packet beneath the sharp
direct pair:

```math
\boxed{
\text{the installed sharp direct pair remains }(FPC.H,FVR.F),
\newline
\text{with }FCL.C\text{ the exact deeper common still-local direct sufficient theorem for that pair, carrying packet hypothesis }(FCL.H0),}
\newline
\text{with }FPL.C\text{ and }FTL.C\text{ only the branch-local direct sufficient routes beneath the pressure and top-viscous fronts,}
\newline
\text{and more sharply }FTR.C\text{ reduces }FCL.C\text{ to the asymmetric package }(FPL.C,FTR.C)\text{ on the same }5\Lambda\text{-balls,}
\newline
\text{with }(FCL.Bc0)\text{ the sharper route-native moving-collar corollary beneath that common floor,}
\newline
\text{while }(FCL.Ba0)\text{ is only the nearby common widened-thickness instance of }CSP.A.
}
```
