---
theorem_id: forward-gold-vorticity-stretching-signed-enstrophy-ledger-direct-attempt-20260622
status: signed-stretching-ledger-proved-positive-selected-carrier-saturation-remains
logical_landing_node: vorticity_stretching_signed_enstrophy_ledger
edge_effect: >-
  Attacks SamePacketVorticityStretchingPayment.A through the exact vorticity
  equation. On a transported same-packet cutoff, the signed stretching integral
  int phi omega dot S omega is exactly enstrophy storage change plus viscous
  vorticity dissipation plus collar terms. This is the correct full-packet
  participation ledger for the stretching mechanism. It does not by itself pay
  the selected positive carrier int phi [omega dot S omega]_+, because positive
  part does not commute with the signed enstrophy identity. The remaining gold
  clause is positive-stretching saturation/order-lock on the same packet, or an
  endpoint no-jump theorem for the signed enstrophy storage record.
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-pressure-cancellation-global-local-audit-20260622.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-carrier-curl-source-transport-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-native-stretching-atom-to-finite-rung-field-face-20260621.md
---

# Vorticity Stretching Signed Enstrophy Ledger Direct Attempt

Date: 2026-06-22

## 0. Target

After the strain-pressure audit, the bulk production wall is positive
vorticity stretching:

```math
A_\eta(s)
=
\int \eta^2[\omega\cdot S\omega]_+\,dy .
\tag{VSL.1}
```

This note tests the exact same-packet payment supplied by the vorticity
equation.

## 1. Exact vorticity equation

For the normalized velocity \(V\),

```math
\omega=\nabla\times V,
\qquad
(\partial_s+V\cdot\nabla-\nu\Delta)\omega
=
S\omega .
\tag{VSL.2}
```

Let \(\phi=\eta^2\) be a transported material cutoff:

```math
(\partial_s+V\cdot\nabla)\phi=0.
\tag{VSL.3}
```

Incompressibility gives material volume preservation.  Testing `(VSL.2)`
against \(\phi\omega\) gives

```math
{1\over2}{d\over ds}\int\phi|\omega|^2
+
\nu\int\phi|\nabla\omega|^2
=
\int\phi\,\omega\cdot S\omega
-
\nu\int \nabla\phi\cdot(\omega\cdot\nabla\omega).
\tag{VSL.4}
```

Equivalently,

```math
\boxed{
\int\phi\,\omega\cdot S\omega
=
{1\over2}{d\over ds}\int\phi|\omega|^2
+
\nu\int\phi|\nabla\omega|^2
+
\nu\int \nabla\phi\cdot(\omega\cdot\nabla\omega).
}
\tag{VSL.5}
```

This is the exact signed same-packet stretching ledger.

The collar term is internal to the same packet.  With a nested cutoff
\(\eta\prec\eta_1\),

```math
\left|
\nu\int \nabla\phi\cdot(\omega\cdot\nabla\omega)
\right|
\le
\varepsilon\nu\int\eta_1^2|\nabla\omega|^2
+
C_\varepsilon\nu\int |\omega|^2|\nabla\eta|^2 .
\tag{VSL.6}
```

So signed stretching is paid by enstrophy storage, vorticity-gradient
dissipation, and same-packet collar cost.

## 2. Why this does not pay the selected positive carrier

The gold carrier is not the signed integral in `(VSL.5)`.  It is the positive
selected carrier `(VSL.1)`.

Pointwise,

```math
[\omega\cdot S\omega]_+
\ne
\omega\cdot S\omega.
\tag{VSL.7}
```

The signed ledger can cancel large positive stretching against large negative
stretching:

```math
\int\phi\,\omega\cdot S\omega
\text{ small}
\quad\text{while}\quad
\int\phi[\omega\cdot S\omega]_+
\text{ large}.
\tag{VSL.8}
```

Thus `(VSL.5)` proves a signed participation identity, not positive selected
carrier payment.

## 3. Exact remaining positive-part bridge

To turn `(VSL.5)` into gold payment for `(VSL.1)`, one needs a same-packet
saturation/order-lock theorem:

```math
\boxed{
\int_I\int\phi[\omega\cdot S\omega]_+
\le
C
\left[
\int_I
\left(
{d\over ds}\int\phi|\omega|^2
\right)_+
+
\nu\int_I\int\eta_1^2|\nabla\omega|^2
+
\text{collar/legal}
\right].
}
\tag{VSL.9}
```

Equivalently, the negative stretching partner cannot disappear from the same
packet while the selected positive stretching survives.

This is the same signed/positive problem, now in the exact vorticity-stretching
carrier.  It is not a pressure-only, strain-only, or viscosity-only problem.

## 4. Endpoint storage form

Even for signed stretching, `(VSL.5)` contains the storage term

```math
E_\omega(s)
=
{1\over2}\int\phi|\omega|^2 .
\tag{VSL.10}
```

A terminal pulse can appear as positive enstrophy storage concentration unless
the same-packet endpoint storage has a no-jump modulus:

```math
\lim_{\theta\downarrow0}\limsup_m
\left[
E_{\omega,m}(0)-E_{\omega,m}(-\theta)
\right]_+
=0
\tag{VSL.11}
```

or unless that storage jump is admitted into the four-body packet on the
retained heat-scale annular record.

## 5. Result

The signed stretching payment is proved:

```math
\boxed{
\text{signed } \omega\cdot S\omega
=
\text{enstrophy storage}
+
\text{vorticity-gradient dissipation}
+
\text{same-packet collar}.
}
\tag{VSL.12}
```

The selected positive stretching payment is not proved.  The sharpened missing
clause is:

```math
\boxed{
\texttt{PositiveVorticityStretchingSaturation.A}
}
\tag{VSL.13}
```

or an equivalent same-packet endpoint no-jump theorem for the vorticity
enstrophy storage record.

With that clause, the chain becomes:

```math
\text{positive stretching saturation}
\Longrightarrow
\text{signed enstrophy ledger}
\Longrightarrow
\text{same-packet strain tower payment}
\Longrightarrow
\text{strain-metric clock}
\Longrightarrow
\text{retained heat-scale material annulus}.
\tag{VSL.14}
```
