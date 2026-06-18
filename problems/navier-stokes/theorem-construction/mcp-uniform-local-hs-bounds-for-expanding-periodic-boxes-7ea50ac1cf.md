# Uniform Local Hs Bounds For Expanding Periodic Boxes

## Target

For every fixed ball `B_R`, finite time `T`, and `s>5/2`, prove

```math
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}<\infty
```

for periodic box solutions `u_n` on `T^3_{L_n}`, `L_n\to\infty`.

## Theorem `LocalHs.EXH`

Let `k` be an integer with `k>=s`.  Assume the localized Euclidean cascade
scheduler, exterior energy tightness, and pressure-tail convergence supply the
uniform forcing package

```math
\sup_n\int_0^T\Big(
  \|\nabla^m\mathcal N_R^{(n)}(t)\|_{L^2(B_{2R})}^2
 +\|\nabla^{m+1}p_R^{(n)}(t)\|_{L^2(B_{2R})}^2
 +\|\mathcal C_{m,R}^{(n)}(t)\|_{L^2(B_{2R})}^2
\Big)\,dt <\infty
```

for every `0<=m<=k`, and assume the localized initial `H^k(B_{2R})` norms are
uniform in `n`.  Then the uniform local `H^s` bound holds on every fixed
interior ball.

## Proof

Choose a cutoff `\chi` supported in `B_{2R}` and equal to one on `B_R`. Localize the equation for `v_n=\chi u_n`. The localized equation is Navier-Stokes on `B_{2R}` with commutator forcing from the cutoff and a pressure term split into local Poisson plus exterior tail.

The localized cascade scheduler gives high-frequency control:

```math
\sup_{t\le T}E_{N,R}^{(n)}(t)+\int_0^T D_{N,R}^{(n)}(t)dt\le C_{T,R,N}
```

with constants independent of `n` once `B_{2R}` lies far inside the periodic box.

The low frequencies below `N` are finite in number.  Their contribution is
paid by the uniform initial localized Sobolev norm and the displayed forcing
package, not by a scale-profile assumption.

For `0<=m<=k`, set `w_{m,n}=\nabla^m(\chi u_n)`.  The differentiated localized
equation has forcing

```math
F_{m,n}
=
\nabla^m\mathcal N_R^{(n)}
+\nabla^{m+1}p_R^{(n)}
+\mathcal C_{m,R}^{(n)}.
```

The exact induction estimate is

```math
{d\over dt}\|w_{m,n}(t)\|_2^2
 + \nu\|\nabla w_{m,n}(t)\|_2^2
\le
C_{m,R,\nu}\|w_{m,n}(t)\|_2^2
+C_{m,R,\nu}\|F_{m,n}(t)\|_2^2.
```

Gronwall and the uniform forcing package give

```math
\sup_n\sup_{0\le t\le T}\|w_{m,n}(t)\|_2^2
+\sup_n\nu\int_0^T\|\nabla w_{m,n}(t)\|_2^2\,dt
<\infty.
```

Induction over `m<=k`, then `H^k(B_R)\hookrightarrow H^s(B_R)`, gives

```math
\sup_n\sup_{t\le T}\|u_n(t)\|_{H^s(B_R)}<\infty.
```

## Boundary

This theorem supplies local uniform regularity only after the exact nonlinear,
pressure, commutator, and low-mode forcing package is uniform in the expanding
box index.  It does not derive those exterior budgets; the displayed
`L_t^2L_x^2` forcing bounds are explicit hypotheses of this local regularity
step.
