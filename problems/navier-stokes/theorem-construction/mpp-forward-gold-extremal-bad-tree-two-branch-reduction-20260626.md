---
theorem_id: forward-gold-extremal-bad-tree-two-branch-reduction-20260626
status: reduction-installed-extremal-bad-tree-has-exact-two-open-branches
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - RootPositiveFluxReserveCoercivity.A
  - WeightBeatingTailLaw.A
reduces_to:
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-monotone-dual-extremal-constant-test-collapse-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-selected-tree-dichotomy-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-repeated-core-nonreuse-storage-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-reserve-minimal-bad-chain-compactness-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
---

# Extremal bad tree two-branch reduction

This note tests the remaining proof method after the monotone-dual correction.

The monotone dual has no hidden extremal multiplier.  Since \(A(Q)\ge0\), the
maximal monotone test is:

```math
\alpha_Q\equiv1.
```

So failure of the corrected adjoint target is exactly failure of the full
selected first-ratio action:

```math
\sum_{Q\in\mathcal T}A(Q)=\infty.
\tag{EBT.1}
```

## 1. Extremal tree normalization

Assume `(EBT.1)` on the retained selected laminar tree after entrance, subheat,
nonlaminar exits, and recirculation have been removed.

Prune finite early generations and select an infinite subtree whose retained
action still diverges.  The standard branch/antichain split gives exactly two
possibilities.

## 2. Branch one: reused material ancestry core

There is a laminar ancestry line:

```math
Q_0\supset Q_1\supset Q_2\supset\cdots
```

with:

```math
\sum_k A(Q_k)=\infty.
\tag{EBT.2}
```

The installed single-line tax says each retained visit can be charged to
positive Cauchy-Green deformation, Hodge-frame rotation, collar-normal
separation, or annular turnstile variation on that same material ancestry line:

```math
\sum_{Q_k\subset\mathcal A(a)}A(Q_k)
\le
C\,\mathcal V_{\rm core}(a)+R_{\rm legal}(a).
\tag{EBT.3}
```

This is a real conditional tax.  It is not a root bound.  The missing theorem is:

```text
RepeatedCorePositiveVariationRootBound.A
```

meaning:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{EBT.4}
```

Installed identities do not prove `(EBT.4)`.  Incompressibility preserves
material volume, not Cauchy-Green condition number.  Signed Betchov and shell
identities do not bound rectified localized positive variation.  Local affine
material-time profiles keep raw energy, viscous, and collar costs summable
while preserving order-one normalized selected action per visit.

So the repeated-core branch is reduced, not closed.

## 3. Branch two: shrinking selected core escape

Every ancestry line has finite selected action, but the total tree action is
infinite.  Then the divergent mass can be organized into antichain blocks with
shrinking material cores:

```math
r_k\downarrow0,
\qquad
A(Q_k)\simeq1,
\qquad
\sum_k A(Q_k)=\infty.
\tag{EBT.5}
```

For heat-scale affine cores, raw capacity/energy/enstrophy-type costs scale as:

```math
\int_{Q_{r_k}}|\Sigma|^2\sim r_k,
\qquad
\operatorname{Cap}_{raw}(Q_{r_k})\lesssim r_k.
\tag{EBT.6}
```

But the selected critical strain / pressure-Hodge action is scale invariant:

```math
\int_{Q_{r_k}}|\Sigma|^{5/2}\sim 1.
\tag{EBT.7}
```

Thus one may have:

```math
\sum_k r_k<\infty
\quad\text{while}\quad
\sum_k A(Q_k)=\infty.
\tag{EBT.8}
```

Standard raw capacity, energy interpolation, CKN epsilon regularity, and
pressure Calderon-Zygmund attachment do not rule out this scaling.  The missing
theorem is:

```text
ScaleInvariantSelectedCapacityNoEscape.A
```

meaning that one original material history cannot carry infinitely many
shrinking selected unit cores at summable raw capacity cost.

Installed compactness/Liouville tests do not prove this theorem.  They extract
a local suitable packet or boundary-defect package, and local affine
pressure-strain profiles remain compatible with the coupled local Navier-Stokes
law.

So the shrinking-core branch is also reduced, not closed.

## 4. Consequence

The extremal bad-tree proof method removes the last artificial choices:

```math
\text{failure of the Gold selected tail}
\Longrightarrow
\text{reused-core divergence}
\quad\text{or}\quad
\text{shrinking-core escape}.
\tag{EBT.9}
```

Therefore:

```math
\texttt{RepeatedCorePositiveVariationRootBound.A}
+
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}
\Longrightarrow
\sum_{Q\in\mathcal T}A(Q)<\infty.
\tag{EBT.10}
```

This is an exact reduction of the constant-test Gold hinge.  It is not a proof
of smoothness yet, because both branch theorems remain open from current
installed inputs.

## 5. Current proof pressure

The next nonproxy Gold proof must add one of these two pieces:

1. a root positive-variation bound for reused material ancestry cores; or
2. a scale-invariant selected-capacity no-escape theorem for shrinking cores.

Any future surface that does not prove one of those, or directly prove
\(\sum_QA(Q)<\infty\), is support rather than closure.
