# Projected NC Flow Clay Frontier

Generated at: `2026-03-21T01:18:00Z`

This note formalizes the NS-only dynamic route that emerged from the Marvin/V6
working-note family and the user-directed D.1--D.5 packet.

It does not replace the source-grounded four-bridge route. It sits beside that
route as a second full-claim theorem track whose job is to turn the ontic
projected-flow language into an actual Navier-Stokes proof package.

The sharpest current lane-local statement of that track is:

```text
ontic theorem first,
exact lift package second,
classical theorem as corollary third.
```

## Claim Boundary

Everything remaining is Navier-Stokes.

The structural persistence, carrier, and descent burdens that were being fed
from the broader monograph are no longer the live NS question. The live NS
question is whether the projected ontic flow and its commutative shadow force
global regularity for classical three-dimensional incompressible Navier-Stokes.

The NC / torus side is the compact analytic proving ground for that route. It
is where D.1-D.2 are supposed to become concrete, not where the proof changes
target. In other words:

- torus route: analytic testbed and operator lab
- Euclidean shadow: Clay target
- original four-bridge source route: still preserved as the primary source
  direction

## Track Definition

The projected-flow track is:

1. `D.1` Global well-posedness of the projected NC flow
2. `D.2` Global coercive energy estimate
3. `D.3` Commutative shadow theorem
4. `D.4` Shadow continuation theorem
5. `D.5` Clay integration theorem

The route is deliberately dynamic rather than static:

- projected flow on the NC transport sector,
- global coercive control of that flow,
- descent to the classical Euclidean shadow,
- continuation of the classical shadow from NC control,
- then global regularity.

## Updated Derivation Authority

The current lane-local derivation cluster for this route is the working-note
family that explicitly ties NS, YMG, and Hodge together:

- `working-notes/ontic-nc-ns-ymg-hodge-program.md`
- `working-notes/ontic-nc-ns-operator-tilt-note.md`
- `working-notes/projected-nonlinearity-diagnostic.md`
- `working-notes/refinement-commutator-estimate-and-scale-gap.md`
- `working-notes/projected-defect-growth-and-carrier-reduction.md`
- `problems/navier-stokes/theorem-construction/projected-nonlinearity-diagnostic.md`

These notes do not replace the direct NS four-bridge route.
They sharpen the projected route by making the ontic carrier, the transport
operator, and the nontriviality condition on the projected nonlinearity
explicit.

The strongest current lane-local formal package built from those notes is:

- `problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md`

In particular, the D.2 wall should now be read with the transport-law
checkpoint in mind:

- the projected nonlinearity must remain nontrivial after projection,
- the naive symmetric transport term is not enough if it collapses to an exact
  gradient under the admissible derivation core,
- D.2 therefore depends on a genuinely curvature-bearing or covariant
  transport realization,
- Hypothesis H must include the coherent commutator bound
  `\|[\nabla_D,N_{\mathrm{coh}}(X)]\|` as well as the remainder leakage bounds,
  otherwise the `\mathcal N_2` estimate does not close.

## Core Equations

The imported working-note operator is

```text
\mathcal L_D(X)
:=
\mathbb P_{D,\omega}\big(\delta_\omega X + N_D(X) - \nu \Delta_{D,\omega} X\big),
```

posed on the projected transport sector

```text
\mathcal V_{D,\omega}
:=
\{X \in \operatorname{Dom}(\mathbb P_{D,\omega}) : X = \mathbb P_{D,\omega}X\}.
```

The projected ontic flow is

```text
\partial_t X + \mathcal L_D(X) = 0,
\qquad
X(0)=X_0 \in \mathcal V_{D,\omega}.
```

The current coercive energy readout imported from the defect-growth scaffold is

```text
\mathcal E_D(X)
:=
\|\Delta_{D,\omega}^{1/2}X\|^2 + \|\Omega_D(X)\|^2,
\qquad
\Omega_D(X):=[\nabla_{D,\omega},X].
```

The classical readout target is

```text
u = \mathcal C(X),
```

where `\mathcal C` is the strict commutative-shadow functor onto the Euclidean
window.

The exact lift package currently carried by the lane is

```text
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
```

```text
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),
\qquad
\|u\|_{H^s}\le C\|X\|_{H_D^s}.
```

## Exact Remaining Theorem Work

### D.1

Prove that the projected operator has a genuine existence-and-uniqueness theory
on a closed graph domain and preserves the projected sector.

### D.2

Prove the global coercive inequality by closing the coherent/remainder split

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

and the bilinear hinge

```text
|\mathcal N_1(X)|+|\mathcal N_2(X)|
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|^2
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
\Big)
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

### D.3

Prove the exact lift package in theorem form:

- `\mathcal C(\partial_t X)=\partial_t u`
- `\mathcal C(\Delta_DX)=\Delta u`
- `\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u`
- `\mathcal C(\mathbb P_DN_D(X))=\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)`
- `\|u\|_{H^s}\le C\|X\|_{H_D^s}`

with the pure NC curvature insertion killed exactly in the strict shadow.

### D.4

Prove that a continuation-level ontic bound,

```text
\sup_{t\in[0,T)}\|X(t)\|_{H_D^s}<\infty,
\qquad s>\frac52,
```

forces continuation of the Euclidean shadow via

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s}.
```

### D.5

Compose D.1--D.4 into the final Clay theorem for smooth divergence-free data.

## Torus role inside the D-route

The torus is not an alternate theorem claim. It is the compact spectral
derivation space where the projected flow can be tested cleanly before the
continuation argument is lifted back to the Euclidean shadow.

Use it to sharpen:

- the projected nonlinearity after projection,
- the coercive energy inequality,
- the carrier localization package,
- the class-descent theorem.

Do not let the torus side silently replace the primary NS route. It is a
proving ground for the same NS target.

## Source Anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-flow-closure-proof-spine.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/spectral-closure-and-unified-invariant.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-covariance-and-shadow-theorem-scaffold.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-generator-sector-invariance.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`
- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/problems/yang-mills-gap/upstream-synthesis-feed.yaml`

## Honest Status

The projected NC-flow route is now explicit inside the NS lane, and the current
formal package is strong enough to state the route in theorem order:
ontic theorem, exact lift package, classical corollary.

It is still not a discharged proof. The live burdens remain D.1 well-posedness,
the D.2 bilinear hinge, and the continuation-level global `H_D^s` bound.
The exact promotion order now lives in
`theorem-construction/clay-closure-promotion-map.md`.
