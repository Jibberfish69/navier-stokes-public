---
theorem_id: forward-gold-nozeno-selected-tree-dichotomy-equivalence-20260626
status: structural-equivalence-installed-two-branch-wall-exhaustive-not-closed
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - ScaleInvariantSelectedCapacityNoEscape.A
  - RepeatedCorePositiveVariationRootBound.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-history-affine-burst-nozeno-dichotomy-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# No-Zeno Selected Tree Dichotomy Equivalence

This note proves the current two-branch wall is exhaustive after the installed
laminar reduction. It does not prove either branch.

## 1. Retained selected tree

After entrance, subheat, nonlaminar exit, and recirculation have been removed,
the remaining high-ratio terminal family is a laminar material forest. Write it
as a rooted laminar tree \(\mathcal T\). A node \(Q\in\mathcal T\) carries
selected normalized action \(A(Q)\ge0\), and the Gold tail is

```math
\sum_{Q\in\mathcal T} A(Q)<\infty.
\tag{NTD.1}
```

The half-tail model shows that raw mass, laminarity, complete-frame orientation
payment, and single-line conditional taxes do not imply `(NTD.1)`.

## 2. Tree dichotomy

Assume `(NTD.1)` fails on the retained tree. Then there is an infinite retained
subtree \(\mathcal T_0\subseteq\mathcal T\) with positive selected action at
arbitrarily deep levels.

For any infinite laminar tree, one of two things happens.

First, there is an infinite ancestry path

```math
Q_0\supset Q_1\supset Q_2\supset\cdots
\tag{NTD.2}
```

that carries infinitely many retained selected visits. This is the repeated-core
branch. The needed estimate is exactly

```text
RepeatedCorePositiveVariationRootBound.A
```

because each repeated visit is already conditionally charged to positive
Cauchy-Green, pressure-Hodge-frame, collar-normal, or annular turnstile
variation on the reused material ancestry.

Second, no ancestry path carries infinite selected visits. Then the failed
selected tail must escape through infinitely many pairwise separated children,
or through descendants whose common material core shrinks to the terminal point.
Equivalently, after passing to a subfamily, the selected unit bursts form a
shrinking-core escape family with summable raw radius/capacity still possible.
The needed estimate is exactly

```text
ScaleInvariantSelectedCapacityNoEscape.A
```

because the raw pressure-Hodge / collar / turnstile capacity lower bound scales
like the core radius and cannot pay unit selected action.

Thus the current alternatives are exhaustive:

```math
\neg (NTD.1)
\Longrightarrow
\neg\texttt{RepeatedCorePositiveVariationRootBound.A}
\quad\text{or}\quad
\neg\texttt{ScaleInvariantSelectedCapacityNoEscape.A}.
\tag{NTD.3}
```

Equivalently,

```math
\texttt{RepeatedCorePositiveVariationRootBound.A}
\quad\text{and}\quad
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}
\Longrightarrow
\sum_{Q\in\mathcal T}A(Q)<\infty.
\tag{NTD.4}
```

## 3. No third Gold branch

The dichotomy removes a source of route drift. A future proof cannot close the
Gold high-ratio tail by inventing a third terminal packing class after the
laminar reduction. It must either bound reused-core positive variation from the
original material history, or rule out shrinking selected unit bursts at
summable raw capacity cost.

The two named branch theorems are still unproved in the current installed
ingredients. This note only proves that they are the two remaining ways to
close the selected laminar high-ratio tail.
