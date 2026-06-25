---
theorem_id: forward-gold-signed-cancellation-pressure-time-cubic-gradient-test-20260625
status: signed-cancellation-removes-raw-dtp-symbol-but-not-positive-pressure-cubic-action
logical_landing_node: global_same_packet_full_clock_from_original_data
edge_effect: >-
  Tests the exact signed same-packet cancellation route before taking absolute
  values in the gauge-reduced annular stress-work derivative. The pressure-time
  elliptic service can be moved by differentiating a pressure-service storage,
  so the raw D_tP symbol is not a free terminal-time oscillator. The moved
  terms are pressure-stress, pressure-transport, and cubic collar terms of the
  same full material-clock strength. The cubic gradient pieces have no hidden
  sign after the transported collar is retained. Therefore signed cancellation
  proves same-packet redistribution, not finite positive annular action. The
  remaining estimate is still the full positive pressure-viscosity-
  incompressibility-velocity material clock.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-strain-annular-action-producer-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-gauge-reduced-annular-flux-derivative-sign-structure-test-20260624.md
  - problems/navier-stokes/theorem-construction/mcp-global-full-clock-stress-time-spatial-reduction-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-annular-density-termwise-control-audit-20260625.md
---

# Signed Cancellation Pressure-Time Cubic Gradient Test

Date: 2026-06-25

## 0. Result

The object is still the same original smooth material spike-wave history.  The
annular cutoff is transported with that history, and the variables are the
reduced pressure-viscosity-incompressibility-velocity packet.

Signed cancellation before absolute values can move the pressure-time term, but
it does not make the positive annular action finite.  The same amount of
pressure-strain service returns as pressure-stress, pressure-transport, and
cubic collar action.

So the exact conclusion is:

```math
\text{signed cancellation}
\Rightarrow
\text{same-packet redistribution of pressure/cubic action},
\tag{SCG.1}
```

not:

```math
\text{signed cancellation}
\Rightarrow
\int d\Omega_N^{full}<\infty .
\tag{SCG.2}
```

## 1. Gauge-reduced annular flux derivative

In the reduced packet,

```math
D_tU=\nabla\cdot T^\sharp,
\qquad
T^\sharp=-PI+2\nu S(U),
\qquad
\nabla\cdot U=0,
\tag{SCG.3}
```

and the transported annular cutoff obeys

```math
D_t\phi=0.
\tag{SCG.4}
```

The reduced annular stress-work flux is

```math
F_\phi^\sharp(t)=\int U_iT^\sharp_{ij}\partial_j\phi\,dx.
\tag{SCG.5}
```

Its exact derivative is

```math
{d\over dt}F_\phi^\sharp=I_1+I_2+I_3,
\tag{SCG.6}
```

where

```math
I_1=\int (\nabla\cdot T^\sharp)_iT^\sharp_{ij}\partial_j\phi,
\tag{SCG.7}
```

```math
I_2=\int U_i(D_tT^\sharp_{ij})\partial_j\phi,
\tag{SCG.8}
```

and

```math
I_3=-\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi).
\tag{SCG.9}
```

The pressure-time subterm inside `I_2` is

```math
I_{2,p}=-\int D_tP\,U\cdot\nabla\phi.
\tag{SCG.10}
```

Since

```math
-\Delta P=\partial_iU_j\partial_jU_i,
\tag{SCG.11}
```

one has

```math
D_tP=(-\Delta)^{-1}\mathcal E_P(U,T^\sharp,P),
\tag{SCG.12}
```

with the same-packet source `E_P` produced by differentiating `(SCG.11)` along
the material flow.

## 2. Pressure-time can be moved, not erased

Use the pressure-service storage

```math
Y_\phi(t)=\int P\,U\cdot\nabla\phi\,dx.
\tag{SCG.13}
```

Because the flow is incompressible and `phi` is transported,

```math
{d\over dt}Y_\phi
=
\int D_tP\,U\cdot\nabla\phi
+
\int P\,(D_tU)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SCG.14}
```

Therefore

```math
I_{2,p}
=
-{d\over dt}Y_\phi
+
\int P\,(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SCG.15}
```

This is the exact signed cancellation.  It removes the raw material pressure
-time derivative, but it replaces it with:

