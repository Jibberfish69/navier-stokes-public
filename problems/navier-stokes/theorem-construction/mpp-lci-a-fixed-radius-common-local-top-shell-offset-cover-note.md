# MPP LCI.A Fixed-Radius Common Local Top Shell Offset-Cover Note

## Status

Candidate theorem-facing companion note.

Role: isolate a fixed finite family of shifted `\Lambda`-balls whose local
top-tail packets already imply the annular shell theorem `FTSR.C`.

This note does **not** replace the sharp direct pair `(FPC.H,FVR.F)`, the
common local packet theorem `FCL.C`, the enlarged-radius top-tail residue
theorem `FTR.C`, or the annular shell theorem `FTSR.C`. Its narrower job is:

```math
\boxed{
\text{turn the annular shell on }\Lambda<|x-c_j(t)|<5\Lambda\text{ into a finite offset family of ordinary }\Lambda\text{-ball packets,}
\newline
\text{so the remaining wall beneath }FTSR.C\text{ is no longer a shell integral but a fixed shifted-center local packet theorem.}
}
\tag{FTOC.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-residue-note.md)
2. [mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
R_{\rho,\delta}^{press}:=5\Lambda.
\tag{FTOC.1}
```

Let

```math
\mathbb S_{\Lambda:5\Lambda}
:=
\big\{
z\in\mathbb R^3:\ \Lambda<|z|<5\Lambda
\big\}.
\tag{FTOC.2}
```

By compactness of the closed shell
`\overline{\mathbb S}_{\Lambda:5\Lambda}\subset B(0,5\Lambda)`, choose once and
for all a finite family of offsets

```math
\mathcal Z^{sh}_{\Lambda}
:=
\{z^{(1)},\dots,z^{(M_{sh})}\}
\subset
B(0,4\Lambda)
\tag{FTOC.3}
```

such that

```math
\overline{\mathbb S}_{\Lambda:5\Lambda}
\subset
\bigcup_{\ell=1}^{M_{sh}} B(z^{(\ell)},\Lambda).
\tag{FTOC.4}
```

Retain the annular shell packet from `(FTSR.4)`:

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),5\Lambda)\setminus B(c_j(t),\Lambda))}^2.
\tag{FTOC.5}
```

Define the finite-offset shifted-center cover packet

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}(t)
:=
\sum_{\ell=1}^{M_{sh}}
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z^{(\ell)},\Lambda))}^2.
\tag{FTOC.6}
```

This remains entirely local. It does not widen to the collar theorem, and it
does not introduce variable offsets; the family `\mathcal Z^{sh}_{\Lambda}` is
fixed once and for all.

## Main Reduction

### Proposition `FTOC.A` (The finite offset cover packet implies the annular shell theorem)

For every `t\in I`,

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}(t).
\tag{FTOC.A0}
```

### Proof

Fix `j`. Translating `(FTOC.4)` by `c_j(t)` gives

```math
B(c_j(t),5\Lambda)\setminus B(c_j(t),\Lambda)
\subset
\bigcup_{\ell=1}^{M_{sh}} B(c_j(t)+z^{(\ell)},\Lambda).
\tag{FTOC.A1}
```

Therefore

```math
 \sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),5\Lambda)\setminus B(c_j(t),\Lambda))}^2
\le
\sum_{\ell=1}^{M_{sh}}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z^{(\ell)},\Lambda))}^2.
\tag{FTOC.A2}
```

Taking the supremum in `j` yields `(FTOC.A0)`. ∎

### Target Theorem `FTOC.C` (Finite shifted-center top-tail cover theorem)

Prove

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}\in L^1(I).
\tag{FTOC.C0}
```

Then `(FTOC.A0)` gives `FTSR.C0`. Combining that with the already-installed
branch-local top wall `(FTL.C0)` yields `FTR.C0`, and together with the
pressure wall `(FPL.C0)` and `(FTR.A2)` yields `FCL.C0`, hence the sharp direct
pair `(FPC.H,FVR.F)`.

This is the exact deeper still-local direct sufficient theorem currently
visible beneath `FTSR.C`. The single-slab reduction below then shows that this
finite-family wall is not yet sharpest: it collapses one step further to the
shifted-center slab theorem `(FTOC.D0)`.

## Single-Slab Reduction

Define the offset-slab top-tail packet

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,slab,\Lambda}(t)
:=
\sup_{|z|\le 4\Lambda}
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2.
\tag{FTOC.C1}
```

### Proposition `FTOC.Ca` (The shifted-center slab packet implies the finite offset cover packet)

For every `t\in I`,

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}(t)
\le
M_{sh}\,
\mathcal B_{N+4,\rho,\psi}^{top,sh,slab,\Lambda}(t).
\tag{FTOC.C2}
```

