# MPP Viscosity-Response Route Unconditional Audit

Date: 2026-05-06

Status: unconditional audit; no full discharge.

Scope: audit the new viscosity-homotopy / response-height route after the
proof runs:

```text
mpp-viscosity-homotopy-response-height-proof-20260506.md
mpp-response-flux-derivative-control-direct-attempt-20260506.md
mpp-parabolic-rate-strain-burst-direct-attempt-20260506.md
mpp-first-height-creation-dichotomy-expansion-20260506.md
mpp-low-response-strain-charge-proof-20260506.md
mpp-orthogonal-response-decorrelation-proof-20260506.md
mpp-response-height-creation-control-proof-20260506.md
mpp-nonlinear-response-rotation-no-gain-proof-20260506.md
```

## 0. Proved Spine

The following lower atoms are proved in the response route:

```text
LocalViscositySmoothDependence.A
ViscosityResponseEquation.A
SignedShellResponseIdentity.A
SignedResponseHeightReduction.A
SubparabolicAlignedResponseAbsorption.A
InverseParabolicBurst.A
ParabolicBurstForcesHeight.A
FirstHeightSelection.A
FirstHeightCreationAccounting.A
FiniteResponseLowStrainTail.A
HeatResponseNoOrthogonalRotation.A
```

The core gain is:

```text
positive viscosity absorbs the aligned energy-increasing response component
unless the low strain reaches parabolic shell rate.
```

The parabolic-rate exception then forces donor height and folds into the
height-flux wall.

## 1. Current Reduced Route

The no-fold route now reduces to:

```text
HeightFluxControl.A / terminal rigidity-residue
OriginalHeightDissipationCharge.A
ResponseStrainDecorrel.A
CoupledFrozenResponseBackwardUniqueness.A
NoIncomingLicense_resp.A
SourceTether_resp.A
```

with the response-rotation path:

```text
CoupledFrozenResponseBackwardUniqueness.A
+ NoIncomingLicense_resp.A
+ SourceTether_resp.A
=> NonlinearResponseRotationNoGain.A
=> OrthogonalResponseDecorrel.A.
```

and the response-height path:

```text
OriginalHeightDissipationCharge.A
+ ResponseStrainDecorrel.A
=> ResponseHeightCreationControl.A.
```

## 2. Unconditional Test: OriginalHeightDissipationCharge.A

Target:

```math
\int_W\sup_{k>N}
2^k\sum_{j>k+4}2^{2j}D_j^u(t)\,dt
\le
LegalCharge_N(W)+o_N(1).
```

Installed energy gives only:

```math
\int_W\sum_{j>N}D_j^u(t)\,dt\to0.
```

The target has the extra weight:

```math
2^k2^{2j}.
```

A scalar high-frequency pulse can have small first-moment dissipation tail and
large weighted height-dissipation tail.  Therefore the theorem is not a
consequence of energy, local energy, or ordinary smoothness below the terminal
boundary.

Verdict:

```text
OriginalHeightDissipationCharge.A remains open.
```

It is the derivative-level version of the donor-height source wall.

## 3. Unconditional Test: ResponseStrainDecorrel.A

Target:

```text
active response packets cannot stay positively aligned with low original
strain unless response-height charge or rigidity pays.
```

The direct estimate is:

```math
\left[
\langle S_{<j}(u)Z_j,Z_j\rangle
\right]_+
\le
|S_{<j}(u)|\,|Z_j|^2.
```

This is the same active strain-alignment carrier as ASAC, with `Z_j` replacing
`u_j`.  Trace-free strain does not kill it.  Absolute values return to a
response active-square reserve.  Pressure/cutoff estimates do not give the
missing sign.

Verdict:

```text
ResponseStrainDecorrel.A remains open.
```

It reduces to a response-ASAC / response-TPNI theorem.

## 4. Unconditional Test: CoupledFrozenResponseBackwardUniqueness.A

The response-rotation compactness target is a frozen pair:

```math
\partial_s v+(Sy)\cdot\nabla v+Sv+\nabla\pi_v
=
\nu\Delta v,
```

```math
\partial_s w+(Sy)\cdot\nabla w+Sw
+(\Sigma y)\cdot\nabla v+\Sigma v+\nabla\pi_w
=
\nu\Delta w+\Delta v.
```

The installed TPNI audits already show the single-field transform:

```math
z=e^{-sS}y,
\qquad
W=e^{sS}v(e^{sS}z,s),
```

leading to an anisotropic Stokes system:

```math
\partial_s W+\nabla q
=
\nu\nabla\cdot(A(s)\nabla W),
\qquad
\nabla\cdot(A(s)W)=0.
```

On finite slabs this is a valid uniformly elliptic parabolic system.  On the
ancient half-line it is not enough: mass can enter from spatial infinity along
transported contracting directions unless a global no-incoming flux condition
is proved.

The coupled response system has the same obstruction plus the additional
forcing by `Sigma`.

Verdict:

```text
CoupledFrozenResponseBackwardUniqueness.A remains open.
```

The correct theorem is:

```text
NoIncomingFlux_global_resp.A
+ CoupledAnisotropicStokesCarleman.A
=> ResponseTPNI.A.
```

## 5. Unconditional Test: NoIncomingLicense_resp.A

The installed no-incoming surfaces distinguish:

```text
NoIncomingLicense_src.A
```

from:

```text
NoIncomingLicense_global.A.
```

First-pulse no-parent gives the source-tree license.  It does not by itself
give global no-incoming boundary control for the full ancient tangent field.

The response route needs the stronger response version:

```text
NoIncomingLicense_global_resp.A.
```

Verdict:

```text
NoIncomingLicense_resp.A remains open unless routed through adjoint
parent-or-charge / transported-cylinder flux control.
```

## 6. What Actually Improved

The viscosity-response route did not close the repo, but it made a real
separation:

```text
old source wall:
  positive native strain/source activity of u_j;

new response wall:
  only response-height creation and nonlinear response-direction rotation
  after heat-aligned viscosity response is removed.
```

The aligned response component is paid by viscosity.  The low response strain
is legal under finite response norm.  Heat creates no orthogonal response
rotation.  Parabolic-rate low-strain exceptions force donor height.

Thus the remaining obstruction is strictly narrower than the starting source
wall, but not eliminated.

## 7. Surviving Primitive List

After the unconditional audit, the exact surviving primitives are:

```text
HeightFluxControl.A
OriginalHeightDissipationCharge.A
ResponseStrainDecorrel.A
NoIncomingFlux_global_resp.A
CoupledAnisotropicStokesCarleman.A
SourceTether_resp.A
```

The best next proof route is not to reopen generic
`source-wall-root-after-reconcile`.  It is:

```text
ResponseTPNI package:
NoIncomingFlux_global_resp.A
+ CoupledAnisotropicStokesCarleman.A
+ SourceTether_resp.A
=> NonlinearResponseRotationNoGain.A.
```

This is the cleanest new theorem package produced by the viscosity-homotopy
idea.
