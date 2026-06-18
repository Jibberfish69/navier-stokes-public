# MPP LCI.A First-Rung Laplacian-Ball To Oscillation-Packet Note

## Status

Candidate theorem-facing reduction note.

Role: isolate the exact reduction of the direct Laplacian-ball readout branch
`VCR.A0` to the old widened-shell oscillation packet on the transported-center
balls.

## Installed Inputs

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-first-rung-center-ball-readout-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-center-ball-readout-note.md)
3. [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md)

## Purpose

After the `U_3` center-ball reduction, the direct readout note leaves one exact
surviving distinct alternative beneath `VCS.A`:

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}\in L^1(I).
\tag{LBR.0}
```

The question here is whether even that exact Laplacian-ball branch is really a
new external supplier family, or whether it already reads from the old
widened-shell oscillation packet:

```math
\boxed{
\text{is }(LBR.0)\text{ already downstream of }
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)<\infty\text{ ?}
}
\tag{LBR.1}
```

## Main Reduction

Retain the exact Laplacian-ball readout from `(VCR.2)`:

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}(t)
:=
\nu\sum_{j=1}^{J}
\sup_{x\in B(c_j(t),2R_\delta)}
\big|\Delta U_1(x,t)\big|.
\tag{LBR.2}
```

### Proposition `LBR.A` (The exact Laplacian-ball readout is downstream of the old widened-shell oscillation packet)

Assume:

1. `m\ge 3`;
2. the widened-shell oscillation packet is propagated:

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)<\infty.
\tag{LBR.A0}
```

Then

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}\in L^\infty(I)\subset L^1(I).
\tag{LBR.A1}
```

### Proof

Fix `t\in I` and one transported center `c_j(t)`. Because `m\ge 3`, the rung
`U_3` lies inside the packet `(LCI.3c3z5i)`. By `(LCI.3c3z5h)`, the whole ball
`B(c_j(t),2R_\delta)` lies inside the oscillation plateau, so `(LCI.3c3z5o)`
gives

```math
\|\nabla^\beta U_3(\cdot,t)\|_{L^2(B(c_j(t),2R_\delta))}
\le
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}
\qquad
(0\le \beta\le 2).
\tag{LBR.A2}
```

Because the radius `2R_\delta` is fixed, local Sobolev on the same ball yields

```math
\sup_{x\in B(c_j(t),2R_\delta)}
|U_3(x,t)|
\le
C_{\rho,\psi,\delta,I}
\sum_{\beta=0}^{2}
\|\nabla^\beta U_3(\cdot,t)\|_{L^2(B(c_j(t),2R_\delta))}.
\tag{LBR.A3}
```

Insert `(LBR.A2)` into `(LBR.A3)` to obtain

```math
\sup_{x\in B(c_j(t),2R_\delta)}
|U_3(x,t)|
\le
C_{\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}.
\tag{LBR.A4}
```

Now `\Delta U_1=\operatorname{tr}_{2}U_3` by the fixed coordinate trace over
the two derivative slots added to `U_1`, so

```math
\sup_{x\in B(c_j(t),2R_\delta)}
\big|\Delta U_1(x,t)\big|
\le
C\,
\sup_{x\in B(c_j(t),2R_\delta)}
|U_3(x,t)|.
\tag{LBR.A5}
```

Summing `(LBR.A5)` over `j=1,\dots,J`, multiplying by `\nu`, and using
`(LBR.A4)` gives

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}(t)
\le
C_{\rho,\psi,\delta,I}\,\nu\,
\mathcal G_{N,m,\rho,\psi}^{osc,\delta}(t)^{1/2}.
\tag{LBR.A6}
```

The uniform packet bound `(LBR.A0)` therefore yields `(LBR.A1)`. ∎

## Route Position

The widened-shell oscillation packet is already an old route-native object on
the oscillation side. The enlarged-ball oscillation note records that this
packet introduces no new nonlinear supplier family below it.

Therefore `LBR.A` has the exact route consequence:

```math
\boxed{
\text{the direct Laplacian-ball readout branch }(VCR.A0)\text{ is already route-internal.}
}
\tag{LBR.3}
```

Together with the companion `U_3` reduction note, both visible center-ball
readout variants beneath `VCS.A` now return to old route-native oscillation
objects.

## Boundary

This note does **not** prove the widened-shell oscillation packet `(LBR.A0)`.

It proves only the sharp reduction:

1. the exact Laplacian-ball readout `VCR.A0` is downstream of the old
   widened-shell oscillation packet when `m\ge 3`;
2. so the direct center-ball readout branch does not define a genuinely new
   external supplier family beneath `VCS.A`.
