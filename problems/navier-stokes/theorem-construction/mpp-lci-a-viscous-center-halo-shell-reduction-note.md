# MPP LCI.A Viscous-Center Halo-Shell Reduction Note

## Status

Candidate theorem-facing reduction note.

Role: isolate one non-circular discharge of the energy-conditioned first-rung
viscous-center wall `VCS.A0` from the stronger lower-order halo-shell packet
`HSP.A0a`.

## Installed Inputs

1. [mpp-lci-a-halo-shell-propagation-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-propagation-note.md)
2. [mpp-lci-a-first-rung-viscous-center-supplier-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-first-rung-viscous-center-supplier-note.md)
3. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)

## Purpose

```math
\boxed{
\text{if the stronger lower-order halo-shell packet is already propagated, then the first-rung viscous center ledger is no longer an independent wall.}
}
\tag{VHR.0}
```

This note does **not** claim that `HSP.A0a` is already proved. Its narrower
job is to show that `HSP.A0a` supplies one honest non-circular discharge shape
for `VCS.A0`.

## Fixed Local Readout Radius

Retain the bounded pack-side gauge and the fixed halo radius

```math
R_{\rho}^{halo,\ast}:=M_\sharp\rho
\tag{VHR.1}
```

from `(HSP.1)`. Define the fixed local readout radius

```math
r_{\rho,\delta}^{halo}
:=
\frac{\delta+R_{\rho}^{halo,\ast}}{4}.
\tag{VHR.2}
```

Because each transported center `c_j(t)` lies in the packet set
`\mathfrak P_{\rho,\psi}(t)`, the fixed halo cutoff `\vartheta_{\rho,\psi,t}^{halo,\delta}`
from `(HSP.2)` equals `1` on

```math
B(c_j(t),2r_{\rho,\delta}^{halo})
\subset
\{\vartheta_{\rho,\psi,t}^{halo,\delta}=1\}.
\tag{VHR.3}
```

So the lower-order halo-shell packet may be read off on a fixed ball around
every transported center.

## Main Reduction

### Proposition `VHR.A` (The stronger halo-shell packet discharges the first-rung viscous center ledger when `m\ge 3`)

Assume:

1. `m\ge 3`;
2. the stronger lower-order halo-shell packet is propagated:

```math
\sup_{t\in I}\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)<\infty.
\tag{VHR.A0}
```

Then

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^\infty(I)\subset L^1(I).
\tag{VHR.A1}
```

### Proof

Fix `t\in I` and one transported center `c_j(t)`. Since `m\ge 3`, the
`q=3` summand is present in `(HSP.6c)`. By translation invariance of the local
Sobolev constant on the fixed ball `B(c_j(t),2r_{\rho,\delta}^{halo})`,

```math
|U_3(c_j(t),t)|
\le
C_{\rho,\delta,I}
\sum_{\alpha=0}^{2}
\|\nabla^\alpha U_3(\cdot,t)\|_{L^2(B(c_j(t),2r_{\rho,\delta}^{halo}))}.
\tag{VHR.A2}
```

Because `(VHR.3)` places that ball inside the halo-shell plateau, the right-hand
side is bounded by a constant multiple of
`\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)^{1/2}`. Hence

```math
|U_3(c_j(t),t)|
\le
C_{\rho,\psi,\delta,I}\,
\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)^{1/2}.
\tag{VHR.A3}
```

Now `\Delta U_1=\operatorname{tr}_{2}U_3` by the fixed coordinate trace over
the two derivative slots added to `U_1`, so

```math
\big|\Delta U_1(c_j(t),t)\big|
\le
C\,|U_3(c_j(t),t)|.
\tag{VHR.A4}
```

Summing `(VHR.A4)` over `j=1,\dots,J`, multiplying by `\nu`, and using
`(VHR.A3)` gives

```math
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\le
C_{\rho,\psi,\delta,I}\,\nu\,
\mathcal G_{N,m,\rho,\psi}^{halo,low,\delta}(t)^{1/2}.
\tag{VHR.A5}
```

The uniform packet bound `(VHR.A0)` therefore yields `(VHR.A1)`. ∎

## Downstream Export

Together with the pressure-tail energy reduction `PTE.A`, Proposition `VHR.A`
gives

```math
(PTE.A0)
\;+\;
(VHR.A0)
\Longrightarrow
VCS.A0.
\tag{VHR.4}
```

So, whenever the stronger halo-shell packet is propagated and the ordinary
energy ledger is imported, the lower-order first-rung supplier split beneath
`AFD.A` closes without needing a circular appeal to the already-downstream
higher center-rung induction.

With the remaining `AFD.A` inputs fixed, Corollary `AFS.C` now records the
direct export

```math
EOC.A
\;+\;
\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)
\;+\;
(PTE.A0)
\;+\;
(VHR.A0)
\Longrightarrow
AFD.A0
\qquad
(m\ge 3).
\tag{VHR.4a}
```

## Boundary

This note does **not** prove the stronger halo-shell packet `(VHR.A0)`.

Its narrower conclusion is only conditional:

```math
HSP.A0a
\Longrightarrow
\mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^\infty(I)
\qquad
(m\ge 3).
\tag{VHR.5}
```

So the viscous-center wall is still live on the present route exactly to the
extent that the stronger halo-shell packet remains open. But the branch does
not stop at that discharge label: because `HSP.A0a` is the installed stronger
form beneath `HSP.A`, the honest direct successor on the receiver branch is
already the fixed-increment source law `FEI.C7`, with the sharper route-native
nonlocal return `(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now makes the terminal consequence explicit: once that FEI continuation is
unpacked, this energy-conditioned branch reopens only returned `LCI.A` reads
and feeds back into the already-installed lower-carrier route.
