---
theorem_id: forward-gold-laminar-adjoint-stress-test-estimate-direct-test-20260626
status: corrected-dual-direct-test-still-open
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - AdjointSelectedCapacityGain.A
  - RootPositiveFluxReserveCoercivity.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-laminar-dual-bellman-mincut-reserve-target-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-root-positive-flux-reserve-tail-equivalence-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hodge-capacity-bellman-root-test-20260626.md
---

# Laminar adjoint stress-test estimate direct test

Status: corrected dual estimate not discharged; exact adjoint obstruction isolated.

## 1. Target

For the selected laminar high-ratio ancestry tree `T`, the corrected dual estimate is:

```math
\sum_{Q\in T}\alpha_Q A(Q)
\le C_N(u_0)+R_{legal}
```

for every nonnegative monotone ancestry test `alpha` satisfying

```math
0\le \alpha_{Q'}\le \alpha_Q\le 1
\qquad
(Q'\in ch(Q)).
```

The earlier cumulative condition:

```math
\sum_{Q\subset R}\alpha_Q\le 1
```

is too restrictive. At the root it forces the total test mass to be at most
one, so it cannot test the full first-ratio action. The monotone condition above
is the Bellman dual condition for parent-child inheritance. It includes the
constant test:

```math
\alpha_Q\equiv1,
```

so this dual estimate is strong enough to imply:

```math
\sum_{Q\in T}A(Q)<\infty.
```

If true, tree duality produces the desired finite root Bellman reserve automatically, without guessing it.

## 2. Adjoint construction

Given `alpha`, form the selected pressure-Hodge / critical-strain carrier

```math
\mathcal M_\alpha=\sum_Q \alpha_Q\mu_Q^{sel}.
```

The desired estimate is equivalent to boundedness of the backward material adjoint response to `M_alpha` in the legal energy/capacity ledger, uniformly for all monotone ancestry tests.

The velocity part of the adjoint response is compatible with the energy-class interpolation. The obstruction remains the selected critical-strain / pressure-Hessian part, i.e. the same scale-invariant bill that survived the primal capacity route.

## 3. Why the direct dual proof fails

The monotone dual condition is the right tree condition, but it does not supply
the analytic scale gain. Since \(\alpha_Q\equiv1\) is admissible, the dual
estimate must bound the whole selected laminar high-ratio action:

```math
\sum_{Q\in T}A(Q).
```

Therefore the PDE estimate must rule out exactly the same critical half-tail:

```math
\sum_{\ell\ge0}2^\ell\nu_\ell=\infty
```

while raw scale capacity remains summable. This requires a strict selected-capacity gain beyond raw scale capacity.

So the dual formulation is better as a certification target, but it is not yet a proof from installed ledgers. Its missing theorem is:

```math
\boxed{\text{AdjointSelectedCapacityGain.A}}
```

Statement:

For every monotone laminar selected carrier `M_alpha`, the backward pressure-Hodge / critical-strain adjoint response has legal original-data energy, with a strict gain excluding unit selected action at summable raw capacity cost. In particular, this must hold for the constant test \(\alpha\equiv1\).

## 4. Result

`LaminarAdjointStressTestEstimate.A` unifies the repeated-core and shrinking-core branches and produces the root Bellman reserve by duality if proved. However, after correcting the dual class, its analytic content is exactly `AdjointSelectedCapacityGain.A`, the same strict selected-capacity gain that the primal route lacks.

This is still a better target than the no-Zeno split because a failure produces an explicit adversarial monotone laminar test `alpha`, rather than another informal bad family. It is not a closure from tree duality alone.
