# Exact-Potential `V2` Operator-Class Normalization Wall

## Status

Historical theorem-facing termination note for the stronger adiabatic
continuation on the exact-potential branch.

Role: preserve the earlier collapse of the raw `V2` menu into one operator-class
normalization object before the repaired direct route was pushed further.

## Purpose

After the fixed forcing packet `EP.11d`, the stronger adiabatic exact-potential
route reaches the `V2` menu recorded in
[exact-potential-v2-import-menu-after-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-import-menu-after-ep11d.md).

The three bounded self-attempts on that menu are now all on disk:

1. [exact-potential-bounded-chart-stokes-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-bounded-chart-stokes-v2-route-audit.md)
2. [exact-potential-convex-product-parabolic-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-product-parabolic-v2-route-audit.md)
3. [exact-potential-analytic-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-analytic-v2-route-audit.md)

Each one fails on the same installed local object: the `F.11d` chart equation
for the localized defect.

So the branch should now terminate at one theorem object rather than three
branchlets.

## Proposition `EVN.A` (all three `V2` imports reduce to one missing normalization theorem)

Assume:

1. the stronger adiabatic forcing side is already closed by `EP.11d`;
2. the localized defect is still only available in the installed `F.11d` form

```math
\partial_t \widetilde q_k
-\nabla_\zeta\cdot(a_k\nabla_\zeta \widetilde q_k)
+b_k\cdot \nabla_\zeta \widetilde q_k
+c_k\widetilde q_k
=
\widetilde f_k,
\tag{EVN.1}
```

with coefficient control `(F.11d12)`-`(F.11d13)`.

Then the remaining branch-specific `V2` debt is exactly one operator-class
normalization theorem:

```math
\boxed{
\texttt{upgrade the installed }F.11d\texttt{ localization to one admissible observable operator class}
}.
\tag{EVN.2}
```

Any theorem accomplishing `(EVN.2)` may take one of three forms:

1. Stokes-preserving localization / chart reduction, yielding the packet
   `(EP.12a1)`;
2. gauge-normalization to the lower-order convex-domain packet
   `(F.11g2)`-`(F.11g3)`;
3. stronger analytic normalization to an analytic parabolic evolution class.

Once any one of those three normalizations is supplied, `V2` closes and the
stronger adiabatic exact-potential route reaches `EP.8 -> PD.70z`.

### Proof

The Stokes audit shows that `F.11d` does not yet imply the Stokes packet
`(EP.12a1)`. The convex parabolic audit shows that `F.11d` does not yet imply
the lower-order packet `(F.11g2)`-`(F.11g3)`. The analytic audit shows that
`F.11d` does not yet imply an analytic operator class.

So the three failed import routes do not identify three unrelated debts. They
all identify the same missing upstream object: a theorem upgrading the current
installed localization to one observable operator class. ∎

## Interpretation

At that stage the stronger adiabatic exact-potential branch had a single honest
terminal wall:

```math
\boxed{\texttt{EP.11d}}
\Longrightarrow
\boxed{\texttt{one missing }V2\texttt{ operator-class normalization theorem}}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EVN.3}
```

This is the cleanest historical branch-facing termination statement at the raw
menu stage.
Inside the convex branch, the active theorem-facing sharpening is now the
static-diffusion audit
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md):
on the declared pushforward readout of `F.11d`, the principal diffusion matrix
is the fixed chart metric `\nu G_k`, so the live convex wall is static
chart-metric flattening plus lower-order admissibility on the flattened chart,
or more conservatively the direct static-diffusion abstract route packaged in
[exact-potential-v2-static-diffusion-wang-zhang-route.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-wang-zhang-route.md),
which is now reduced further by
[exact-potential-v2-static-diffusion-semigroup-reduction.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-semigroup-reduction.md)
to interval observability for the same repaired operator class, and then by
[exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-reduces-to-pdo-carleman.md)
to the already-installed parabolic node `PDO-Carleman`. The sharpest repaired
local stop line is now the split recorded in
[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md):
fixed-metric heat observability plus bounded lower-order perturb-transfer. With
the fixed-metric packet imported in uniform Carleman form, the separate
lower-order wall is now discharged by
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md).
So the repaired direct subroute beneath this older wall has now moved further:
the active continuation is
[exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md),
which closes `V2` on the repaired direct branch under the explicit two-import
packet `LL + WZ`, yields `PD.70z`, and under `(EP.8c)` gives the installed
`SG.4B` handoff. This note is therefore preserved as the historical raw-menu
collapse surface, not the active stop line.
The older notes
[exact-potential-convex-v2-simultaneous-isotropization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md),
[exact-potential-convex-v2-common-conformal-structure-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-common-conformal-structure-wall.md),
and
[exact-potential-convex-v2-normalized-chart-defect-rigidity.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-normalized-chart-defect-rigidity.md)
remain preserved as conditional analyses of the stronger variable-diffusion
packaging.
