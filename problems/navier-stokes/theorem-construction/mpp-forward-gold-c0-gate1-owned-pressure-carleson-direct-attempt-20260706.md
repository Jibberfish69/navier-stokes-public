---
theorem_id: forward-gold-c0-gate1-owned-pressure-carleson-direct-attempt-20260706
status: direct-attempt-fails-local-compactness-does-not-give-annular-carleson-growth
created: 2026-07-06
problem: navier-stokes
route: forward-gold / c_0 epsilon extraction / Gate 1 owned pressure Carleson
target_object:
  - NormalizedRelayBillCompactnessRecordPassage.A
  - OwnedPressureCollarCarlesonSublinear.A
  - RetainedRelayFluxCutoffClosure.A
allowed_source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-epsilon-extraction-direct-proof-pass-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-shared-participation-and-tower-coherence-law.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-relay-record-reversibility-kernel-and-epsilon-extraction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-chapter2-refereegrade-closedness-limit-20260705.md
  - problems/navier-stokes/spine.md
proved_inputs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-material-cutoff-flux-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-collar-tightness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-source-law-verdict-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-pressure-ownership-size-separation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-owned-pressure-collar-direct-attempt-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-gate1-nonsublinear-pressure-routeout-verdict-20260706.md
completion_truth: >-
  Direct attempt on OwnedPressureCollarCarlesonSublinear.A. The theorem is not
  proved from the allowed sources. Local finite-readout compactness, local L1
  flux compactness, and fixed-window weak-star passage do not imply the annular
  Carleson/sublinear growth estimate needed for the large pressure collar:
  an owned locally finite pressure route measure may put mass comparable to R
  in the R-collar while keeping every fixed compact readout finite. Critical
  pressure redistribution and critical rescaling give no decay gain, and the
  current bill B has no pressure-collar tail currency. Therefore Gate 1 remains
  the first exact failed gate. The smallest current theorem is a uniform
  pressure-tail tightness/growth statement: every owned retained pressure collar
  route measure must have sublinear annular mass, be absorbed by B, or be
  converted to a concrete legal/collar/Pack-Part route-out.
---

# Gate 1 owned pressure Carleson direct attempt

## 1. Target

The quantitative half of the pressure-collar split is:

```math
\texttt{OwnedPressureCollarCarlesonSublinear.A}.
\tag{OPCS.1}
```

For retained same-fluid relay windows with \(R(W_j)=1\) and \(B(W_j)\to0\),
let the owned pressure collar route measure be

```math
\mu^{press}_{j}(\operatorname{collar}(R))
:=
\int_{W_j}\int_{\operatorname{collar}(R)}
\sum_{k=0}^{N}\lambda_k|\Pi^{press}_{k,h_j}|\,dx\,dt .
\tag{OPCS.2}
```

The theorem asks for

```math
\lim_{R\to\infty}\limsup_j
{1\over R}\mu^{press}_{j}(\operatorname{collar}(R))
=0,
\tag{OPCS.3}
```

or the absorbed version with \(o_R(1)+C\,B(W_j)\).

Physically, this says the same pressure carrier cannot keep sending
order-\(R\) flux through every farther material collar while the packet remains
retained and the three bills vanish.

## 2. What the allowed compactness gives

The chapter-2 closedness technology gives local compactness of defect measures
on fixed finite-readout regions. It is a fixed-window, finite-readout theorem:
local \(L^1\) flux compactness passes weak-star limits on compact sets, with the
infinite-readout complement routed separately.

That technology is valuable, but `(OPCS.3)' is not a fixed-window statement. It
is an annular growth statement along the large-cutoff exhaustion. It asks for a
uniform tail estimate:

```math
\mu^{press}_{j}(\operatorname{collar}(R))=o(R)
\quad\text{uniformly on the retained relay family.}
\tag{OPCS.4}
```

Local compactness gives finite mass on each fixed compact set. It does not
control the rate at which owned pressure flux may appear in collars moving to
infinity.

## 3. Annular staircase model

The proof-model obstruction is a locally finite owned route measure. Choose
radii \(R_m\to\infty\) and disjoint collars \(A_m=\operatorname{collar}(R_m)\).
Assign all pressure flux atoms the same retained pressure-carrier address and
set

```math
\mu^{press}_m(A_m)\simeq R_m .
\tag{OPCS.5}
```

On every fixed compact set only finitely many collars occur, so the measure is
locally finite and compatible with fixed-window weak-star compactness. But the
annular Carleson quantity is not small:

```math
{1\over R_m}\mu^{press}_m(A_m)\simeq 1 .
\tag{OPCS.6}
```

The model is not a Navier-Stokes solution. It tests the proof implication:
local finite-readout compactness plus source ownership does not imply the
large-collar growth estimate.

## 4. Why the standard mechanisms do not close it

**Local \(L^1\) compactness.** Fixed-window uniform integrability controls
mass on compact sets. The staircase places its mass in escaping collars, so no
fixed compact test sees the failed tail estimate.

**Critical pressure redistribution.** Pressure is the same incompressible
pressure correction, but the pressure operator is scale-critical here. It
redistributes source; it does not add a sign or a decay factor that turns
\(\mu(A_R)\sim R\) into \(o(R)\).

**Critical rescaling.** The normalized relay problem is scale-invariant. The
ratio \(R^{-1}\mu(A_R)\) is exactly the collar quantity that survives the
large-window normalization; rescaling does not create a small parameter.

**Absorption by the current bill.** The bill

```math
B=dE^{Field}_{N,h}+dA_{4B,N}+dVisc_{N,h}
\tag{OPCS.7}
```

contains neighboring-tower decoherence, retained four-body positive variation,
and viscous defect dissipation. It does not contain a pressure-tail route
measure, and the allowed source does not identify the tail with one of those
three currencies.

## 5. Verdict

The direct Carleson/sublinear proof fails from the allowed sources. The missing
quantitative theorem is:

```math
\texttt{RetainedPressureTailUniformTightness.A}.
\tag{OPCS.8}
```

Statement. For every retained same-fluid relay sequence with \(R(W_j)=1\) and
\(B(W_j)\to0\), every pressure collar route measure that is still owned by the
retained packet and not already legal/collar/Pack-Part route-out satisfies

```math
\lim_{R\to\infty}\limsup_j
{1\over R}\mu^{press}_{j}(\operatorname{collar}(R))
=0,
\tag{OPCS.9}
```

or

```math
\limsup_j
{1\over R}\mu^{press}_{j}(\operatorname{collar}(R))
\le o_R(1)+C\,B(W_j).
\tag{OPCS.10}
```

This is a renamed exact form of `OwnedPressureCollarCarlesonSublinear.A`, with
the uniform tail role exposed.

## 6. Consequence for the active c_0 goal

Both halves of the pressure-collar split have now been directly tested:

```math
\texttt{RetainedPressureTailUniformTightness.A}
\quad\text{or}\quad
\texttt{RetainedPressureTailExhaustionToFaceFailure.A}.
\tag{OPCS.11}
```

The first is the quantitative Carleson/sublinear theorem. The second is the
route-out theorem. Neither follows from the allowed sources.

So the first exact failed gate of
`NormalizedRelayBillCompactnessRecordPassage.A` remains Gate 1: localized Field
compactness is blocked by owned pressure collar tails unless one proves
uniform pressure-tail tightness/absorption or a concrete legal/collar/Pack-Part
route-out.
