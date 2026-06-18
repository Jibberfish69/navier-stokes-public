# Exact-Potential Convex Product-Set Parabolic `V2` Route Audit

## Status

Active theorem-facing audit note for the stronger adiabatic continuation on the
exact-potential branch.

Role: test the second `V2` import route after `EP.11d`, namely the convex
product-set parabolic route through `(F.11g2)`-`(F.11g3)` and the Phung--Wang
measurable-time observability theorem.

## Purpose

The note
[exact-potential-v2-import-menu-after-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-import-menu-after-ep11d.md)
records that after `EP.11d`, the stronger adiabatic continuation stops at a
three-way `V2` operator-class choice.

This note audits the second branch in that menu:

```math
\texttt{convex product-set parabolic route }(F.11g2)\texttt{--}(F.11g3).
\tag{EVC.0}
```

## Audit Result

On the current installed localization, the convex product-set parabolic route
is also **not yet reached**.

The active theorem-facing readout is now the repaired static-diffusion audit in
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md).
So what is honestly on disk is the localized chart equation

```math
\partial_t \widetilde q_k
-\nu\,\nabla_\zeta\cdot(G_k\nabla_\zeta \widetilde q_k)
+\widetilde b_k\cdot \nabla_\zeta \widetilde q_k
+\widetilde c_k\widetilde q_k
=
\widetilde f_k^{hi}+\widetilde f_k^{cut},
\tag{EVC.1}
```

with fixed diffusion matrix `\nu G_k` and lower-order coefficient class
determined by the chart and the pair drift.

The route `F.11g` then states the extra missing input explicitly: one must
further gauge-normalize the diffusion matrix so that on a convex chart domain
the same localized defect is rewritten as

```math
\partial_t \widehat q_k
-\nu\Delta \widehat q_k
+\widehat b_k\cdot \nabla \widehat q_k
+\widehat c_k\widehat q_k
=
\widehat f_k,
\tag{EVC.2}
```

with

```math
\widehat b_k\in L^\infty(\Omega_k\times I_k),
\qquad
\widehat c_k\in L^\infty(I_k;L^q(\Omega_k)),
\qquad
q>\dim\Omega_k.
\tag{EVC.3}
```

Only after that reduction does the Phung--Wang measurable-time observability
theorem apply verbatim.

No on-disk theorem currently supplies:

1. one static isotropization / flattening theorem for the fixed chart metric
   `G_k`;
2. one theorem showing the lower-order packet remains in the exact admissible
   Phung--Wang class after that flattening.

## Literature Check

The external import itself is real:

- Phung--Wang proves observability from a measurable subset of time for
  parabolic equations on a convex bounded domain once the equation has the
  lower-order form assumed in `F.11g`; [arXiv:1109.3863](https://arxiv.org/abs/1109.3863).
- I also checked a later variable-coefficient measurable-time result for
  parabolic equations with Neumann boundary conditions, which suggests a
  possible direct variable-diffusion route in other settings, but it does not
  match the current installed selector-chart packet without additional boundary
  and operator-class work; [arXiv:2202.10200](https://arxiv.org/abs/2202.10200).

So the literature supports the import **after** the operator class is fixed, but
it does not by itself close the current installed chart equation `(EVC.1)`.

## Corollary `EVC.A` (the convex product-set parabolic route is not yet closed on the installed localization)

On the current exact-potential stronger adiabatic branch, the repaired
theorem-facing `F.11d` readout still does not by itself place the localized
defect in the lower-order convex-domain packet `(F.11g2)`-`(F.11g3)` required
for the Phung--Wang import.

Therefore the convex product-set parabolic route remains open at one new
normalization packet.

### Proof

The static-diffusion audit shows that the principal coefficient is the fixed
chart metric `\nu G_k`, not a time-varying diffusion family. But `F.11g`
still requires a further flattening / lower-order reduction to reach
`(EVC.2)`-`(EVC.3)`. No on-disk theorem currently performs that reduction. So
the Phung--Wang route is still conditional on that extra theorem packet. ∎

## Interpretation

This bounded self-attempt clarifies the exact remaining debt on the convex
parabolic branch:

```math
\boxed{\texttt{current localization }F.11d}
\not\Longrightarrow
\boxed{\texttt{lower-order convex packet }F.11g2\texttt{--}F.11g3}.
\tag{EVC.4}
```

The active theorem-facing sharpening is now recorded in
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md).
If one wants to keep this route alive, the fixed-diffusion / lower-order route
now has two theorem-facing continuations. The stronger one is the classical
flattening route:

```math
\boxed{\texttt{static chart-metric flattening of }G_k}
\Longrightarrow
\boxed{\texttt{lower-order admissibility after flattening}}
\Longrightarrow
\boxed{\texttt{Phung--Wang usable for }V2}.
\tag{EVC.5}
```

The more conservative direct route is now recorded in
[exact-potential-v2-static-diffusion-wang-zhang-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-wang-zhang-route.md):

```math
\boxed{\texttt{interval observability}}
\Longrightarrow
\boxed{\texttt{Wang--Zhang measurable-time route for }V2}.
\tag{EVC.6}
```

That reduction is now sharpened further in
[exact-potential-v2-static-diffusion-semigroup-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-semigroup-reduction.md),
which discharges the analytic-semigroup and admissibility side and leaves
interval observability as the only live theorem on the direct repaired route.
That wall is now identified with the existing pair-defect parabolic node in
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md).
Its sharpest repaired form is now the two-packet split in
[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md):
fixed-metric heat observability plus lower-order perturb-transfer. With the
Lipschitz-metric import taken in the stronger uniform Carleman form, that
lower-order packet is controlled under the `s>=s_*` threshold in
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md).
So the repaired direct convex branch now reduces to the fixed-metric
Lipschitz-Carleman import itself, not to a separate perturb-transfer wall.

The older notes
[exact-potential-convex-v2-simultaneous-isotropization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md),
[exact-potential-convex-v2-common-conformal-structure-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-common-conformal-structure-wall.md),
and
[exact-potential-convex-v2-normalized-chart-defect-rigidity.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-normalized-chart-defect-rigidity.md)
are preserved on disk as conditional analyses of the stronger variable-diffusion
packaging.

This note does **not** choose that fallback. It records that the second bounded
self-attempt on the `V2` menu does not close on the installed localization.
