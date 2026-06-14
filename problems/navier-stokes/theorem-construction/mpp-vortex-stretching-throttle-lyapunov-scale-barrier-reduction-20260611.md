---
ns_viewer:
  theorem_id: vortex-stretching-throttle-lyapunov-scale-barrier-reduction-20260611
  status: direct-throttle-and-naive-lyapunov-fail-reduced-to-scale-barrier-transport-defect-packets
  proof_role: forward_positive_vortex_stretching_wall_reduction
  logical_landing_node: cone_payment_static_hiding_and_flux_maximization
  edge_effect: "Carries the forward-positive cone/payment route past the enstrophy wall. Direct sign, cancellation, and standard Lyapunov throttles for vortex stretching do not close. The honest forward-positive route reduces to the classical scale-barrier transport-defect theorem: strict low modes and genuine high-high cubic tail are handled by existing notes, while the live proposition-level children are the threshold-local spill collar and the lifted mesoscopic stress-strain flux."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-enstrophy-production-throttle-forward-positive-direct-test-20260611.md
    - problems/navier-stokes/theorem-construction/lifted-band-coarse-grained-stress-strain-flux-inequality.md
    - problems/navier-stokes/theorem-construction/scale-barrier-transport-defect-lemma.md
    - problems/navier-stokes/theorem-construction/scale-high-side-remainder-packet.md
    - problems/navier-stokes/theorem-construction/scale-lifted-band-stress-strain-flux-repair.md
    - problems/navier-stokes/theorem-construction/scale-spill-reduction-lemma.md
    - problems/navier-stokes/theorem-construction/scale-high-high-near-diagonal-reduction-lemma.md
    - problems/navier-stokes/theorem-construction/scale-cubic-tail-absorption-lemma.md
  downstream_consequence: "VortexStretchingThrottleOrLyapunov.A is demoted from a broad target to the exact scale-barrier transport-defect packet discharge. The current forward-positive children are ThresholdLocalSpillCollarBound.A and LiftedMesoscopicStressStrainFluxBound.A, with the latter carrying the true middle-band vortex-stretching/coherent-transfer wall."
---

# MPP VortexStretchingThrottleOrLyapunov.A Scale-Barrier Reduction

Date: 2026-06-11

Status: forward-positive reduction. This note tests the stretching/Lyapunov
options left by the cone/collar pricing notes and reduces the survivor to the
classical scale-barrier transport-defect packets.

## 0. Target

The previous note left

```text
VortexStretchingThrottleOrLyapunov.A
```

as the exact forward-positive child. It asked for one of:

1. a sign or cancellation theorem for vortex stretching;
2. a Lyapunov quantity absorbing stretching into viscosity without the cubic
   enstrophy wall;
3. a compactness/rigidity theorem for every profile saturating the wall;
4. a localized high-tower budget strong enough to dominate the cone/collar
   costs.

This note checks those options against the installed repo surfaces.

## 1. Direct Sign Or Cancellation Does Not Exist

The enstrophy production term is

```text
V(t) = int (omega dot grad u) dot omega dx
     = int (S omega) dot omega dx,
```

where

```text
S = (grad u + grad u^T)/2.
```

Since `S` is symmetric and trace-free, it has expanding and contracting
directions. Where `omega` aligns with an expanding eigendirection,

```text
(S omega) dot omega > 0.
```

Where it aligns with a contracting eigendirection, the term is negative.

So the sign is a geometric alignment question, not a scalar energy identity.
The standard equation has no global sign cancellation for `V(t)`.

This closes the direct sign route as false.

## 2. Standard Lyapunov Fails At The Same Cubic Wall

The classical enstrophy identity gives

```text
(1/2) d/dt ||omega||_2^2
+ nu ||grad omega||_2^2
= V(t).
```

The standard bound gives

```text
|V(t)|
<= (nu/2)||grad omega||_2^2
   + C nu^(-3)||omega||_2^6.
```

Writing

```text
Y(t)=||omega(t)||_2^2,
```

one gets

```text
Y'(t) <= C nu^(-3)Y(t)^3.
```

This comparison permits finite-time growth. Any Lyapunov attempt built only
from the same quadratic enstrophy and the same viscosity term sees the same
wall.

So the ordinary enstrophy Lyapunov route is not a throttle.

## 3. Compactness/Rigidity Is Not Installed At This Generality

