# MPP LCI.A Pressure-Tail Energy Supplier Note

## Status

Candidate theorem-facing note.

Role: isolate the exact conditional reduction of the first-rung far-field
pressure-tail ledger to the ordinary velocity energy ledger.

## Installed Inputs

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-affine-defect-supplier-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-supplier-reduction-note.md)
3. [carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md)

## Purpose

```math
\boxed{
\text{once the ordinary }L^2\text{ velocity ledger is available on }I,\text{ the far-field pressure-tail supplier is no longer live.}
}
\tag{PTE.0}
```

## Energy Ledger

Define the interval energy ledger

```math
\mathfrak E_I^{vel}
:=
\sup_{t\in I}\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2.
\tag{PTE.1}
```

### Reduction `PTE.1a` (The ordinary energy ledger is already classical on the realized carrier)

[carrier-realization-classical-identification.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/carrier-realization-classical-identification.md)
records in Proposition `R6` that a Leray--Hopf solution on the realized
carrier satisfies the classical energy inequality, and in the regular class
this becomes the classical energy identity.

So on any still-live interval where that classical energy surface is imported,
`\mathfrak E_I^{vel}<\infty` is already a lawful route-native datum.

## Main Reduction

### Proposition `PTE.A` (The first-rung pressure-tail supplier is downstream of the energy ledger)

Assume

```math
\mathfrak E_I^{vel}<\infty.
\tag{PTE.A0}
```

Then the far-field pressure-tail ledger from `(LCI.3c3z19ai)` satisfies

```math
\mathfrak T_{1,\rho,\psi}^{press,far}\in L^\infty(I)\subset L^1(I).
\tag{PTE.A1}
```

### Proof

Candidate Reduction `LCI.B2g5e` already proves the pointwise bound

```math
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\le
C_{\rho,\psi,\delta,I}\,
\|u(\cdot,t)\|_{L^2(\mathbf R^3)}^2.
\tag{PTE.A2}
```

This is exactly `(LCI.3c3z19ak)`. Taking the supremum over `t\in I` gives

```math
\sup_{t\in I}\mathfrak T_{1,\rho,\psi}^{press,far}(t)
\le
C_{\rho,\psi,\delta,I}\,
\mathfrak E_I^{vel}
<
\infty.
\tag{PTE.A3}
```

Hence `(PTE.A1)` holds. ∎

## Downstream Export

### Corollary `PTE.B` (Conditional collapse of the affine-defect supplier split)

Assume:

1. the enlarged-ball oscillation theorem `EOC.A`;
2. finite seed center data at `t_0\in I`;
3. the rung-0 center forcing
   `\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)`;
4. the ordinary energy ledger `(PTE.A0)`;
5. the first-rung viscous center ledger
   `\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I)`.

Then

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{PTE.B0}
```

If one also assumes the bounded pack-side gauge `(LCI.3c3y0)`, then

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{PTE.B1}
```

### Proof

By Proposition `PTE.A`, the far-tail supplier in `AFS.A` is already in
`L^1(I)`. So the residual supplier pair `\mathfrak F_{1,\rho,\psi}^{aff,sup}`
from `(AFS.4)` reduces to the single remaining explicit assumption
`\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I)`. Proposition `AFS.A` then
gives `(PTE.B0)`, and Proposition `AFB.A` upgrades that to `(PTE.B1)` once the
bounded pack-side gauge is also imported. ∎

## Boundary

This note does **not** prove the ordinary energy ledger on every route surface.

Its narrower statement is conditional and exact:

```math
\text{if the classical }L^2\text{ energy ledger is available on }I,\text{ then the first-rung far-tail supplier is already downstream.}
\tag{PTE.2}
```

So, under that imported energy ledger, the only live lower-order supplier left
beneath `AFS.A` is

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{PTE.3}
```

The dedicated theorem-facing surface for that remaining same-fluid supplier is
now
[mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md).
