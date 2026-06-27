---
theorem_id: forward-gold-stopped-strict-half-barrier-minimal-bad-chain-direct-audit-20260627
status: direct-proof-audit-reduces-strict-half-barrier-to-reuse-escape-dichotomy-charge
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / stopped primitive strict half-barrier
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - StoppedPrimitivePLSStrictHalfBarrierBreak.A
  - FreshNegativeScaleReturnChargeOrPotentialAverageKill.A
  - GlobalSameHistoryAffineBurstNoZeno.A
  - NoZenoReuseEscapeDichotomyStrictCharge.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-affine-bv-return-to-stopped-strict-half-barrier-live-edge-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-primitive-pls-strict-half-barrier-break-relay-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-stopped-free-material-graph-driver-direct-attack-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-primitive-pls-no-free-upcrossing-complete-frame-laminar-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-same-history-affine-burst-nozeno-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-affine-burst-nozeno-dichotomy-20260626.md
edge_effect: >-
  Runs the strict half-barrier through the proof-method that fits its arithmetic:
  a minimal bad chain / descent audit. The result is not a closure. It replaces
  the theorem-sized half-barrier slogan by the exact nonduplicate branch theorem:
  every surviving minimal bad chain must be charged either by repeated-core
  nonreuse storage or by shrinking-core escape capacity/collar-turnstile packing.
next_hinge:
  - NoZenoReuseEscapeDichotomyStrictCharge.A
  - RepeatedCoreNonreuseStorageBound.A
  - ShrinkingCoreEscapeCapacityLowerBound.A
---

# Stopped strict half-barrier minimal bad chain direct audit

The current live Gold object is the strict half-barrier for the stopped primitive
free-material driver.  In ratio variables the desired conclusion is

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty .
\tag{1}
```

The installed raw ledgers give only

```math
\sum_{\ell\ge0}\nu_\ell<\infty .
\tag{2}
```

The sharp obstruction is

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{3}
```

It obeys `(2)` and violates `(1)`.

## 1. Method choice

The correct proof method is a minimal bad chain / descent argument.  Pointwise
sign, local complete-frame orientation, laminarity alone, temporal Volterra
payback, natural shell storage, and Schur-only boundary visibility have already
been tested and do not insert the missing \(2^\ell\) weight.

Assume therefore that `(1)` fails after every paid branch has been removed:

```text
visible Schur defect,
silent zero-cost source,
spent-source reuse,
selector/reselection jumps,
nonlaminar exits,
recirculation/return,
entrance/legal,
and subheat absorption.
```

Choose a minimal bad stopped tree.  The earlier reductions force it to a
one-child same-material ancestry chain

```math
P=Q_0\supset Q_1\supset Q_2\supset\cdots,
\tag{4}
```

with finite raw mass but divergent selected first-ratio action:

```math
\sum_k R_{\rm raw}(Q_k)<\infty,
\qquad
\sum_k A_{\rm sel}^{fresh}(Q_k)=\infty .
\tag{5}
```

At the unit heat scale the surviving profile is pressure-Hessian-balanced and
affine/material-time at principal order:

```math
u_k(x,t)\simeq A_k(t)x,
\qquad
\operatorname{tr}A_k=0,
\qquad
\nabla^2p_k\simeq-(\dot A_k+A_k^2).
\tag{6}
```

## 2. Exact branch split

The minimal bad chain has only two nonduplicate ways to avoid already-paid
branches.

### Repeated material core

The selected visits reuse one material ancestry line or a nested core with
persistent material identity.  Then each retained unit visit must change at
least one of the same-material records:

```math
\operatorname{Var}_+\log\sigma(D_aX),
\qquad
\operatorname{Var}(\text{pressure-Hodge frame}),
\qquad
\operatorname{Var}(\text{collar normal / turnstile}).
\tag{7}
```

The needed theorem is therefore

```text
RepeatedCoreNonreuseStorageBound.A
```

in the quantitative form

```math
\sum_{Q_k\subset\mathcal A}
A_{\rm sel}^{fresh}(Q_k)
\le
C_N\left(
V_C(\mathcal A)+V_F(\mathcal A)+V_{\rm collar}(\mathcal A)+V_{\rm turnstile}(\mathcal A)
\right)
+R_{\rm legal}(\mathcal A),
\tag{8}
```

and then the global root estimate

```math
\int_{\mathcal F_{\rm lam}}
\left(
V_C+V_F+V_{\rm collar}+V_{\rm turnstile}
\right)d\mathcal R_{\rm ancestry}
\le
C_N(u_0)+R_{\rm legal}.
\tag{9}
```

Equation `(8)` is the single-line tax already supported by the laminar/complete
frame surfaces.  Equation `(9)` is the missing nonreuse storage bound.  Without
`(9)`, assigning a cost to each visit does not prevent the critical half-tail.

### Shrinking-core escape

The selected visits avoid infinite reuse of one material core by escaping into
strictly smaller transported cores.  Then the proof needs a packing lower bound
which says those escaping cores cannot carry unit selected pressure-Hodge /
critical-strain action at summable capacity/collar-turnstile cost:

```text
ShrinkingCoreEscapeCapacityLowerBound.A
```

in the form

```math
\sum_{Q_k\ {\rm escaping}}
A_{\rm sel}^{fresh}(Q_k)
\le
C_N\sum_{Q_k}
\left(
\operatorname{Cap}_{PH}(Q_k)
+{\rm CollarTurnstile}(Q_k)
+R_{\rm legal}(Q_k)
\right).
\tag{10}
```

The local affine scaling audit shows why `(10)` is not automatic: raw heat and
fixed-collar costs can scale like the child radius, while normalized selected
action remains order one.  The capacity/collar-turnstile term in `(10)` must
therefore be a genuine same-history escaping-core charge, not ordinary raw
energy or fixed-annulus mass.

## 3. Consequence

The strict half-barrier is equivalent, after the installed branch removals, to:

```text
NoZenoReuseEscapeDichotomyStrictCharge.A.
```

For one original smooth Navier-Stokes material history, every infinite stopped
fresh affine/material-time high-ratio chain must be paid in one of two ways:

```text
repeated-core branch:
  finite original-data nonreuse storage loses a definite amount per retained
  selected visit;

shrinking-core branch:
  escaping selected cores carry a non-summable pressure-Hodge / collar-turnstile
  packing charge.
```

Either branch implies the strict good-lambda gain

```math
N_{L+1}\le\theta N_L+B_L,
\qquad
\theta<{1\over2},
\qquad
\sum_L2^LB_L<\infty,
\tag{11}
```

and hence `(1)`.

## 4. Audit result

This note does not prove the MPP closure.  It is the direct proof audit of the
current stopped strict half-barrier, and it removes one layer of vagueness:

```text
StoppedPrimitivePLSStrictHalfBarrierBreak.A
```

should now be attacked as

```text
NoZenoReuseEscapeDichotomyStrictCharge.A,
```

with the two concrete branch theorems

```text
RepeatedCoreNonreuseStorageBound.A
ShrinkingCoreEscapeCapacityLowerBound.A.
```

That is the smallest nonduplicate theorem still visible from the current repo
inputs.
