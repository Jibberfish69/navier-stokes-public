# MPP LCI.A Affine-Frame Defect Note

## Status

Candidate theorem-facing note.

Role: isolate the exact first-center-rung residual core beneath the
transported-center sufficient package after the affine-frame rewrite
`LCI.B2g5k`--`LCI.B2g5q`.

This note does **not** widen the lower-carrier route. It does **not** restore
bare scalar coercivity on `|U_1|`. It does **not** claim that the raw first
center-rung bound `(LCI.3c3z22)` has already been replaced everywhere on disk.
Its narrower job is:

```math
\boxed{
\text{freeze the affine-frame defect integrability package as the honest first-center-rung residual core.}
}
\tag{AFD.0}
```

## Installed Inputs

Use only the already-installed lower-carrier surfaces.

1. [mpp-lower-carrier-interval-integrability-theorem-program.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lower-carrier-interval-integrability-theorem-program.md)
2. [mpp-lci-a-enlarged-ball-oscillation-closure-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-enlarged-ball-oscillation-closure-note.md)
3. [mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md)

## Purpose

The first-center-rung side no longer honestly stops at a scalar bound for
`|U_1(c_j(t),t)|`. The note stack already shows the correct residual object is
the affine-frame defect

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
:=
\sum_{j=1}^{J}\mathfrak D_{1,j}^{aff}(t),
\tag{AFD.1}
```

because the affine/shear gauge sector must be quotiented out before the
higher-rung induction is replayed.

So the exact first-center-rung question is not “can one bound `|U_1|` directly
from `-U_1^2`?” The exact question is:

```math
\boxed{
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)?
}
\tag{AFD.2}
```

## Residual Core Already On Disk

### Reduction `AFD.1a` (The affine-frame defect is the theorem-facing first-rung target)

The lower-carrier note already identifies

```math
\sum_{j=1}^{J}\mathfrak D_{1,j}^{aff}\in L^1(I)
\quad\text{or}\quad
L^\infty(I)
\tag{AFD.3}
```

as the theorem-facing first-rung target after the affine quotient.

### Reduction `AFD.1b` (Explicit forcing package controls the defect)

Proposition `LCI.B2g5m` proves that, if the oscillation ledger, far-field
pressure-tail ledger, and viscous first-rung center ledger are available, then

```math
\mathfrak D_{1,\rho,\psi}^{aff}(t)
\le
C_{\alpha,\rho,\psi,\delta,I}
\Big(
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)
+
\mathfrak A_{0,\rho,\psi}^{ctr}(t)^2
+
\mathfrak H_{N,m,\rho,\psi}^{osc,\alpha}(t)^2
+
\mathfrak T_{1,\rho,\psi}^{press,far}(t)
+
\mathfrak K_{1,\rho,\psi}^{visc,ctr}(t)
\Big),
\tag{AFD.4}
```

so, on the finite interval `I`,

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\tag{AFD.5}
```

once the package inputs lie in the stated integrability classes.

### Reduction `AFD.1c` (Affine-frame higher-rung induction is already downstream)

The note stack already proves:

1. `LCI.B2g5n`: exact affine-frame cancellation of the endpoint first-rung
   action;
2. `LCI.B2g5o`: higher-rung induction replays in the affine frame;
3. `LCI.B2g5p`: the affine frame is exactly the center deformation frame;
4. `LCI.B2g5q`: the frame-weighted forcing bridge is downstream of the bounded
   pack-side gauge and the center-forcing package.

So after the affine rewrite, the higher-rung side is no longer the live
first-center-rung wall.

## Target Statement

### Target Theorem `AFD.A` (Affine-frame defect integrability for the first center rung)

Assume:

1. the enlarged-ball oscillation theorem `EOC.A`, so the oscillation side is
   supplied on the transported-center balls;
2. finite seed center data at `t_0\in I`;
3. the rung-0 center forcing
   `\mathfrak K_{0,\rho,\psi}^{ctr}\in L^1(I)`;
4. the explicit residual supplier pair
   `\mathfrak T_{1,\rho,\psi}^{press,far}
   +
   \mathfrak K_{1,\rho,\psi}^{visc,ctr}\in L^1(I)`.

