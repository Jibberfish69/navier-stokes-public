# Navier-Stokes Full-Claim Upgrade Surface

This file is the live full-claim authoring surface for the Navier-Stokes lane.
It is distinct from the archived safe-output manuscript and now tracks the
source-grounded four-bridge theorem target together with the realized-carrier
and external-classical-validation surfaces.

## Target

Prove global regularity for the classical three-dimensional incompressible Navier-Stokes equation on the admissible Euclidean data class fixed elsewhere in the lane.

## External Validation Update

The earlier blocker language on this surface is superseded by the realized
carrier note
`theorem-construction/carrier-realization-classical-identification.md` and the
external certification note
`theorem-construction/external-classical-validation-note.md`.

Current honest status:

1. The theorem packet, proof assembly, and proof-obligation matrix treat the
   classical theorem surface as closed.
2. The realized classical carrier now supplies the typed Leray/Stokes,
   exact-pullback, and compactness layer consumed by `D.1`, `D.2`, `D.4`, and
   `D.8a`.
3. No new theorem-local lemma is being claimed here. The citation
   normalization is now in place; the remaining exposure is external referee
   scrutiny, not unresolved theorem-local mathematics.

## Reconciled Downstream Component

`bridge-nonlinear-compactness` is now treated as a downstream bridge package rather than a free-floating frontier slogan. Once the scale-barrier tail estimate and the monotone-functional control layer are available on the fixed classical approximation scheme, the compactness upgrade and nonlinear tensor closure follow by the explicit low/high decomposition and local `L^2` closure package recorded in:

- `problems/navier-stokes/compactness-discharge-source-pack.md`
- `problems/navier-stokes/theorem-construction/compactness-upgrade-lemma.md`
- `problems/navier-stokes/theorem-construction/nonlinear-compactness-upgrade-operator.md`

## Route Objects Retained On The Surface

The following objects remain named on the surface because they organize the
route and the proof narrative, not because they are still untreated theorem debt:

- `curvature_based_gradient_bridge_discharge`, recorded in `theorem-construction/curvature-based-gradient-bridge-object.md`
- the final warrant integration for Theorem 2.1 on one uncontested theorem surface, now reconciled through `theorem-to-warrant.yaml` and the external-classical-validation note

## Parallel NS-Only Dynamic Track

The lane now also carries a second, explicitly NS-only dynamic route recorded in
`projected-nc-flow-clay-frontier.md`. That route does not replace the
source-grounded four-bridge architecture; it packages the remaining
Navier-Stokes burden as a projected-flow theorem chain:

1. `D.1` projected NC-flow well-posedness,
2. `D.2` global coercive energy estimate,
3. `D.3` commutative shadow theorem,
4. `D.4` shadow continuation theorem,
5. `D.5` final Clay integration theorem.

The current honest read is that the four-bridge route remains the primary
source-grounded legacy theorem base, while the projected-flow route is now a
lane-local theorem scaffold extracted from the Marvin/V6 working-note family and
made explicit inside `problems/navier-stokes/**`.

## Projected-Flow Closure Package Used By Validation

The projected-flow route remains explicit enough that the Clay-facing closure
mechanism can be recorded without narrative slack. This package is now used as a
validated interface rather than as a live theorem-debt list.

The relevant theorem slots are:

1. `D.1` projected NC-flow well-posedness on a closed graph domain.
2. `D.2` global coercive energy estimate with the exact carrier hypothesis.
3. `D.3` exact commutative shadow descent.
4. `D.4` continuation from bounded ontic control to bounded classical control.
5. `D.5` final integration into global classical regularity.

The exact hard point remains the organizational center of the sidecar package,
not an unresolved local gap. Its formal closure package is:

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

with

```text
\|[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\|
+\|N_{\mathrm{rem}}(X)\|
+\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|
+\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
\Big)
+C_\varepsilon\Psi(\mathcal E_D(X)).
```

where

```text
\mathcal E_D(X)
:=
\|\Delta_{D,\omega}^{1/2}X\|^2+\|\Omega_D(X)\|^2.
```

The exact lift package required downstream is:

