# Laminar adjoint stress-test estimate direct test

Status: direct dual estimate not discharged; exact adjoint obstruction isolated.

## 1. Target

For the selected laminar high-ratio ancestry tree `T`, the proposed dual estimate is:

```math
\sum_{Q\in T}\alpha_Q A(Q)
\le C_N(u_0)+R_{legal}
```

for every nonnegative admissible laminar test `alpha` satisfying

```math
\sum_{Q\subset R}\alpha_Q\le 1
```

on every ancestry node `R`.

If true, tree duality produces the desired finite root Bellman reserve automatically, without guessing it.

## 2. Adjoint construction

Given `alpha`, form the selected pressure-Hodge / critical-strain carrier

```math
\mathcal M_\alpha=\sum_Q \alpha_Q\mu_Q^{sel}.
```

The desired estimate is equivalent to boundedness of the backward material adjoint response to `M_alpha` in the legal energy/capacity ledger.

The velocity part of the adjoint response is compatible with the energy-class interpolation. The obstruction remains the selected critical-strain / pressure-Hessian part, i.e. the same scale-invariant bill that survived the primal capacity route.

## 3. Why the direct dual proof fails

The admissibility condition on `alpha` controls tree overlap. It does not supply a scale gain. A bad terminal chain may choose one active descendant at each scale, satisfying the laminar admissibility constraint while retaining unit selected action at each level.

Thus the dual test can still see

```math
\sum_k \alpha_{Q_k} A(Q_k)=\infty
```

unless the adjoint PDE estimate supplies a strict selected-capacity gain beyond raw scale capacity.

So the dual formulation is better as a certification target, but it is not yet a proof from installed ledgers. Its missing theorem is:

```math
\boxed{\text{AdjointSelectedCapacityGain.A}}
```

Statement:

For every admissible laminar selected carrier `M_alpha`, the backward pressure-Hodge / critical-strain adjoint response has legal original-data energy, with a strict gain excluding unit selected action at summable raw capacity cost.

## 4. Result

`LaminarAdjointStressTestEstimate.A` unifies the repeated-core and shrinking-core branches and produces the root Bellman reserve by duality if proved. However, its analytic content is exactly `AdjointSelectedCapacityGain.A`, the same strict selected-capacity gain that the primal route lacks.

This is still a better target than the no-Zeno split because a failure produces an explicit adversarial laminar test `alpha`, rather than another informal bad family.