Then

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I).
\tag{AFD.A0}
```

The exact reduction of this theorem to its explicit remaining suppliers is now
isolated in
[mpp-lci-a-affine-defect-supplier-reduction-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-supplier-reduction-note.md).

## Downstream Role

If `AFD.A` is treated as the operative first-center-rung package, then:

1. the affine/shear branch is already quotiented out;
2. the transformed higher-rung induction is available by
   `LCI.B2g5n`--`LCI.B2g5q`;
3. [mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md)
   recovers the first center rung itself;
4. the first-center side is no longer blocked by a new frame-weighted forcing
   theorem.

So this note compresses the first-center-rung side to one exact residual core.

## Exact Missing Bridge

The downstream residual-forcing note still freezes the stronger package input
`(RCF.2)`, but the proof of `LCI.B2h` only spends that hypothesis to obtain
the weaker statement

```math
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^2(I).
\tag{AFD.5a}
```

So the first missing bridge from the affine-defect package is not necessarily
the full supremum bound `(LCI.3c3z22)`. The first honest bridge target is:

### Bridge `AFD.B` (Affine-defect package recovers the first center rung in `L^2`)

Assume the same package as in `AFD.A`. Then prove

```math
\mathfrak D_{1,\rho,\psi}^{aff}\in L^1(I)
\Longrightarrow
\mathfrak A_{1,\rho,\psi}^{ctr}\in L^2(I).
\tag{AFD.5b}
```

The present proof of `LCI.B2h` can therefore use `AFD.B` in place of the
stronger frozen first-rung input wherever only `L^2` control is actually
required.

That bridge is now closed, in stronger form, by
[mpp-lci-a-affine-defect-to-first-rung-bridge-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-affine-defect-to-first-rung-bridge-note.md).
The core identity there is that the affine frame satisfies
`\ddot G_j=\mathcal E_j^{(1)}G_j`, so the affine-defect ledger gives an
`L^1(I)` acceleration law for the deformation frame. Under the bounded pack-side
gauge, this yields
`\mathfrak A_{1,\rho,\psi}^{ctr}\in L^\infty(I)\subset L^2(I)`, not merely
`L^2(I)`.

## Boundary

This note does **not** by itself rewrite the theorem statement inside
[mpp-lci-a-transported-center-residual-forcing-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-transported-center-residual-forcing-note.md).

That residual-forcing note still freezes the first-center-rung item in the older
form `RCF.2`, the theorem-facing version of `(LCI.3c3z22)`, but it now also
records the energy-conditioned import corollary `(RCF.1b)`: under `m\ge 3`,
ordinary energy, the stronger halo-shell packet `HSP.A0a`, and the remaining
first-rung inputs, Corollary `AFS.C` plus Proposition `AFB.A` already recover
that frozen package item. And because `HSP.A0a` is the installed stronger form
beneath `HSP.A`, that sharper branch does not stop there: its honest direct
successor on the receiver side is already the fixed-increment source law
`FEI.C7`, with the sharper route-native nonlocal return
`(HSP.Bc0)\equiv(FEI.Bc0)`. The companion return note
[mpp-lci-a-halo-shell-first-rung-return-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-halo-shell-first-rung-return-note.md)
now makes the exact terminal continuation explicit: the FEI continuation on
that energy-conditioned branch reopens only returned `LCI.A` reads and so
returns to the already-installed lower-carrier route.

So the exact present role of this note is sharper but upstream:

```math
\text{it isolates the honest first-rung residual core, the bridge from that core to the first center rung is now closed, and the exact remaining lower-order supplier split is isolated in }AFS.A,\text{ with its energy-conditioned halo-shell collapse now feeding }(RCF.1b)\text{ on the residual note and then descending nonterminally to }FEI.C7.
\tag{AFD.6}
```

The exact handoff from the frozen direct-coordinate weighted-center reduction
back to this affine first-rung repair is now isolated in
[mpp-lci-a-weighted-center-to-affine-handoff-note.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/mpp-lci-a-weighted-center-to-affine-handoff-note.md).
