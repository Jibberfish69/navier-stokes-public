# MPP LCI.A Affine-Defect Supplier Reduction Note

## Status

Candidate theorem-facing note.

Role: sharpen the compressed first-rung defect target `AFD.A` to the exact
lower-order supplier split actually spent by `LCI.B2g5m`.

## Installed Inputs

1. [mpp-lci-a-affine-frame-defect-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-frame-defect-note.md)
2. [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md)
3. [mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md)
4. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
5. [mpp-lci-a-pressure-tail-energy-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pressure-tail-energy-supplier-note.md)
6. [mpp-lci-a-viscous-center-halo-shell-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-viscous-center-halo-shell-reduction-note.md)

## Purpose

```math
\boxed{
\text{separate the honest remaining suppliers for the affine-defect ledger from the already-downstream oscillation and center-value pieces.}
}
\tag{AFS.0}
```

## Downstream Pieces Already Available

### Reduction `AFS.1` (The oscillation side is exactly `EOC.A`)

The enlarged-ball oscillation theorem `EOC.A` is the theorem-facing supplier for

```math
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}\in L^2(I).
\tag{AFS.1}
```

On the current installed route, Corollary `EOC.Ca` further sharpens the honest
route-native wall beneath that shorthand: once the widened receiver-side return
`(EOC.27)` is granted, the oscillation supplier is already downstream of
`CSP.A` instantiated at thickness `\delta+\delta_{seg}` rather than remaining
a standalone packet/reference theorem.

So the oscillation term in `(LCI.3c3z19az11)` is not an additional hidden
first-rung burden.

### Reduction `AFS.2` (The center-value term is reduced to the rung-0 carrier forcing)

Assume finite seed center data at `t_0\in I` and

```math
\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I).
\tag{AFS.2}
```

Then `(LCI.3c3z15)` gives

```math
\sup_{t\in I}\mathfrak A_{0,\rho,\psi}^{ctr}(t)<\infty,
\qquad
\mathfrak A_{0,\rho,\psi}^{ctr}\in L^2(I).
\tag{AFS.3}
```

So the center-value square in `(LCI.3c3z19az11)` is already downstream once
the rung-0 center forcing is supplied.

### Proof

Integrate `(LCI.3c3z15)` on the finite interval `I`. ∎

## Exact Residual Supplier Pair

Define the residual affine-defect supplier ledger

```math
\mathfrak F_{1,\rho,\psi}^{aff,sup}(t)
:=
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t).
\tag{AFS.4}
```

This is the exact part of `(LCI.3c3z19az11)` not already discharged by `EOC.A`
and the rung-0 center forcing.

## Main Reduction

### Proposition `AFS.A` (Affine-defect integrability reduces to the explicit far-tail/viscous pair)

Assume:

1. finite seed center data at `t_0\in I`;
2. the oscillation supplier `EOC.A`, so `(AFS.1)` holds;
3. the rung-0 center forcing `(AFS.2)`;
4. the residual supplier pair

```math
\mathfrak F_{1,\rho,\psi}^{aff,sup}\in L^1(I).
\tag{AFS.A0}
```

Then

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{AFS.A1}
```

### Proof

By `(AFS.1)` and `(AFS.3)`, the first three terms on the right-hand side of
`(LCI.3c3z19az11)` lie in `L^1(I)` on the finite interval `I`. The remaining
two terms are exactly `\mathfrak F_{1,\rho,\psi}^{aff,sup}` from `(AFS.4)`.
So `(LCI.3c3z19az11)` yields `(AFS.A1)`. ∎

## Downstream Export

### Corollary `AFS.B` (With bounded pack-side gauge, the first center rung is recovered)

Assume additionally the bounded pack-side gauge `(LCI.3c3y0)`. Then
Proposition `AFS.A` and Proposition `AFB.A` give

```math
\sup_{t\in I}\mathfrak A_{1,\rho,\psi}^{ctr}(t)<\infty.
\tag{AFS.B0}
```

So the exact first-rung route is:

```math
EOC.A
\;+\;
\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)
\;+\;
\mathfrak F_{1,\rho,\psi}^{aff,sup}\in L^1(I)
\;+\;
(LCI.3c3y0)
\Longrightarrow
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^\infty(I).
\tag{AFS.B1}
```

### Corollary `AFS.C` (Under ordinary energy and the stronger halo-shell packet, the affine-defect theorem is supplied directly when `m\ge 3`)

Assume:

1. `m\ge 3`;
2. finite seed center data at `t_0\in I`;
3. the oscillation supplier `EOC.A`, so `(AFS.1)` holds;
4. the rung-0 center forcing `(AFS.2)`;
5. the ordinary energy ledger

```math
\mathfrak E_I^{vel}<\infty;
\tag{AFS.C0}
```

6. the stronger lower-order halo-shell packet

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)<\infty.
\tag{AFS.C1}
```

Then

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{AFS.C2}
```

### Proof

Proposition `PTE.A` places the far-tail pressure ledger in `L^1(I)`, and
Proposition `VHR.A` places the first-rung viscous-center ledger in
`L^\infty(I)\subset L^1(I)` under `(AFS.C1)` because `m\ge 3`. So the residual
supplier pair `(AFS.A0)` holds. Proposition `AFS.A` then yields `(AFS.C2)`. ∎

## Boundary

This note does **not** prove the residual supplier pair `(AFS.A0)`.

On the current route, those two terms remain separate:

1. the far-field pressure-tail ledger
   `\mathfrak T_{1,\rho,\psi}^{press,far}` is the explicit harmonic-tail
   remainder from `LCI.B2g5e`, conditionally downstream of the ordinary energy
   ledger when that ledger is available;
2. the first-rung viscous center ledger
   `\mathfrak K_{1,\rho,\psi}^{visc,ctr}` remains an explicit same-fluid
   supplier on this first-rung coefficient surface.

So the honest remaining first-rung supplier theorem is no longer the opaque
package phrase “prove `AFD.A`.” It is the explicit pair
`\mathfrak T_{1,\rho,\psi}^{press,far}` and
`\mathfrak K_{1,\rho,\psi}^{visc,ctr}` beneath `(AFS.4)`.

The exact conditional collapse of the far-tail half to the ordinary energy
ledger is now isolated in
[mpp-lci-a-pressure-tail-energy-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-pressure-tail-energy-supplier-note.md).
So, whenever that classical energy ledger is imported on `I`, the only live
lower-order supplier left beneath `AFS.A` is the first-rung viscous center
ledger `\mathfrak K_{1,\rho,\psi}^{visc,ctr}`, now isolated theorem-facing in
[mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md).

When `m\ge 3`, Corollary `AFS.C` shows that the stronger lower-order halo-shell
packet `HSP.A0a`, together with the imported ordinary energy ledger and the
other already-listed `AFD.A` inputs, feeds `AFD.A` directly. So `VCS.A` remains
the exact single-supplier note on this branch, but the sharper next-form theorem
target under the energy-conditioned halo-shell route is `HSP.A0a`, not `VCS.A`
in isolation. And because `HSP.A0a` is the installed stronger form beneath
`HSP.A`, that branch does not stop there: its honest direct successor is
already the fixed-increment source law `FEI.C7`, with the sharper route-native
nonlocal return `(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now records the terminal continuation on disk: after those exact FEI return
instances are unpacked, the branch reopens only the returned lower-carrier
reads and feeds back into the old `LCI.A` program.
