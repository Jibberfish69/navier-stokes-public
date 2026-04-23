# MPP LCI.A Larger-Radius Shifted-Center Envelope Note

## Status

Candidate theorem-facing note.

Role: isolate the exact shifted-center FEI theorem that would upgrade the
installed radius-`\Lambda_{\delta,\rho}^{halo}` transported-center envelope to
the larger-radius oscillation-side envelope `(FPR.C10b)`.

This note does **not** replace the direct pressure frontier `FPC.H`. It does
**not** claim that the current FEI theorem already gives
`\mathfrak e_{N,5\Lambda}^{Eul,ctr}`. Its narrower job is:

```math
\boxed{
\text{show exactly what extra centerwise increment theorem would turn the installed }\Lambda\text{-radius FEI law into the larger-radius envelope needed by }FPR.C10b,
\newline
\text{and record why naive radius subdivision alone does not close that upgrade.}
}
\tag{LRE.0}
```

## Installed Inputs

1. [mpp-lci-a-fixed-increment-pressure-response-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-increment-pressure-response-note.md)
2. [mpp-lci-a-fixed-scale-eulerian-increment-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-fixed-scale-eulerian-increment-note.md)

## Setup

Retain the fixed halo scale

```math
\Lambda:=\Lambda_{\delta,\rho}^{halo},
\tag{LRE.1}
```

the installed transported-center FEI envelope from `(FEI.A0)`,

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le\Lambda}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2,
\tag{LRE.2}
```

and the larger-radius envelope from `(FPR.C8a)`,

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t)
:=
\sup_{1\le j\le J}
\sup_{|\eta|\le 5\Lambda}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2.
\tag{LRE.3}
```

Define the shifted-center unit-step envelope

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t)
:=
\sup_{1\le j\le J}
\sup_{|z|\le 4\Lambda}
\sup_{|\eta|\le\Lambda}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t)+z,t)\big|^2.
\tag{LRE.4}
```

This is the same `\Lambda`-increment family as `(LRE.2)`, but evaluated on the
entire offset slab `B(0,4\Lambda)` around each transported center.

## Main Reduction

### Proposition `LRE.A` (The larger-radius envelope is downstream of the shifted-center unit-step envelope)

For every `t\in I`,

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}(t)
\le
25\,\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t).
\tag{LRE.A0}
```

Consequently, if

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}\in L^1(I),
\tag{LRE.A1}
```

then

```math
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I).
\tag{LRE.A2}
```

So `(LRE.A1)` would discharge the larger-radius FEI obstruction `(FPR.C10b)`.

### Proof

Fix `j`, `t`, and `\eta` with `|\eta|\le 5\Lambda`. Set

```math
m:=\max\Big\{1,\Big\lceil \frac{|\eta|}{\Lambda}\Big\rceil\Big\},
\qquad
\nu:=\frac{\eta}{m}.
\tag{LRE.A3}
```

Then `1\le m\le 5` and `|\nu|\le\Lambda`. For `r=0,\dots,m-1`, define

```math
z_r:=r\nu.
\tag{LRE.A4}
```

Since `|z_r|\le (m-1)|\nu|\le 4\Lambda`, each shifted base point
`c_j(t)+z_r` lies inside the offset slab from `(LRE.4)`. Telescoping gives

```math
\delta_\eta U_q(c_j(t),t)
=
\sum_{r=0}^{m-1}
\delta_\nu U_q(c_j(t)+z_r,t).
\tag{LRE.A5}
```

Therefore

```math
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2
\le
m
\sum_{r=0}^{m-1}
\sum_{q=0}^{N}\lambda_q
\big|\delta_\nu U_q(c_j(t)+z_r,t)\big|^2
\tag{LRE.A6}
```

by Cauchy-Schwarz in the finite sum over `r`. Each inner term is bounded by
`\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t)`, so

```math
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(c_j(t),t)\big|^2
\le
m^2\,\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t)
\le
25\,\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t).
\tag{LRE.A7}
```

Taking the supremum in `j` and `|\eta|\le 5\Lambda` gives `(LRE.A0)`, and
integrating over `I` gives `(LRE.A2)`. ∎

## Direct Holder Supplier

Retain the fixed-ball Holder carrier from `(FPC.4)`:

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)
:=
\sup_{1\le j\le J}
\sum_{q=0}^{N}
\big[
U_q(\cdot,t)
\big]_{C^{0,\alpha}(B(c_j(t),5\Lambda))}.
\tag{LRE.B0}
```

### Proposition `LRE.B` (The direct Holder theorem implies the shifted-center unit-step envelope)