```math
\int P\,(\nabla\cdot T^\sharp)\cdot\nabla\phi,
\tag{SCG.16}
```

and

```math
-\int P\,U_i(\partial_iU_k)(\partial_k\phi).
\tag{SCG.17}
```

Both are same-annulus pressure-strain service terms.  They are not legal lower
-order residuals.  They have the same scale as the annular density already
identified in the full-clock route.

Thus the pressure-time symbol is not an independent obstruction, but the
positive pressure service is still present.

## 3. Cubic gradient terms have no hidden sign

The viscous part of `I_2` contains

```math
2\nu\int U_i(D_tS_{ij}(U))\partial_j\phi.
\tag{SCG.18}
```

Using

```math
D_tS(U)=\operatorname{sym}\nabla(\nabla\cdot T^\sharp)
-
\operatorname{sym}\big((\nabla U)^2\big),
\tag{SCG.19}
```

its cubic part is

```math
-\nu\int
U_i
\left(
\partial_iU_k\partial_kU_j
+
\partial_jU_k\partial_kU_i
\right)
\partial_j\phi.
\tag{SCG.20}
```

The transport term `I_3` contributes

```math
-\int U_iT^\sharp_{ij}(\partial_jU_k)(\partial_k\phi).
\tag{SCG.21}
```

After splitting `T^sharp=-PI+2nu S(U)`, the pressure part of `(SCG.21)` belongs
to the pressure-service redistribution in `(SCG.15)`, and the viscous part is
another cubic collar contraction:

```math
-2\nu\int U_iS_{ij}(U)(\partial_jU_k)(\partial_k\phi).
\tag{SCG.22}
```

The sum of `(SCG.20)` and `(SCG.22)` is a transported-collar cubic tensor
functional.  It is not a square.  It is not a divergence-free bulk cancellation,
because every term is supported by `nabla phi`.  Incompressible transport
cancels the bulk kinetic-energy term; the annular collar is exactly where the
material exchange is measured.

A sign test is immediate: under the frozen algebraic replacement `U -> -U`, the
cubic collar functional changes sign while the collar and metric are fixed.
A nonzero cubic functional with that parity cannot be a nonnegative loss.  To
control its positive part one must either keep it inside the full positive
clock or prove an additional same-packet cancellation that also controls the
new pressure-stress terms.

## 4. Combined signed form

Combining `(SCG.15)` with the remaining derivative terms gives a modified
signed identity

```math
{d\over dt}\left(F_\phi^\sharp+Y_\phi\right)
=
I_1
+
I_{2,\nu}
+I_3
+
\int P\,(\nabla\cdot T^\sharp)\cdot\nabla\phi
-
\int P\,U_i(\partial_iU_k)(\partial_k\phi),
\tag{SCG.23}
```

where `I_{2,nu}` is the viscous stress-time piece written by `(SCG.19)`.

The right side contains only same-packet annular pressure, stress, velocity,
strain, and collar terms.  That is good: it proves the pressure-time service is
not detached from the physical packet.

The right side is not sign-definite and is not controlled by ordinary energy.
Its positive part is exactly part of the full pressure-viscosity-
incompressibility-velocity material action.

## 5. Exact conclusion for the frontier

The signed cancellation test proves:

```math
\left|D_tP\right|\text{ as a raw time symbol is removable.}
\tag{SCG.24}
```

It does not prove:

```math
\int_0^{T_*}
\left(
\text{positive pressure-stress service}
+
\text{positive cubic collar service}
\right)dt
<\infty .
\tag{SCG.25}
```

Therefore the next theorem is not a pressure-time theorem in isolation.  The
actual remaining object is still the full same-material positive annular action
clock:

```math
\int_0^{T_*}d\Omega_N^{full}<\infty,
\tag{SCG.26}
```

or an equivalent prelimit master balance that puts the pressure-stress and cubic
collar terms on the left before compactness.

This test closes one false escape route: there is no hidden elementary signed
cancellation that turns the pressure-time elliptic service and cubic gradient
pieces into a summable residual.  The cancellation preserves participation by
redistributing the terms inside the same packet; it does not produce finite
positive action by itself.