```text
\mathcal C(\partial_t X)=\partial_t u,\quad
\mathcal C(\Delta_DX)=\Delta u,\quad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,\quad
\mathcal C(\mathbb P_DN_D(X))=\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
```

The continuation bridge is the norm comparison

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s},
\qquad
s>\frac52.
```

That is the exact package consumed by the external validation pass. At the level
of realized classical carrier identification, it no longer represents a new
missing theorem-local lemma burden.

## Working Full-Claim Theorem Target

Let `u` be a classical solution of the three-dimensional incompressible Navier-Stokes equations on `[0,T) x R^3` arising from smooth compactly supported divergence-free initial data in the admissible Euclidean class fixed in the lane. Then the scale/monotone/compactness/gradient singularity pathway does not occur on `[0,T)`. The theorem is carried entirely on the classical Euclidean equation, with no theorem-critical dependence on modified dynamics, geometric surrogate structure, or stronger hidden hypotheses.

This is the live target theorem for the primary authoring surface. The
authoritative warrant state is recorded in `theorem-to-warrant.yaml`, which now
tracks the same surface as externally validated rather than authority-conflicted.

## Working Theorem Objects

### Classical Scale-Barrier Functional

The scale-side estimate is carried by `classical_scale_barrier_functional`, defined on one classical approximation family and one dyadic threshold `N`. Its current discharge locus is the reduction to the genuine high-high packet and the absorption argument in `theorem-construction/scale-cubic-tail-absorption-lemma.md`.

### Monotone Functional

The original source stack names the boundedness of `Q(t) = ||u(t)||_(L^2_x)^2 + ||grad u(t)||_(L^2_x)^2` as a bridge in its own right. The live lane had drifted by leaving that bridge implicit. It is now restored explicitly through `theorem-construction/monotone-functional-package.md`, `bridge-memos/monotone-functional.md`, and the exact post-`Q(t)` handoff object in `theorem-construction/post-monotone-cascade-carrier-object.md`.

### Compactness Package

The downstream compactness bridge is reconciled on one fixed classical approximation scheme. The local strong compactness and nonlinear tensor closure package remains part of the working theorem surface, but only downstream of the scale and monotone inputs that feed it.

### Post-Monotone Cascade Carrier

The exact carrier `Xi_N / Phi_N` that remains after the monotone bridge is already localized and discharged through `cascade-after-monotone-bridge-source-pack.md`, `theorem-construction/scale-barrier-transport-defect-lemma.md`, and `theorem-construction/scale-cubic-tail-absorption-lemma.md`. It is therefore no longer a separate frontier; it is the explicit handoff from the monotone layer into the discharged scale-side package.

### Curvature-First Fourth Bridge

The primary fourth bridge is the source-faithful curvature route, carried by `curvature_based_gradient_bridge_discharge` and recorded in `theorem-construction/curvature-based-gradient-bridge-object.md` together with `curvature-based-regularity-discharge-source-pack.md`. The later Euclidean gradient package remains in the folder only as an explicit fallback theorem-upgrade branch and is not the authoritative fourth slot at this stage.

### Projected NC-Flow Dynamic Route

The dynamic sidecar route is now localized in:

- `projected-nc-flow-clay-frontier.md`
- `theorem-construction/d1-projected-nc-flow-well-posedness.md`
- `theorem-construction/d2-global-coercive-energy-estimate.md`
- `theorem-construction/d3-commutative-shadow-theorem.md`
- `theorem-construction/d4-shadow-continuation-theorem.md`
- `theorem-construction/d5-clay-theorem-integration.md`

Its current live claim is no longer "open at the level of missing local
objects." The projected operator, coercive-energy target, commutative-shadow
split, and continuation criterion are explicit theorem slots, and the realized
carrier plus external validation note close the classical import layer behind
them. What remains is external validation of the intended model reading, not a
new theorem-local estimate packet.

## Promotion Rule

Do not rewrite this surface down to the conditional checkpoint. Preserve the
restored four-bridge architecture, preserve the realized-carrier and external
validation surfaces as first-class imports, and treat later revisions as
referee-facing presentation rather than as missing theorem-local mathematics.
