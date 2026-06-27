---
theorem_id: forward-gold-fresh-oneway-selected-amplification-minimal-bad-tree-test-20260627
status: minimal-bad-tree-normal-form-installed-no-contradiction-yet
created: 2026-06-27
problem: navier-stokes
route: forward-gold same-material selected-density / fresh one-way amplification
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - FreshOneWaySelectedAmplificationCarleson.A
  - FreshNativeRootUpperBound.A
  - WeightBeatingTailLaw.A
  - GlobalSameHistoryAffineBurstNoZeno.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-native-root-upper-bound-direct-test-20260627.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-same-history-affine-burst-nozeno-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-affine-burst-nozeno-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-density-goodlambda-martingale-test-20260626.md
---

# Fresh one-way selected amplification minimal bad tree test

This note attacks the current hinge by contradiction.

The current hinge is:

```text
FreshOneWaySelectedAmplificationCarleson.A
```

The closed branches are:

- visible Schur capacity packing;
- spent-source reuse;
- selector/reselection jumps;
- silent-source zero-cost escape;
- return/recirculation;
- entrance/legal;
- subheat refill;
- local selected-scale lower edge.

Thus a counterexample to the hinge has a much sharper shape than the older
half-tail model.

## 1. Failure assumption

Assume the fresh one-way selected amplification Carleson bound fails.  Then
there is a retained same-material root \(P\) and a family of fresh selected
children \(Q\subset P\) such that

```math
\sum_{Q\subset P}\omega_Q^{fresh}=\infty,
\tag{1}
```

while the visible capacity, spent-source, selector, silent-exchange,
recirculation, entrance/legal, and subheat ledgers stay finite.

Equivalently, in ratio notation there is a half-tail

```math
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty,
\tag{2}
```

after every paid branch has been removed.

## 2. Minimal bad subtree

Choose a minimal bad subtree by the usual stopping reduction:

1. discard all branches with finite selected fresh mass;
2. discard all nodes whose descendants are paid by a closed branch;
3. retain one child at each split carrying a fixed fraction of the remaining
   divergent fresh mass.

The resulting bad tree is a one-child laminar chain

```math
P=Q_0\supset Q_1\supset Q_2\supset\cdots
\tag{3}
```

with

```math
\omega_{Q_k}^{fresh}\gtrsim 1
\tag{4}
```

on infinitely many \(k\), and with finite raw native mass.

Nonlaminar splitting, sibling copying, and label jumping have already been
placed in paid ledgers.  Therefore `(3)` is not a generic tree artifact; it is
one material ancestry line in the original solution.

## 3. Consequences of the branch removals

Along the bad chain:

```math
\rho^{vis}_{Q_k}=0
\quad\text{modulo finite capacity mass,}
\tag{5}
```

because the visible quotient is root-packed.

```math
\rho^{spent}_{Q_k}=0
\quad\text{modulo paid carry/reselection/full-exchange refund,}
\tag{6}
```

because the spent-source projection closes reuse.

```math
\rho^{silent,0}_{Q_k}=0
\quad\text{modulo same-material strain/exchange payment,}
\tag{7}
```

because silent selected source is not zero-cost.

```math
\rho^{subheat}_{Q_k}=0,
\qquad
\rho^{return}_{Q_k}=0,
\tag{8}
```

modulo the installed heat and recirculation ledgers.

Thus every remaining unit is a genuinely fresh, one-way, high-ratio selected
amplification on one material ancestry line.

## 4. Blow-up profile

Normalize \(Q_k\) to unit heat scale.  Since all visible, selector-jump,
silent-zero-cost, return, and subheat exits have been removed, the retained
limit is an affine-like material-time selected packet:

```math
u_k(x,t)\sim A_k(t)x,
\qquad
\operatorname{tr}A_k=0,
\tag{9}
```

with pressure Hessian balancing material strain:

```math
\nabla^2p_k=-(\dot A_k+A_k^2)
\tag{10}
```

at principal order, plus lower-order legal/collar terms.

The raw heat-scale cost may remain summable, while the normalized selected
action stays order one:

```math
R_{\rm raw}(Q_k)\sim r_k,
\qquad
\omega_{Q_k}^{fresh}\sim 1.
\tag{11}
```

This is exactly the pressure-Hessian-balanced affine half-tail profile.

## 5. Contradiction test

The minimal bad chain contradicts Gold only if one proves an additional
same-history no-Zeno law:

```math
\sum_k \omega_{Q_k}^{fresh}
\le
C_N(u_0)+R_{\rm legal}.
\tag{12}
```

The installed local identities do not prove `(12)`.

Pressure Poisson attaches the affine packet to incompressibility, but
time-separated visits have no one-sided elliptic cross term.  Betchov gives a
signed cubic identity, not rectified selected positive variation.  Cauchy-Green
and frame variation give a single-line tax only after their global positive
variation is known finite.  Frequency damping closes entrance/subheat/return,
but the high-ratio one-way branch cancels the heat advantage.

Therefore the minimal bad tree test does not create a contradiction from the
installed inputs.

## 6. Exact remaining theorem

The contradiction proof reduces the current hinge to a no-Zeno theorem on the
minimal bad chain:

```text
FreshAffineMaterialTimeNoZeno.A
```

Statement:

For one original smooth Navier-Stokes material history, an infinite one-child
laminar chain of fresh, one-way, pressure-Hessian-balanced affine material-time
selected packets cannot have finite raw native mass and infinite selected
fresh amplification.

Equivalently,

```math
\sum_k R_{\rm raw}(Q_k)<\infty,
\qquad
\omega_{Q_k}^{fresh}\gtrsim1
\quad\text{infinitely often}
\tag{13}
```

is impossible after all paid branch removals.

## 7. Result

The proof search has made the remaining obstruction canonical:

```text
fresh one-way selected amplification
=
minimal same-history affine/material-time no-Zeno problem.
```

No local Schur, silent-source, selector, recirculation, frequency-entrance, or
subheat theorem remains open inside this profile.  The missing mathematical
input is the global original-history no-Zeno law for the fresh affine
material-time chain, or an equivalent bounded-below same-material storage /
strict good-lambda gain.
