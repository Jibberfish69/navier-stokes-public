---
theorem_id: forward-gold-two-branch-selected-capacity-closure-audit-20260626
status: branch-audit-installed-two-branch-wall-exhaustive-both-branches-open-no-support-proxy-promotable
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - AdjointSelectedCapacityGain.A
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-capacity-authority-reconciliation-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-nozeno-selected-tree-dichotomy-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-core-incompressibility-hodge-root-bound-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-shrinking-core-escape-capacity-lower-bound-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-installed-support-axioms-half-tail-model-no-go-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-first-ratio-tail-surviving-global-storage-frontier-20260626.md
---

# Two-Branch Selected-Capacity Closure Audit

The Gold selected-capacity wall is now a two-branch theorem.  The reduction is
installed; the branch closures are not.

The target action is the full selected first-ratio tail

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{TBSC.1}
```

Equivalently, after the monotone-dual correction, it is the constant-test
instance of `AdjointSelectedCapacityGain.A`.  The full same-material clock is
still the continuation landing object, but the current nonproxy proof burden is
`(TBSC.1)`.

## 1. Exhaustive split

After entrance, subheat, nonlaminar exit, return/recirculation, endpoint trace,
and support-anchor reductions, failure of `(TBSC.1)` on the retained laminar
selected tree has exactly two forms.

First, an infinite branch carries divergent selected action on one material
ancestry line:

```math
Q_0\supset Q_1\supset Q_2\supset\cdots,
\qquad
\sum_k A(Q_k)=\infty.
\tag{TBSC.2}
```

This is the reused-core branch.

Second, every ancestry line carries finite selected action, while divergent
action escapes through shrinking antichain blocks:

```math
r_k\downarrow0,
\qquad
A(Q_k)\simeq1,
\qquad
\sum_kA(Q_k)=\infty.
\tag{TBSC.3}
```

This is the shrinking-core branch.

The installed dichotomy proves there is no third retained laminar high-ratio
packing class.  It does not prove either branch estimate.

## 2. Reused-core branch boundary

The installed same-line tax is real:

```math
\sum_{Q_k\subset\mathcal A(a)}A(Q_k)
\le
C\,\mathcal V_{\rm core}(a)+R_{\rm legal}(a).
\tag{TBSC.4}
```

Here \(\mathcal V_{\rm core}\) is the rectified positive variation of the
Cauchy-Green deformation, pressure-Hodge frame, collar normal, and annular
turnstile records on the same material core.

The missing theorem is the root bound:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{TBSC.5}
```

Incompressibility gives

```math
\det D_aX=1,
\qquad
\sum_i\log s_i(D_aX)=0.
\tag{TBSC.6}
```

This is volume preservation, not rectified condition-number control:

```math
\det D_aX=1
\not\Rightarrow
\operatorname{Var}^+\log\kappa(D_aX)<\infty.
\tag{TBSC.7}
```

The complete-frame trace-free law pays orientation pointwise:

```math
[p\cdot Sp]_+
\le
[-\widehat\xi\cdot S\widehat\xi]_+
+
[-n\cdot Sn]_+.
\tag{TBSC.8}
```

It places each selected burst on the same material deformation/frame/collar
record, but it does not make that total record finite.

Material Hodge projection also supplies attachment, not a one-way sign.  It
removes pressure as an independent tangent forcing term and identifies projector
motion with the same material metric/strain geometry, but it does not bound
the rectified projector/frame variation from original data.

Thus `RepeatedCorePositiveVariationRootBound.A` remains open in precisely the
root-finiteness form `(TBSC.5)`.

## 3. Shrinking-core branch boundary

For a shrinking localized affine/material-time selected core \(Q_r\), raw
pressure-Hodge, collar, turnstile, energy, and viscous costs have capacity-size
scaling:

```math
R_{\rm raw}(Q_r)\lesssim r.
\tag{TBSC.9}
```

The selected normalized action remains scale invariant:

```math
A(Q_r)\simeq1.
\tag{TBSC.10}
```

Therefore dyadic shrinking cores may satisfy

```math
\sum_k r_k<\infty,
\qquad
\sum_kA(Q_k)=\infty.
\tag{TBSC.11}
```

Raw capacity cannot pay this branch.  The needed estimate is a selected,
scale-invariant no-escape law:

```math
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}.
\tag{TBSC.12}
```

Equivalently, an infinite terminal family of shrinking material cores cannot
each carry unit selected pressure-Hodge / critical-strain action at summable
raw capacity cost.

The installed Stokes/Hodge adjoint, pressure ellipticity, CKN criteria, and
critical-density readouts only reach raw critical capacity or consumer
criteria.  None supplies the scale-invariant selected lower bound in `(TBSC.12)`.

## 4. Half-tail guard

The support package still admits the abstract one-child laminar half-tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}.
\tag{TBSC.13}
```

It has

```math
\sum_\ell\nu_\ell<\infty,
\qquad
\sum_\ell2^\ell\nu_\ell=\infty.
\tag{TBSC.14}
```

This model satisfies the installed raw-mass, laminarity, complete-frame
orientation, and conditional single-line tax axioms.  Therefore those support
anchors cannot be promoted into either branch closure.

## 5. Current Gold proof state

The current Gold branch theorem is:

```math
\texttt{RepeatedCorePositiveVariationRootBound.A}
\quad\text{or}\quad
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}
\quad\Longrightarrow\quad
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{TBSC.15}
```

The implication from both branch theorems to the selected first-ratio tail is
installed by the extremal bad-tree reduction.  The branch theorems themselves
are not installed.

Thus the exact next proof object is one of:

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal},
\tag{TBSC.16}
```

or

```math
\text{no infinite shrinking selected unit bursts at summable raw capacity cost}.
\tag{TBSC.17}
```

Any future Gold surface that does not prove `(TBSC.16)`, prove `(TBSC.17)`, or
prove `(TBSC.1)` directly is support, failed attempt, or readout rather than
closure.
