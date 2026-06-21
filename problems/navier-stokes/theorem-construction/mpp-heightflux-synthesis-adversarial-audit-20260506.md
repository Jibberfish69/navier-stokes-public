# HeightFlux Synthesis Adversarial Audit

Date: 2026-05-06

Status: audit note; no theorem discharge.

Post-audit correction: `FirstHeightCreationDichotomy.A` has now been attempted
directly and collapsed as an independent target.  The historical corrected
reading was that first-height language points back to `HeightFluxControl.A`
plus a genuine structural mechanism.

Exactness rework correction, 2026-06-18: "points back to
`HeightFluxControl.A`" means historical supplier-refinement only.  Current live
surfaces no longer allow old ActiveHeightFlux / SourceReserve / SignedPair /
no-free-sink labels to count as fresh progress or CM proof force.  Any use of
this stack must now supply either same-ledger payment or CM-test admission plus
a first Part/Field failure; otherwise it remains support-level.

Purpose: record the mathematical audit of the new CM / HeightFluxControl
synthesis before any promotion-grade use.

## 1. Verdict

The synthesis is useful, but only as target refinement.

It correctly keeps the Navier-Stokes lane inside the CM contrapositive grammar:

```text
Exit(Q;O_NS^work) := not Member(Q;O_NS^work),
CM = Pack + Part + Field.
```

It also correctly identifies the residual source wall as a Field-face problem
after the witness split, not as a primitive positive bootstrap from
`OriginalSmoothData`.

The synthesis does not prove `ScaleCriticalTreeCarleson.A`,
`ReserveCreationCharge.A`, `DonorHeightCreation.A`, or `HeightFluxControl.A`.

## 2. Valid refinement

The scalar factorization is an exact algebraic reduction for the displayed
quantities:

```math
R_N(W)
\le
H_N(W)M_N(W),
\qquad
H_N(W):=\sup_{t\in W}\sup_{k>N}2^k\sum_{\ell>k+4}D_\ell(t).
```

Thus, for a fixed threshold `\eta>0`, if

```math
R_N(W)\ge \eta,
\qquad
M_N(W)=o_N(1),
```

then on every such window with `M_N(W)>0`,

```math
H_N(W)\ge {\eta\over M_N(W)}.
```

Consequently, along any sequence with `M_N(W_N)=o_N(1)` and
`R_N(W_N)\ge\eta`, the height quantity satisfies `H_N(W_N)\to\infty`.  This
justifies looking for a height-creation theorem rather than trying to control
the spike-sensitive square reserve by first-moment energy alone.

## 3. Failed overpromotion

The invalid step was:

```text
first square-reserve pulse
=> first donor-height creation.
```

A first `R_N` pulse only gives large current height. Large `H_N` may have
existed on earlier very thin sets without creating past square-reserve mass.
Therefore a first square-reserve pulse creates first-time donor height only
after the height source is localized to that first reserve event:

```math
\left[
H_N(W)-H_N(Past(W))-Loss^{height}_{legal}(W)
\right]_+
```

large.

The direct branch was tested through one additional theorem:

```text
FirstHeightCreationDichotomy.A
```

or an equivalent first-height selection theorem.

That test is now closed negatively by
`mpp-firstheightcreation-dichotomy-terminal-attempt-and-collapse-20260506.md`.

The required dichotomy is:

```text
large active H_N
=> inherited parent height
   or legal native height charge
   or terminal rigidity / no-incoming violation.
```

Since that theorem collapsed, `DonorHeightCreation.A` can be spent toward
first-pulse `ReserveCreationCharge.A` only after a real structural
`HeightFluxControl.A` mechanism is installed.

## 4. Historical corrected direct stack

The audit-open direct target stack was:

```text
HeightFluxControl.A
=> DonorHeightCreation.A
=> ReserveCreationCharge.A
=> SquareReserveEvolution.A
=> ScaleCriticalTreeCarleson.A.
```

This is a proposed theorem-crank stack, not an installed implication chain.
Under the current live frontier it is also not the current target label by
itself.  It can re-enter only as a same-witness anti-concentration,
source-Carleson, rigid-anti-atom, non-source Pack-survival, or equivalent
same-ledger payment mechanism.

## 5. Shell-balance hard term

The shell-balance attempt correctly isolates the hard positive carrier:

```math
\int_W
\sup_{k>N}
\left[
2^k\sum_{\ell>k+4}2^{2\ell}F_\ell(t)
\right]_+
dt.
```

Scalar damping and first-moment energy do not control this carrier. A valid
proof needs a genuinely Navier-Stokes structural input, such as:

```text
signed cancellation surviving one-sided weights,
active strain decorrelation,
pressure/viscous depletion of expanding directions,
native height-charge monotonicity,
or terminal tangent / no-incoming rigidity.
```

## 6. Promotion boundary

The CM convergence atlas, senior research architect synthesis memo, actual
HeightFluxControl synthesis memo, and donor-height reduction note are retained
as audit-open target-refinement surfaces.

They may guide theorem attempts and automation routing.

They must not be used as theorem-grade discharges or release/promotion
evidence.  The exact promotion boundary is now sharper than "prove
HeightFluxControl": prove the same-ledger payment or CM-test admission plus the
first Part/Field failure for the retained same-witness terminal
branch.
