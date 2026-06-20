---
theorem_id: forward-gold-square-parent-or-charge-for-reserve-direct-test-20260620
status: direct-parent-or-charge-test-complete-not-proved
logical_landing_node: square_parent_or_charge_for_reserve
edge_effect: "Tests the dynamic parent-or-charge law exposed after square-carrier adjoint localization failed. The law is not produced by the installed normalized-adjoint package. Principal-flow gain can create a fixed positive integrated selected square reserve inside the first square window from boundary packet mass that tends to zero, with zero residual charge and no earlier threshold-crossing square window."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-carrier-adjoint-localization-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-square-first-pulse-no-parent-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-donor-reserve-adjoint-trace-reentry-20260609.md
  - problems/navier-stokes/theorem-construction/mcp-squarereserveevolution-a-squarereserveevolution-a-direct-dynamic-reserve-attempt-a41ab75850.md
downstream_consequence: "SquareParentOrChargeForReserve.A reduces to a square-height/thickness law for principal-flow gain, or to charging principal gain itself in the square ledger. Boundary child mass, linear parent-or-charge, and first square-window selection do not pay the integrated square reserve."
---

# MPP Forward-Gold Square Parent-Or-Charge For Reserve Direct Test

Date: 2026-06-20

## Status

Direct parent-or-charge test complete.  The theorem is not proved from current
inputs.

The square first-window selection is formal.  The missing part is the dynamic
law that would turn square reserve inside the first window into an earlier
square parent, a residual charge, or a legal square exit.

## 1. Target

The sharpened target after the square-carrier adjoint localization test is

```math
\boxed{
\textbf{SquareParentOrChargeForReserve.A}
}
\tag{SPC.1}
```

The desired inequality has the form

```math
\mathcal R_T^{sq}
\le
Charge_T^{sq}
+Parent_T^{sq}
+Legal_T+o(1),
\tag{SPC.2}
```

where the selected square reserve is

```math
\mathcal R_T^{sq}
=
\lambda_T
\int_{I_T}
\bigl(\Pi_T^{part,+}(t)\bigr)^2dt.
\tag{SPC.3}
```

`Charge_T^{sq}` is meant to be paid by weighted adjoint residual squares,
`Parent_T^{sq}` by earlier square reserve, and `Legal_T` by already declared
legal exits.

## 2. What firstness gives and what it does not give

Selecting the square reserve measure itself gives an earliest window \(I_T\)
with

```math
\mathcal R_T^{sq}\ge\eta
\tag{SPC.4}
```

and no earlier admissible dyadic same-fluid window with square reserve at the
same fixed threshold.  That removes earlier threshold-crossing square windows.

It does not remove square reserve created inside \(I_T\) by principal-flow
gain.  To remove that branch, `(SPC.2)` must prove that such gain has a paid
source: residual square charge, legal square loss, or an earlier square parent
in the same square units.

## 3. Exact scalar principal-gain model

Use the scalar principal-flow normal form from the localization test.  Let

```math
I_\lambda=[0,\lambda^{-2}],
\qquad
{d\over dt}w(t)-\lambda^2w(t)=0,
\qquad
w(0)=\lambda^{-3/4}.
\tag{SPC.5}
```

Then

```math
w(t)=\lambda^{-3/4}e^{\lambda^2t},
\qquad
R_\lambda=0.
\tag{SPC.6}
```

Define the selected participation current by the principal gain term

```math
\Pi_\lambda^{part,+}(t)
=
\lambda^2w(t)^2
=
\lambda^{1/2}e^{2\lambda^2t}.
\tag{SPC.7}
```

The square reserve over the heat window is exact:

```math
\mathcal R_\lambda^{sq}
=
\lambda\int_0^{\lambda^{-2}}
\bigl(\Pi_\lambda^{part,+}(t)\bigr)^2dt
=
{e^4-1\over4}.
\tag{SPC.8}
```

The residual charge is zero:

```math
Charge_\lambda^{sq}=0.
\tag{SPC.9}
```

The boundary packet masses tend to zero:

```math
w(0)^2=\lambda^{-3/2},
\qquad
w(\lambda^{-2})^2=e^2\lambda^{-3/2}.
\tag{SPC.10}
```

Thus any parent-or-charge law whose parent term is controlled by normalized
boundary child mass gives only \(o(1)\), while `(SPC.8)` stays positive.

## 4. Why earlier square-window firstness still does not pay it

For \(0\le \theta\le1\), the square reserve accumulated on the prefix
\([0,\theta\lambda^{-2}]\) is

```math
\mathcal R_\lambda^{sq}(\theta)
=
\lambda\int_0^{\theta\lambda^{-2}}
\lambda e^{4\lambda^2t}\,dt
=
{e^{4\theta}-1\over4}.
\tag{SPC.11}
```

For any fixed threshold \(0<\eta<(e^4-1)/4\), the first crossing occurs at

```math
\theta_\eta
=
{1\over4}\log(1+4\eta).
\tag{SPC.12}
```

So first-window selection can choose the first prefix where
\(\mathcal R_\lambda^{sq}(\theta)\ge\eta\).  At that crossing, there is no
earlier order-\(\eta\) square window by construction.

The reserve has nevertheless been created by principal gain inside the selected
window with no residual charge.  This proves that firstness alone is not a
dynamic square parent-or-charge law.

## 5. What a successful theorem must add

The model leaves only three noncircular options.

First, charge principal gain itself in square units:

```math
\lambda\int_{I_T}
\left(
\lambda_T^2|w_T(t)|^2
\right)^2dt
\le
Charge_T^{gain}+Legal_T+o(1).
\tag{SPC.13}
```

This is the selected participation square budget in another notation.

Second, prove a square-height/thickness law preventing short high-gain windows:

```math
\lambda_T\int_{I_T}
\bigl(\Pi_T^{part,+}\bigr)^2dt
\le
C\,\Theta_T^{sq}(I_T)
\tag{SPC.14}
```

where \(\Theta_T^{sq}\) is a genuine square-strength residence, height, or
critical-action ledger, not a linear mass ledger.

Third, prove a square parent trace theorem:

```math
\mathcal R_T^{sq}
\le
C\,\mathcal R^{sq}(Past(T))
+Charge_T^{sq}
+Legal_T+o(1),
\tag{SPC.15}
```

with a past term measured in the same square units.  The installed
normalized-adjoint parent-or-charge theorem evolves terminal child mass, not
the integrated square reserve `(SPC.3)`, so it does not provide `(SPC.15)`.

## Verdict

`SquareParentOrChargeForReserve.A` is not installed and is not a consequence of
the current normalized-adjoint parent-or-charge law.

The exact failure is:

```math
\boxed{
\text{principal-flow gain can create first-window square reserve from }o(1)
\text{ boundary mass with zero residual charge.}
}
\tag{SPC.16}
```

The branch reduces to a genuine square-strength production theorem:

```math
\boxed{
SquareReserveEvolution.A
\quad/\quad
DonorReserveAdjointTrace.A
\quad/\quad
ActiveWindowHeight.A
\quad/\quad
UnweightedTerminalCriticalActionReserve.A.
}
\tag{SPC.17}
```

The scalar model also shows why replacing square reserve by linear
source-pulse ancestry loses the live enemy: the boundary and linear masses
tend to zero while the selected square reserve remains fixed.