A compactness route would rescale a terminal stretching-saturated packet and
try to prove that the limiting ancient/local suitable profile is impossible.

The repo already records the needed caution: broad ancient no-pulse/no-packet
statements are false without extra hypotheses. Smooth ancient local packets
exist. Known useful rigidity classes require additional structure such as
bounded ancient control, type-I control, critical smallness, self-similarity,
axisymmetry, or a source-residue class with a proved Liouville theorem.

Those hypotheses are not produced by the cone/payment calculation itself.

Thus compactness/rigidity is not a direct closure here. It becomes a possible
downstream method only after the packet has been placed in a sharper class.

## 4. The Honest Positive Route Is Scale-Barrier Transport

The forward-positive replacement for a scalar stretching throttle is the
scale-barrier transport-defect theorem.

For a dyadic cutoff `N`, define

```text
E_N(t) = sum_{j>=N} ||Delta_j u(t)||_2^2,
```

```text
D_N(t) = sum_{j>=N} 2^(2j)||Delta_j u(t)||_2^2.
```

The desired transport bound is

```text
int_0^T F_N(t) dt
<= C int_0^T L_N(t)E_N(t) dt
   + eta nu int_0^T D_N(t) dt
   + C0 2^(-2 delta N),
```

where `F_N` is the high-frequency nonlinear transport defect. This is the
frequency-local version of throttling vortex stretching: it prevents coherent
transfer into arbitrarily small scales from outrunning viscous dissipation.

The repo stack currently splits this defect into four pieces.

## 5. Installed Or Reduced Pieces

The strict low-mode low-high and high-low pieces are reduced to

```text
L_N(t)E_N(t) + epsilon D_N(t)
```

by `scale-paraproduct-reduction-lemma.md`.

The genuine high-high packet is reduced to the near-diagonal cubic tail by
`scale-high-high-near-diagonal-reduction-lemma.md`, and that cubic tail is
absorbed for large `N` by `scale-cubic-tail-absorption-lemma.md`.

These are not the live stretching mystery anymore.

The threshold-local spill collar is isolated by
`scale-spill-reduction-lemma.md`. Under the stricter audit standard, that note
is a packet-definition and target-estimate note, not a fully proposition-grade
discharge.

The lifted high-side remainder is reduced by
`lifted-band-coarse-grained-stress-strain-flux-inequality.md` and
`scale-lifted-band-stress-strain-flux-repair.md` to the mesoscopic flux

```text
Pi_N^lift(t)
= sum_{j>=N} int Sigma_j^meso(x,t) tau_j^{H1}(x,t) dx.
```

The exact needed bound is

```text
sup_n int_0^T Pi_N^lift[u^(n)](t) dt
<= (eta nu/4) sup_n int_0^T D_N^(n)(t) dt
   + C_* 2^(-2 delta N).
```

This is `(L-Flux)`.

## 6. Why This Is The Same Mathematical Wall

Vortex stretching is dangerous when coherent strain at a larger/intermediate
scale keeps feeding a smaller high-frequency packet.

The lifted high-side remainder is exactly that geometry:

```text
N+M < k < j-4,
```

where the transport/strain shell `k` is above the fixed low cutoff but still
below the output shell `j`.

This is the part that a fixed low-mode coefficient cannot see and a
near-diagonal high-high estimate cannot absorb. The mesoscopic stress-strain
flux `Pi_N^lift` is the correct object because it measures the strain seen by
the high packet at its own scale.

So the cone/payment question has not disappeared. It has been converted into a
scale-local theorem:

```text
can coherent intermediate strain feed the high packet across infinitely many
scales without paying an absorbable or summable bill?
```

That is the precise forward-positive version of the vortex-stretching wall.

## 7. Current Result

The broad theorem

```text
VortexStretchingThrottleOrLyapunov.A
```

is not proved as a direct sign, scalar Lyapunov, or broad compactness theorem.

It reduces to:

```text
ScaleBarrierTransportDefectPacketDischarge.A
```

with the current forward-positive children:

```text
ThresholdLocalSpillCollarBound.A
```

and

```text
LiftedMesoscopicStressStrainFluxBound.A
```

The second child is the true middle-band stretching/coherent-transfer wall.
Proving `(L-Flux)` would give the high-frequency scale barrier, which would
feed the compactness and gradient packages. Without `(L-Flux)`, the
forward-positive cone route has reached its exact noncircular obstruction.