For every `t\in I`,

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}(t)
\le
C_{N,\lambda,\alpha,\rho,\psi,\delta,I}\,
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2.
\tag{LRE.B1}
```

### Proof

Fix `j`, `z`, and `\eta` with `|z|\le 4\Lambda` and `|\eta|\le\Lambda`, and set

```math
x:=c_j(t)+z.
\tag{LRE.B2}
```

Then

```math
|x-c_j(t)|\le 4\Lambda,
\qquad
|x+\eta-c_j(t)|\le 5\Lambda,
\tag{LRE.B3}
```

so both `x` and `x+\eta` lie inside `B(c_j(t),5\Lambda)`. Therefore

```math
\big|\delta_\eta U_q(x,t)\big|
\le
\big[U_q(\cdot,t)\big]_{C^{0,\alpha}(B(c_j(t),5\Lambda))}\,
|\eta|^\alpha
\le
\Lambda^\alpha
\big[U_q(\cdot,t)\big]_{C^{0,\alpha}(B(c_j(t),5\Lambda))}.
\tag{LRE.B4}
```

Hence

```math
\sum_{q=0}^{N}\lambda_q
\big|\delta_\eta U_q(x,t)\big|^2
\le
\Lambda^{2\alpha}
\sum_{q=0}^{N}\lambda_q
\big[U_q(\cdot,t)\big]_{C^{0,\alpha}(B(c_j(t),5\Lambda))}^2
\le
C_{N,\lambda,\alpha,\rho,\psi,\delta,I}\,
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}(t)^2.
\tag{LRE.B5}
```

Taking the supremum in `j`, `z`, and `\eta` gives `(LRE.B1)`. ∎

### Corollary `LRE.C` (The larger-radius FEI envelope is already downstream of the direct Holder theorem)

If

```math
\mathfrak H_{N,\rho,\psi}^{press,5\Lambda,\alpha}\in L^2(I),
\tag{LRE.C0}
```

then

```math
\mathfrak e_{N,\Lambda}^{Eul,ctr,sh,4\Lambda}\in L^1(I),
\qquad
\mathfrak e_{N,5\Lambda}^{Eul,ctr}\in L^1(I).
\tag{LRE.C1}
```

Consequently the absolute fixed-radius oscillation carrier is also downstream:

```math
\mathfrak O_{N,\rho,\psi}^{press,5\Lambda}\in L^2(I)\subset L^1(I).
\tag{LRE.C2}
```

### Proof

Integrating `(LRE.B1)` over `I` gives the first statement in `(LRE.C1)` because
`L^2(I)` squares into `L^1(I)` on the finite interval `I`. Then `(LRE.A2)`
gives the second statement in `(LRE.C1)`, and `(FPR.C9b)` gives `(LRE.C2)`. ∎

## Why The Installed FEI Theorem Does Not Yet Give This

### Obstruction `LRE.D` (Radius subdivision alone is not enough)

The installed FEI theorem `FEI.A` only gives the unshifted slice `(LRE.2)`.
That controls `\Lambda`-increments at the transported centers `c_j(t)` alone.

But the telescoping identity `(LRE.A5)` passes through the shifted base points

```math
c_j(t)+z_r,
\qquad
|z_r|\le 4\Lambda.
\tag{LRE.B0}
```

So the upgrade from `|\eta|\le\Lambda` to `|\eta|\le 5\Lambda` is **not** only a
radius-counting question. It also needs the shifted-center theorem `(LRE.A1)`.

Equivalently: subdividing the long increment creates a finite chain, but each
link in that chain is measured at a new base point. No theorem presently on
disk propagates the full offset slab `(LRE.4)` on the direct FEI route.

## Boundary

This note does **not** prove the direct Holder theorem `FPC.H`.

It proves the sharper route truth instead:

```math
\boxed{
\text{the FEI-local obstruction }FPR.C10\text{ is real if one insists on the unshifted }\Lambda\text{-radius theorem }FEI.A\text{ alone,}
\newline
\text{because radius subdivision creates a shifted-base chain }c_j(t)+z,\ |z|\le 4\Lambda\text{ that }FEI.A\text{ does not itself propagate,}
\newline
\text{but once the direct fixed-ball Holder theorem }FPC.H\text{ lands, Proposition }LRE.B\text{ supplies that shifted-center chain,}
\newline
\text{so }FPR.C10b\text{ and the oscillation half are already downstream of }FPC.H\text{ and are not independent pressure-side burdens.}
}
\tag{LRE.9}
```
