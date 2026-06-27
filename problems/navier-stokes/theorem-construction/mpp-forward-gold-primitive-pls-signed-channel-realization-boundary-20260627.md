---
theorem_id: forward-gold-primitive-pls-signed-channel-realization-boundary-20260627
status: direct-realization-open-signed-channel-coercivity-missing
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - PrimitivePLSSignedChannelRealization.A
  - PrimitivePLSSignedChannelDecomposition.A
  - StoppedCorePositiveVariationRecordReturnPayment.A
---

# Primitive PLS signed-channel realization boundary

## 1. Target

The stopped-core summation note showed that the fixed stopped-core branch is paid if the fresh selected action is a positive increment of a pre-existing primitive PLS record:

```math
A(Q_{k+1})
\le
C[P(Q_{k+1})-P(Q_k)]_+
+C R_{legal}(Q_k).
\tag{1}
```

This note tests whether `(1)` follows automatically from staying on the same stopped material core.

## 2. Fixed stopped core is not enough

On the stopped-core branch, the carrier record is fixed:

```math
\mathfrak R(Q_{k+1})=\mathfrak R(Q_k).
```

Let the stopped signed channel be a linear functional

```math
\Gamma_{\mathfrak R}
```

on the fresh selected source increment \(S_k\). A pre-existing primitive record has the schematic increment

```math
P(Q_{k+1})-P(Q_k)
=\Gamma_{\mathfrak R}(S_k)+Err_k.
\tag{2}
```

The selected action has size

```math
A(Q_{k+1})\simeq \|S_k\|_{sel}.
\tag{3}
```

Equation `(1)` follows from `(2)` only if the selected source is coercive in the stopped signed channel:

```math
\|S_k\|_{sel}
\le
C[\Gamma_{\mathfrak R}(S_k)]_+ + C Err_k + C R_{legal}(Q_k).
\tag{4}
```

But fixed carrier identity alone does not imply `(4)`. A fresh increment may remain on the same stopped material core while pointing in a channel direction orthogonal to `Gamma_R`, or while appearing with the wrong sign. Then the primitive record does not increase even though the selected action is positive.

Thus the direct realization theorem is not automatic.

## 3. Conditional realization lemma

If the retained selection rule includes signed-channel coercivity:

```math
S_k\in\mathcal C_{fresh,sel}(\mathfrak R),
\qquad
\|S_k\|_{sel}
\le
C[\Gamma_{\mathfrak R}(S_k)]_+ + C R_{legal}(Q_k),
\tag{5}
```

and if the primitive record is compatible with the same channel:

```math
\left|P(Q_{k+1})-P(Q_k)-\Gamma_{\mathfrak R}(S_k)\right|
\le
C R_{legal}(Q_k),
\tag{6}
```

then `(1)` follows immediately:

```math
A(Q_{k+1})
\lesssim
[P(Q_{k+1})-P(Q_k)]_+ + R_{legal}(Q_k).
\tag{7}
```

So the realization theorem is true under signed-channel coercivity and primitive-record compatibility.

## 4. Missing theorem

The exact missing theorem is

```text
FreshSelectedPrimitiveAlignment.A
```

or equivalently

```text
StoppedSignedChannelCoercivity.A
```

Statement:

On a fixed stopped material core, every unpaid fresh selected transaction retained by the selector is aligned with the pre-existing stopped signed primitive channel:

```math
A(Q_{k+1})
\le
C[\Gamma_{\mathfrak R}(S_k)]_+
+C R_{legal}(Q_k).
\tag{8}
```

This must be a property of the stopped selector/order-lock construction, not an after-the-fact definition of `Gamma_R` from the future selected tail.

## 5. Consequence if proved

If `FreshSelectedPrimitiveAlignment.A` holds, then

```math
\text{PrimitivePLSSignedChannelRealization.A}
```

holds, and the previous positive-variation theorem gives the stopped-core branch payment after `StoppedNegativeScaleReturnCharge.A`.

The stopped-core chain would then be:

```math
\text{FreshSelectedPrimitiveAlignment.A}
\Rightarrow
\text{PrimitivePLSSignedChannelRealization.A}
\Rightarrow
\text{StoppedCorePositiveVariationRecordReturnPayment.A}.
```

## 6. Result

`PrimitivePLSSignedChannelRealization.A` is not proved from stopped-core identity alone. It reduces to the sharper alignment/coercivity theorem:

```math
\boxed{\text{FreshSelectedPrimitiveAlignment.A / StoppedSignedChannelCoercivity.A}}.
```

This is the current lock in the fixed stopped-core branch: prove the retained fresh selected source is positively visible to the stopped primitive signed channel, not merely located on the same material core.