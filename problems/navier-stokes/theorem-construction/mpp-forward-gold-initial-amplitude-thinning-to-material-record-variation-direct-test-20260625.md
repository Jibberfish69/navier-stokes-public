---
theorem_id: forward-gold-initial-amplitude-thinning-to-material-record-variation-direct-test-20260625
status: direct-test-installed-initial-finite-amplitude-does-not-by-itself-produce-finite-material-record-positive-variation
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Attacks the exact remaining clock after the physical-ontology reduction:
  finite positive variation of the original solution's continuation-depth
  material record. Smooth initial data gives finite initial material-record
  size, and finite energy forces high-amplitude regions to thin in volume. This
  test shows that those two facts do not by themselves imply finite positive
  material-record variation. The material record growth equation reduces to a
  continuation-strength differential inequality: lower-order energy and finite
  initial amplitude give a finite initial value, while the same pressure-
  viscosity-incompressibility-velocity service coefficient is controlled only
  polynomially by the material record itself. That inequality allows finite-time
  ODE blow-up and therefore cannot close the MPP without a genuine global
  same-packet storage/coercivity estimate for the positive record variation.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-ontology-to-material-record-clock-exact-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-material-record-definition-for-fixed-hs-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-material-clock-to-fixed-hs-continuation-readout-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-original-data-spike-thinning-full-participation-trichotomy-20260623.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-affine-strain-local-normal-form-full-participation-sign-test-20260624.md
---

# Initial Amplitude / Thinning To Material Record Variation Direct Test

Date: 2026-06-25

## 0. Target

After the physical-ontology reduction, the remaining theorem is

```math
\int_0^{T_*} d[\log(1+\mathcal P_N^{mat}(t))]_+ < \infty.
\tag{IAT.1}
```

Here `P_N^mat` is the continuation-depth material record of the one original
smooth solution's transported material history.  It includes the material
velocity tower, pressure tower, deformation/coefficient tower, transported
collar, and interface-current record needed for fixed `H^s` continuation.

This note tests the direct physical shortcut:

```math
\text{smooth initial data + finite energy + spike thinning}
\quad\Longrightarrow\quad
\text{finite positive material-record variation.}
\tag{IAT.2}
```

The test keeps the same object.  The spike, annuli, pressure, viscosity,
incompressibility, and velocity transfer are not separated.

## 1. What initial smoothness gives exactly

For every fixed continuation depth `N`, smooth initial data gives

```math
\mathcal P_N^{mat}(0)<\infty.
\tag{IAT.3}
```

In frequency language, this is the statement that infinitely many initial
frequencies may be present, but every fixed Sobolev-depth amplitude is finite:

```math
\sum_j 2^{2Nj}\|\Delta_j u_0\|_2^2<\infty.
\tag{IAT.4}
```

This is an entrance condition, not a terminal clock estimate.  It gives a
finite starting value for the material record; it does not yet bound the
positive variation of that record on `[0,T_*)`.

## 2. What finite energy and spike thinning give exactly

The energy inequality gives

```math
\sup_{t<T_*}\|u(t)\|_2^2
+
2\nu\int_0^{T_*}\|S(t)\|_2^2\,dt
\le
\|u_0\|_2^2.
\tag{IAT.5}
```

Consequently, for the high-amplitude set

```math
E_h(t)=\{x: |u(t,x)|\ge h\},
```

one has

```math
|E_h(t)|\le {\|u_0\|_2^2\over h^2}.
\tag{IAT.6}
```

Thus a spike with height tending to infinity must thin in physical volume.
This is the correct height-width fact.  It prevents a tall spike from keeping a
fat high-amplitude base.

But `(IAT.6)` is an amplitude-volume statement.  The material record variation
is a derivative/deformation statement.  It contains quantities such as

```math
\|F\|_{W^{m+1,\infty}},
\quad
\|A\|_{W^{m+1,\infty}},
\quad
\sum_{|\alpha|\le N}\|D_a^\alpha v\|_2^2,
\quad
\sum_{|\alpha|\le N-1}\|D_a^\alpha q\|_2^2.
\tag{IAT.7}
```

Finite energy does not directly control `(IAT.7)`, and the volume thinning
bound `(IAT.6)` does not control the total positive deformation variation of
`F`, `A`, `G`, `v`, and `q`.

## 3. Exact material-record growth equation

The same transported material packet obeys

```math
\partial_t v+A^T\nabla_a q
=
\nu\operatorname{div}_a(G\nabla_a v),
\qquad
\operatorname{div}_a(Av)=0,
\tag{IAT.8}
```

with coefficient equations

```math
\partial_tF=(\nabla_xu)(X,t)F,
```

