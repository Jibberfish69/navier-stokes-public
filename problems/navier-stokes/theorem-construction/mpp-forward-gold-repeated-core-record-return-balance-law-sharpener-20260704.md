---
theorem_id: forward-gold-repeated-core-record-return-balance-law-sharpener-20260704
status: strict-reduction-and-checked-obstruction
created: 2026-07-04
problem: navier-stokes
route: forward-gold original-history selected-critical fresh source / repeated-core branch
target_object: RepeatedCorePositiveVariationRootBound.A
role: >
  Sharpens the repeated-core branch of the fresh-source half-tail wall into
  record/return descent on one stopped material ancestry, and records that
  bounded record height alone cannot prove the branch.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-critical-fresh-source-tent-extremal-two-branch-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-projection-record-return-payment-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-negative-scale-return-bv-boundary-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-balance-law-block-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-der-aqk-moving-lowhigh-record-return-synthesis-20260627.md
completion_truth: >-
  This note does not prove RepeatedCorePositiveVariationRootBound.A. It proves
  the scalar record/return reduction and isolates the remaining noncircular PDE
  input: a signed stopped-material PLS balance law, plus parent-predictable
  projection geometry, must charge negative return and record increments from
  original history. Bounded record height by itself is a checked obstruction.
---

# Repeated-core record/return balance-law sharpener

## 1. Same physical packet

The repeated-core branch is one original material ancestry being read again and
again before terminal selection. The same stopped core carries the transported
metric, pressure-Hodge frame, collar/turnstile record, selector channel, and
scale-potential readout.

The selected-critical half-tail is not many unrelated boxes. It is the same
material history producing positive selected visits on one core while ordinary
raw service remains summable.

On that core, the branch theorem

```text
RepeatedCorePositiveVariationRootBound.A
```

asks for finite original-data cost for the positive part of the Cauchy-Green /
pressure-Hodge-frame / collar-turnstile variation that makes those repeated
selected visits possible.

## 2. Scalar record/return identity

After the signed scale-potential lift, the repeated selected births are positive
increments of one stopped primitive record \(\Psi\). Along any finite stopped
chain,

\[
V_+(\Psi;I_M)
=
\Psi(t_M)-\Psi(t_0)+V_-(\Psi;I_M).
\tag{RCR.1}
\]

Thus the same-core selected action has only two nonlocal payments:

\[
\text{record growth}
\qquad\text{or}\qquad
\text{negative return needed to reset the same core}.
\tag{RCR.2}
\]

In the repo's current theorem language, the sufficient repeated-core package is

```text
StoppedPrimitivePLSSignedScalePotentialLift.A
+ StoppedPotentialRecordAverageBound.A
+ StoppedNegativeScaleReturnCharge.A.
```

More explicitly,

\[
\int_0^T H_w(t)
\left\|
{1\over |J|}\int_J\Psi(\sigma,t)d\sigma
\right\|_{L_x^2}^2dt
+
\int_0^T H_w(t)\|\mathcal C_\theta[Y_-](t)\|_{L_x^2}^2dt
\le C_N(u_0)\mathcal R(P)+R_{legal}(P)
\tag{RCR.3}
\]

implies the repeated-core positive-variation root bound for the stopped core.

## 3. Checked obstruction: bounded record is not enough

The direct scalar closure is false. A bounded stopped primitive record can
oscillate forever:

\[
P_k=(-1)^k.
\tag{RCR.4}
\]

It has bounded record height but infinite positive and negative variation.
Therefore

```text
StoppedPotentialRecordAverageBound.A
```

alone cannot prove `RepeatedCorePositiveVariationRootBound.A`. A proof that
uses only bounded range, bounded average, or endpoint record control has not
charged the return motion that lets the same material core be reused.

## 4. Noncircular PDE input

The negative return must be a physical event in the same material history. It
has to come from a stopped-material balance law of the primitive PLS record:

\[
D_tP_{\mathfrak R}
=
\mathcal P_{fresh}^{+}
-
\mathcal R_{return}
+Err_{legal},
\tag{RCR.5}
\]

with

\[
\int [D_tP_{\mathfrak R}]_-\,dt
\le
C\int \mathcal R_{return}\,dt+C R_{legal}
\le C_N(u_0)+C R_{legal}.
\tag{RCR.6}
\]

This is the exact content of

```text
SignedStoppedPLSEvolutionIdentity.A
/ StoppedReturnBVFiniteFromOriginalData.A
/ StoppedNegativeScaleReturnCharge.A.
```

The record-growth side is also not free. The projection record/return payment
shows that record increments are Bessel-payable only after the common
parent-predictable root Hilbert geometry has been built from the original
history:

```text
PredictableRootWeightMartingaleRealization.A.
```

## 5. Strict reduction

The repeated-core branch now has the nonduplicate form:

\[
\begin{aligned}
&\texttt{PredictableRootWeightMartingaleRealization.A}\\
&+\texttt{SignedStoppedPLSEvolutionIdentity.A}\\
&+\texttt{StoppedReturnBVFiniteFromOriginalData.A}\\
&\Longrightarrow
\texttt{RepeatedCorePositiveVariationRootBound.A}.
\end{aligned}
\tag{RCR.7}
\]

This is sharper than the opaque phrase "positive variation root bound." It says
exactly what the same physical packet must provide: parent-known record
increments and finite original-history negative return for the stopped primitive
scale potential.

## 6. Current proof truth

This branch is reduced, not proved. The scalar BV identity is proof-grade, and
bounded-record closure is false by `(RCR.4)`. The remaining mathematical wall is
to derive `(RCR.5)`--`(RCR.6)` and the common predictable root projection
geometry from the original Navier-Stokes material history before selected
readout.