### Proof

Each offset in the finite family satisfies `|z^{(\ell)}|\le 4\Lambda` by
`(FTOC.3)`. Therefore every summand in `(FTOC.6)` is bounded by the slab
supremum `(FTOC.C1)`, and summing over `\ell=1,\dots,M_{sh}` gives
`(FTOC.C2)`. ∎

### Target Theorem `FTOC.D` (Shifted-center top-tail slab theorem)

Prove

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,slab,\Lambda}\in L^1(I).
\tag{FTOC.D0}
```

Then `(FTOC.C2)` gives `FTOC.C0`, hence `FTSR.C0`, `FTR.C0`, `FCL.C0`, and the
sharp direct pair `(FPC.H,FVR.F)`.

So the finite-family cover theorem `FTOC.C` is not the sharpest theorem-facing
local wall after all. The sharper single-object local wall is the shifted-center
slab theorem `(FTOC.D0)`.

## Shifted-Slab Sobolev Reduction

Define the shifted-center top-rung Sobolev slab packet

```math
\mathcal B_{N+2,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t)
:=
\sup_{|z|\le 4\Lambda}
\sup_{1\le j\le J}
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2.
\tag{FTOC.D1}
```

### Proposition `FTOC.Da` (The shifted-center top-rung Sobolev slab packet implies the shifted-center top-tail slab packet)

For every `t\in I`,

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,slab,\Lambda}(t)
\le
C_N\,
\mathcal B_{N+2,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t).
\tag{FTOC.D2}
```

### Proof

Fix `z` with `|z|\le 4\Lambda` and one transported center `c_j(t)`. On the ball
`B(c_j(t)+z,\Lambda)`, the same fixed coordinate-projection identities used in
`(FTS.A3)` give

```math
U_{N+3}
=
\mathcal C_{1,N}\,\nabla U_{N+2},
\qquad
U_{N+4}
=
\mathcal C_{2,N}\,\nabla^2 U_{N+2}.
\tag{FTOC.D3}
```

Therefore

```math
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2
\le
C_N
\sum_{\beta=1}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2
\le
C_N\,
\mathcal B_{N+2,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t).
\tag{FTOC.D4}
```

Taking the supremum in `j` and `|z|\le 4\Lambda` yields `(FTOC.D2)`. ∎

### Target Theorem `FTOC.E` (Shifted-center top-rung Sobolev slab theorem)

Prove

```math
\mathcal B_{N+2,\rho,\psi}^{top,sob,sh,slab,\Lambda}\in L^1(I).
\tag{FTOC.E0}
```

Then `(FTOC.D2)` gives `FTOC.D0`, hence `FTOC.C0`, `FTSR.C0`, `FTR.C0`,
`FCL.C0`, and the sharp direct pair `(FPC.H,FVR.F)`.

So the shifted-center top-tail slab theorem `FTOC.D` is not the sharpest local
wall either. The sharper single-object local wall is the shifted-center
top-rung Sobolev slab theorem `(FTOC.E0)`.

## One-Rung-Lower Shifted-Slab Sobolev Reduction

Define the one-rung-lower shifted-slab Sobolev packet

```math
\mathfrak S_{N+1,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t)
:=
\sup_{|z|\le 4\Lambda}
\sup_{1\le j\le J}
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2.
\tag{FTOC.E1}
```

### Proposition `FTOC.Ea` (The one-rung-lower shifted-slab Sobolev packet implies the shifted-center top-rung Sobolev slab packet)

For every `t\in I`,

```math
\mathcal B_{N+2,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t)
\le
C_N\,
\mathfrak S_{N+1,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t).
\tag{FTOC.E2}
```

### Proof

Fix `z` with `|z|\le 4\Lambda` and one transported center `c_j(t)`. On the
shifted ball `B(c_j(t)+z,\Lambda)`, the same fixed coordinate-projection
identities used in `(FTS.A3)` give

```math
\nabla^\beta U_{N+2}
=
\mathcal C_{\beta,N}\,\nabla^{\beta+1}U_{N+1},
\qquad
\beta=0,1,2.
\tag{FTOC.E3}
```

Therefore

```math
\sum_{\beta=0}^{2}
\left\|
\nabla^\beta U_{N+2}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2
\le
C_N
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2.
\tag{FTOC.E4}
```

Taking the supremum in `j` and `|z|\le 4\Lambda` yields `(FTOC.E2)`. ∎

