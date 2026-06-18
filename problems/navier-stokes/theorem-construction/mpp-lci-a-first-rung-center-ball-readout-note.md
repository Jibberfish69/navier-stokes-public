# MPP LCI.A First-Rung Center-Ball Readout Note

## Status

Candidate theorem-facing note.

Role: isolate the exact surviving direct center-ball readout branch beneath
`VCS.A` after the energy-conditioned halo-shell branch is pushed to its
route-native terminal return.

## Installed Inputs

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md)
3. [mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)

## Purpose

The current `VCS` note already records two discharge shapes beneath the
first-rung viscous-center wall:

1. the stronger lower-order halo-shell packet `HSP.A0a`;
2. a separate transported-center-ball readout controlling
   `\Delta U_1(c_j(t),t)`.

The companion halo-shell return note now shows that the first discharge shape
is terminally route-native:

```math
HSP.A0a
\Longrightarrow
AFS.C
\Longrightarrow
AFB.A
\Longrightarrow
RCF.1b
\Longrightarrow
FEI.C7
\Longrightarrow
\text{returned }LCI.A\text{ reads.}
\tag{VCR.0}
```

So the exact remaining genuinely different candidate discharge still visible on
disk beneath `VCS.A` is the second one:

```math
\boxed{
\text{a direct transported-center-ball readout for }
\Delta U_1(c_j(t),t).
}
\tag{VCR.1}
```

## Exact Direct Readout Object

Retain the transported-center ball radius `2R_\delta` from the lower-carrier
local pressure / Holder package. Define the direct first-rung center-ball
readout ledger

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}(t)
:=
\nu\sum_{j=1}^{J}
\sup_{x\in B(c_j(t),2R_\delta)}
\big|\Delta U_1(x,t)\big|.
\tag{VCR.2}
```

This is the exact non-halo local object. Its center evaluation discharges the
remaining viscous-center ledger through the displayed supremum bound.

### Proposition `VCR.A` (Direct center-ball Laplacian readout is sufficient for the first-rung viscous-center wall)

Assume

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}\in L^1(I).
\tag{VCR.A0}
```

Then

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{VCR.A1}
```

### Proof

For each transported center `c_j(t)`, the point `c_j(t)` lies inside
`B(c_j(t),2R_\delta)`. Therefore

```math
\big|\Delta U_1(c_j(t),t)\big|
\le
\sup_{x\in B(c_j(t),2R_\delta)}
\big|\Delta U_1(x,t)\big|.
\tag{VCR.A2}
```

Summing over `j` and multiplying by `\nu` gives

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\le
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}(t).
\tag{VCR.A3}
```

So `(VCR.A0)` implies `(VCR.A1)`. ∎

The companion reduction note
[mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-laplacian-ball-to-oscillation-packet-note.md)
now sharpens this exact branch further: when `m\ge 3`, the direct
Laplacian-ball readout `(VCR.A0)` is already downstream of the old widened-shell
oscillation packet `\mathcal G_{N,m,\rho,\psi}^{osc,\delta}`. So `(VCR.A0)`
itself no longer defines a genuinely new external supplier family.

## One-Rung-Higher Sufficient Readout

With the rung convention `U_{q+\alpha}=\nabla^\alpha U_q`, the Laplacian is the
fixed coordinate trace of the two extra derivative slots:
`\Delta U_1=\operatorname{tr}_{2}U_3`. Thus the direct Laplacian readout above
is itself downstream of a one-rung-higher center-ball readout. Define

```math
\mathfrak R_{3,\rho,\psi}^{ctr,ball}(t)
:=
\sum_{j=1}^{J}
\sup_{x\in B(c_j(t),2R_\delta)}
\big|U_3(x,t)\big|.
\tag{VCR.3}
```

### Corollary `VCR.B` (A direct transported-center-ball `U_3` readout also discharges the first-rung viscous-center wall)

Assume

```math
\mathfrak R_{3,\rho,\psi}^{ctr,ball}\in L^1(I).
\tag{VCR.B0}
```

Then

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I).
\tag{VCR.B1}
```

### Proof

The fixed trace map `\operatorname{tr}_{2}` has finite operator norm, so there
is a constant `C` depending only on dimension and tensor convention such that

```math
\big|\Delta U_1(x,t)\big|
\le
C\,|U_3(x,t)|
\qquad
\text{for every }x.
\tag{VCR.B2}
```

Taking the supremum over `B(c_j(t),2R_\delta)`, summing over `j`, and
multiplying by `\nu` shows

```math
\mathfrak R_{1,\rho,\psi}^{\Delta,ctr,ball}(t)
\le
C\nu\,\mathfrak R_{3,\rho,\psi}^{ctr,ball}(t).
\tag{VCR.B3}
```

So `(VCR.B0)` implies `(VCR.A0)`, and Proposition `VCR.A` yields `(VCR.B1)`. ∎

The companion reduction note
[mpp-lci-a-first-rung-u3-center-ball-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-u3-center-ball-reduction-note.md)
now sharpens this stronger sufficient branch further: `(VCR.B0)` is already
downstream of the old center rung `\mathfrak A_{3,\rho,\psi}^{ctr}` together
with the fixed-ball oscillation ledger
`\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}`. So `(VCR.B0)` no longer defines a
genuinely distinct external branch.

## Route Position

After the halo-shell return note, the exact live split beneath `VCS.A` is now:

1. the energy-conditioned halo-shell branch, already terminally route-native by
   `HFR.C1`;
2. the direct transported-center-ball readout branch isolated here.

So the exact surviving genuinely different candidate discharge still on disk
beneath `VCS.A` is no longer `HSP.A0a`. The stronger one-rung-higher sufficient
readout `(VCR.B0)` is already route-internal by the companion `U_3` reduction
note, and the exact Laplacian-ball readout `(VCR.A0)` is already downstream of
the old widened-shell oscillation packet by the companion Laplacian-ball
reduction note. So both visible center-ball readout variants are now
route-internal.

## Boundary

This note does **not** prove `(VCR.A0)` or `(VCR.B0)`.

It proves only the sharp route statement:

1. once the halo-shell branch is pushed through its FEI return, it no longer
   supplies a genuinely different external path beneath `VCS.A`;
2. the direct transported-center-ball readout for `\Delta U_1(c_j(t),t)` is
   itself already downstream of the old widened-shell oscillation packet when
   `m\ge 3`;
3. the stronger one-rung-higher `U_3` readout on the same transported-center
   balls is only a sufficient realization, and is already downstream of the
   old center-plus-oscillation package.
