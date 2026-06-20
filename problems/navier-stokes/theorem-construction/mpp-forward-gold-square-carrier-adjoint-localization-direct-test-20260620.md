---
theorem_id: forward-gold-square-carrier-adjoint-localization-direct-test-20260620
status: direct-localization-test-complete-not-proved
logical_landing_node: square_carrier_adjoint_localization
edge_effect: "Tests the unworked same-carrier localization subpiece in the selected-participation-to-weighted-residual-square bridge. The bridge is not a consequence of the installed normalized-adjoint source-drain package. The selected participation square counts principal positive strain work, while the source-drain residual R_{j,k} is defined after that principal strain has been moved into the propagator. A pure principal-strain amplification model has zero weighted adjoint residual but order-one selected participation square reserve."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-to-weighted-residual-square-direct-attempt-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-square-budget-parent-drain-production-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-source-drain-definition-alignment-and-discharge-20260504.md
  - problems/navier-stokes/theorem-construction/mpp-principal-flow-adjoint-parent-or-charge-note-20260504.md
downstream_consequence: "SquareCarrierAdjointLocalization.A reduces to a dynamic square parent-or-charge law for the principal-strain amplified reserve, or to redefining the selected square carrier after removing principal strain amplification. Current installed inputs pay residual creation, not square reserve created by gain along the principal packet flow."
---

# MPP Forward-Gold Square Carrier Adjoint Localization Direct Test

Date: 2026-06-20

## Status

Direct localization test complete.  The theorem is not proved from current
inputs.

The normalized-adjoint source-drain package is doing the right thing for the
linear source-pulse route: it moves principal positive strain into the packet
propagator and charges only residual creation.  That is exactly why it does not
localize the selected participation square current for free.

## 1. Target

The selected square bridge exposed the subpiece:

```math
\boxed{
\textbf{SquareCarrierAdjointLocalization.A}
}
\tag{SCA.1}
```

The desired content is that the selected positive participation square on a
terminal packet family can be represented by weighted adjoint residual pairings,
modulo legal and parent terms:

```math
\sum_T\lambda_T
\int_{I_T}
\bigl(\Pi_T^{part,+}(t)\bigr)^2dt
\le
C\sum_T
\left|
\int_{I_T}
g_T(t)^{-1}
\langle R_{j,k},\psi_T\rangle\,dt
\right|^2
+Parent^{sq}+Legal+o(1).
\tag{SCA.2}
```

If `(SCA.2)` held with a paid parent term, `WeightedAdjRes.A` would pay the
selected square budget.

## 2. Installed adjoint residual object

The source-drain package writes the localized high-frequency packet equation as

```math
L_{j,k}w_j=R_{j,k},
\qquad
L_{j,k}
=
\partial_t+b_k\cdot\nabla-\nu\Delta-A_k.
\tag{SCA.3}
```

The matrix \(A_k\) is chosen so that the retained principal positive strain
work is part of the principal operator.  The residual is

```math
R_{j,k}
=
R^{comm}_{j,k}
+R^{press}_{j,k}
+R^{cut}_{j,k}
+R^{off}_{j,k}.
\tag{SCA.4}
```

The weighted adjoint charge is

```math
\sum_T
\left|
\int_{I_T}
g_T(t)^{-1}\langle R_{j,k},\psi_T\rangle\,dt
\right|^2.
\tag{SCA.5}
```

Thus `(SCA.5)` measures residual creation after low transport, viscosity, and
principal strain amplification have been placed in the propagator.

## 3. The selected participation square counts a different object

The selected participation current includes the positive work seen by the
packet:

```math
\Pi_T^{part,+}(t)
\simeq
\int_{Q_T}
\left[
\langle A_k(t,x)w_j(t,x),w_j(t,x)\rangle
\right]_+dx
+\text{lower and legal terms}.
\tag{SCA.6}
```

This is a same-fluid participation reading.  It is not the same as the
residual \(R_{j,k}\).  In fact the leading term in `(SCA.6)` has deliberately
been removed from `(SCA.4)` by the definition of \(L_{j,k}\).

Therefore `(SCA.2)` cannot be a formal localization identity.  It would need an
extra theorem saying that principal-strain amplification either has a square
parent or pays a square residual charge.

## 4. Scalar packet countermodel to the localization implication

The obstruction is already present in a scalar model of the principal packet
flow.  On a heat window