### Target Theorem `FTOC.F` (One-rung-lower shifted-slab Sobolev theorem)

Prove

```math
\mathfrak S_{N+1,\rho,\psi}^{top,sob,sh,slab,\Lambda}\in L^1(I).
\tag{FTOC.F0}
```

Then `(FTOC.E2)` gives `FTOC.E0`, hence `FTOC.D0`, `FTOC.C0`, `FTSR.C0`,
`FTR.C0`, `FCL.C0`, and the sharp direct pair `(FPC.H,FVR.F)`.

So the shifted-center top-rung Sobolev slab theorem `FTOC.E` is not the
sharpest local wall either. The sharper shifted-slab wall is the one-rung-lower
Sobolev theorem `(FTOC.F0)`.

### Corollary `FTOC.Bf` (The route-native lower-order moving-collar packet already implies the one-rung-lower shifted-slab Sobolev theorem)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTOC.Bf0}
```

Then

```math
\mathfrak S_{N+1,\rho,\psi}^{top,sob,sh,slab,\Lambda}\in L^\infty(I)\subset L^1(I).
\tag{FTOC.Bf1}
```

### Proof

Fix `|z|\le 4\Lambda` and one transported center `c_j(t)`. Then

```math
B(c_j(t)+z,\Lambda)\subset B(c_j(t),5\Lambda)
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
\tag{FTOC.Bf2}
```

by the same geometry used in `(FTOC.Bc2)`--`(FTOC.Bc3)`. Applying `(CSP.25g0c)`
with collar thickness `\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}`
gives

```math
\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t)+z,\Lambda).
\tag{FTOC.Bf3}
```

Therefore the `q=N+2,N+3,N+4` zero-derivative slots in
`\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}`
already measures the zero-derivative shifted top family `U_{N+2},U_{N+3},U_{N+4}`.
For `\beta=1,2,3`, the same fixed coordinate-projection identities used in
`(FTL.A1)` give on `B(c_j(t)+z,\Lambda)`:

```math
\nabla^\beta U_{N+1}
=
\mathcal C_{\beta,N}\,U_{N+1+\beta}.
\tag{FTOC.Bf4}
```

Hence

```math
\sum_{\beta=1}^{3}
\left\|
\nabla^\beta U_{N+1}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2
\le
C_N
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2.
\tag{FTOC.Bf5}
```

Because the cutoff is identically `1` on the shifted ball, the `\alpha=0`
slots with `q=N+2,N+3,N+4` in
`\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}`
give

```math
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z,\Lambda))}^2
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.Bf6}
```

Taking the supremum in `j` and `|z|\le 4\Lambda` yields

```math
\mathfrak S_{N+1,\rho,\psi}^{top,sob,sh,slab,\Lambda}(t)
\le
C_N\,
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.Bf7}
```

Now `(FTOC.Bf0)` gives `(FTOC.Bf1)`. ∎

### Consequence `FTOC.G` (The shifted-slab branch returns to the receiver-side collar burden, but still feeds the common floor only through the branch-local walls)

Because `(FTOC.Bf0)` is exactly the route-native lower-order moving-collar
packet theorem `CSP.B3a1` at thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`,
the shifted-slab chain no longer creates an independent theorem burden once
that receiver-side collar packet is available. Concretely,

```math
(FTOC.Bf0)
\Longrightarrow
FTOC.F0
\Longrightarrow
FTOC.E0
\Longrightarrow
FTOC.D0
\Longrightarrow
FTOC.C0
\Longrightarrow
FTSR.C0.
\tag{FTOC.G0}
```

Then the already-installed branch-local top wall `(FTL.C0)` combines with
`(FTSR.C0)` through `(FTSR.A0)` to give `FTR.C0`, while the already-isolated
pressure wall `(FPL.C0)` combines with `FTR.C0` through `(FTR.A2)` to give
`FCL.C0`.

So on the installed no-jump route, the honest live burden is no longer the
local shifted-slab wall `FTOC.F` itself. It has returned to the receiver-side
collar packet theorem `CSP.B3a1`, but the common fixed-radius local floor still
also spends the separate branch-local top wall `FTL.C` and the pressure wall
`FPL.C`. Globally, this whole receiver-side return only feeds `CSP.A` after
that collar theorem is paired with the separate source-side burden `(FCI.5f)`.

## Relation To The Adjacent Wider-Collar Route

