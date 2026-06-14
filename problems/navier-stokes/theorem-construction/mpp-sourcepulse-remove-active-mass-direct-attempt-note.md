# MPP SourcePulse Remove-Active-Mass Direct Attempt Note

## Status

Direct attempt on the first irreducible source-pulse slot:

```math
\boxed{
\text{remove active mass: show }(SPE.2)\text{ cannot occur.}
}
```

The attempt does not install the slot from the current original-data surfaces.
It reduces to the same source-pulse theorem.

## Target

For the terminal source-pulse packet

```math
\mathcal P_n=(Q_n^\Phi,j_n,I_n),
\qquad
|I_n|=2^{-2j_n},
\qquad
t_n\uparrow T_\ast,
```

the mass-removal theorem would prove

```math
\int_{I_n}
\mathfrak S_{j_n,loc}^{active}(t)\,dt
\longrightarrow0,
```

or at least the positive-part depletion needed to prevent the lower bound

```math
\liminf_{n\to\infty}
\int_{I_n}
\mathfrak S_{j_n,loc}^{active}(t)\,dt
>0.
\tag{SPE.2}
```

## Direct Tests

Finite energy gives only first-moment dissipation:

```math
u\in L_t^\infty L_x^2,
\qquad
\nabla u\in L^2_{t,x}.
```

It does not impose a sign on the active nonlinear source, nor does it control
the positive part of the shellwise source on heat-scale bad windows.

Pressure Poisson recovery gives elliptic estimates and local pressure packets,
but it does not change the sign of vortex stretching or of the weighted lifted
source remainder.

Unweighted dyadic exchange cancels only before the active weights, cutoffs, and
same-fluid localization are inserted.  The live active source is the weighted
one-sided packet, and the installed commutator material does not prove its
positive part is depleted.

Vorticity-direction, Beltrami/helical, and pressure-vortex depletion are
possible languages for this slot, but the corresponding audits show that none
is derived from `OriginalSmoothData` on the terminal bad windows.

## Verdict

The remove-active-mass slot is not installed.  It is exactly the positive-part
depletion presentation of the source-pulse theorem:

```math
\boxed{
OriginalSmoothData
\Longrightarrow
\text{remove active mass}
\quad\Longleftrightarrow_{\mathrm{route}}\quad
OriginalSmoothData
\Longrightarrow
SourcePulseExclusion.A.
}
```