```math
I_\lambda=[0,\lambda^{-2}],
\tag{SCA.7}
```

consider

```math
{d\over dt}w(t)-a_\lambda w(t)=0,
\qquad
a_\lambda=\lambda^2.
\tag{SCA.8}
```

This is the scalar analogue of \(L_{j,k}w=0\).  The residual is exactly zero:

```math
R_\lambda=0.
\tag{SCA.9}
```

Choose the packet size so that

```math
w(t)^2\simeq \lambda^{-3/2}
\quad\text{on }I_\lambda.
\tag{SCA.10}
```

The selected positive participation current is then

```math
\Pi_\lambda^{part,+}(t)
=
a_\lambda w(t)^2
\simeq
\lambda^{1/2}.
\tag{SCA.11}
```

The selected square reserve is order one:

```math
\lambda\int_{I_\lambda}
\bigl(\Pi_\lambda^{part,+}(t)\bigr)^2dt
\simeq
\lambda\lambda\lambda^{-2}
=1.
\tag{SCA.12}
```

But the weighted adjoint residual charge is zero:

```math
\left|
\int_{I_\lambda}
g(t)^{-1}\langle R_\lambda,\psi(t)\rangle\,dt
\right|^2
=0.
\tag{SCA.13}
```

So the implication

```math
\text{selected participation square}
\Longrightarrow
\text{weighted residual square}
\tag{SCA.14}
```

is false before parent/gain accounting is added.

This example is not presented as a Navier--Stokes solution.  It is the exact
normal form of the bookkeeping mismatch: the selected square current may be
large because the principal flow amplifies the packet, while the residual
charge is zero because no residual creation occurred.

## 5. Parent terms are not optional

For the scalar model, the endpoint packet mass is inherited from the earlier
face:

```math
w(\lambda^{-2})=e\,w(0).
\tag{SCA.15}
```

The normalized adjoint package correctly records this as parent mass, not
residual charge.  Hence any square-localization theorem must include a dynamic
square parent-or-charge law:

```math
\boxed{
\mathcal R_T^{sq}
\le
Charge_T^{sq}
+Parent_T^{sq}
+Legal_T+o(1).
}
\tag{SCA.16}
```

The installed source-drain parent-or-charge law is for normalized child mass

```math
M(T)=|\langle w_j(t_+),\chi_T(t_+)\rangle|^2,
\tag{SCA.17}
```

not for the integrated square participation reserve

```math
\mathcal R_T^{sq}
=
\lambda_T
\int_{I_T}
\bigl(\Pi_T^{part,+}(t)\bigr)^2dt.
\tag{SCA.18}
```

This is why `SquareFirstPulseNoParent.A` was sharpened to
`SquareParentOrChargeForReserve.A`: firstness of the square window is formal,
but the dynamic evolution law for the square reserve is not installed.

## 6. Exact reduction

`SquareCarrierAdjointLocalization.A` would become true under either of the
following stronger replacements.

First, redefine the selected square carrier after removing principal-strain
amplification:

```math
\Pi_T^{res,+}
=
\text{positive part of the residual creation current only}.
\tag{SCA.19}
```

Then adjoint residual localization is plausible, but it is no longer the
original selected participation square carrier.

Second, prove the square dynamic parent-or-charge theorem:

```math
\boxed{
SquareParentOrChargeForReserve.A
}
\tag{SCA.20}
```

or equivalently

```math
\boxed{
SquareReserveEvolution.A
\quad\text{or}\quad
DonorReserveAdjointTrace.A.
}
\tag{SCA.21}
```

That theorem must convert principal-flow gain of the selected square reserve
into an earlier square parent, a residual square charge, or a legal square
exit.

## Verdict

`SquareCarrierAdjointLocalization.A` is not installed and is not a formal
consequence of `WeightedAdjRes.A`.

The exact reason is:

```math
\boxed{
\text{the selected participation square counts principal-strain gain, while
the adjoint residual square counts only residual creation after that gain is
moved into the propagator.}
}
\tag{SCA.22}
```

The branch reduces to:

```math
\boxed{
SquareParentOrChargeForReserve.A
\quad/\quad
SquareReserveEvolution.A
\quad/\quad
DonorReserveAdjointTrace.A
}
\tag{SCA.23}
```

or to changing the selected carrier to a residual-only square current, which
would no longer be the actual forward-gold participation square obstruction.
