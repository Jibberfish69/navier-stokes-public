---
theorem_id: forward-gold-retained-selection-tax-density-atom-boundary-20260626
status: pure-reselection-tax-fails-reduces-to-density-atom-exclusion
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - RetainedSelectionBoundaryTax.A
  - MaterialSubsetReselectionCost.A
  - ShrinkingCoreNoEscapeCapacity.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - RepeatedCorePositiveVariationRootBound.A
---

# Retained selection tax: density-atom boundary

## 1. Target

The previous note reduced shrinking-core no-escape to a compression-or-reselection dichotomy. Genuine material compression has logarithmic deformation cost. The remaining case is strict retained subset reselection:

```math
Q_{k+1}\subsetneq Q_k,
\qquad
r_{k+1}\ll r_k,
\qquad
A(Q_{k+1})\simeq 1,
```

without dyadic compression of the old material collar.

The desired theorem was:

```math
A(Q_{k+1})\simeq1,
\quad
Q_{k+1}\subsetneq Q_k,
\quad
\text{no material compression}
\quad\Longrightarrow\quad
\mathcal B_{select}(Q_k,Q_{k+1})\ge c_0.
\tag{1}
```

## 2. Pure selection tax is not automatic

A purely measure-theoretic scale-invariant selected action can evade `(1)`. Let `mu` be a selected action measure and suppose the normalized action is

```math
A(Q)=r(Q)^{-\alpha}\mu(Q).
```

If `mu` has an `alpha`-dimensional density concentration at a material point `a_*`, then for a nested sequence of cubes `Q_k` about `a_*`,

```math
\mu(Q_k)\simeq r_k^{\alpha},
\qquad
A(Q_k)\simeq 1
\tag{2}
```

for infinitely many `k`.

This produces strict reselection with unit normalized selected action at all scales, but no separate boundary/cut tax follows from selection alone. The core is simply following a terminal density concentration.

Thus `RetainedSelectionBoundaryTax.A` is false unless the retained selection rule has additional structure beyond arbitrary nested high-density selection.

## 3. What the escape really is

If strict reselection can continue indefinitely without material compression, then the intersection

```math
\bigcap_k Q_k
```

is a terminal material concentration object for the selected action measure. The shrinking-core escape is therefore not a separate third route; it collapses to a terminal density atom / repeated-core route.

The correct alternative is:

```math
\boxed{
\text{either reselection is paid by a genuine boundary/cut ledger,}
\quad
\text{or the chain converges to a terminal selected density atom.}
}
\tag{3}
```

## 4. Exact replacement theorem

The needed theorem is

```text
TerminalSelectedDensityAtomExclusion.A
```

or, in the existing branch language,

```text
RepeatedCorePositiveVariationRootBound.A
```

Statement:

An infinite retained nested selected ancestry with unit normalized selected action and no material compression / no paid reselection boundary produces a terminal selected density atom, and every such atom carries a positive root variation/capacity cost paid by original-data legal ledgers.

Symbolically:

```math
A(Q_k)\simeq1,
\quad
Q_{k+1}\subsetneq Q_k,
\quad
\sum_k\mathcal B_{select}(Q_k,Q_{k+1})<\infty,
\quad
\sum_k\mathcal S_{compression}(Q_k)<\infty
```

implies existence of a terminal object `a_*` with

```math
\limsup_{k\to\infty} r_k^{-\alpha}\mu(Q_k)>0.
\tag{4}
```

The required closure is then

```math
\text{terminal density atom } a_*
\quad\Longrightarrow\quad
\mathcal V_{root}(a_*)\ge c_0
\tag{5}
```

with `V_root` finite from original data only when the number/weight of such atoms is summable.

## 5. Result

The retained-selection boundary tax does not close as a standalone theorem. Arbitrary strict reselection can follow a terminal scale-invariant density concentration without paying a new cut cost.

Therefore the no-escape branch folds back into the repeated-core branch:

```math
\text{Compression cost or paid reselection}
\quad\text{closes no-escape;} 
```

otherwise

```math
\text{unpaid infinite reselection}
\Longrightarrow
\text{terminal selected density atom}
\Longrightarrow
\text{RepeatedCorePositiveVariationRootBound.A needed.}
```

The live closure target should therefore return to

```text
RepeatedCorePositiveVariationRootBound.A / TerminalSelectedDensityAtomExclusion.A
```

rather than treating `RetainedSelectionBoundaryTax.A` as an independent route.