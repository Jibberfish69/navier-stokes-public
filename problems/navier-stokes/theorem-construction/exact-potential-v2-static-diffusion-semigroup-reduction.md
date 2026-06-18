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

Then the shifted sesquilinear form `\mathfrak a_{k,\lambda}` below is sectorial
for any `\lambda` satisfying the displayed lower-order absorption bound
`(ESR.2b)`.  Its m-sectorial realization gives the analytic-semigroup input on
`H_k:=L^2(\Omega_k)`.

### Proof

Let `V_k` be the homogeneous-boundary form domain, for example `H^1_0(\Omega_k)`
in the Dirichlet case, and define the shifted form

```math
\mathfrak a_{k,\lambda}(u,v)
:=
\nu\int_{\Omega_k} G_k\nabla u\cdot \overline{\nabla v}
+
\int_{\Omega_k}(\widetilde b_k\cdot\nabla u)\,\overline v
+
\int_{\Omega_k}(\widetilde c_k+\lambda)u\overline v .
\tag{ESR.2a}
```

Uniform ellipticity gives

```math
\nu\int G_k\nabla u\cdot\overline{\nabla u}
\ge \nu\kappa\|\nabla u\|_{L^2}^2 .
```

Since `\Omega_k` is bounded and
`\widetilde b_k,\widetilde c_k\in L^\infty`, Young's inequality gives, for every
`\epsilon>0`,

```math
\left|\int(\widetilde b_k\cdot\nabla u)\overline u\right|
\le
\epsilon\|\nabla u\|_{L^2}^2
+C_{\epsilon,b}\|u\|_{L^2}^2,
\qquad
\left|\int\widetilde c_k|u|^2\right|
\le \|\widetilde c_k\|_\infty\|u\|_{L^2}^2.
```

Choose `\epsilon<\nu\kappa/2` and then choose `\lambda` larger than the resulting
`L^2` loss.  Then

```math
\operatorname{Re}\mathfrak a_{k,\lambda}(u,u)
\ge
c_1\|u\|_{H^1(\Omega_k)}^2,
\qquad
|\operatorname{Im}\mathfrak a_{k,\lambda}(u,u)|
\le
c_2\,\operatorname{Re}\mathfrak a_{k,\lambda}(u,u).
\tag{ESR.2b}
```

Thus `\mathfrak a_{k,\lambda}` is densely defined, closed, and sectorial on
`L^2(\Omega_k)`.  The first representation theorem for closed sectorial forms
therefore gives a unique m-sectorial realization `A_{k,\lambda}`.  The semigroup
`e^{-tA_{k,\lambda}}` is analytic on `L^2(\Omega_k)`, and undoing the shift only
multiplies the semigroup by `e^{\lambda t}`.  With the sign convention of
`(ESR.2)` and the Wang--Zhang note, this is the required analytic-semigroup
realization of the homogeneous chart operator. ∎

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
