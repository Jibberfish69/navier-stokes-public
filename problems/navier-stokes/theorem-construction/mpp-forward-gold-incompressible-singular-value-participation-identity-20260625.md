---
theorem_id: forward-gold-incompressible-singular-value-participation-identity-20260625
status: exact-participation-identity-installed-not-a-finite-clock-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Installs the exact same-material shape participation identity behind the
  spike-thinning picture. For the original transported incompressible material
  history, the logarithmic singular-value rates of the deformation gradient
  sum to zero, so positive stretching is paired at the same time with equal
  transverse compression. The rectified shape clock is exactly the positive
  variation of this zero-sum shape record, equivalently half of its total
  variation. This rules out detached center-only and net-cancellation readings:
  the spike's apparent height gain already carries a same-fluid strain partner
  in the annular material history. It does not by itself prove finite total
  variation; that remains the global same-packet full material clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-incompressible-shape-balance-vs-positive-variation-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-physical-ontology-to-material-record-clock-exact-reduction-20260625.md
---

# Incompressible Singular-Value Participation Identity

Date: 2026-06-25

## 0. Same material history

Let `u` be the original smooth incompressible Navier--Stokes solution before a
candidate terminal time, and let

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
F(a,t)=D_aX(a,t).
\tag{SVP.1}
```

Since

```math
\nabla\cdot u=0,
\tag{SVP.2}
```

we have

```math
\det F(a,t)=1.
\tag{SVP.3}
```

This is one transported material object.  The center spike, the annular layers
under it, the transverse thinning, the strain return, pressure, viscosity, and
incompressibility are not separate events.

## 1. Logarithmic shape variables

Let

```math
s_1(a,t)\ge s_2(a,t)\ge s_3(a,t)>0
\tag{SVP.4}
```

be the singular values of `F(a,t)`, and define

```math
\ell_i(a,t)=\log s_i(a,t).
\tag{SVP.5}
```

The determinant identity gives the exact zero-sum shape law

```math
\ell_1+\ell_2+\ell_3=0.
\tag{SVP.6}
```

The functions `ell_i` are absolutely continuous in time on every compact
preterminal interval.  Therefore, for almost every time,

```math
\dot\ell_1+\dot\ell_2+\dot\ell_3=0.
\tag{SVP.7}
```

## 2. Exact participation pairing

For any real triple with zero sum,

```math
a_1+a_2+a_3=0,
\tag{SVP.8}
```

the positive and negative parts have the same total:

```math
\sum_{i=1}^3 [a_i]_+
=
\sum_{i=1}^3 [-a_i]_+
=
{1\over2}\sum_{i=1}^3 |a_i|.
\tag{SVP.9}
```

Applying this to `(SVP.7)` gives the same-material participation identity

```math
\sum_{i=1}^3 [\dot\ell_i(a,t)]_+
=
\sum_{i=1}^3 [-\dot\ell_i(a,t)]_+
=
{1\over2}\sum_{i=1}^3 |\dot\ell_i(a,t)|
\quad\text{for a.e. }t.
\tag{SVP.10}
```

Thus every instantaneous positive shape-growth rate has an equal transverse
compression partner in the same material packet.

This is the exact mathematical version of the physical point: a spike cannot
rise as an incompressible material object without the surrounding material
shape carrying the matching thinning/compression record.

## 3. Strain meaning

At almost every time the ordered singular-value rates are differentiable.  At
simple singular values, each `\dot\ell_i` is the strain of the corresponding
Eulerian principal stretch direction.  At multiple singular values, the ordered
rates are the a.e. eigenvalue derivatives inside the same singular subspace.
The positive/negative pairing `(SVP.10)` only uses the zero-sum identity and
does not depend on choosing a smooth singular frame.

For any material line element `\xi(t)=F(a,t)\xi_0`,

```math
{d\over dt}\log|\xi(t)|
=
{\xi(t)\over|\xi(t)|}\cdot
S(X(a,t),t)
{\xi(t)\over|\xi(t)|},
\tag{SVP.11}
```

where

```math
S={\nabla u+\nabla u^T\over2}.
\tag{SVP.12}
```

The skew part of `nabla u` only rotates the line element.  It does not change
its length.  So the paired positive/negative logarithmic shape variation in
`(SVP.10)` is a strain record, not a separate bookkeeping convention.

## 4. Annular material version

Let `A_0` be the material annular layer under the spike, with nonnegative
material weight `w(a)`.  Define the rectified material shape participation
measure

```math
d\Omega_{shape,A}(t)
:=
\int_{A_0}
\sum_{i=1}^3[\dot\ell_i(a,t)]_+
w(a)\,da\,dt.
\tag{SVP.13}
```

By `(SVP.10)`,

```math
d\Omega_{shape,A}(t)
=
{1\over2}
\int_{A_0}
\sum_{i=1}^3|\dot\ell_i(a,t)|
w(a)\,da\,dt.
\tag{SVP.14}
```

So the annular "payback" record is not an arbitrary later signal and not a
center-only projection.  It is the rectified strain variation of the same
transported annular material.

## 5. Consequence

The identity proves the attachment and the participation pairing:

```math
\text{positive spike-direction stretching}
\quad\Longleftrightarrow\quad
\text{same-material transverse compression partner}
\tag{SVP.15}
```

at the level of the incompressible shape record.

It also shows exactly what remains.  Net cancellation is not enough.  The
gold route needs the rectified full material clock:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty,
\tag{SVP.16}
```

whose shape coordinate contains `(SVP.13)` and whose full packet also contains
the pressure, viscosity, incompressibility, velocity, transported collar, and
finite continuation-depth tower records.

Therefore the physical spike-wave picture removes detached-pulse and
center-only readings, but the remaining theorem is still the finite rectified
same-material force-action/material-record variation for the original history.