```math
\partial_tA=-A(\nabla_a v)A,
\qquad
\partial_tG=(\partial_tA)A^T+A(\partial_tA)^T.
\tag{IAT.9}
```

Differentiating `(IAT.8)`--`(IAT.9)` to depth `N` gives the installed growth
law

```math
 d[\log(1+\mathcal P_N^{mat})]_+
\le
C_N\Theta_N(t)\,dt+dR_N^0,
\tag{IAT.10}
```

where `Theta_N` is the same-material pressure-viscosity-incompressibility-
velocity service rate: strain, coefficient service, pressure elliptic service,
transported collar, interface current, and nonlinear stress transfer.

This is still one packet.  `Theta_N` is not a pressure-only or viscosity-only
object.

## 4. Why finite initial amplitude does not close `(IAT.10)`

The record itself controls the pointwise coefficient norms that appear in
`Theta_N`.  For a fixed finite depth `N` large enough for the chosen `H^s`
readout, Sobolev embedding and the material pressure tower give a polynomial
bound of the form

```math
\Theta_N(t)
\le
C_N\left(1+\mathcal P_N^{mat}(t)\right)^{a_N}
+
\Theta_N^{low}(t),
\qquad
 a_N>0,
\tag{IAT.11}
```

where `Theta_N^low` denotes lower-order energy-controlled pieces.  The exact
exponent is not the point; the decisive point is that the high-side service
coefficient grows positively with the same material record whose variation is
being estimated.

Substituting `(IAT.11)` into `(IAT.10)` gives a continuation-type inequality
for

```math
Y_N(t)=1+\mathcal P_N^{mat}(t):
```

```math
 d[\log Y_N(t)]_+
\le
C_NY_N(t)^{a_N}\,dt+dR_N^{low}.
\tag{IAT.12}
```

Equivalently, on intervals where the record is growing,

```math
 dY_N(t)
\le
C_NY_N(t)^{1+a_N}\,dt+Y_N(t)dR_N^{low}.
\tag{IAT.13}
```

The model ODE

```math
Y'(t)=C Y(t)^{1+a},
\qquad a>0,
\tag{IAT.14}
```

has finite-time blow-up from finite initial data.  Therefore the inequality
obtained from finite initial amplitude, finite energy, and the material tower
is not a global bound.  It is the standard continuation propagation mechanism.
It proves that the record stays finite as long as the service clock is finite;
it does not prove that the service clock is finite.

## 5. Why spike thinning does not repair this by itself

The thinning estimate controls the volume of high-amplitude velocity sets.  The
record-growth clock controls derivative and deformation amplification.  A thin
region can carry large strain, pressure Hessian, coefficient growth, or high
frequency transfer while keeping its `L^2` mass small.

This is exactly what the affine incompressible strain normal form tests.  In a
local packet,

```math
u(x)=Ax,
\qquad
p(x)=-{1\over2}x\cdot A^2x,
\qquad
A=A^T,
\qquad
\operatorname{tr}A=0,
\tag{IAT.15}
```

one has

```math
(u\cdot\nabla)u+\nabla p=0,
\qquad
\Delta u=0,
\qquad
\nabla\cdot u=0.
\tag{IAT.16}
```

The material deformation satisfies

```math
{d\over dt}\log|D_aX(t)e|=e\cdot Ae.
\tag{IAT.17}
```

So positive material-record growth can be pressure-balanced in the bulk and
carried through annular stress-work, with no interior viscosity-only drain.
The thinning/payment picture is correct, but it records where the action lives;
it does not make the rectified positive action finite.

## 6. Result

The direct shortcut `(IAT.2)` is not proved.  The exact installed conclusion is

```math
\boxed{
\text{finite initial amplitude and finite-energy spike thinning give a finite
starting record and attachment, but not finite positive material-record
variation.}
}
\tag{IAT.18}
```

The remaining noncircular gold theorem is still

```math
\boxed{
\int_0^{T_*} d[\log(1+\mathcal P_N^{mat})]_+ < \infty,
}
\tag{IAT.19}
```

or an equivalent global same-packet inequality with bounded-below storage:

```math
d\mathfrak L_N
+
c\,d[\log(1+\mathcal P_N^{mat})]_+
+d\mathcal L_N
\le
dR_N,
\qquad
\mathfrak L_N\ge -C,
\qquad
\int_0^{T_*}dR_N<\infty.
\tag{IAT.20}
```

This is not a detached obstruction.  It is exactly the material deformation
history of the one original spike-wave.  Proving `(IAT.19)` closes the installed
forward-gold route; `(IAT.3)`--`(IAT.17)` show that finite initial amplitude and
height-width thinning alone do not prove it.