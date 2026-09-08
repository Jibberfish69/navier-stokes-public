---
theorem_id: forward-gold-scale-invariant-noescape-after-null-service-routing-20260626
status: narrowed-to-collar-normal-compression-capacity-lower-bound
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - selected-first-ratio-strict-gain-after-pressure-null-routing
  - ScaleInvariantSelectedCapacityNoEscape.A
  - ParentDrop.A
  - GlobalSamePacketFullClockFromOriginalData.A
---

# Scale-invariant no-escape after pressure-null service routing

## 1. Current reduction

The complete-frame pressure-probe route does not produce six independent parent Schur probes from one scalar retained pressure field. Its correct role is different: pressure-visible components are charged by the actual parent Schur trace, while pressure-Helmholtz--Leray-null trace-free selected components are routed into material service through wave-covector compression or packet-normal collar compression.

Thus the selected first-ratio strict gain is again reduced to the two live branches:

```math
\text{RepeatedCorePositiveVariationRootBound.A}
\quad\text{or}\quad
\text{ScaleInvariantSelectedCapacityNoEscape.A}.
```

This note attacks the second branch.

## 2. Shrinking-core escape model

A bad half-tail can try to avoid a repeated positive-variation root by shrinking the retained selected core through scales:

```math
Q_0 \supset Q_1 \supset Q_2 \supset \cdots,
\qquad
r_{k+1}\ll r_k,
```

while keeping normalized selected action at each generation:

```math
A(Q_k)\simeq 1.
```

If no repeated root is forced, strict gain must come from no-escape: repeated shrinking while carrying selected action must spend scale-invariant capacity/service.

## 3. Pressure-visible/null split

Decompose the selected carrier into pressure-visible and pressure-null pieces:

```math
A(Q_k)=A_{vis}(Q_k)+A_{null}(Q_k).
```

The pressure-visible part is charged by the retained parent Schur trace:

```math
A_{vis}(Q_k)
\lesssim
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle+R_{legal}(Q_k).
```

The pressure-null part is not lost; by the complete-frame demotion it is routed into material service:

```math
A_{null}(Q_k)
\lesssim
\mathcal S_{normal}(Q_k)+\mathcal S_{covector}(Q_k)+R_{legal}(Q_k).
```

So a shrinking-core half-tail with `A(Q_k)~1` must satisfy, along infinitely many scales,

```math
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle
+\mathcal S_{normal}(Q_k)+\mathcal S_{covector}(Q_k)
\gtrsim 1.
\tag{NE.1}
```

## 4. Desired no-escape summation

To close `ScaleInvariantSelectedCapacityNoEscape.A`, one needs a scale-invariant lower bound saying that the costs in `(NE.1)` cannot be made summable along a strictly shrinking retained ancestry chain:

```math
\sum_k
\left(
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle
+\mathcal S_{normal}(Q_k)+\mathcal S_{covector}(Q_k)
\right)
=\infty
\tag{NE.2}
```

unless a legal/nonlaminar exit occurs or the selected action decays.

This would rule out the half-tail model: finite original-data reserve would contradict `(NE.2)`.

## 5. Exact missing lower bound

The noncircular theorem needed is

```text
CollarNormalCompressionCapacityLowerBound.A
```

or equivalently

```text
ShrinkingCoreNoEscapeCapacity.A
```

Statement:

For a retained same-material shrinking selected ancestry chain, unit selected action at each scale forces a scale-invariant amount of one of:

1. parent Schur trace;
2. packet-normal collar compression;
3. wave-covector compression;
4. legal/nonlaminar exit.

Symbolically:

```math
A(Q_k)\simeq 1
\quad\Longrightarrow\quad
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle
+\mathcal S_{normal}(Q_k)+\mathcal S_{covector}(Q_k)+R_{legal}(Q_k)
\ge c_0.
\tag{NE.3}
```

The key is that `c_0` must be scale-invariant and must not be defined as the descendant tail itself.

## 6. Result

The pressure-null routing improves the no-escape branch, but does not by itself close it. The next precise hinge is:

```text
CollarNormalCompressionCapacityLowerBound.A / ShrinkingCoreNoEscapeCapacity.A
```

If this lower bound is proved, shrinking-core escape is impossible under finite original-data reserve. Then the remaining alternatives are repeated-core positive variation or direct selected first-ratio summability.