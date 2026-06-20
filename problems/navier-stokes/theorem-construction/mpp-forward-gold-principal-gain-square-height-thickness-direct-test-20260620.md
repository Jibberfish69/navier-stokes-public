---
theorem_id: forward-gold-principal-gain-square-height-thickness-direct-test-20260620
status: direct-height-thickness-test-complete-not-proved
logical_landing_node: principal_gain_square_height_thickness
edge_effect: "Tests the remaining square-height/thickness supplier exposed by the square parent-or-charge direct test. Heat-window thickness and vanishing linear participation mass do not control the selected square reserve. The scalar principal-gain normal form has natural heat thickness, zero residual charge, vanishing boundary mass, vanishing linear participation mass, and fixed positive square reserve because the pointwise active height grows like lambda^(1/2)."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-parent-or-charge-for-reserve-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-active-window-height-logtail-direct-test-20260619.md
  - problems/navier-stokes/theorem-construction/mpp-active-square-amplitude-thickness-branch-consolidation-20260611.md
downstream_consequence: "PrincipalGainSquareHeightThickness.A is not an independent installed supplier. It closes only after a pointwise active-height theorem, a selected height plus logarithmic tail theorem, a same-unit square reserve evolution theorem, or a direct selected participation square budget / no-waste theorem is proved."
---

# MPP Forward-Gold Principal-Gain Square Height/Thickness Direct Test

Date: 2026-06-20

## Status

Direct height/thickness test complete.  The theorem is not proved from current
inputs.

The calculation separates two facts:

1. heat-scale thickness is the correct natural time length;
2. heat-scale thickness does not upper-bound a square reserve unless a
   pointwise active-height bound is also present.

## 1. Target

The parent-or-charge test left the option

```math
\boxed{
\textbf{PrincipalGainSquareHeightThickness.A}
}
\tag{PGH.1}
```

The intended use is to pay the selected principal-gain square reserve

```math
\mathcal R_T^{sq}
=
\lambda_T\int_{I_T}
\bigl(\Pi_T^{part,+}(t)\bigr)^2dt
\tag{PGH.2}
```

from heat-window residence, thickness, linear participation mass, or a height
cap.

For a nonnegative selected current \(\Pi(t)\), define

```math
L(I):=\int_I\Pi(t)\,dt,
\qquad
H(I):=\sup_{t\in I}\Pi(t).
\tag{PGH.3}
```

Then the exact upper estimate is only

```math
\lambda\int_I\Pi(t)^2dt
\le
\lambda H(I)L(I).
\tag{PGH.4}
```

The interval length gives a lower estimate in the opposite direction:

```math
\int_I\Pi(t)^2dt
\ge
{|L(I)|^2\over |I|}.
\tag{PGH.5}
```

Thus thickness by itself cannot pay the square reserve.  To use `(PGH.4)`, one
must control the height factor \(H(I)\), or else charge the square quantity
itself.

## 2. Exact scalar principal-gain test

Use the same scalar normal form as the square-carrier and parent-or-charge
tests:

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
{d\over dt}w(t)-\lambda^2w(t)=0,
\qquad
w(0)=\lambda^{-3/4}.
\tag{PGH.6}
```

Then

```math
w(t)=\lambda^{-3/4}e^{\lambda^2t},
\qquad
R_\lambda=0.
\tag{PGH.7}
```

The selected principal-gain current is

```math
\Pi_\lambda(t)
=
\lambda^2w(t)^2
=
\lambda^{1/2}e^{2\lambda^2t}.
\tag{PGH.8}
```

The heat thickness is exact:

```math
|I_\lambda|=\lambda^{-2}.
\tag{PGH.9}
```

The linear participation mass tends to zero:

```math
L_\lambda
:=
\int_0^{\lambda^{-2}}\Pi_\lambda(t)\,dt
=
{e^2-1\over 2}\lambda^{-3/2}.
\tag{PGH.10}
```

The boundary packet masses tend to zero:

```math
w(0)^2=\lambda^{-3/2},
\qquad
w(\lambda^{-2})^2=e^2\lambda^{-3/2}.
\tag{PGH.11}
```

The selected square reserve stays fixed positive:

```math
\mathcal R_\lambda^{sq}
=
\lambda\int_0^{\lambda^{-2}}\Pi_\lambda(t)^2dt
=
{e^4-1\over4}.
\tag{PGH.12}
```

The reason is the active height:

```math
H_\lambda
:=
\sup_{t\in I_\lambda}\Pi_\lambda(t)
=
e^2\lambda^{1/2}.
\tag{PGH.13}
```

Indeed `(PGH.4)` gives the finite positive upper scale

```math
\lambda H_\lambda L_\lambda
=
{e^2(e^2-1)\over2}.
\tag{PGH.14}
```

Thus the model has natural heat thickness, vanishing linear mass, vanishing
boundary mass, and zero residual charge, while its selected square reserve does
not vanish.

## 3. What the test proves

A heat-scale thickness law alone cannot close the branch.  The window already
has the natural heat length `(PGH.9)`.

A linear participation-mass law alone cannot close the branch.  The mass
`(PGH.10)` tends to zero while the square reserve `(PGH.12)` remains fixed.

A boundary child-mass law alone cannot close the branch.  Both endpoint packet
masses in `(PGH.11)` tend to zero.

The exact missing quantity is the pointwise active height `(PGH.13)`, or the
same square reserve `(PGH.12)` itself.

## 4. Relation to the existing active-height note

This is the same mechanism isolated in the global active-window height note.
There the reserve is

```math
\mathcal R_N(W)
=
\int_W\sum_{k>N}2^kT_k(t)^2dt
\tag{PGH.15}
```

and the height is

```math
H_N(W)
=
\sup_{t\in W}\sup_{k>N}2^kT_k(t).
\tag{PGH.16}
```

The exact algebra is

```math
\mathcal R_N(W)
\le
H_N(W)\int_W\sum_{k>N}T_k(t)\,dt.
\tag{PGH.17}
```

So a global height theorem would pay the reserve, but that theorem is
continuation-strength because it gives a uniform high-frequency \(H^1\) tail
up to the terminal time.  Current inputs do not supply it.

## Verdict

`PrincipalGainSquareHeightThickness.A` does not provide a new independent
supplier.

The direct calculation is:

```math
|I_\lambda|=\lambda^{-2},
\qquad
L_\lambda={e^2-1\over2}\lambda^{-3/2},
\qquad
H_\lambda=e^2\lambda^{1/2},
\qquad
\mathcal R_\lambda^{sq}={e^4-1\over4}.
\tag{PGH.18}
```

Therefore the height/thickness branch reduces to one of the already identified
square-strength suppliers:

```math
\boxed{
ActiveWindowHeight.A
\quad/\quad
\text{selected height plus log-tail control}
\quad/\quad
SquareReserveEvolution.A
\quad/\quad
SelectedParticipationSquareBudget.A
\quad/\quad
StrictNoWasteLocalEnergyFlux.A.
}
\tag{PGH.19}
```
