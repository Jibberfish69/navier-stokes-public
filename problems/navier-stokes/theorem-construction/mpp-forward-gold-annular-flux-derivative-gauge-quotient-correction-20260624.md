---
theorem_id: forward-gold-annular-flux-derivative-gauge-quotient-correction-20260624
status: correction-installed-rectified-annular-clock-must-be-gauge-reduced
logical_landing_node: signed_smooth_same_packet_commutator_coercivity
edge_effect: >-
  Corrects the annular flux-derivative clock before it is used as a terminal
  producer. The unreduced derivative of annular stress-work can see pure
  Galilean/affine-pressure gauge acceleration. That variation is storage/gauge
  motion, not singular pressure-viscosity-incompressibility-velocity
  participation. The signed same-packet producer must therefore be stated for
  the gauge-reduced transported annular flux, after subtracting local constant
  velocity and affine harmonic pressure components.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-stress-work-rectification-clock-reduction-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-flux-derivative-same-packet-identity-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transported-annular-layer-coarea-clock-test-20260624.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-reserve-producer-family-recheck-20260621.md
---

# Annular Flux Derivative Gauge-Quotient Correction

Date: 2026-06-24

## 0. Result

The transported outer annulus is still the right physical object.

The correction is that the rectified annular stress-work clock must ignore the
pure local gauge mode: constant velocity plus affine pressure.  Otherwise the
clock can charge harmless acceleration of the coordinate packet rather than
the spike's stress/strain participation.

## 1. Gauge normal form

On a local normalized packet, the harmless gauge family is

```math
V_g(s,y)=m(s),
\qquad
Q_g(s,y)=-m'(s)\cdot y+c(s).
\tag{AGQ.1}
```

It satisfies the local Navier--Stokes momentum law

```math
\partial_sV_g+(V_g\cdot\nabla)V_g+\nabla Q_g
=0,
\qquad
\nabla\cdot V_g=0,
\tag{AGQ.2}
```

and has no strain:

```math
S(V_g)=0.
\tag{AGQ.3}
```

So it carries no selected singular strain/tower participation.

## 2. Unreduced annular flux sees this gauge

Let `\(\phi\)` be transported by the constant velocity.  For the gauge packet,

```math
M_g(s)=
{1\over2}|m(s)|^2\int\phi\,dy,
\qquad
D_g(s)=0.
\tag{AGQ.4}
```

The stress is

```math
T_g=-Q_gI.
\tag{AGQ.5}
```

The annular stress-work flux is

```math
F_g(s)=\int V_g\cdot T_g\nabla\phi\,dy
=
-m(s)\cdot\int Q_g\nabla\phi\,dy.
\tag{AGQ.6}
```

Integrating by parts on the localized packet gives

```math
\int Q_g\nabla\phi\,dy
=
-\int \phi\nabla Q_g\,dy
=
\left(\int\phi\,dy\right)m'(s).
\tag{AGQ.7}
```

Thus

```math
F_g(s)=
-m(s)\cdot m'(s)\int\phi\,dy.
\tag{AGQ.8}
```

The transported local energy identity is exact:

```math
{d\over ds}M_g(s)=-F_g(s).
\tag{AGQ.9}
```

But the flux derivative is

```math
F_g'(s)
=
-\left(|m'(s)|^2+m(s)\cdot m''(s)\right)\int\phi\,dy.
\tag{AGQ.10}
```

This can be large while `(AGQ.3)` remains zero.  Therefore
`\(\int |F'|\)` is not yet the singular participation clock.

## 3. Correct gauge-reduced variables

For each retained transported annular packet, split

```math
V=m+U,
\qquad
Q=Q^{aff}+P,
\tag{AGQ.11}
```

where `\(m(s)\)` is the local Galilean velocity mode and

```math
Q^{aff}(s,y)=-m'(s)\cdot y+c(s)
\tag{AGQ.12}
```

is the affine pressure gauge.  The reduced variables are

```math
U=V-m,
\qquad
P=Q-Q^{aff}.
\tag{AGQ.13}
```

The strain is unchanged:

```math
S(U)=S(V).
\tag{AGQ.14}
```

Define the reduced stress

```math
T^\sharp=-PI+2\nu S(U).
\tag{AGQ.15}
```

and the reduced transported annular flux

```math
F_\phi^\sharp(s)
=
\int U\cdot T^\sharp\nabla\phi\,dy.
\tag{AGQ.16}
```

For the pure gauge packet `(AGQ.1)`,

```math
U=0,\qquad P=0,\qquad F_\phi^\sharp=0.
\tag{AGQ.17}
```

So the reduced clock does not charge harmless gauge motion.

## 4. Corrected rectification clock

The rectification step must use

```math
R_{\phi}^{rect,\sharp}(s)
=
\left|
{d\over ds}F_\phi^\sharp(s)
\right|.
\tag{AGQ.18}
```

The same-packet identity remains true: differentiating `(AGQ.16)` produces
only reduced velocity, reduced pressure, strain, coefficient, viscous, and
collar terms on the same transported material packet.  The affine pressure and
constant velocity gauge terms have been removed before positive variation is
taken.

Thus the live clock is not

```math
\sum_m\int |F_{\phi_m}'(s)|\,ds.
\tag{AGQ.19}
```

The live clock is

```math
\boxed{
\sum_m\int
\left|
{d\over ds}F_{\phi_m}^{\sharp}(s)
\right|\,ds
<\infty .
}
\tag{AGQ.20}
```

## 5. Effect on the frontier

This does not close the MPP.  It sharpens the exact object that still has to be
proved.

The remaining producer is:

```math
\mathrm{SignedSmoothSamePacketCommutatorCoercivity.A}
\tag{AGQ.21}
```

with the annular service clock read as the gauge-reduced same-packet
flux-derivative clock `(AGQ.20)`.

Any future proof attempt that charges unreduced affine-pressure/Galilean
variation is charging the wrong object.