### Corollary `FTOC.Bc` (The route-native lower-order moving-collar packet already implies the finite offset cover packet)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTOC.Bc0}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}\in L^\infty(I)\subset L^1(I).
\tag{FTOC.Bc1}
```

### Proof

For each `\ell` and each `j`,

```math
|z^{(\ell)}|\le 4\Lambda
\Longrightarrow
B(c_j(t)+z^{(\ell)},\Lambda)\subset B(c_j(t),5\Lambda).
\tag{FTOC.Bc2}
```

By the same geometry used in `(FTR.B2)` and `(FTSR.B2)`,

```math
B(c_j(t),5\Lambda)\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.Bc3}
```

Apply `(CSP.25g0c)` with collar thickness
`\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}`. Then

```math
\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t)+z^{(\ell)},\Lambda).
\tag{FTOC.Bc4}
```

Therefore

```math
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t)+z^{(\ell)},\Lambda))}^2
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.Bc5}
```

Summing over the finite offset family gives

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}(t)
\le
M_{sh}\,
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.Bc6}
```

Now `(FTOC.Bc0)` gives `(FTOC.Bc1)`. ∎

This is sharper than the whole-collar comparison `(FTOC.B1)`: it uses the
route-native lower-order moving-collar packet that underlies `CSP.B3a1`, rather
than the coarser full widened-thickness collar packet.

### Corollary `FTOC.B` (The common widened-thickness collar packet implies the finite offset cover packet)

Assume `m\ge 0` and

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTOC.B0}
```

Then

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}\in L^\infty(I)\subset L^1(I).
\tag{FTOC.B1}
```

### Proof

For each `\ell` and each `j`,

```math
|z^{(\ell)}|\le 4\Lambda
\Longrightarrow
B(c_j(t)+z^{(\ell)},\Lambda)\subset B(c_j(t),5\Lambda).
\tag{FTOC.B2}
```

The outer ball `B(c_j(t),5\Lambda)` already lies inside the widened collar
`\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)` by the same
geometry used in `(FTR.B2)` and `(FTSR.B2)`. So every local integral in
`(FTOC.6)` is bounded by one of the `\beta=0` summands already measured by
`\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`. Since
the offset family is finite,

```math
\mathcal B_{N+4,\rho,\psi}^{top,sh,cover,\Lambda}(t)
\le
C_{m,N,\lambda,\mathcal Z^{sh}_{\Lambda}}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTOC.B3}
```

Now `(FTOC.B0)` gives `(FTOC.B1)`. ∎

This is only a comparison fact. It explains why the widened-thickness collar
route suffices for the finite-offset packet, but it does not make that wider
route the sharp theorem-facing object.

## Boundary

This note does **not** prove `FTOC.F`, `FTOC.E`, `FTOC.D`, `FTOC.C`, `FTSR.C`,
`FTR.C`, or `FCL.C`.

The sharpest adjacent nonlocal supplier currently visible is the direct
route-native moving-collar implication `(FTOC.Bf0)`, coming from `CSP.B3a1` at
thickness `\delta+5\Lambda_{\delta,\rho}^{halo}`. So the shifted-slab branch
has now returned to the installed receiver-side collar burden `CSP.B3a1`
rather than leaving `FTOC.F` as an independent live wall. But that return does
not erase the separate branch-local top wall `FTL.C`: `FTOC.G0` gives
`FTSR.C0`, and `(FTSR.A0)` still needs `(FTL.C0)` to recover `FTR.C0`. The
finite-cover predecessor still also has the weaker route-native corollary
`(FTOC.Bc0)`, while the whole-collar comparison `(FTOC.B0)` is only the
coarser fallback.

It only isolates the exact shifted-center local packet chain beneath the
annular shell:

```math
\boxed{
\text{once the annular shell }FTSR.C\text{ is rewritten by a fixed finite cover,}
\newline
\text{the finite family itself collapses first to one shifted-center top-tail slab packet on }|z|\le 4\Lambda,}
\newline
\text{then more sharply to one shifted-center top-rung Sobolev slab packet for }U_{N+2}\text{ on the same slab,}
\newline
\text{and then to the one-rung-lower shifted-slab Sobolev packet for }U_{N+1}\text{ on that same slab,}
\newline
\text{with }(FTOC.Bf0)\text{ the sharper route-native moving-collar supplier for that extra shifted-slab residue,}
\newline
\text{and with that supplier returning the residue only to }FTSR.C0,\text{ so the common floor still also spends }FTL.C\text{ and }FPL.C,}
\newline
\text{with }(FTOC.Bc0)\text{ only the weaker predecessor-side route-native corollary, and with }(FTOC.B0)\text{ only the coarser widened-thickness collar fallback.}
}
\tag{FTOC.9}
```
