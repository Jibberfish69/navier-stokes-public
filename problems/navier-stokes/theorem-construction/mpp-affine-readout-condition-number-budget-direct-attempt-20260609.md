---
ns_viewer:
  theorem_id: affine-readout-condition-number-budget-direct-attempt-20260609
  status: failed-reduces-to-terminal-strain-tail-integrability
  proof_role: pack_readout_budget_direct_attempt
  logical_landing_node: pack-atlas-deformation-comparability
  edge_effect: "Tests AffineReadoutConditionNumberBudget.A / UniformAffineMetricEllipticity.A after AffineMaterialReadoutToFixedHs.A failed. The condition-number budget is exactly the finite deformation comparability in Pack_{Q_atlas}: d log kappa(J_t) is controlled by the symmetric strain along the transported atlas. Current affine/material inputs control packet estimates in the moving metric and coefficient remainders after central affine extraction; they do not control the central strain integral. The branch reduces to TerminalCollarStrainIntegrability.A / Pack deformation comparability, not to an independent Clay-final readout theorem."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-affine-material-readout-to-fixed-hs-direct-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mpp-cmi-pack-noncollapse-parent-attempt-20260609.md
    - problems/navier-stokes/theorem-construction/mcp-affine-metric-replacement-for-isotropic-packet-bound-20260504.md
    - problems/navier-stokes/theorem-construction/mpp-torus-global-material-atlas-terminal-capture-20260526.md
  downstream_consequence: "The affine readout bypass is exhausted as a public-finality route unless a new theorem supplies fixed-coordinate H^s readout without uniform ellipticity. The active proof search returns to Pack_{Q_atlas} / OriginalSmoothDataPackSurvival.A with the sharper fact that uniform affine ellipticity is terminal strain-tail control in disguise."
---

# MPP AffineReadoutConditionNumberBudget.A Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close
`AffineReadoutConditionNumberBudget.A`, `UniformAffineMetricEllipticity.A`,
`Pack_{Q_atlas}`, `OriginalSmoothDataPackSurvival.A`,
`NoGenuineExitFromSmoothData.A`, or CMI finality.

## Target

The previous pass showed that affine/material packet control does not imply a
fixed-coordinate `H^s(T^3)` continuation bound unless the affine atlas has a
uniform condition-number budget:

```text
AffineReadoutConditionNumberBudget.A:
sup_{t<T_*} ||J_t|| ||J_t^{-1}|| < infinity
```

for the transported atlas frames used in the readout.

This pass tests whether current inputs prove that budget.

## Method Pass

Proof program: Navier-Stokes CM contrapositive class exit.

Target object: the deformation comparability budget needed to convert affine
packet control into fixed-coordinate `H^s(T^3)` readout.

Object role: Pack/readout child under `Pack_{Q_atlas}` and
`OriginalSmoothDataPackSurvival.A`.

Logical skeleton: direct matrix-evolution estimate plus obstruction model.

Mechanism: singular-value evolution for the affine frame, terminal strain-tail
integrability, and the Pack face.

## Matrix Evolution

For a material or affine frame along the same solution, write

```text
dot J(t) = A(t) J(t),
\qquad A(t)=Du(X(t),t),
\qquad tr A(t)=0.
```

Let

```text
kappa(J)=||J|| ||J^{-1}||.
```

The skew part of `A` rotates the frame. The symmetric part

```text
S(t)=1/2(A(t)+A(t)^T)
```

changes singular values. The exact differential comparison used here is

```text
d/dt log ||J(t)|| <= ||S(t)||_{op},
```

and

```text
d/dt log ||J(t)^{-1}|| <= ||S(t)||_{op}.
```

Hence

```text
log kappa(J(t))
<= log kappa(J(0)) + 2 int_0^t ||S(tau)||_{op} dtau.
```

For a whole terminal atlas this becomes the required supremum over all retained
atlas charts:

```text
sup_Q log kappa(J_Q(t))
<= C + 2 int_0^t sup_Q ||S_Q(tau)||_{op} dtau.
```

Thus a sufficient input is exactly a terminal strain-tail bound:

```text
int_0^{T_*} sup_Q ||S_Q(t)||_{op} dt < infinity.
```

This is not new readout information. It is the deformation comparability
service already carried by `Pack_{Q_atlas}`.

## What Current Inputs Pay

The affine metric packet note pays a different cost. It says that, after
central affine extraction, packet estimates are valid in the moving affine
metric, and the coefficient-good budget controls the nonlinear remainders around
that central affine flow.

It also explicitly leaves the central affine strain unrestricted. For a purely
linear incompressible flow,

```text
b(x,t)=S(t)x,
qquad tr S(t)=0,
```

one has

```text
nabla^2 b = 0,
```

so the affine-packet remainder cost can vanish while

```text
J(t)=exp int_0^t S(tau) dtau
```

develops arbitrarily large aspect ratio.

Finite energy and incompressibility also do not pay this cost. They give volume
preservation and `L^2_t H^1_x` control, not the `L^1_t L^\infty_x` strain bound
that controls singular values of the transported atlas.

## Obstruction Model

Take determinant-one frames

```text
J_m = diag(lambda_m, lambda_m^{-1}, 1),
\qquad lambda_m -> infinity.
```

These frames preserve volume and are legitimate affine packet coordinates, but

```text
kappa(J_m)=lambda_m^2 -> infinity.
```

They can be produced by trace-free linear strain with large time integral. The
affine metric still sees a controlled ellipsoid; the fixed-coordinate `H^s`
readout sees the growing derivative factors.

So the condition-number budget is not a harmless bookkeeping estimate. It is the
terminal deformation wall itself.

## Result

`AffineReadoutConditionNumberBudget.A` is not proved from current inputs.

The direct proof reduces it to:

```text
TerminalCollarStrainIntegrability.A
```

or equivalently the deformation-comparability part of:

```text
Pack_{Q_atlas}.
```

That means the affine readout branch does not supply an independent route around
Pack. It only restates the same missing Pack service in affine-metric language.

## New Live Criticism

`NS-LIVE-20260609-182`: `AffineReadoutConditionNumberBudget.A` is not proved.
Uniform affine ellipticity for the terminal atlas follows from an `L^1_t`
terminal strain-tail bound, and current affine/material inputs do not provide
that bound. The affine packet calculus controls moving-metric packet estimates
and remainder errors; it does not control the central condition number. CMI
finality remains blocked until `Pack_{Q_atlas}` deformation comparability,
`TerminalCollarStrainIntegrability.A` by a noncircular route, or a genuinely
different fixed-coordinate `H^s(T^3)` readout theorem is proved and propagated
through `OriginalSmoothDataPackSurvival.A`, `NoGenuineExitFromSmoothData.A`,
and both final PDF rereads.
