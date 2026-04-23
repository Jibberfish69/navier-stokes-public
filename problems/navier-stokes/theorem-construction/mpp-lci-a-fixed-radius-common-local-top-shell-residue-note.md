# MPP LCI.A Fixed-Radius Common Local Top Shell Residue Note

## Status

Candidate theorem-facing companion note.

Role: isolate the exact annular top-tail shell that remains once the
branch-local top wall `FTL.C` is separated off from the enlarged-radius
top-tail residue theorem `FTR.C`.

This note does **not** replace the sharp direct pair `(FPC.H,FVR.F)`, the
common local packet theorem `FCL.C`, or the enlarged-radius top-tail residue
theorem `FTR.C`. Its narrower job is:

```math
\boxed{
\text{show that the only extra still-local burden inside }FTR.C\text{ beyond the branch-local top wall }FTL.C
\newline
\text{is the annular top-tail packet on }\Lambda<|x-c_j(t)|<5\Lambda.
}
\tag{FTSR.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-radius-common-local-top-residue-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-residue-note.md)
2. [mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-top-rung-l2-supplier-note.md)
3. [mpp-collar-sobolev-packet-interval-propagation-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-collar-sobolev-packet-interval-propagation-theorem-program.md)

## Setup

Retain

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\qquad
R_{\rho,\delta}^{press}:=5\Lambda.
\tag{FTSR.1}
```

The branch-local top packet from `(FTL.3)` is

```math
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
:=
\sup_{1\le j\le J}
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2.
\tag{FTSR.2}
```

The enlarged-radius top-tail residue from `(FTR.4)` is

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2.
\tag{FTSR.3}
```

Define the annular top-tail shell residue

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
:=
\sup_{1\le j\le J}
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda))}^2.
\tag{FTSR.4}
```

This packet stays on the same transported-center net and keeps only the true
top-tail fields `U_{N+3},U_{N+4}`. It isolates the annular difference between
the `5\Lambda` balls in `FTR.C` and the inner `\Lambda` balls already covered
by the stronger branch-local top wall `FTL.C`.

## Exact Split Of The Enlarged-Radius Top Residue

### Proposition `FTSR.A` (The enlarged-radius top-tail residue is reduced by the branch-local top wall plus the annular shell)

For every `t\in I`,

```math
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\Lambda}^{top,L2,ctr}(t)
+
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t).
\tag{FTSR.A0}
```

Also,

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t).
\tag{FTSR.A1}
```

### Proof

For the upper bound, fix `j`. The balls satisfy the disjoint decomposition

```math
B(c_j(t),R_{\rho,\delta}^{press})
=
B(c_j(t),\Lambda)\,\cup\,
\Big(B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda)\Big).
\tag{FTSR.A3}
```

Therefore

```math
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press}))}^2
\le
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),\Lambda))}^2
+
\sum_{r=3}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda))}^2.
\tag{FTSR.A2}
```

Taking the supremum in `j` gives `(FTSR.A0)`. The same restriction argument
also gives

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
\le
\mathcal B_{N+4,\rho,\psi}^{top,5\Lambda,L2}(t).
\tag{FTSR.A4}
```

This is exactly `(FTSR.A1)`. ∎

### Target Theorem `FTSR.C` (Annular top-tail shell residue theorem)

Prove

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}\in L^1(I).
\tag{FTSR.C0}
```

Then, together with the already-installed branch-local top wall `(FTL.C0)`,
inequality `(FTSR.A0)` yields `FTR.C0`. Combining that with the already
isolated pressure wall `(FPL.C0)` and `(FTR.A2)` yields `FCL.C0`, hence the
sharp direct pair `(FPC.H,FVR.F)`.

This does **not** replace `FTR.C` as the exact larger-radius top-tail
residue theorem. It only says that, relative to the branch-local top wall, the
remaining extra burden is exactly the annular shell packet `(FTSR.4)`.

## Relation To The Adjacent Wider-Collar Route

### Corollary `FTSR.Bc` (The route-native lower-order moving-collar packet already implies the annular shell residue)

Assume

```math
\sup_{t\in I}
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTSR.Bc0}
```

Then

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FTSR.Bc1}
```

### Proof

By the same geometry used in `(FTR.B2)` and `(FTSR.B2)`, for each `j` one has

```math
B(c_j(t),R_{\rho,\delta}^{press})
=
B(c_j(t),5\Lambda)
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTSR.Bc2}
```

Apply `(CSP.25g0c)` with collar thickness
`\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo}`. Then the corresponding
geometric cutoff satisfies

