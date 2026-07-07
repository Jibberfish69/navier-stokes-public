---
theorem_id: forward-gold-c0-same-edge-strict-half-barrier-direct-proof-pass-20260707
date: 2026-07-07
lane: forward-gold
target: c_0 epsilon extraction
status: conditional-branch-reduction-not-proof
verdict: algebraic-repeated-core-descent-proved-pde-branch-inputs-open
---

# Same-Edge Strict Half-Barrier Direct Proof Pass

## Completion truth

This pass does not prove `c_0 > 0`. It attacks
`OriginalHistorySameEdgeStrictHalfBarrierOrTypedExit.A` by the proof method
that fits the obstruction: assume a minimal bad same-edge half-tail and run a
descent split.

The result is a strict conditional reduction. The repeated-core branch is
algebraically killed by the scalar record/return BV identity once the signed
scale-potential lift, original-history potential record bound, and negative
return charge are admitted before selected positive-part readout. The
shrinking-core branch
reduces to one same-edge escaping-core capacity packing theorem. Those PDE
branch inputs are still open.

## Physical object

The object is one original smooth incompressible Navier-Stokes material history
and one future-positive retained same-edge record packet. The edge has already
passed the custody tests supplied by the lower-entrance audit: same parent,
same field, active/silent detector routing, chart licensing, selector capture,
and no legal or stopped exit.

The only remaining question is whether that same edge can carry a critical
positive record tail with finite raw bill:

```math
\sum_{\ell\ge0}\nu_\ell<\infty,
\qquad
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty.
\tag{SEH.1}
```

The sharp model is still

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{SEH.2}
```

So a proof has to defeat the half-speed relay itself. Local routing, finite
menus, detector-angle algebra, and raw heat/collar costs have already failed
to insert the missing factor \(2^\ell\).

## Method choice

The proof skeleton is contradiction plus minimal bad chain plus descent.
Assume `OriginalHistorySameEdgeStrictHalfBarrierOrTypedExit.A` fails after all
paid exits, legal terms, route-outs, repeated-count corrections, and detector
visible quotient payments are removed. Then there is a retained ordered
same-edge chain

```math
Q_0 \supset Q_1 \supset Q_2 \supset\cdots
\tag{SEH.3}
```

with finite raw bill and divergent selected first-ratio action. Minimality
removes side branches; every remaining selected record episode belongs to the
same parent history before readout.

That leaves one exhaustive physical split.

## Branch split

For the material cores \(K_m\) carrying the selected episodes, exactly one of
the following holds along an infinite subchain.

1. A material core is reused. The selected service keeps returning to one
   parent material ancestry or a nested core with persistent material identity.
2. The core escapes. No positive-volume material core is reused infinitely
   often; the selected action is carried by strictly smaller transported cores.

This is the same no-Zeno split as the stopped strict half-barrier audit, now
typed on the retained same edge. It is exhaustive because the chain is ordered
inside one parent history: either some material identity persists, or the
support leaves every fixed material core.

## Repeated-core branch: scalar descent

On the repeated-core branch, the selected primitive driver must be lifted
before positive readout to a signed scale-potential form

```math
Y=\partial_\sigma\Psi+E,
\qquad
Y=Y_+-Y_-.
\tag{SEH.4}
```

Here \(Y_+\) is the future-positive selected source, \(Y_-\) is the negative
return of the same scale potential, and \(E\) is already paid error.

On any stopped interval \(I=[a,b]\), the scalar BV identity gives

```math
\int_I Y_+\,d\sigma
=
\Psi(b)-\Psi(a)
+\int_I Y_-\,d\sigma
+\int_I E\,d\sigma.
\tag{SEH.5}
```

Split positive visits into record visits, where \(\Psi\) reaches a new high,
and return visits, where a later positive visit occurs only after negative
motion of the same \(\Psi\). Summing `(SEH.5)' along the minimal repeated core
gives

```math
\sum_{m\le M}a_m
\le
\operatorname{Rec}_M(\Psi)
+V_-^{return}(\Psi;I_M)
+Paid_M.
\tag{SEH.6}
```

Thus the repeated-core half-tail is impossible once the following three PDE
facts are supplied on the same retained edge before readout:

