---
ns_viewer:
  theorem_id: ptc-shape-normalization-direct-attempt-20260609
  status: failed-source-packet-discharge
  proof_role: selector_shape_normalization_attempt
  logical_landing_node: diagonal-density-source-oscillation
  edge_effect: "Tests PTCShapeNormalization.A and proves only the conditional bridge from the current source packets to the balanced-frame / D.7mq route; the unpaid source leaf is diagonal-density sectorwise oscillation, with finite shell comparability and segment-gradient control still paired on the same branch."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/ptc-shape-normalization-closure.md
    - problems/navier-stokes/theorem-construction/exact-potential-balanced-frame-to-d7mq.md
    - problems/navier-stokes/theorem-construction/sectorwise-relative-oscillation-of-diagonal-density.md
    - problems/navier-stokes/theorem-construction/finite-shell-comparability-on-core-cap-family.md
    - problems/navier-stokes/theorem-construction/segment-collar-derivative-continuity-on-balanced-frame.md
  downstream_consequence: "The next theorem atom is the source-level diagonal-density oscillation theorem supplying SROD.1, or the stronger parent/terminal center lower-density plus Holder route."
---

# MPP PTC Shape Normalization Direct Attempt

Date: 2026-06-09

Status: active-completion proof attempt. This note does not close `D.7mq`,
`DG-Cal`, `CN.13j`, `PD.70z`, Pack survival, or CMI finality.

## Target

The active target is:

```text
PTCShapeNormalization.A.
```

The required theorem is the selector-shape / selector-isotropy packet

```math
\left\|
\frac{1}{m_{J,\varepsilon}}M_{J,\varepsilon}^{shape}
-
\frac1d\Pi_{N_a}
\right\|_{\mathrm{op}}
\le
\epsilon_{J,\varepsilon}^{shape},
```

or, on the constructive branch, a finite balanced selector frame that supplies
the same normalized shape input to the pair-to-cocycle route.

## Installed Conditional Bridge

The checked closure notes prove this conditional bridge:

```text
sectorwise relative oscillation of the diagonal density
+ finite shell comparability
+ active-segment gradient / C2 transport control
+ PTC-Lin
+ exact-potential comparison and CG gap
=> D.7mq.
```

The route is:

1. sectorwise relative oscillation of `\delta_{j,Q}` gives diagonal restriction
   stability on the entrance-sector refinement;
2. diagonal restriction stability feeds the selector sign/refinement packet and
   hence the finite quadratic sign-separation packet;
3. the balanced-frame lemma turns sign-separation into a finite selector frame;
4. finite shell comparability controls shell leakage on the same core-cap
   family;
5. segment-collar derivative continuity supplies the finite-frame linearization
   error;
6. `EP.Frame.Closure` combines the balanced frame, linearization, comparison
   packet, and Cauchy-Green gap into `D.7mq`.

So the bridge from the source packets to `D.7mq` is not the missing object.

## Attempt 1: Use Degree-2 Isotropy Directly

The primitive statement of `PTCShapeNormalization.A` is exactly degree-2
directional isotropy of the selector-good directional measure. That is a clean
tensor criterion, but the installed sources do not prove that the actual
selector-good measure has the required second moment.

The local note also records a warning: exact degree-2 isotropy does not imply
the finite cap occupancy needed by the constructive balanced-frame route. The
cross measure on coordinate axes has the correct second moment while missing
some projective eigen-caps. Thus the proof cannot replace source control by a
bare isotropy slogan.

## Attempt 2: Use The Existing Constructive Chain

The constructive chain closes only after the source packets are supplied. The
files checked in this pass show:

```text
SROD.A:
sectorwise relative oscillation => diagonal restriction stability.

FSCC.A:
finite shell comparability => shell leakage.

SCDC.C:
regular-window C2 flow control => segment-collar derivative continuity.
```

Those are valid reductions. They do not prove the source estimates from the
current Navier-Stokes data.

So the constructive chain is a conditional bridge, not a proof of
`PTCShapeNormalization.A`.

## Attempt 3: Use The Stronger Center / Holder Route

The stronger selector-native route says that either of the following would be
enough on the selector side:

```text
terminal sector-center lower density relative to parent average
+ local Holder oscillation on terminal entrance-sector cells,
```

or

```text
parent stopped-cell center lower density relative to parent average
+ parent stopped-cell Holder control of the diagonal density.
```

The checked notes prove that those hypotheses imply the diagonal restriction
law. They do not prove the hypotheses themselves. In particular, the current
installed packet does not yet give a lower-density theorem for the diagonal
density at the selected centers, nor a Holder modulus for `\delta_{j,Q}` on the
parent or terminal entrance-sector cells.

## Result

`PTCShapeNormalization.A` is not proved from the installed inputs.

The actual next theorem atom is source-level:

```text
DiagonalDensitySourceOscillation.A:
prove the sectorwise relative oscillation bound

ess sup_{a in Q_s^{ent}}
|delta_{j,Q}(a)-bar delta_j(Q)|
<= sigma_diag bar delta_j(Q),   sigma_diag < 1,

for every terminal entrance-sector cell, or prove the stronger parent/terminal
center lower-density plus Holder route that implies it.
```

This target must stay paired with the same-branch shell and transport siblings:

```text
FiniteShellComparability.A
SegmentGradientOrC2TransportControl.A
```

Until those source packets are paid on the same selector-good family,
`PTCShapeNormalization.A` remains open. Then `D.7mq`,
`DGCalPairDefectChannelRealization.A`, `DGCalExactLinearFrameCondition.A`,
`CN.13j`, `PD.70z`, h/F mass vanishing, Pack restoration,
`OriginalSmoothDataPackSurvival.A`, and `NoGenuineExitFromSmoothData.A` remain
open as downstream consequences.

## New Live Criticism

`NS-LIVE-20260609-136`: `PTCShapeNormalization.A` is still open. The current
repo proves the conditional bridge from the selector source packets to the
balanced-frame / `D.7mq` route, but it does not prove the source-level diagonal
density oscillation, finite shell comparability, or active-segment transport
control on the same selector-good family. The next target is
`DiagonalDensitySourceOscillation.A`, with the stronger parent/terminal
center-lower-density plus Holder route available as a sufficient replacement
for the selector-side half.
