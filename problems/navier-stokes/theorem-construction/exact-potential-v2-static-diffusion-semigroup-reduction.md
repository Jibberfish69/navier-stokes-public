# Exact-Potential `V2` Static-Diffusion Semigroup Reduction

## Status

Active theorem-facing reduction note for the repaired exact-potential direct
`V2` route.

Role: collapse the Wang--Zhang measurable-time route to one remaining interval
observability theorem.

## Purpose

The note
[exact-potential-v2-static-diffusion-wang-zhang-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-wang-zhang-route.md)
reduced the repaired direct `V2` route to the abstract analytic-semigroup
setting of Wang--Zhang.

This note resolves the easy parts of that packet on the theorem-facing level:
analytic-semigroup realization and observation admissibility.

## Proposition `ESR.A` (the repaired static-diffusion packet is a natural analytic-semigroup candidate)

Fix one retained chart `\Omega_k`, impose the chosen homogeneous boundary
condition, and consider the homogeneous operator

```math
\mathcal L_k u
:=
\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)
-\widetilde b_k\cdot \nabla_\zeta u
-\widetilde c_k u,
\tag{ESR.1}
```

coming from the repaired `F.11d` readout

```math
\partial_t u + \mathcal L_k u = 0.
\tag{ESR.2}
```

Assume the coefficient packet already present on the chart:

1. `G_k` is uniformly elliptic and bounded;
2. `G_k\in W^{1,\infty}(\Omega_k)`;
3. `\widetilde b_k,\widetilde c_k\in L^\infty(\Omega_k\times I_k)`.

Then the associated sesquilinear form on `L^2(\Omega_k)` is sectorial after the
usual large positive shift, so the realized operator `A_k` is a natural
analytic-semigroup generator candidate on `H_k:=L^2(\Omega_k)`.

### Proof

The principal part is coercive by uniform ellipticity. The first-order and
zeroth-order terms are bounded perturbations of the `H^1_0` form on the bounded
chart, so after adding a sufficiently large scalar shift the full form is closed
and sectorial. Standard form theory then yields an m-sectorial realization,
hence an analytic semigroup on `L^2(\Omega_k)`. ∎

## Proposition `ESR.B` (open-set observation is automatically admissible once the semigroup exists)

Let `\omega_k\subset\Omega_k` be the open observation set and define

```math
B_k:H_k\to L^2(\omega_k),
\qquad
B_k u := u|_{\omega_k}.
\tag{ESR.3}
```

Then `B_k` is bounded, hence admissible for every analytic semigroup on `H_k`.

### Proof

Restriction from `L^2(\Omega_k)` to `L^2(\omega_k)` is bounded with operator
norm at most `1`. Therefore

```math
\int_0^T \|B_k e^{-tA_k}u_0\|_{L^2(\omega_k)}^2\,dt
\le
T \sup_{0\le t\le T}\|e^{-tA_k}u_0\|_{L^2(\Omega_k)}^2,
\tag{ESR.4}
```

so admissibility is automatic once the semigroup is well-defined. ∎

## Corollary `ESR.C` (the direct repaired `V2` route reduces to interval observability)

On the repaired static-diffusion exact-potential route, the Wang--Zhang packet
now reduces to one genuinely local theorem:

```math
\boxed{
\texttt{interval observability for the repaired bounded-chart operator}
}
\Longrightarrow
\boxed{
\texttt{Wang--Zhang measurable-time observability}
}
\Longrightarrow
\boxed{
\texttt{windowwise }V2
}.
\tag{ESR.5}
```

So after the semigroup/admissibility reduction, the remaining sharp local wall
is exactly interval observability for the operator `(ESR.1)`. That interval
observability wall is now identified with the existing parabolic node
`PDO-Carleman` in
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md).

## Interpretation

This is the cleanest conservative direct route now on disk. The repaired direct
`V2` branch no longer has three abstract prerequisites. Two of them are carried
by the theorem-facing packet. The only live theorem burden is:

```math
\texttt{prove interval observability for }
\partial_t u
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta u)
+\widetilde b_k\cdot \nabla_\zeta u
+\widetilde c_k u
=0
\texttt{ on the bounded chart.}
\tag{ESR.6}
```
