# Exact-Potential `V2` Import Menu After `EP.11d`

## Status

Historical theorem-facing branch-split note for the stronger adiabatic
continuation on the exact-potential branch.

Role: isolate the exact remaining theorem debt after the forcing side has been
frozen to the fixed packet `EP.11d`.

## Purpose

The note
[exact-potential-fixed-adiabatic-forcing-packet-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-fixed-adiabatic-forcing-packet-ep11d.md)
already closes the forcing side of the stronger adiabatic continuation:

```math
D.7mr2
+\texttt{EP.11d forcing packet}
+V1+V2
\Longrightarrow
EP.8
\Longrightarrow
PD.70z.
\tag{EVM.0}
```

So after `EP.11d`, the only branch-specific open debt is `V2`.

The source notes already sharpen that debt in two stages:

1. `F.11g` reduces `V2` to the exact localized operator class question;
2. `EP.12` records the three current literature-facing import routes.

This note packages that earlier stopping boundary for the stronger adiabatic
continuation.
The first bounded self-attempt on that menu is now audited in
[exact-potential-bounded-chart-stokes-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-bounded-chart-stokes-v2-route-audit.md).
The second bounded self-attempt is now audited in
[exact-potential-convex-product-parabolic-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-product-parabolic-v2-route-audit.md).
The third bounded self-attempt is now audited in
[exact-potential-analytic-v2-route-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-analytic-v2-route-audit.md).
The active repaired direct continuation chosen after those audits is now
recorded in
[exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md).

## Proposition `EVM.A` (after `EP.11d`, the stronger adiabatic route stops at a three-way `V2` operator-class split)

Assume:

1. `D.7mr2` holds on every retained window;
2. the scheduler / boot entrance hypotheses needed to apply `EP.8` are
   available;
3. `V1` holds;
4. the forcing side is closed by the fixed packet `EP.11d`.

Then the stronger adiabatic continuation reduces exactly to the following
three-way `V2` choice:

1. **bounded-chart Stokes route:** prove the localized defect satisfies the
   Stokes packet `(EP.12a1)` and import measurable-set Stokes observability via
   `(EP.12a2)`;
2. **convex product-set parabolic route:** gauge-normalize `(F.11g1)` to the
   lower-order packet `(F.11g2)`-`(F.11g3)` and import Phung--Wang
   measurable-time observability;
3. **analytic-coefficient route:** prove a stronger analytic normalization and
   import the corresponding measurable-set observability theorem.

If any one of these three `V2` routes closes, then the stronger adiabatic
continuation reaches `PD.70z`.

### Proof

By hypothesis (4) and
[exact-potential-fixed-adiabatic-forcing-packet-ep11d.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-fixed-adiabatic-forcing-packet-ep11d.md),
the forcing side of `EP.8` is already closed.

So the only remaining branch-specific local theorem debt is `V2`.

Proposition `F.11g` identifies the exact localized operator-class wall:
either reduce the localized defect equation from `(F.11g1)` to `(F.11g2)`, or
prove measurable-time observability directly for the variable-diffusion class.

Remark `EP.12` then sharpens that wall to the three concrete import routes
listed above. Once any one of them is supplied, `V2` closes, and `EP.8` yields
`PD.70z`. ∎

## Interpretation

So the stronger adiabatic continuation first reached a genuine theorem-choice
termination boundary:

```math
\boxed{\texttt{D.7mr2 + EP.11d + V1}}
\Longrightarrow
\boxed{\texttt{one of three }V2\texttt{ operator-class imports}}
\Longrightarrow
\boxed{\texttt{EP.8}\Rightarrow PD.70z}.
\tag{EVM.1}
```

This was an honest stopping point because the route split into materially
different theorem paths:

1. Stokes observable localization;
2. lower-order convex-chart parabolic localization;
3. analytic normalization.

This note does **not** remain the active route authority. It preserves the
earlier three-way split after `EP.11d`. The active conservative direct route
chosen after that split is now
[exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-repaired-direct-closure-from-ll-and-wz-imports.md),
which closes `V2` on the repaired direct branch under the explicit two-import
packet `LL + WZ`, yields `PD.70z`, and under `(EP.8c)` gives the installed
`SG.4B` handoff.
The Stokes branch audit now shows that `F.11d` alone does not yet supply the
packet `(EP.12a1)`, so that first route remains conditional on one new
Stokes-preserving localization theorem.
The convex parabolic audit now shows that `F.11d` also does not yet supply the
lower-order packet `(F.11g2)`-`(F.11g3)`, so that second route remains
conditional on one sharper theorem-facing packet recorded in
[exact-potential-f11d-static-diffusion-audit.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-f11d-static-diffusion-audit.md):
static chart-metric flattening of the fixed diffusion `\nu G_k`, followed by
lower-order admissibility on the flattened convex chart. The older notes
[exact-potential-convex-v2-simultaneous-isotropization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-simultaneous-isotropization-wall.md),
[exact-potential-convex-v2-common-conformal-structure-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-common-conformal-structure-wall.md),
and
[exact-potential-convex-v2-normalized-chart-defect-rigidity.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-convex-v2-normalized-chart-defect-rigidity.md)
are preserved on disk as conditional analyses of the stronger variable-diffusion
packaging.
On the repaired direct subroute beneath that convex branch, the stopping line is
now sharper than “heat plus perturbation”: the split note
[exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-static-diffusion-heat-plus-perturbation-split.md)
is now continued by
[exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-bounded-lower-order-absorption-from-fixed-metric-carleman.md),
which shows that once the fixed-metric Lipschitz packet is imported in uniform
Carleman form, the bounded first-order and zeroth-order coefficients satisfying
`(ELA.2)` are absorbed by the threshold `(ELA.7)`. So the repaired direct `V2`
subroute now reduces to the fixed-metric Lipschitz Carleman import itself.
The analytic audit now shows that `F.11d` also does not yet supply an analytic
operator-class normalization, so that third route remains conditional on one
stronger analytic-normalization theorem.
The three audits are now collapsed to one theorem-facing stop line in
[exact-potential-v2-operator-class-normalization-wall.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/exact-potential-v2-operator-class-normalization-wall.md).
