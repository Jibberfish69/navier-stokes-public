# MPP WeightedLiftedSkewDefectLegal.A Audit

## Status

This note audits Gate 2 in:

```math
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A
\Longrightarrow
TerminalSkewLocalizationLedger.A.
```

Verdict:

```math
\boxed{
WeightedLiftedSkewDefectLegal.A
\text{ is not installed by the current signed exchange algebra.}
}
```

The gate is not mere cutoff or pressure bookkeeping.  Its principal part is the
true weighted/lifted commutatorized source, and that object contains a real
strain-production term with variable sign.

## Target Gate

The desired gate is:

```math
Source_P^{loc}
=
\sum_{P'}J(P'\to P)
+
L_P^{w/lift},
\qquad
J(P\to P')=-J(P'\to P),
```

with:

```math
\sum_{P\in\mathcal F_N^\sharp}
\int |L_P^{w/lift}|
\le
o_N(1)+Loss_{legal}.
```

This would say that one-sided weights, lifted commutator replacement,
Leray/projector localization, cutoffs, and terminal selection leave only a legal
defect after extracting an antisymmetric current.

## Pairwise Weight Defect

Start with a bare skew edge current `J^0` on a closed dyadic graph:

```math
J^0(P\to P')=-J^0(P'\to P).
```

After inserting terminal weights `w_P`, the paired weighted contribution is:

```math
w_PJ^0(P'\to P)+w_{P'}J^0(P\to P')
=
(w_P-w_{P'})J^0(P'\to P).
```

Thus weighted skewness survives only if the edge weight difference is small or
if the defect can be charged to a legal ledger.

The existing signed-weighted audits show that the one-sided tail weights do not
give such smallness on the live lifted surface.  In shell notation the mismatch
has order-size:

```math
2^j2^{-\sigma(\ell-j)}-2^\ell
=
-\,2^\ell\left(1-2^{-(1+\sigma)(\ell-j)}\right).
```

Therefore the bare antisymmetry does not prove the weighted terminal skew
ledger.

## Lifted Commutator Defect

The live source after lifting is not the vacuous separated bare exchange.  It is
the commutatorized lifted remainder:

```math
\mathcal R_{j,k,\ell}^{lift}
=
2^{2j}
\left\langle
[\Delta_j,a_k\cdot\nabla]\Delta_\ell u,\Delta_j u
\right\rangle,
\qquad
a_k=\Delta_k u,
```

with `k<j` and `|\ell-j|` in the output collar.

The principal paracommutator form is:

```math
\mathcal R_{j,k,\ell}^{lift}
:=
2^{2j}
\langle \mathcal C_j(S_k,u_j),u_j\rangle,
\qquad
S_k={1\over2}(\nabla a_k+\nabla a_k^T).
```

Wave-packet expansion gives the leading packet expression:

```math
2^{2j}
\sum_{P}
\langle S_k(x_P,t)e_P,e_P\rangle |c_P|^2.
```

This term has no fixed sign.  Packets aligned with an expanding eigen-direction
of `S_k` contribute positively; packets aligned with a contracting direction
contribute negatively.  The current algebra supplies no cancellation theorem
for coherent positive alignment.

## What Is Legal Bookkeeping

The following terms can remain in the legal ledger, provided the already named
pressure/cutoff/collar/off-family supplier estimates are invoked:

- finite-collar cutoff derivatives;
- pressure normalization and Leray projection localization errors;
- boundary/collar spill;
- stopped residual and off-family packets;
- lower-order commutator remainders with summable collar kernels.

These do not remove the principal weighted/lifted strain-production term above.

## Exact Reduction

The gate reduces to one of the following nontrivial suppliers:

```math
\boxed{
TangentWeightRigidity.A + ActiveStrainAlignmentCost.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A
}
```

or, equivalently on the positive-carrier route,

```math
\boxed{
CriticalFluxAmplitudeSmall.A
\Longrightarrow
WeightedLiftedSkewDefectLegal.A.
}
```

But `CriticalFluxAmplitudeSmall.A` is the scale-critical active-square reserve:

```math
\sum_e\int \mathfrak a_e(t)^2D_e(t)\,dt=o_N(1)+Loss_{legal},
```

which is route-equivalent to `ScaleCriticalTreeCarleson.A` in the current
source-wall packet.  Spending it here would be circular.

## Consequence

The signed-current branch is now honestly ordered as:

```math
BareDyadicSkewCurrent.0
+
SkewSaturationAdmissibility.A
+
WeightedLiftedSkewDefectLegal.A
+
OffSaturationBoundaryPricing.A
\Longrightarrow
TerminalSkewLocalizationLedger.A
\Longrightarrow
LocalizedSkewCurrent.A.
```

The first genuinely hard subgate is:

```math
\boxed{
WeightedLiftedSkewDefectLegal.A
}
```

and its old absolute formulation required a new strain-alignment cancellation
theorem, such as
`TangentWeightRigidity.A + ActiveStrainAlignmentCost.A + TPNI.A`.  The
2026-05-06 parent-drain route now supplies `ASAC.A`, and
`mpp-one-sided-pair-weight-defect-after-asac-20260506.md` records the sharper
consumer:

```text
ASAC.A => PositivePairWeightDefectCharge.A.
```

Thus the absolute version of `WeightedLiftedSkewDefectLegal.A` should no
longer be treated as the necessary post-ASAC target for the positive source
wall.  The remaining theorem-facing consumer is the one-sided terminal skew
ledger:

```text
TerminalPositiveSkewLedger.A,
```

which now reduces to:

```text
TerminalSignedSaturation.A / TerminalWeightedNoFreeSink.A.
```

Without terminal signed saturation or donor depletion, the route still returns
to the original root wall:

```math
\boxed{
ScaleCriticalTreeCarleson.A
\quad\text{or}\quad
ZenoBoundedClass_B.A+ZenoResidueLiouville_B.A.
}
```
