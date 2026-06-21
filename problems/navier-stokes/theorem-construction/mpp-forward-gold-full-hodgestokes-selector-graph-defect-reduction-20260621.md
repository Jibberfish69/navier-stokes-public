---
theorem_id: forward-gold-full-hodgestokes-selector-graph-defect-reduction-20260621
status: finite-selector-graph-closed-unbounded-selector-complexity-open
logical_landing_node: full_hodgestokes_selector_graph_defect_reduction
edge_effect: "Reduces the selector graph member of the full Hodge-Stokes compactness/no-loss split. If the retained cutoffs, packet labels, signs, and selector tests live in a finite or compact same-carrier family with bounded variation/complexity, subsequence extraction gives graph convergence and the selector graph defect vanishes. The only remaining selector graph obstruction is unbounded sign-selector complexity or carrier/collar drift. This matches the existing selected-positive-carrier selector-complexity boundary: smooth dual readouts do not control the native positive-part selector when its sign boundary oscillates at source scale."
parents:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-full-hodgestokes-packet-compactness-noloss-attempt-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-packet-selector-polar-retention-criterion-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-upgraded-four-body-current-frontier-20260621.md
---

# Full Hodge-Stokes Selector Graph Defect Reduction

Date: 2026-06-21

## 0. Aim

The remaining compactness/no-loss split contains the selector graph defect

```math
(\chi_n,\Phi_n,\mathcal S_n)
\text{ fails same-carrier convergence.}
\tag{SGD.1}
```

This defect has a finite/compact branch and an unbounded-complexity branch:

```math
\boxed{
\text{finite or compact selector graph}
\Rightarrow
\text{same-carrier subsequential convergence;}
}
\tag{SGD.2}
```

```math
\boxed{
\text{failure}
\Rightarrow
\text{unbounded selector complexity or carrier/collar drift.}
}
\tag{SGD.3}
```

## 1. Finite selector families close by extraction

If the selected packets come from a finite family

```math
\mathcal G
=
\{(\chi^a,\Phi^a,\mathcal S^a):1\le a\le M\},
\tag{SGD.4}
```

then every sequence has a subsequence on which

```math
(\chi_n,\Phi_n,\mathcal S_n)
=
(\chi^{a_\ast},\Phi^{a_\ast},\mathcal S^{a_\ast})
\tag{SGD.5}
```

is constant.  On that subsequence, `(SGD.1)` is false.

Thus finite selector choice is not a compactness/no-loss obstruction.

## 2. Compact selector families close by compactness

More generally, suppose

```math
\chi_n\to\chi
\quad\text{in }C^1,
\qquad
\Phi_n\to\Phi
\quad\text{in the packet dual-test topology,}
\tag{SGD.6}
```

and the selector signs/graphs converge in the topology used to define the
selected scalar density \(h_n\).  Then the selected densities remain on the
same carrier, and the no-loss criterion applies after the already reduced
transport, local pressure, and viscous channels have passed.

So compact graph convergence gives

```math
\boxed{
h_n\to h\text{ in }L^1
\Longrightarrow
[h_n]_+\to[h]_+\text{ in }L^1.
}
\tag{SGD.7}
```

## 3. The real selector obstruction

The remaining case is unbounded positive-part selector complexity.  The
existing selector-complexity boundary gives the model:

```math
N_n=-\cos(nx_1)e_2,
\qquad
\sigma=-e_2,
\qquad
[\sigma\cdot N_n]_+=[\cos(nx_1)]_+.
\tag{SGD.8}
```

The selected positive carrier stays fixed-size, but fixed smooth tests see only
an \(O(n^{-1})\) readout.  The sign selector has growing variation.

Therefore failure of `(SGD.1)` is not a generic compactness failure.  It is:

```math
\boxed{
\text{unbounded sign-selector complexity}
\quad\text{or}\quad
\text{carrier/collar drift.}
}
\tag{SGD.9}
```

## 4. Current result

The selector graph branch is reduced to:

```math
\boxed{
\text{finite/compact selector graph closes;}
\qquad
\text{unbounded selector complexity remains open.}
}
\tag{SGD.10}
```

The open branch must be paid by a selector-complexity budget, signed-polar
saturation, no-free terminal Zeno control, a same-carrier no-waste reserve, or
minimal profile production.  It is not supplied by smooth duality alone.
