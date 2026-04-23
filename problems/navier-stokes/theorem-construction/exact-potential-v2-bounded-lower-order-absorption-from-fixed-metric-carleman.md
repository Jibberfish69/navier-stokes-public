# Exact-Potential `V2` Bounded Lower-Order Absorption From Fixed-Metric Carleman

## Status

Active theorem-facing reduction note for the repaired direct exact-potential
`V2` branch.

Role: discharge the separate lower-order perturb-transfer wall once the
fixed-metric Lipschitz Carleman packet is imported.

## Purpose

The note
[exact-potential-v2-fixed-metric-heat-supported-perturbation-remaining.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-fixed-metric-heat-supported-perturbation-remaining.md)
isolated the repaired direct `V2` wall as:

1. fixed-metric heat observability on the bounded Lipschitz chart class;
2. bounded lower-order perturb-transfer.

This note sharpens that split. Once the fixed-metric heat import is taken in the
stronger uniform Carleman form supplied by Laurent--Léautaud, the bounded
first-order and zeroth-order terms absorb directly. So the lower-order
perturb-transfer theorem is not an additional independent wall on this branch.

## Proposition `ELA.A` (bounded lower-order terms absorb into the fixed-metric Carleman packet)

Fix one retained chart `\Omega_k\times I_k`, and write the backward chart
operator in the form

```math
P_k z
:=
P_{k,0} z
+\widehat b_k\cdot \nabla_\zeta z
+\widehat c_k z,
\qquad
P_{k,0}z:=
-\partial_t z-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta z),
\tag{ELA.1}
```

where:

1. `G_k` is the fixed chart metric from the repaired `F.11d` readout;
2. `\widehat b_k,\widehat c_k\in L^\infty(\Omega_k\times I_k)`;
3. there is one uniform bound

```math
\|\widehat b_k\|_{L^\infty(\Omega_k\times I_k)}
+
\|\widehat c_k\|_{L^\infty(\Omega_k\times I_k)}
\le M_\ast
\tag{ELA.2}
```

across the retained chart family.

Assume the fixed-metric packet is imported in the stronger Carleman form:
there exist one chart-uniform weight pair `(\phi_k,\theta_k)`, constants
`C_0>0`, `s_0>0`, and one observation term `\operatorname{Obs}_{k,s}[z]` such
that every admissible test function `z` satisfies

```math
\mathcal I_{k,s}[z]
\le
C_0\Big(
\|e^{s\phi_k}P_{k,0}z\|_{L^2(\Omega_k\times I_k)}^2
+
\operatorname{Obs}_{k,s}[z]
\Big)
\qquad
\text{for all }s\ge s_0,
\tag{ELA.3}
```

with bulk term

```math
\mathcal I_{k,s}[z]
:=
s^3\!\!\int_{\Omega_k\times I_k}\!\!\theta_k^3 e^{2s\phi_k}|z|^2
+
s\!\!\int_{\Omega_k\times I_k}\!\!\theta_k e^{2s\phi_k}|\nabla_\zeta z|^2.
\tag{ELA.4}
```

Then there exists `s_\ast=s_\ast(C_0,M_\ast,\phi_k,\theta_k)` such that for all
`s\ge s_\ast`,

```math
\mathcal I_{k,s}[z]
\le
2C_0\Big(
\|e^{s\phi_k}P_k z\|_{L^2(\Omega_k\times I_k)}^2
+
\operatorname{Obs}_{k,s}[z]
\Big).
\tag{ELA.5}
```

So the lower-order packet is absorbed into the same chart-uniform Carleman
class.

### Proof

From `(ELA.1)` and `(ELA.2)`,

```math
\|e^{s\phi_k}P_{k,0}z\|_{L^2}^2
\le
2\|e^{s\phi_k}P_k z\|_{L^2}^2
+
2M_\ast^2\!\!\int_{\Omega_k\times I_k}\!\!e^{2s\phi_k}
\bigl(|\nabla_\zeta z|^2+|z|^2\bigr).
\tag{ELA.6}
```

Insert `(ELA.6)` into `(ELA.3)`. The second term on the right is lower order
than the bulk packet `(ELA.4)`: the gradient part is controlled by the
`s\theta_k e^{2s\phi_k}|\nabla_\zeta z|^2` term, and the zeroth-order part is
controlled by the `s^3\theta_k^3 e^{2s\phi_k}|z|^2` term. After the usual
time-cutoff, `\theta_k` is bounded below on the interior slab where the
Carleman estimate is applied, so for `s` large enough the lower-order
contribution is absorbed into the left-hand side. This yields `(ELA.5)`. ∎

## Corollary `ELA.B` (the separate perturb-transfer wall disappears under the fixed-metric Carleman import)

Assume the retained chart family satisfies the repaired `F.11d` packet:

1. `\Omega_k` belongs to one bounded chart family;
2. `G_k` is uniformly elliptic and uniformly Lipschitz;
3. the lower-order packet is uniformly bounded in `L^\infty`.

Assume further that Laurent--Léautaud's uniform Lipschitz-metric Carleman
estimate is available for the base operator `P_{k,0}`. Then `(ELA.A)` upgrades
that fixed-metric Carleman packet to the full repaired chart operator `P_k`.
Consequently the bounded lower-order perturb-transfer theorem required in

[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md)
is discharged.

### Proof

Apply `(ELA.A)` chartwise. The imported Laurent--Léautaud estimate supplies the
uniform base Carleman packet `(ELA.3)`, and the repaired `F.11d` readout plus
the semigroup note supply the bounded lower-order packet `(ELA.2)`. So the full
chart operator lies in the same Carleman/observability class. ∎

## Corollary `ELA.C` (the repaired direct `V2` route reduces to the fixed-metric Lipschitz import packet)

On the repaired direct exact-potential branch, the conservative direct route
now reads:

```math
\boxed{
\texttt{uniform fixed-metric Lipschitz Carleman / heat observability import}
}
\Longrightarrow
\boxed{
\texttt{full repaired bounded-chart observability}
}
\Longrightarrow
\boxed{
\texttt{PDO-Carleman}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{ELA.7}
```

So the exact remaining branch-local wall is no longer a separate lower-order
perturb-transfer theorem. It is only the fixed-metric Lipschitz import packet
itself.

## Source support

- [Laurent--Léautaud 2018](https://arxiv.org/abs/1806.00969) explicitly state
  that they prove a uniform Carleman estimate for bounded classes of Lipschitz
  metrics, and derive uniform observability for the corresponding heat
  equations.
- [Duyckaerts--Zhang--Zuazua 2008](https://www.math.univ-paris13.fr/~duyckaer/articles/OptimalityDZZ.pdf)
  treat the Euclidean variable-coefficient parabolic class with bounded
  first-order and zeroth-order potentials and show that observability persists
  with explicit dependence on those lower-order packets. The present note uses
  that theorem family only as the model showing that the lower-order terms are
  not a new branch object once the principal Carleman packet is available.

## Interpretation

This is an upward repair of the installed direct branch, not a route switch.
The branch still runs through the repaired `F.11d` chart equation, the static
metric audit, the Wang--Zhang measurable-time packet, and the existing
`PDO-Carleman` node. The only change is that the separate perturb-transfer wall
is now replaced by one sharper and more classical import packet:

```math
\boxed{
\texttt{Laurent--Léautaud uniform fixed-metric Lipschitz Carleman}
}
\Longrightarrow
\boxed{
\texttt{bounded lower-order absorption}
}
\Longrightarrow
\boxed{
\texttt{repaired direct }V2
}.
\tag{ELA.8}
```
