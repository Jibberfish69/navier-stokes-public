---
theorem_id: forward-gold-incompressible-shape-balance-vs-positive-variation-20260625
status: exact-shape-balance-installed-not-a-clock-producer
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Sharpens the physical spike-thinning picture inside the current forward-gold
  route. Incompressibility gives an exact same-material shape balance:
  det D_aX=1, so every material height gain is matched by material thinning in
  the surrounding directions. This proves the spike cannot grow wider and taller
  as an incompressible material packet. But the MPP-facing clock is not the
  determinant identity; it is the rectified positive variation of the material
  shape/pressure/strain record. Volume preservation fixes the product of
  singular values, while finite smooth continuation needs finite positive
  variation of their logarithms and of the coupled pressure-viscosity-
  incompressibility-velocity tower. Thus the shape law is a required coordinate
  of the same packet, not an independent producer of the finite full material
  clock.
parents:
  - problems/navier-stokes/live-theorem-edge.yaml
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-cauchy-green-annular-stress-work-lyapunov-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-initial-amplitude-thinning-to-material-record-variation-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-strain-eigenvalue-shape-law-test-20260625.md
---

# Incompressible Shape Balance Versus Positive Variation

Date: 2026-06-25

## 0. Same material object

The object is one original smooth incompressible Navier--Stokes material
history:

```math
\dot X(a,t)=u(X(a,t),t),
\qquad
F(a,t)=D_aX(a,t),
\qquad
\det F(a,t)=1 .
\tag{ISB.1}
```

The spike, the annular layers underneath it, pressure, viscosity,
incompressibility, and the later stress/strain return are all readings of this
same material history.

## 1. Exact shape balance

Let

```math
s_1(a,t)\ge s_2(a,t)\ge s_3(a,t)>0
\tag{ISB.2}
```

be the singular values of `F(a,t)`. Incompressibility gives

```math
s_1s_2s_3=1,
\tag{ISB.3}
```

or equivalently

```math
\log s_1+\log s_2+\log s_3=0.
\tag{ISB.4}
```

So a material height gain cannot be a material volume gain. If a spike direction
stretches with

```math
s_1\to\infty,
\tag{ISB.5}
```

then at least one transverse material direction must thin:

```math
s_2s_3\to0.
\tag{ISB.6}
```

This is the exact mathematical form of the physical statement: the spike must
thin as it rises.

## 2. The clock is positive variation, not determinant balance

Differentiate `(ISB.4)` along the material path. For the right singular
directions this is the strain trace identity

```math
{d\over dt}\log s_1
+
{d\over dt}\log s_2
+
{d\over dt}\log s_3
=
\operatorname{tr}S
=0 .
\tag{ISB.7}
```

The signed sum is zero at every time. The full material clock is different. It
contains the positive variation of the same record, for example

```math
d\Omega_{shape}
\simeq
\sum_{i=1}^3
d[\log s_i]_+
\tag{ISB.8}
```

plus the coupled pressure, viscosity, incompressibility, velocity, collar, and
tower records needed for the fixed continuation depth.

Equation `(ISB.7)` controls the net shape balance. It does not control
`(ISB.8)`. A simple smooth volume-preserving path already shows the difference:

```math
F(t)=
\operatorname{diag}
\left(e^{A(t)},e^{-A(t)},1\right).
\tag{ISB.9}
```

Then

```math
\det F(t)=1
\tag{ISB.10}
```

for every `t`, but

```math
\sum_i \operatorname{Var}_{+}\log s_i
=
2\,\operatorname{Var}_{+}A
\tag{ISB.11}
```

can be arbitrarily large while the determinant remains exactly one.

## 3. Consequence for the spike picture

The physical spike picture proves a real constraint:

```math
\text{height growth}
\quad\Longrightarrow\quad
\text{same-material transverse thinning}.
\tag{ISB.12}
```

It also proves that the annular layers are not optional; they carry the
compressive partner of the stretching direction through the same material
history.

But the gold route needs the rectified action:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty.
\tag{ISB.13}
```

The determinant constraint supplies the signed balance inside that clock. It
does not make the positive variation finite.

## 4. Result

The exact correction is:

```math
\boxed{
\text{incompressibility proves shape balance, not finite positive shape
variation.}
}
\tag{ISB.14}
```

Therefore the spike-thinning ontology is preserved and sharpened, but the live
producer remains the same same-packet theorem:

```math
\boxed{
\text{finite full pressure-viscosity-incompressibility-velocity material clock
for the original transported history.}
}
\tag{ISB.15}
```

