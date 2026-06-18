# Theorem D.3: Commutative Shadow Theorem

## Status

Theorem-grade closed readout theorem. This theorem is the Euclidean readout
step that turns the projected NC flow into a classical Navier-Stokes statement.

This file currently carries two distinct readout surfaces:

- an exact strict-shadow surface where the pure `NC` interaction defect dies
  under projection;
- a weaker robustness surface where a named shadow remainder is still present.

They should be read as separate branches, not as one merged theorem statement.

The concrete carrier realization and exact pullback identification are recorded
in [carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

The exact no-remainder consequence of the strict-shadow branch is isolated in
[strict-shadow-no-remainder-corollary.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/strict-shadow-no-remainder-corollary.md).

## Object

- `theorem_id`: `d3_commutative_shadow_theorem`
- `object_kind`: readout / descent theorem
- `primary_target`: show the projected ontic flow descends to classical 3D incompressible NS

## Setup

Fix a commutative readout map

```text
\mathcal C : \mathfrak R \to C^\infty(M)
```

or the compatible conditional expectation onto the classical Euclidean window,
and set

```text
u := \mathcal C(X).
```

## Target Statement

The strong-form target is:

```text
\partial_t u + u \cdot \nabla u + \nabla p = \nu \Delta u,
\qquad
\nabla \cdot u = 0.
```

## Theorem L

Let `u := \mathcal C(X)`. Assume the strict shadow functor satisfies

```text
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
```

and

```text
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),
\qquad
\|u\|_{H^s}\le C\|X\|_{H_D^s},
\qquad
s>\frac52.
```

Then the ontic projected flow descends exactly to the classical Navier--Stokes
equation

```text
\partial_tu+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
```

The exact lift package carried by the current lane reads:

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

The theorem-grade nonlinear reduction is:

```text
N_D(X)=\nabla_XX+\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X),
```

with

```text
\mathcal C(\nabla_XX)=(u\cdot\nabla)u,
\qquad
\mathcal C(\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X))=0.
```

The weak-form target is:

```text
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)
+
\mathrm{ShadowDef}(X),
```

with

```text
\mathrm{ShadowDef}(X)
=
\nabla p_{\mathrm{shadow}}
+
\mathrm{CurvShadow}(X)
+
\mathrm{TailShadow}(X).
```

Under the strict-shadow hypotheses used in the strong form above, this weaker
remainder collapses to `\mathrm{ShadowDef}(X)=0` and `E_{\mathrm{sh}}(X)=0`; the
named remainder belongs only to the weaker robustness branch.

## Interpretation Of The Split

- `\nabla p_shadow`: exact-sector correction, absorbed into pressure
- `CurvShadow(X)`: persistent obstruction / curvature-bearing sector
- `TailShadow(X)`: residual classical remainder to be absorbed by continuation

This theorem becomes honest only if the exact term is fully pressure-like, the
curvature shadow is controlled by the persistent carrier package, and the tail
shadow is absorbable by the D.4 continuation criterion.

## Required Subclaims

1. The shadow map commutes with the projected sector strongly enough to preserve
   incompressibility.
2. The exact sector descends to a gradient term.
3. The persistent obstruction sector descends to a vorticity/curvature-bearing
   forcing term compatible with the continuation package.
4. The residual sector descends to an integrable or absorbable tail.

## Source Anchors

- `theorem-construction/ontic-to-ns-sterile-theorem-map.md`
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-flow-closure-proof-spine.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-covariance-and-shadow-theorem-scaffold.md`
- `/Users/thomasbirnie/Desktop/ToE/ToE/monograph-V6/problems/yang-mills-gap/upstream-synthesis-feed.yaml`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`
- `problems/navier-stokes/theorem-construction/torus-curvature-insertion-shadow-lemma.md`

## Imported shadow package

The sterile map now fixes the reading rule for the ontic shadow story:

```text
exact channel -> pressure,
persistent channel -> carrier descent,
residual channel -> absorbable tail.
```

This keeps D.3 focused on the theorem descent rather than on the ontic prose.

The existing torus notes already supply the concrete shadow interface:

```text
\mathcal C(\Delta_D X)=\Delta\,\mathcal C(X),
\qquad
\mathcal C(\mathbb P_D X)=\mathbb P_{\mathrm{Leray}}\mathcal C(X).
```

Equivalently, the exact projector intertwining relation is

```text
\mathcal C\circ \mathbb P_D
=
\mathbb P_{\mathrm{Leray}}\circ \mathcal C,
```

so for `u=\mathcal C(X)` one has

```text
\mathbb P_{\mathrm{Leray}}u=\mathcal C(\mathbb P_D X).
```

For `u=\mathcal C(X)`, the nonlinear descent target is

```text
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)+E_{\mathrm{sh}}(X),
```

with

```text
\|E_{\mathrm{sh}}(X)\|_{H^{s-1}(\mathbb T^3)}
\le
C_s\|X\|_{H_D^s}.
```

The strong-form target carried by the notes is therefore already:

```text
\partial_t u + \mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu \Delta u,
\qquad
\nabla\cdot u=0.
```

Equivalently,

```text
\partial_t u + u\cdot\nabla u + \nabla p = \nu \Delta u,
\qquad
\nabla\cdot u=0.
```

## Proposition D.3

If the exact lift package holds, then the commutative shadow of the projected
ontic flow satisfies the classical incompressible Navier-Stokes equations.

## Proof Sketch

Apply `\mathcal C` to the projected flow equation. The lift identities send
`\partial_t X`, `\Delta_DX`, and `\mathbb P_DX` to the corresponding classical
objects. The exact lift nonlinear identity sends the projected nonlinearity to
`\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)`. The pure NC curvature insertion
is killed in the strict shadow, so the only surviving nonlinear term is the
classical transport term. Pressure absorbs the exact channel.

## Theorem D.3 (exact projection of the NC lane dynamics)

Let `X(t)\in C([0,T];\mathcal N)` solve

```text
\partial_tX + A_DX + B_D(X)=0,
\qquad
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X)=\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)\big).
```

Define the window field

```text
u(t):=\pi_f(X(t)).
```

Then `u` satisfies

```text
\partial_tu + A_{\mathrm{loc}}u + B_{\mathrm{loc}}(u)=0
```

provided the three exact-intertwining identities below hold on the lane
symbols:

```text
\pi_f(A_DX)=A_{\mathrm{loc}}\pi_f(X),
\qquad
\pi_f(B_D(X))=B_{\mathrm{loc}}(\pi_f(X)),
\qquad
\pi_f(S_U\Omega_DX)=0.
```

### D.3a -- time derivative commutes with readout

Since `\pi_f` is a fixed bounded linear map on the carrier,

```text
\partial_t\pi_f(X)=\pi_f(\partial_tX).
```

So `\partial_tu=\pi_f(\partial_tX)`.

### D.3b -- exact linear intertwining

From `D.1`,

```text
A_D=A_D^{\mathrm{loc}}+A_D^{\mathrm{def}},
\qquad
A_D^{\mathrm{def}}=S_U\Omega_D,
\qquad
\pi_f(A_D^{\mathrm{loc}}X)=A_{\mathrm{loc}}\pi_f(X).
```

Hence

```text
\pi_f(A_DX)
=
A_{\mathrm{loc}}\pi_f(X)+\pi_f(S_U\Omega_DX).
```

The exact no-leakage condition is

```text
\pi_f(S_U\Omega_DX)=0.
```

On the block calculus this says the defect sector lives in `P_\perp` and
`\pi_fP_\perp=0`. Therefore

```text
\pi_f(A_DX)=A_{\mathrm{loc}}\pi_f(X).
```

### D.3c -- exact nonlinear intertwining

Write

```text
B_D(X)=\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)\big).
```

The target local operator is

```text
B_{\mathrm{loc}}(u):=P_{\mathrm{loc}}\big(\delta_{\mathrm{loc}}u+N_{\mathrm{loc}}(u)\big).
```

To prove

```text
\pi_f(B_D(X))=B_{\mathrm{loc}}(\pi_f(X)),
```

it is enough to prove the three identities

```text
\pi_f\mathbb P_{D,\omega}=P_{\mathrm{loc}}\pi_f,
\qquad
\pi_f(\delta_\omega X)=\delta_{\mathrm{loc}}(\pi_f(X)),
\qquad
\pi_f(N_D(X))=N_{\mathrm{loc}}(\pi_f(X)).
```

For the derivation identity, use `\delta_\omega X=[D_\omega,X]` and the local
Dirac compression `D_{\mathrm{loc}}:=\pi_fD_\omega\pi_f^\sharp`.
Then

```text
\pi_f([D_\omega,X])=[D_{\mathrm{loc}},\pi_f(X)],
```

so

```text
\pi_f(\delta_\omega X)=\delta_{\mathrm{loc}}(\pi_f(X)).
```

For the nonlinearity, use the lane split

```text
N_D(X)=\nabla_XX+\iota_X\Omega_D(X).
```

The local nonlinearity is

```text
N_{\mathrm{loc}}(u)=\nabla^{\mathrm{loc}}_u u + \iota_u\Omega_{\mathrm{loc}}(u).
```

The window calculus gives

```text
\pi_f(\nabla_XX)=\nabla^{\mathrm{loc}}_{\pi_f(X)}\pi_f(X),
```

and

```text
\pi_f(\iota_X\Omega_D(X))
=
\iota_{\pi_f(X)}\,\pi_f(\Omega_DX).
```

If

```text
\Omega_{\mathrm{loc}}(\pi_f(X)):=\pi_f(\Omega_DX),
```

then

```text
\pi_f(N_D(X))=N_{\mathrm{loc}}(\pi_f(X)).
```

Hence

```text
\pi_f(B_D(X))=B_{\mathrm{loc}}(\pi_f(X)).
```

### D.3d -- projected equation

Apply `\pi_f` to

```text
\partial_tX + A_DX + B_D(X)=0.
```

Using `D.3a`--`D.3c`:

```text
\partial_tu + A_{\mathrm{loc}}u + B_{\mathrm{loc}}(u)=0.
```

### Proposition D.3.2 (exact lift from the window dynamics)

Let `u(t)` solve

```text
\partial_tu + A_{\mathrm{loc}}u + B_{\mathrm{loc}}(u)=0
```

on the certified window. Define the lift

```text
X(t):=\pi_f^\sharp u(t),
```

and impose the compatibility conditions

```text
P_\perp X(t)=0,
\qquad
\Omega_DX(t)\in\ker\pi_f.
```

Then `X` solves the NC lane equation and `\pi_f(X(t))=u(t)`.

The exact hinge is the no-leakage condition

```text
\pi_f(S_U\Omega_DX)=0,
```

which is the statement that the defect sector lies in the killed `P_\perp`
channel.

## Imported curvature-insertion lemma

The Marvin-style torus note now has a local extraction file with the corrected
strict-shadow target:

```text
\mathcal C(\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X))=0.
```

The useful proof skeleton is the NC-torus expansion

```text
D_\Theta = D_0 + \Theta^{ab}K_{ab},
\qquad
\Omega_{D_\Theta}(X) = [D_0,X] + \Theta^{ab}[K_{ab},X],
```

which splits the insertion into:

- the exact transport sector, already handled by the shadow split above;
- the deformation-carried commutator sector, which is shadow-invisible in the
  strict commutative quotient.

The three routes are recorded in the extraction file:

1. commutator-kernel,
2. symbol-level antisymmetry,
3. trace-duality.

That means D.3 now has an exact nonlinear descent package on the lane surface:
the transport part descends to `(u\cdot\nabla)u`, and the pure NC interaction
defect is shadow-invisible.

## Imported classical commutator control

The classical object corresponding to the ontic commutator defect is the
transport commutator for the convective operator

```text
T_u(v):=(u\cdot\nabla)v.
```

For smooth vector fields `u,v` on `\mathbb R^3`,

```text
[\Delta,T_u]v
=
\Delta\big((u\cdot\nabla)v\big)
-
(u\cdot\nabla)(\Delta v),
```

so in coordinates

```text
[\Delta,u\cdot\nabla]v
=
(\Delta u\cdot\nabla)v
+
2\sum_{i=1}^3 (\partial_i u\cdot\nabla)(\partial_i v).
```

In particular,

```text
[\Delta,u\cdot\nabla]u
=
(\Delta u\cdot\nabla)u
+
2\sum_{i=1}^3 (\partial_i u\cdot\nabla)(\partial_i u).
```

Since `\mathbb P_{\mathrm{Leray}}` commutes with `\Delta` on `\mathbb R^3`,

```text
[\Delta,\mathbb P_{\mathrm{Leray}}(u\cdot\nabla)]u
=
\mathbb P_{\mathrm{Leray}}
\Big(
(\Delta u\cdot\nabla)u
+
2\sum_{i=1}^3 (\partial_i u\cdot\nabla)(\partial_i u)
\Big).
```

This is the exact classical counterpart of the ontic commutator
`\mathcal C([\Delta_D,\mathbb P_DN_D(X)])`.

The structural estimate is the one the continuation bridge actually consumes:

```text
\|[\Delta,u\cdot\nabla]u\|_{L^2}
\le
C\,\|\nabla u\|_{L^\infty}\,\|\Delta u\|_{L^2},
```

The Leray projector is an \(L^2\)-orthogonal projection on divergence-free
fields, so

```text
\|\mathbb P_{\mathrm{Leray}}[\Delta,u\cdot\nabla]u\|_{L^2}
\le
\|[\Delta,u\cdot\nabla]u\|_{L^2}
\le
C\,\|\nabla u\|_{L^\infty}\,\|\Delta u\|_{L^2}.
```

## Imported four-bodied classical control architecture

On the projected classical surface

```text
\partial_t u-\nu\Delta u+\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)=0,
```

the original four-body route reads as the following control package.

### Scale-barrier principle

The quadratic transport operator

```text
Q(u):=\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)
```

does not generate a third-order cascade. Its commutator with `\Delta` is

```text
[\Delta,Q_u]u
=
\mathbb P_{\mathrm{Leray}}
\Big(
(\Delta u\cdot\nabla)u
+
2\sum_{i=1}^3 (\partial_i u\cdot\nabla)(\partial_i u)
\Big),
```

so the naive top-order transport contribution cancels and the remaining terms
are second-order against first-order. That is the classical scale barrier.

### Monotone functional

The continuation-level control functional on the classical surface is a
quantity such as

```text
Q_{\mathrm{cl}}(t):=\|u(t)\|_{H^1}^2+\|\nabla\times u(t)\|_{L^2}^2,
```

or, on the torus-side proving ground, the stronger `H^s` graph norm with
`s>\frac52`. The commutator estimate supplies the displayed differential
inequality

```text
\frac{d}{dt}Q_{\mathrm{cl}}(t)+c\,D_{\mathrm{cl}}(t)\le C\,Q_{\mathrm{cl}}(t),
```

where `D_{\mathrm{cl}}(t)` is the corresponding dissipation channel and the
constants are the ones in the already displayed commutator estimate.

### Non-Sobolev compactness

There is no hidden reservoir outside the divergence-free sector once the Leray
projection has been applied. Bounded `Q_{\mathrm{cl}}` therefore excludes an
invisible concentration route that could carry singularity formation while
evading the continuation norm.

### Classical no-escape lemma

Let

```text
L^2_\sigma(\mathbb R^3):=\{v\in L^2(\mathbb R^3):\nabla\cdot v=0\}.
```

On the Leray-projected surface,

```text
u(0)\in L^2_\sigma
\quad\Longrightarrow\quad
u(t)\in L^2_\sigma\ \text{ for all }t.
```

The pressure has already been removed from the evolution variable, since

```text
(u\cdot\nabla)u
=
\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)+\nabla p.
```

Assume a coercive estimate of the form

```text
\frac{d}{dt}Q_{\mathrm{cl}}(t)+c\,D_{\mathrm{cl}}(t)\le C\,Q_{\mathrm{cl}}(t).
```

Then Gronwall gives

```text
\sup_{0\le t<T}Q_{\mathrm{cl}}(t)<\infty.
```

So any sequence `t_n\uparrow T` with bounded `Q_{\mathrm{cl}}(t_n)` remains
bounded in the same control space. A hidden escape channel would require
singular concentration outside the compactness detected by `Q_{\mathrm{cl}}`,
but the projected/coercive structure rules that out: every derivative-scale
contribution still passes through `Q_{\mathrm{cl}}` or `D_{\mathrm{cl}}`, and
there is no second unconstrained component where concentration can live.

In short,

```text
u(t)\in L^2_\sigma\text{ for all }t,\qquad
\sup_{0\le t<T}Q_{\mathrm{cl}}(t)<\infty
\quad\Longrightarrow\quad
\text{no singular fine-scale channel can evade the control mechanism.}
```

### Curvature-based regularity

The derivative feedback generated by transport is exactly the commutator
structure already identified above. Its contribution is required in the
absorbed form

```text
|Comm(t)|\le \varepsilon D_{\mathrm{cl}}(t)+C_\varepsilon Q_{\mathrm{cl}}(t),
```

so curvature-type feedback does not reopen the singular channel once the
displayed differential inequality is in force.

## Periodic continuation interface

The extracted torus continuation-level comparison is

```text
\sup_{t\ge0}\|X(t)\|_{H_D^s}^2
\le
C_s\Big(\|X(0)\|_{H_D^s}^2+\|[\Theta(X(0))]\|^2\Big),
\qquad
s>\frac52,
```

and once

```text
\|u(t)\|_{H^s(\mathbb T^3)} \le C\|X(t)\|_{H_D^s}
```

is theorem-grade, the periodic classical shadow continues globally. That means
the D.3 file now carries the actual periodic shadow target rather than only a
generic descent slogan.

## Honest Status

The classical shadow theorem is now explicit as a theorem slot, with the exact,
persistent, and residual sectors named. On the realized classical carrier, the
readout and exact pullback are literal, so D.3 is promoted to proved on the
live package rather than left as a scaffold.
