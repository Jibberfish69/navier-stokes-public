# Eigensource-control solver pass `ESC.A`

## Target list and solve plan

1. `ActiveEigendirectionDecorrel.A`.
   Proof target: selected terminal high-shell packets spend vanishing weighted
   time aligned with expanding low-strain eigendirections.

2. `StrainAlignmentCost.A` / `ASAC.A`.
   Solve by proving a Carleson packing cost for positive strain-alignment tiles.

3. `TPNI.A`.
   Solve `ASAC.A` by contradiction: a failed Carleson bound produces a frozen-strain ancient tangent packet; a strong no-incoming condition plus anisotropic backward uniqueness forces this tangent packet to vanish.

4. `NonlinearShellFluxControl.A`.
   It is supplied by eigendirection decorrelation, signed lifted-remainder
   cancellation, monotone shell-flux dominance, or direct active-square Carleson.

5. `ActiveShellSourceNormalize.A`, `HeatScaleSquareSource.A`, and temporal non-atomicity.
   These follow from `NonlinearShellFluxControl.A`.

## Direct attempt on `ActiveEigendirectionDecorrel.A`

The dangerous packet-normal-form term is

```math
2^{2j}\langle S_k e_P,e_P\rangle |c_P|^2.
```

Positive production occurs when the polarization `e_P` aligns with an expanding eigendirection of the symmetric strain `S_k`.

Incompressibility gives `tr S_k=0`, while trace-free symmetric matrices can have positive eigenvalues. Same-fluid transport preserves the packet label and supplies no angular mixing rate. Pressure recovery routes elliptic errors and supplies no sign law for the interior strain term. Global dyadic skew symmetry applies before one-sided weights, terminal localization, and positive-part selection.

Current inputs therefore permit selected terminal packets aligned with expanding strain eigendirections. This leaves `ActiveEigendirectionDecorrel.A` open.

## Direct attempt on `ASAC.A`

`ASAC.A` asks for

```math
\int_I\sum_{j>N,k<j-M} W_{j,k}^\sigma A_{j,k}(t)dt
\le
\theta\int_I\sum_{q>N}D_q(t)dt+o_N(1).
```

The packet-Carleson form `PATC.A` would prove this estimate. A failed `PATC.A` sequence produces an ancient tangent packet for the frozen strain equation

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi=\nu\Delta v,
\qquad \nabla\cdot v=0.
```

Positive strain alignment is a real feature of this equation. A universal positive-strain-vanishing theorem fails. The viable route is `TPNI.A`: terminal pulse no-incoming rigidity.

The available first-pulse license gives a no-parent source-residue condition. The backward-uniqueness route needs a stronger no-incoming boundary condition for the full transformed anisotropic flow, plus a Carleman theorem for the exact transformed Stokes system. Those two inputs remain open. Hence `ASAC.A` remains open.

## Consequence for source control

The three source-control routes now converge:

```math
SignedWeightedLiftedRemainderCancellation.A,
\quad
MonotoneShellFluxDominance.A,
\quad
DirectActiveSquareCarleson.A
```

all require control of the same positive strain-alignment carrier or a replacement reserve for it.

## Result

`NonlinearShellFluxControl.A` remains open. The sharpest surviving target is

```math
TPNI.A = NoIncomingLicense_{global}.A + AnisotropicBackwardUniqueness.A
```

for the exact frozen-strain tangent system, or an independent terminal angular-mixing theorem proving `ActiveEigendirectionDecorrel.A`.
