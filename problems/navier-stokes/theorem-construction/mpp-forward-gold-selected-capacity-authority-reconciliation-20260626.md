---
theorem_id: forward-gold-selected-capacity-authority-reconciliation-20260626
status: authority-reconciliation-installed-frequency-identity-ckn-audits-demote-proxies-live-selected-capacity-wall-preserved
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
attacks_hinge:
  - AdjointSelectedCapacityGain.A
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-ratio-tail-frequency-transfer-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-standard-regularity-criteria-selected-capacity-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-extremal-bad-tree-two-branch-reduction-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-reused-core-incompressibility-hodge-root-bound-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adjoint-stokes-critical-scaling-noepsilon-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-global-full-clock-equivalence-to-continuation-criterion-20260624.md
---

# Selected-Capacity Authority Reconciliation

The Gold route still uses the full same-material clock as the continuation
object.  The active proof hinge inside that object is now sharper:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
\tag{SCAR.1}
```

Equivalently, the current hinge is a strict selected-capacity / good-lambda /
root-reserve gain for the retained laminar high-ratio ancestry.  The full-clock
language is the landing object; it is not a license to reselect a vague
``produce the clock'' target after the first-ratio wall has been isolated.

## 1. What remains live

The monotone-dual correction makes the constant test \(\alpha\equiv1\)
admissible.  Since the selected action is nonnegative, this test is extremal.
Thus `AdjointSelectedCapacityGain.A` is the full selected first-ratio action
bound, not a sparse-test or adversarial-multiplier subproblem.

The bad-tree reduction leaves exactly two live branches:

```math
\text{reused material core}
\quad\text{or}\quad
\text{shrinking selected core escape}.
\tag{SCAR.2}
```

The corresponding theorem names are:

```math
\texttt{RepeatedCorePositiveVariationRootBound.A},
\qquad
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}.
\tag{SCAR.3}
```

Proving either branch in the required form, or proving `(SCAR.1)` directly,
produces the finite full same-material action needed by
`GlobalSamePacketFullClockFromOriginalData.A`.

## 2. Frequency-transfer audit

The frequency-transfer route pays the entrance, linear heat tail, subheat
accelerated cycles, and return/recirculation pieces.  It does not pay the
one-way high-ratio branch.

In the installed notation,

```math
d\mu_j(t)=2^{2j}e_j(t)\,dt,
\qquad
\rho_j(t)={\Theta_j^{mat}(t)\over 2^{2j}}.
\tag{SCAR.4}
```

The raw heat/viscous/fixed-collar information gives the zeroth moment

```math
\sum_\ell \nu_\ell<\infty.
\tag{SCAR.5}
```

The Gold action requires the first ratio moment `(SCAR.1)`.  The critical tail

```math
\nu_\ell={2^{-\ell}\over \ell+1}
\tag{SCAR.6}
```

satisfies `(SCAR.5)` but violates `(SCAR.1)`.  Therefore smooth initial
frequency decay and high-frequency viscous damping do not close the selected
capacity wall unless a nonlinear same-history no-free-upward-transfer law is
added.

## 3. Installed identity audit

The installed pressure/Hodge, Cauchy-Green, Betchov, CKN, and Stokes-adjoint
surfaces attach the selected action to the same material history.  They do not
produce original-data finiteness for the rectified positive selected action.

Their current proof roles are:

- incompressibility and material Hodge: attachment/orientation support;
- complete-frame trace-free payment: orientation support;
- Betchov/enstrophy identities: signed/net identities, not positive variation;
- CKN and standard regularity criteria: consumers/readouts;
- backward Stokes/Hodge adjoint: raw critical capacity, no strict exponent gain;
- laminar ancestry: support skeleton;
- root Bellman reserve and selected capacity: equivalent forms of the live wall
  unless they are supplied by a new estimate.

So none of these surfaces may be promoted to closure for the Gold route without
an added strict gain beyond raw critical capacity.

## 4. Authority correction

The authority surfaces should read the route as:

```math
\text{same-material full-clock route}
\quad\Longleftarrow\quad
\text{strict selected first-ratio / capacity gain}.
\tag{SCAR.7}
```

They should not read it as a fresh search for an unspecified clock producer.
The clock is the continuation landing object.  The current proof burden is the
specific selected-capacity gain:

```math
\texttt{AdjointSelectedCapacityGain.A}
\quad\text{or}\quad
\texttt{RepeatedCorePositiveVariationRootBound.A}
\quad\text{or}\quad
\texttt{ScaleInvariantSelectedCapacityNoEscape.A}.
\tag{SCAR.8}
```

This note does not close the Gold route.  It fixes the proof authority: stale
frequency, CKN, Hodge, pressure-only, and generic full-clock readings are
support or failed attempts, while the live Gold wall is the selected
first-ratio tail.
