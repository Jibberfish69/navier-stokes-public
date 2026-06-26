---
theorem_id: forward-gold-monotone-dual-extremal-constant-test-collapse-20260626
status: proof-reduction-installed-monotone-dual-extremal-is-constant-test
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - AdjointSelectedCapacityGain.A
  - RootPositiveFluxReserveCoercivity.A
  - WeightBeatingTailLaw.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-adjoint-stress-test-estimate-direct-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-dual-bellman-mincut-reserve-target-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-positive-flux-reserve-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-standard-regularity-criteria-selected-capacity-audit-20260626.md
---

# Monotone dual extremal collapse to the constant test

This note removes a false degree of freedom from the corrected adjoint target.

The corrected admissible class is:

```math
0\le \alpha_{Q'}\le \alpha_Q\le 1
\qquad (Q'\in ch(Q)).
```

The selected laminar action is nonnegative:

```math
A(Q)\ge 0.
```

Therefore the finite-tree maximization problem

```math
\sup_{\alpha}
\sum_{Q\in T}\alpha_Q A(Q)
```

over the corrected monotone class is attained by

```math
\alpha_Q\equiv 1.
```

Indeed, for every admissible \(\alpha\),

```math
\sum_{Q\in T}\alpha_QA(Q)
\le
\sum_{Q\in T}A(Q),
```

and equality is attained by the constant test.

## Consequence

`AdjointSelectedCapacityGain.A` is not an adversarial-multiplier search after
the corrected dual class is installed.  For nonnegative selected action, the
extremal monotone test is the full selected tree.

Thus:

```math
\forall \alpha\text{ monotone},\quad
\sum_Q\alpha_QA(Q)\le C_N(u_0)+R_{legal}
```

is equivalent to:

```math
\sum_QA(Q)\le C_N(u_0)+R_{legal}.
```

In ratio-tail coordinates this is:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell<\infty.
```

## Effect on the live hinge

The monotone-dual route remains useful as a certificate language for any future
root reserve.  It is not a smaller route to search over multipliers.  The
remaining mathematical content is exactly the full selected first-ratio action
bound, or an equivalent strict good-lambda / selected-capacity gain.

So the next proof attempt must act on the full selected laminar tree itself:

```math
\alpha\equiv1.
```

Any proof that only handles sparse subtrees, localized multipliers, or proper
subfamilies is support unless it is upgraded to the constant-test case.
