---
theorem_id: forward-gold-compression-or-reselection-tax-dichotomy-20260626
status: narrowed-to-reselection-boundary-tax
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / annular service trajectory
attacks_hinge:
  - CollarNormalCompressionCapacityLowerBound.A
  - ShrinkingCoreNoEscapeCapacity.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - ParentDrop.A
---

# Compression-or-reselection tax dichotomy

## 1. Target

The live hinge asks for a noncircular lower bound:

```math
A(Q_k)\simeq 1
\quad\Longrightarrow\quad
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle
+\mathcal S_{normal}(Q_k)+\mathcal S_{covector}(Q_k)+R_{legal}(Q_k)
\ge c_0
\tag{1}
```

along a retained shrinking same-material selected ancestry chain. This would close `ScaleInvariantSelectedCapacityNoEscape.A`.

## 2. True material shrinkage is expensive

Let `X(t,a)` be the Lagrangian flow. For a genuine material packet, incompressibility gives

```math
\det D_aX(t,a)=1.
\tag{2}
```

If the same retained material collar shrinks in one normal direction by a factor `theta<1`, then some singular value of `D_aX` has changed by `theta`, and volume preservation forces compensating tangential stretch. Along the relevant material history,

```math
\left|\log {\ell_{normal}(t_1)\over \ell_{normal}(t_0)}\right|
\le
\int_{t_0}^{t_1}\|\nabla u(s,X(s,a))\|\,ds
\tag{3}
```

in the appropriate material-frame norm.

Therefore dyadic normal compression costs a scale-invariant amount of material deformation:

```math
\ell_{normal}(t_1)\le {1\over2}\ell_{normal}(t_0)
\quad\Longrightarrow\quad
\int_{t_0}^{t_1}\|\nabla u(s,X(s,a))\|\,ds\ge \log2.
\tag{4}
```

This supports the desired no-escape lower bound when the shrinking is actual material compression.

## 3. But shrinking can also occur by reselection

There is another possibility. The descendant selected core may be a smaller retained subset of the parent material packet, not the same material collar compressed by the flow.

Then the normal scale can shrink without paying `(4)`. The flow is incompressible, but the selected subset is simply smaller.

This means the direct collar-compression lower bound is false unless the retained ancestry rule charges strict subset reselection.

The escape model is:

```math
Q_{k+1}\subsetneq Q_k,
\qquad
r_{k+1}\ll r_k,
\qquad
A(Q_{k+1})\simeq1,
```

with no large material compression of the old collar, because the packet has reselected a smaller high-action subset.

## 4. Correct dichotomy

The valid theorem is therefore a dichotomy:

```math
\boxed{
\text{shrinking retained selected ancestry}
\Rightarrow
\text{material compression cost}
\ \text{or}\
\text{reselection boundary tax}.
}
\tag{5}
```

More explicitly, for every strict retained descent,

```math
A(Q_{k+1})
\lesssim
\mathcal S_{normal}(Q_k)
+\mathcal S_{covector}(Q_k)
+\mathcal B_{select}(Q_k,Q_{k+1})
+R_{legal}(Q_k).
\tag{6}
```

Here `B_select` is a boundary/cut tax for discarding most of the parent material packet while retaining a unit selected high-ratio descendant.

## 5. Exact missing theorem

The new necessary theorem is

```text
RetainedSelectionBoundaryTax.A
```

or equivalently

```text
MaterialSubsetReselectionCost.A
```

Statement:

A retained selected descendant cannot keep unit normalized selected action after strict subset reselection unless the selection boundary/cut is paid by a finite original-data ledger, material service, legal exit, or the parent Schur/pressure-visible ledger.

Symbolically:

```math
A(Q_{k+1})\simeq1,
\quad
Q_{k+1}\subsetneq Q_k,
\quad
\text{no dyadic material compression}
\quad\Longrightarrow\quad
\mathcal B_{select}(Q_k,Q_{k+1})\ge c_0.
\tag{7}
```

This must be scale-invariant and cannot be defined as the descendant action tail.

## 6. Result

`CollarNormalCompressionCapacityLowerBound.A` is conditionally true for genuine material compression, via logarithmic material deformation cost. It is not true for arbitrary retained subset reselection unless a separate retained-selection boundary tax is installed.

The live no-escape branch is now:

```math
\text{RetainedSelectionBoundaryTax.A}
+\text{material compression cost}
\Longrightarrow
\text{ShrinkingCoreNoEscapeCapacity.A}
\Longrightarrow
\text{ScaleInvariantSelectedCapacityNoEscape.A}
\Longrightarrow
\text{selected first-ratio finiteness}.
```

Thus the current blocker is no longer generic collar compression. It is the cost of repeatedly reselecting smaller high-action retained subsets without paying material compression.