```text
SameEdgePrimitiveSignedScalePotentialLift.A
SameEdgePotentialRecordRootBound.A
SameEdgeNegativeScaleReturnCharge.A
```

The proof of the repeated-core implication is purely scalar after `(SEH.4)'.
If \(\operatorname{Rec}_M(\Psi)\) is bounded by original data, and
\(V_-^{return}\) is charged to the same parent bills, then the right side of
`(SEH.6)' stays finite. This contradicts the half-tail divergence
\(\sum_m a_m=\infty\). If the stopped endpoint, channel, or representative is
not parent-known before readout, that is a reset/overrun or channel-admission
failure, not a proof of the potential record bound.

These are the same physical inputs as
`StoppedPrimitivePLSSignedScalePotentialLift.A`,
`StoppedPotentialRecordAverageBound.A`, and
`StoppedNegativeScaleReturnCharge.A`, but with the extra same-edge custody
requirement kept explicit. The potential-average bound is a consumer after the
endpoint-corrected stopped record is built; the producer needed here is the
original-history root bound for that same stopped potential record.

## Shrinking-core branch: capacity packing

The shrinking-core branch avoids the one-dimensional BV trap by moving the
selected action to smaller transported cores. Raw heat mass does not stop this:
the affine local packet shows that normalized strain service can stay order
one while critical heat mass tends to zero.

So the shrinking branch needs a first-ratio capacity, not an ordinary raw mass.
The needed theorem is

```text
SameEdgeEscapingCoreCapacityPacking.A
```

in the form

```math
\sum_{Q_m\ {\rm escaping}}A_{sel}(Q_m)
\le
C_N
\sum_{Q_m}
\left(
J_{crit}^{reset}(Q_m)
+Cap_{PH}(Q_m)
+CollarTurnstile(Q_m)
+Paid(Q_m)
\right),
\tag{SEH.7}
```

together with a root bound

```math
\sum_{Q_m}
\left(
J_{crit}^{reset}(Q_m)
+Cap_{PH}(Q_m)
+CollarTurnstile(Q_m)
\right)
\le C_N(u_0)+Paid.
\tag{SEH.8}
```

The adjective "same-edge" matters here. The lower bound must be attached to the
edge that carried the selected record before readout. A post-readout capacity
label or a child-only raw heat charge does not imply `(SEH.7)'.

## Conditional theorem proved by this pass

The direct proof pass proves the following conditional reduction:

```math
\begin{aligned}
&\texttt{SameEdgePrimitiveSignedScalePotentialLift.A}\\
&+\texttt{SameEdgePotentialRecordRootBound.A}\\
&+\texttt{SameEdgeNegativeScaleReturnCharge.A}\\
&+\texttt{SameEdgeEscapingCoreCapacityPacking.A}\\
&\Longrightarrow
\texttt{OriginalHistorySameEdgeStrictHalfBarrierOrTypedExit.A}.
\end{aligned}
\tag{SEH.9}
```

The proof is by the minimal bad chain above. A bad chain has a repeated-core
subchain or a shrinking-core subchain. The repeated-core subchain contradicts
`(SEH.6)' under the first three hypotheses. The shrinking-core subchain
contradicts `(SEH.7)-(SEH.8)'. Therefore the half-tail cannot remain as a
retained same-edge record. The strict good-lambda recurrence follows:

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty.
\tag{SEH.10}
```

## What remains open

The scalar descent is not the missing PDE theorem. The missing PDE theorem is
the same-edge admission of the scalar objects and the escaping-core capacity:

```text
SameEdgePrimitiveSignedScalePotentialLift.A
SameEdgePotentialRecordRootBound.A
SameEdgeNegativeScaleReturnCharge.A
SameEdgeEscapingCoreCapacityPacking.A
```

This is smaller than the previous combined same-edge half-barrier statement.
It separates the arithmetic obstruction into two physical branch payments:
repeated-core record/return and shrinking-core reset/capacity packing. Proving
those branch inputs from the original pressure-viscosity-incompressibility
history would give `ParentOwnedPositiveRecordBillCurrency.A`, then
`B >= epsilon dR_N^+`, and finally `c_0=2epsilon>0`.
