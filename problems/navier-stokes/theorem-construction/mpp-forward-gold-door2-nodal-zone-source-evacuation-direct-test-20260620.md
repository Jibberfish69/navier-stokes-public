# Door 2 Nodal-Zone Source Evacuation Direct Test

Date: 2026-06-20

## Status

Direct child test complete.  `NodalZoneSourceEvacuation.A` is not installed
from finite smooth mode geometry and finite selected source mass.

The exact result is conditional.  Nodal-zone evacuation follows from a geometric
sublevel-set bound for the mode test plus a same-shadow source density estimate
stronger than `L1`.  Current inputs repeatedly identify that stronger estimate
with the source-square / Carleson / strict no-waste wall; it is not already
available on the selected Door 2 source shadow.

## 1. Target under test

Let `Omega_m` be the retained selected packet shadow with reference packet
measure `domega_m`.  Let `f_m` be the nonnegative density of the absolute
selected local pre-Cauchy source on this shadow:

```math
d\sigma_m
=
f_m\,d\omega_m.
\tag{NZE.1}
```

Let `psi_m` be the packet realization of the selected finite modulation mode.
For `0<kappa<1`, define the nodal zone

```math
Z_m(\kappa)
:=
\{z\in\Omega_m:|\psi_m(z)|<\kappa\}.
\tag{NZE.2}
```

The desired evacuation statement is

```math
\sigma_m(Z_m(\kappa))
\le
\operatorname{Legal}_{m,\kappa}
+o_m(1)
\tag{NZE.3}
```

after choosing a terminal small `kappa` and paying the legal complement.

## 2. Conditional proof from geometry plus super-L1 source density

Assume a mode-nodal geometry bound:

```math
\omega_m(Z_m(\kappa))
\le
C_{geo}\kappa^\beta,
\qquad
\beta>0.
\tag{NZE.4}
```

Assume a same-shadow source density reserve:

```math
\|f_m\|_{L^p(d\omega_m)}
\le
C_p,
\qquad
p>1.
\tag{NZE.5}
```

Then Holder gives

```math
\sigma_m(Z_m(\kappa))
=
\int_{Z_m(\kappa)} f_m\,d\omega_m
\le
\|f_m\|_{L^p(d\omega_m)}
\omega_m(Z_m(\kappa))^{1-1/p}.
\tag{NZE.6}
```

Using `(NZE.4)` and `(NZE.5)`,

```math
\sigma_m(Z_m(\kappa))
\le
C_p C_{geo}^{1-1/p}
\kappa^{\beta(1-1/p)}.
\tag{NZE.7}
```

Thus the nodal-zone source is evacuated by taking `kappa` small, uniformly in
`m`, and then sending the terminal index to infinity.  This proves the
conditional bridge

```math
\boxed{
\text{ModeNodalGeometryNondegeneracy.A}
+
\text{SameShadowSourceLpReserve.A}
\Longrightarrow
\text{NodalZoneSourceEvacuation.A}.
}
\tag{NZE.8}
```

For `p=2`, this is the same analytic shape as a same-carrier source-square
reserve.

## 3. Why finite L1 source mass is insufficient

The result is false with only `L1` source mass, even when the nodal geometry is
as good as possible.

Take the one-dimensional model

```math
\Omega=(-1,1),
\qquad
\psi(x)=x,
\qquad
Z(\kappa)=(-\kappa,\kappa).
\tag{NZE.9}
```

Then

```math
|Z(\kappa)|=2\kappa.
\tag{NZE.10}
```

Set

```math
f_\kappa(x)
=
{1\over 2\kappa}{\bf 1}_{(-\kappa,\kappa)}(x).
\tag{NZE.11}
```

The total source mass is fixed:

```math
\int_{-1}^1 f_\kappa(x)\,dx=1.
\tag{NZE.12}
```

But all of it is in the nodal zone:

```math
\int_{Z(\kappa)} f_\kappa(x)\,dx=1.
\tag{NZE.13}
```

For every `p>1`,

```math
\int_{-1}^1 f_\kappa(x)^p\,dx
=
(2\kappa)^{1-p}
\longrightarrow\infty.
\tag{NZE.14}
```

So the exact obstruction is not the size of the nodal tube.  It is the absence
of same-shadow uniform integrability or source-square control for the selected
source density.

## 4. Geometry is also not automatic

Smoothness of `psi_m` alone does not imply `(NZE.4)`.  A mode test can be flat
or nearly flat on the selected shadow:

```math
|\psi_m(z)|\le\kappa_m
\quad\text{for all }z\in\Omega_m,
\qquad
\kappa_m\downarrow0.
\tag{NZE.15}
```

Then

```math
Z_m(2\kappa_m)=\Omega_m.
\tag{NZE.16}
```

This is the mode-nodal version of the gauge degeneracy already exposed in the
canonical gauge child: isotropy, selector ties, flat scale plateaus, or profile
switching can make a finite mode test fail to see the selected shadow.

Thus even the geometric side needs a nondegenerate finite mode atlas on the
retained single-bubble profile class.

## 5. Current reduction

At current input strength,

```math
\boxed{
\text{NodalZoneSourceEvacuation.A}
\Leftarrow
\text{ModeNodalGeometryNondegeneracy.A}
+
\text{SameShadowSourceLpReserve.A}.
}
\tag{NZE.17}
```

The first input is a gauge/profile nondegeneracy condition.  The second input is
the same source-residence/source-square/no-waste strength already exposed by
the terminal heat-scale pulse branch.

## Verdict

`NodalZoneSourceEvacuation.A` does not close from finite mode smoothness and
finite source mass.  Smooth nodal geometry supplies only a small reference
measure.  To convert that into small source mass, the selected source density
must be uniformly integrable on the same shadow.

So the nodal branch does not create a new independent gold route.  It returns
Door 2 to the same non-aliased supplier wall: same-shadow source-square /
super-`L1` / strict no-waste control, plus the gauge nondegeneracy needed to
make the mode nodal geometry itself uniform.