```math
\vartheta_{\rho,\psi,t}^{\delta+5\Lambda_{\delta,\rho}^{halo}}\equiv 1
\quad\text{on }B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda).
\tag{FTSR.Bc3}
```

Therefore

```math
\sum_{r=2}^{4}
\left\|
U_{N+r}(\cdot,t)
\right\|_{L^2(B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda))}^2
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t),
\tag{FTSR.Bc4}
```

because the right-hand side already contains the `\alpha=0`,
`q=N+2,N+3,N+4` contributions with the cutoff equal to `1` on the shell.
Taking the supremum in `j` gives

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
\le
\mathcal G_{N+4,N+4,\rho,\psi}^{low,\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTSR.Bc5}
```

Now `(FTSR.Bc0)` gives `(FTSR.Bc1)`. ∎

This is sharper than the whole-collar comparison `(FTSR.B1)`: it uses the
route-native lower-order moving-collar packet that underlies `CSP.B3a1`, rather
than the coarser full widened-thickness collar packet.

### Corollary `FTSR.B` (The common widened-thickness collar packet implies the annular shell residue)

Assume `m\ge 0` and

```math
\sup_{t\in I}
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
<
\infty.
\tag{FTSR.B0}
```

Then

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}\in L^\infty(I)\subset L^1(I).
\tag{FTSR.B1}
```

### Proof

For each `j`, the annular shell

```math
B(c_j(t),R_{\rho,\delta}^{press})\setminus B(c_j(t),\Lambda)
\subset
\mathcal C_{\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)
\tag{FTSR.B2}
```

because the whole outer ball `B(c_j(t),R_{\rho,\delta}^{press})=B(c_j(t),5\Lambda)`
already lies inside that widened collar by the same geometry used in
`(FTR.B2)`. Every local integral in `(FTSR.4)` is therefore bounded by one of
the `\beta=0` summands already measured by
`\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t)`, so

```math
\mathcal A_{N+4,\rho,\psi}^{top,\Lambda:5\Lambda,L2}(t)
\le
C_{m,N,\lambda}\,
\mathcal K_{N+4,m,\rho,\psi}^{\delta+5\Lambda_{\delta,\rho}^{halo}}(t).
\tag{FTSR.B3}
```

Now `(FTSR.B0)` gives `(FTSR.B1)`. ∎

This is only a comparison fact. It explains why the common widened-thickness
collar route suffices for the exact annular shell residue, but it does not make
that wider route the sharp theorem-facing object.

### Remark `FTSR.Ba` (The widened-thickness sufficient form is again just `CSP.A` at larger depth)

The collar-Sobolev theorem `CSP.A` fixes an arbitrary thickness `\delta_\ast>0`
and depth parameter. Setting

```math
\delta_\ast:=\delta+5\Lambda_{\delta,\rho}^{halo},
\qquad
N_\ast:=N+3,
\tag{FTSR.Ba0}
```

turns the generic collar target into exactly the widened packet hypothesis
`(FTSR.B0)`.

## Boundary

This note does **not** prove `FTSR.C`, `FTR.C`, or `FCL.C`.

On the present on-disk route, the companion note
[mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-radius-common-local-top-shell-offset-cover-note.md)
now installs a deeper direct local supplier stack beneath `(FTSR.C0)`: first
the finite shifted-center cover theorem `FTOC.C`, then more sharply the
shifted-center slab theorem `FTOC.D`, the shifted-center top-rung Sobolev slab
theorem `FTOC.E`, and the one-rung-lower shifted-slab Sobolev theorem
`FTOC.F`. The sharpest adjacent nonlocal supplier currently visible in that
companion stack is the route-native moving-collar packet implication
`(FTOC.Bf0)`, coming from `CSP.B3a1` at thickness
`\delta+5\Lambda_{\delta,\rho}^{halo}`; `(FTOC.Bc0)` is only the weaker
predecessor-side corollary there, and `(FTOC.B0)` is only the coarser
widened-thickness collar fallback.

It only isolates the exact still-local shell burden inside the enlarged-radius
top-tail residue:

```math
\boxed{
\text{once the branch-local top wall }FTL.C\text{ is separated off,}
\newline
\text{the remaining difference between the enlarged-radius residue }FTR.C\text{ and that top branch is}
\newline
\text{the annular top-tail packet }U_{N+3},U_{N+4}\text{ on }\Lambda<|x-c_j(t)|<5\Lambda,}
\newline
\text{with }(FTSR.Bc0)\text{ the sharper route-native moving-collar packet supplier and }(FTSR.Ba0)\text{ only the coarser widened-thickness }CSP.A\text{ instance.}
}
\tag{FTSR.9}
```
