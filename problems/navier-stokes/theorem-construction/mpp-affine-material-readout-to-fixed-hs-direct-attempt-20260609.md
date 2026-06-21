---
ns_viewer:
  theorem_id: affine-material-readout-to-fixed-hs-direct-attempt-20260609
  status: failed-readout-condition-number-budget-missing
  proof_role: pack_readout_bypass_direct_attempt
  logical_landing_node: affine-readout-condition-number-budget
  edge_effect: "Tests AffineMaterialReadoutToFixedHs.A as a possible replacement for Pack_{Q_atlas}. Affine/material packet estimates are valid in the moving affine metric, but fixed-coordinate H^s continuation requires uniform ellipticity of that metric. Determinant-one volume preservation is not enough; unbounded condition number makes the fixed Sobolev readout blow up. The active child becomes AffineReadoutConditionNumberBudget.A / UniformAffineMetricEllipticity.A, which is exactly the missing finite deformation/readout comparability budget under a sharper name."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-cmi-pack-noncollapse-parent-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-torus-global-material-atlas-terminal-capture-20260526.md
    - problems/navier-stokes/theorem-construction/mcp-affine-metric-replacement-for-isotropic-packet-bound-20260504.md
    - problems/navier-stokes/theorem-construction/mcp-pointwise-class-readout-to-h-s-continuation-norm-ecq-a-08ac0ba729.md
  downstream_consequence: "Affine/material packet calculus remains valid local support, but it does not replace Pack_{Q_atlas} for Clay finality. The next theorem atom is a condition-number/deformation budget that converts affine H^s control on the transported atlas into fixed-coordinate H^s(T^3), or a genuinely different readout theorem that avoids that conversion."
---

# MPP AffineMaterialReadoutToFixedHs.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt.  This note does not close
`AffineMaterialReadoutToFixedHs.A`, `Pack_{Q_atlas}`,
`OriginalSmoothDataPackSurvival.A`, `NoGenuineExitFromSmoothData.A`, or CMI
finality.

## Target

The Field-window support parent attempt left a possible bypass:

```text
AffineMaterialReadoutToFixedHs.A:
affine/material-metric continuation packet on Q_atlas
=> bounded fixed-coordinate H^s(T^3) readout.
```

If this theorem were true without finite deformation comparability, it would
replace the readout-compatible part of `Pack_{Q_atlas}`.  The goal of this
pass is to test that replacement directly.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target object: a possible Pack/readout replacement for the torus global
material atlas.

Object role: public Clay finality bridge under the first Field-window evidence.

Logical skeleton: direct coordinate-change test plus obstruction model.

Mechanism: affine heat packet estimates, material/affine Sobolev norms, fixed
Sobolev continuation norm, and condition number of the affine frame.

## Installed Inputs

The affine packet note proves the right local packet statement: after central
affine extraction, the heat packet estimate is valid in the affine coordinate
`y=J^{-1}(x-X)`.

It also proves the important boundary:

```text
det J = 1
```

preserves packet volume, while the condition number

```text
kappa(J)=||J|| ||J^{-1}||
```

can still be arbitrarily large.  The affine metric is therefore a valid packet
metric; it becomes a fixed Euclidean readout metric only after a fixed-coordinate
readout theorem.

The pointwise class readout theorem proves fixed-coordinate continuation only
after the retained witness includes `Pack_Q`, because Pack supplies bounded
deformation and bounded overlap for the terminal atlas.

## Direct Coordinate Test

Let

```text
v(y)=u(Jy)
```

with `det J=1`.  Then

```text
grad_x u(x) = J^{-T} grad_y v(y).
```

At Sobolev order `s`, the fixed-coordinate derivatives include coefficients
with powers of `J^{-1}`:

```text
||u||_{H^s_x}
<= C_s ||J^{-1}||^s ||v||_{H^s_y}
```

and the reverse comparison includes powers of `J`.  Thus an affine/material
`H^s` bound gives a fixed-coordinate `H^s` bound only when the affine frame is
uniformly elliptic:

```text
sup_t ||J(t)|| ||J(t)^{-1}|| < infinity.
```

That is precisely the deformation/readout comparability service that
`Pack_{Q_atlas}` was carrying.

## Obstruction Model

Take determinant-one linear frames

```text
J_m = diag(lambda_m, lambda_m^{-1}, 1),
\qquad lambda_m -> infinity.
```

The affine packet volume is unchanged.  A function family can remain controlled
in the `y`-metric while its fixed `x` derivatives in the compressed direction
acquire factors of `lambda_m`.  The fixed-coordinate `H^s(T^3)` norm can
therefore diverge while the affine packet norm remains bounded.

This is not a technical defect in the packet estimate.  It is the mathematical
reason the affine packet estimate cannot replace the fixed readout without a
condition-number budget.

## Result

`AffineMaterialReadoutToFixedHs.A` is not proved from current inputs.

The exact missing atom is:

```text
AffineReadoutConditionNumberBudget.A
```

equivalently:

```text
UniformAffineMetricEllipticity.A:
sup_t ||J_t|| ||J_t^{-1}|| < infinity
```

on the transported torus atlas, or a genuinely different theorem showing that
fixed-coordinate `H^s(T^3)` is bounded without comparing the affine metric to
the fixed metric.

As currently stated, the affine/material bypass collapses back to the
readout-compatible deformation budget inside `Pack_{Q_atlas}`.  It remains
useful local packet calculus, but it is not a Clay-final readout replacement.

## New Live Criticism

`NS-LIVE-20260609-181`: `AffineMaterialReadoutToFixedHs.A` is not proved.  The
affine packet estimates are valid in the moving affine/material metric, but
fixed-coordinate `H^s(T^3)` continuation requires a uniform condition-number
budget for the affine atlas.  Determinant-one volume preservation does not
control this budget, and unbounded affine aspect ratio can preserve affine
packet volume while fixed Sobolev derivatives blow up.  CMI finality remains
blocked until `AffineReadoutConditionNumberBudget.A`,
`UniformAffineMetricEllipticity.A`, or a genuinely different fixed-readout
theorem is proved and propagated through `Pack_{Q_atlas}`,
`OriginalSmoothDataPackSurvival.A`, `NoGenuineExitFromSmoothData.A`, and the
final PDF rereads.
