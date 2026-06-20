# Door 2 Donor Mode Branching Charge Direct Test

Date: 2026-06-20

## Status

Direct test complete.  `DonorModeBranchingCharge.A` is not proved by the
current finite donor-graph or co-transported mode-shadow inputs.

Branching is the star obstruction: one transported value on a donor star cannot
match two or more incompatible canonical Door 2 mode values.  Scalar donor
balance does not charge this because scalar balance does not see mode
variation across the outgoing star.

## 1. Target under test

For a donor packet `D`, let `Out(D)` be its retained receiver packets.  A
co-transported test uses one value `vartheta_D` on the retained donor star.  The
branching mismatch on that star is

```math
\operatorname{Br}_{m,i}(D)
=
\inf_{\vartheta_D}
\left[
|q_m(D)|\,|\psi_i(D)-\vartheta_D|
+
\sum_{R\in Out(D)}
|q_{D\to R}|\,|\psi_i(R)-\vartheta_D|
\right].
\tag{DMB.1}
```

The desired charge is

```math
\sum_D \operatorname{Br}_{m,i}(D)
\le
\operatorname{Legal}^{branch}_{m,i}+o_m(1).
\tag{DMB.2}
```

This is the branch part of the co-transported mode-shadow condition.

## 2. Sufficient inputs

The charge follows from source-weighted small star diameter:

```math
\sup_{R,R'\in \{D\}\cup Out(D)}
|\psi_i(R)-\psi_i(R')|
\le
\epsilon_D,
\tag{DMB.3}
```

and

```math
\sum_D
\epsilon_D
\left(
|q_m(D)|+\sum_{R\in Out(D)}|q_{D\to R}|
\right)
\le
\operatorname{Legal}^{branch}_{m,i}+o_m(1).
\tag{DMB.4}
```

It also follows from mode Lipschitz control plus source-weighted branch travel:

```math
|\psi_i(R)-\psi_i(D)|
\le
L_i\,d_{\rm mod}(R,D),
\tag{DMB.5}
```

and

```math
\sum_D\sum_{R\in Out(D)}
|q_{D\to R}|\,d_{\rm mod}(R,D)
\le
\operatorname{Legal}^{travel}_{m,i}+o_m(1).
\tag{DMB.6}
```

Current inputs do not install `(DMB.4)` or `(DMB.6)`.

## 3. Exact branching countermodel

Take one donor packet `D` and two receiver packets `R_1,R_2`.  Let

```math
q_m(D)=-A,
\qquad
q_{D\to R_1}=A/2,
\qquad
q_{D\to R_2}=A/2,
\qquad
A>0.
\tag{DMB.7}
```

The scalar donor balance is exact:

```math
q_m(D)+q_{D\to R_1}+q_{D\to R_2}=0.
\tag{DMB.8}
```

Set the canonical mode values to

```math
\psi_i(D)=0,
\qquad
\psi_i(R_1)=1,
\qquad
\psi_i(R_2)=-1.
\tag{DMB.9}
```

For any transported star value `vartheta`, the mismatch is

```math
F(\vartheta)
=
A|\vartheta|
+
\frac A2|1-\vartheta|
+
\frac A2|-1-\vartheta|.
\tag{DMB.10}
```

For `-1\le\vartheta\le0`,

```math
F(\vartheta)=A(1-\vartheta),
\tag{DMB.11}
```

and for `0\le\vartheta\le1`,

```math
F(\vartheta)=A(1+\vartheta).
\tag{DMB.12}
```

Outside `[-1,1]`, `F` is larger.  Hence

```math
\inf_{\vartheta\in\mathbb R}F(\vartheta)=A.
\tag{DMB.13}
```

Thus exact scalar balance and finite selected source mass still leave branch
mismatch equal to `A`.

## 4. Why finite branching is not enough

Finite branching only says the donor star has finitely many receivers.  It does
not force the mode values on those receivers to be close.  The previous example
has one donor and two receivers, so it already satisfies the strongest finite
branching condition.

Bounded overlap also does not help by itself.  It controls how many stars cover
a packet, but `(DMB.1)` is a source-weighted variation of the mode test across
each star.  Variation needs a travel, Lipschitz, no-null, or source-square
charge.

## 5. Relation to selector drift

Selector drift is the same obstruction with the receiver set changed by the
selection rule instead of by physical branching.  If two admissible selectors
choose different receiver mode values for the same donor source, the mismatch is
again bounded by `(DMB.1)` only after a source-weighted selector/gauge travel
charge.

So `SelectorDrift_{m,i}` is not an independent payment.  It is paid by the same
star-variation currency as `DonorModeBranchingCharge.A`.

## 6. Exact reduction

At current input strength, the usable conditional theorem is

```math
\boxed{
\text{DonorModeBranchingCharge.A}
\Leftarrow
\text{SourceWeightedSmallModeStarDiameter.A}
}
\tag{DMB.14}
```

or

```math
\boxed{
\text{DonorModeBranchingCharge.A}
\Leftarrow
\text{ModeLipschitzAtlas.A}
+
\text{SameShadowSourceWeightedBranchTravelCharge.A}.
}
\tag{DMB.15}
```

or

```math
\boxed{
\text{DonorModeBranchingCharge.A}
\Leftarrow
\text{LowerFrameNoNullAdjointModeReadout.A}.
}
\tag{DMB.16}
```

These inputs are not installed.

## Verdict

`DonorModeBranchingCharge.A` is not a consequence of scalar donor balance,
finite branching, bounded overlap, or admissibility of the mode test.  It is a
source-weighted mode-variation estimate on donor stars.

The branch therefore returns to the same currencies as the endpoint mismatch:

```math
\text{SameShadowSourceWeightedGaugeTravelCharge.A},
\quad
\text{NoNullSourceParentCloud.A}
+
\text{SelectedPolarSaturation.A},
\quad
\text{SourceSquareReserve.A},
\quad
\text{StrictRescaledNoWasteLyapunov.A}.
\tag{DMB.17}
```

