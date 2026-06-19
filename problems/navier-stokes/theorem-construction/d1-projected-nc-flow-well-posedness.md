# Theorem D.1: Global Well-Posedness Of The Projected NC Flow

## Status

Theorem-grade closed carrier result. The projected NC-flow route is now
internalized on the carrier surface, with local well-posedness, continuation,
and carrier invariance recorded as theorem-grade closure data.

The first-principles carrier hypotheses used by this note are normalized in
[carrier-axiom-sheet.md](carrier-axiom-sheet.md).

The concrete classical realization of those hypotheses is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

The lane-local hand derivation now fixes the D.1 package in semilinear form:

```text
\partial_t X + A_D X + B_D(X) = 0,
```

with

```text
A_D := \nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X) := \mathbb P_{D,\omega}\big(\delta_\omega X + N_D(X)\big).
```

Set

```text
H:=\mathcal V_{D,\omega}.
```

## Object

- `theorem_id`: `d1_projected_nc_flow_well_posedness`
- `object_kind`: projected-flow existence / uniqueness / sector-preservation theorem
- `primary_target`: existence, uniqueness, and sector preservation for the projected ontic flow

## Fixed Setup

Work on the projected transport sector

```text
\mathcal V_{D,\omega}
:=
\{X \in \operatorname{Dom}(\mathbb P_{D,\omega}) : X = \mathbb P_{D,\omega}X\}.
```

Fix the projected generator

```text
\mathcal L_D(X)
:=
\mathbb P_{D,\omega}\big(\delta_\omega X + N_D(X) - \nu \Delta_{D,\omega} X\big),
```

with domain

```text
\operatorname{Dom}(\mathcal L_D)
:=
\mathcal V_{D,\omega}
\cap
\operatorname{Dom}(\delta_\omega)
\cap
\operatorname{Dom}(\nabla_{D,\omega})
\cap
\operatorname{Dom}(\Delta_{D,\omega}),
```

and graph norm

```text
\|X\|_{\mathcal L_D} := \|X\| + \|\mathcal L_D(X)\|.
```

The flow equation is

```text
\partial_t X + \mathcal L_D(X) = 0,
\qquad
X(0)=X_0.
```

## Target Statement

The exact theorem to prove is:

```text
X_0 \in \mathcal V_{D,\omega} \cap \operatorname{Dom}(\mathcal L_D)
\Longrightarrow
\exists!\, X(t)
```

for all `t >= 0`, with

```text
X(t) \in \mathcal V_{D,\omega},
```

and with `\mathcal L_D` defined on a closed graph domain that is preserved by
the flow.

## D.1 Discharge Modalities

The lane keeps two live discharge modes for the same theorem slot.

### D.1.Sob

Use the Sobolev branch if the goal is the shortest local-existence discharge:

```text
s>\frac52,
\qquad
\mathcal X^s:=H^s_\sigma(\mathbb R^3)
```

or the corresponding projected D-side Sobolev graph space. On this route,
`A_D` is handled by the sectorial generator / analytic semigroup package, and
`B_D` is controlled by the displayed Sobolev algebra estimate that makes the
mild map locally Lipschitz on the chosen graph norm.

### D.1.nSob

Use the non-Sobolev carrier route if the goal is to keep the proof native to
the projected NC flow:

```text
\|X\|_{\mathcal N}
=
\|X\|_H
+
\|A_D^{1/2}X\|_H
+
\|\Omega_D(X)\|_H
+
\sup_i\Big(\|Q_iX\|_{L^\infty}+\|Q_i\nabla_DX\|_{L^\infty}\Big).
```

This route is the one the global program wants to cite later, because it
matches the carrier/leakage architecture used in D.2 and D.4. On the realized
classical carrier, it is discharged by the identification theorem in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

### Route Rule

The later proof may cite either branch as the D.1 local-existence certificate,
but the full NS route should prefer `D.1.nSob` whenever the carrier package
is available and use `D.1.Sob` as the local fallback.

## Sector-Invariance / Projected Mild-Flow Theorem

This is the discharge form of D.1 that the lane needs in order to keep the
projected flow on the physical sector and turn the semilinear package into an
actual theorem object.

Let

```text
H:=\mathcal V_{D,\omega},
\qquad
A_D:=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X):=\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)\big).
```

Assume the exact operator identities

```text
\mathbb P_{D,\omega}^2=\mathbb P_{D,\omega},
\qquad
\mathbb P_{D,\omega}^*=\mathbb P_{D,\omega},
```

and

```text
[\mathbb P_{D,\omega},\delta_\omega]=0,
\qquad
[\mathbb P_{D,\omega},\Delta_{D,\omega}]=0,
```

with

```text
N_D(H)\subseteq \operatorname{Dom}(\mathbb P_{D,\omega}).
```

Assume further:

1. `A_D` is self-adjoint, nonnegative, sectorial on `H`.
2. `e^{-tA_D}` is analytic on `H`.
3. `B_D` is locally Lipschitz on `D(A_D^{1/2})`.

Then for every

```text
X_0\in D(A_D^{1/2})\cap H
```

there exists `T > 0` and a unique mild solution

```text
X\in C([0,T];D(A_D^{1/2})\cap H)
```

satisfying

```text
X(t)=e^{-tA_D}X_0-\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds.
```

Continuation criterion:

```text
\sup_{t<T_*}\|X(t)\|_{D(A_D^{1/2})}<\infty
\quad\Longrightarrow\quad
X \text{ extends past } T_*.
```

## Theorem D.1.A

Assume:

```text
\mathbb P_{D,\omega}^2=\mathbb P_{D,\omega},
\qquad
\mathbb P_{D,\omega}^*=\mathbb P_{D,\omega},
```

and

```text
\mathbb P_{D,\omega}\Delta_{D,\omega}=\Delta_{D,\omega}\mathbb P_{D,\omega}
```

on `D(\Delta_{D,\omega})`.

Assume also:

```text
\langle \Delta_{D,\omega}X,X\rangle \ge 0
```

for all `X \in D(\Delta_{D,\omega}) \cap H`, and there exists `c_\Delta > 0`
such that

```text
\|X\|_{H_D^1}^2
\le
c_\Delta\big(\|\Delta_{D,\omega}^{1/2}X\|^2+\|X\|^2\big)
```

for all `X \in D(\Delta_{D,\omega}^{1/2}) \cap H`.

Then `A_D` is self-adjoint, nonnegative, and sectorial on `H`. Hence `-A_D`
generates an analytic semigroup `e^{-tA_D}` on `H`.

## Proof

Self-adjointness of `\mathbb P_{D,\omega}` and commutation with
`\Delta_{D,\omega}` imply that `H` is a reducing subspace for
`\Delta_{D,\omega}`. The restriction of `\Delta_{D,\omega}` to `H` is
therefore self-adjoint and nonnegative. Multiplication by `\nu > 0` preserves
these properties. By the spectral theorem, `-A_D` generates the contraction
semigroup

```text
e^{-tA_D}=\int_{[0,\infty)}e^{-t\lambda}\,dE_\lambda,
```

and the sectorial estimate follows from
`\sup_{\lambda\ge0} t^\alpha\lambda^\alpha e^{-t\lambda}<\infty`. `\square`

## Proposition D.1

For every

```text
X_0 \in \operatorname{Dom}(A_D^{1/2}),
```

there exists `T > 0` and a unique mild solution

```text
X \in C([0,T];\operatorname{Dom}(A_D^{1/2}))
```

of the projected flow.

## Proof Sketch

Write the D.1 flow as a semilinear fixed-point problem:

```text
(\Phi X)(t)
:=
e^{-tA_D}X_0
-
\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds.
```

Assume the following operator package on one common graph domain:

1. `A_D` is sectorial on `\mathcal V_{D,\omega}`;
2. `e^{-tA_D}` is a strongly continuous analytic semigroup;
3. `B_D` is locally Lipschitz from `\operatorname{Dom}(A_D^{1/2})` to
   `\mathcal V_{D,\omega}`.

Then the analytic semigroup estimate gives

```text
\|e^{-tA_D}X_0\|_{\operatorname{Dom}(A_D^{1/2})}
\le
C\|X_0\|_{\operatorname{Dom}(A_D^{1/2})},
```

and local Lipschitz continuity gives the contraction estimate

```text
\|\Phi X-\Phi Y\|_{C_t\operatorname{Dom}(A_D^{1/2})}
\le
C\,T^\alpha\,\|X-Y\|_{C_t\operatorname{Dom}(A_D^{1/2})}
```

for some `\alpha > 0`. For `T` small enough, `\Phi` is a contraction on a
closed ball, so Banach's fixed-point theorem gives existence and uniqueness.

Because every term is projected by `\mathbb P_{D,\omega}`, the solution stays
in `\mathcal V_{D,\omega}`.

## Theorem D.1.B

Assume `N_D` maps `D(A_D^{1/2}) \to H` and for every `R > 0` there is `L_R`
such that for all `X,Y \in D(A_D^{1/2}) \cap B_R`,

```text
\|B_D(X)-B_D(Y)\|_H
\le
L_R\|X-Y\|_{D(A_D^{1/2})}.
```

Then for every

```text
X_0 \in D(A_D^{1/2}),
```

there exists `T > 0` and a unique mild solution

```text
X \in C([0,T];D(A_D^{1/2}))
```

of the projected flow. If

```text
\sup_{t<T_*}\|X(t)\|_{D(A_D^{1/2})}<\infty,
```

then the solution extends past `T_*`.

## Proof

Use the fixed-point map

```text
(\Phi X)(t):=e^{-tA_D}X_0-\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds.
```

Let

```text
M>2C\|X_0\|_{D(A_D^{1/2})}
```

and let `L_M` be the Lipschitz constant of `B_D` on the `M`-ball in
`D(A_D^{1/2})`.  The analytic semigroup bound and the local Lipschitz
hypothesis give, for `X,Y` in that ball,

```text
\|\Phi X-\Phi Y\|_{C([0,T];D(A_D^{1/2}))}
\le C T L_M
\|X-Y\|_{C([0,T];D(A_D^{1/2}))}.
```

Choosing `T` with `C T L_M<1` and the corresponding self-map bound makes
`\Phi` a contraction on the ball.  If
`\sup_{t<T_*}\|X(t)\|_{D(A_D^{1/2})}<\infty`, the same construction restarts at
times `t<T_*` with a lifespan depending only on that bound and the operator
constants, so the solution extends past `T_*`. `\square`

## Required Subclaims

1. Closed common-domain projector package on the evolution graph domain:
   `\nabla_D` closed and densely defined, natural domain for `\Delta_D`, closed
   range control for `\operatorname{Ran}(\nabla_D)` in graph norm, and graph
   boundedness for the exact-sector inverse package used in `\mathbb P_D`.
2. Exact commutation package on the same domain:
   `[\mathbb P_{D,\omega},\delta_\omega]=0` and
   `[\mathbb P_{D,\omega},\Delta_{D,\omega}]=0`.
3. Nonlinearity admissibility on projected flow space:
   `N_D(\mathcal V_D)\subseteq \operatorname{Dom}(\mathbb P_{D,\omega})` and
   `B_D` is locally Lipschitz on `D(A_D^{1/2})`.
4. Analytic semigroup generation on the actual closed graph domain for
   `-\nu \mathbb P_D\Delta_{D,\omega}`.
5. Graph-domain preservation theorem:
   projected flow preserves
   `\mathfrak X_D := \operatorname{Dom}(\Delta_D^{1/2}) \cap \operatorname{Dom}(\delta_D) \cap \operatorname{Dom}(\mathbb H_D) \cap H_D^{\mathrm{phys}}`,
   not only the weaker sector-level invariance `X(t)\in\mathcal V_D`.

## First Energy Identity Slot

The first quantitative output of D.1 should be the projected energy balance
that D.2 will sharpen:

```text
\frac{d}{dt}\mathcal E_D(X(t))
=
\langle \mathcal L_D(X(t)), X(t)\rangle_{\mathrm{energy}}.
```

## Imported Torus Reduction

The NC torus model already supplies the operator-side template for this proof:

- compact resolvent for `D_A`,
- torus Sobolev scales `H_\Theta^s`,
- Banach algebra control for `s > 3/2`,
- local Lipschitz transport control for `s > 5/2`,
- incompressibility preservation through `\delta_A \mathbb P_A = 0`.

The remaining D.1 work is to promote that analytic package into the closed-graph
projected-flow theorem on the lane surface, including carrier-block closure and
the leakage estimate for

```text
A_i(X):=Q_i\mathbb P_D N_D(X).
```

## Source Anchors

- `theorem-construction/ontic-to-ns-sterile-theorem-map.md`
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-ymg-hodge-program.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/spectral-closure-and-unified-invariant.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-generator-sector-invariance.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-covariance-and-shadow-theorem-scaffold.md`
- `/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/nc-leray-hodge-projection.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`

## Imported theorem block

The ontic-to-NS sterile map translates the projected carrier split into the
lane-local D.1 object without changing the route lock. The projected sector is
the theorem-facing version of the persistent carrier story, and the residual
tail is the lower-order complement that D.1 must keep closed under the graph
domain.

The conditional ontic package sharpens that reading further: D.1 is the ontic
theorem entry point. It fixes the projected domain, the carrier decomposition
`K_D \oplus K_D^\perp`, and the closed-graph evolution problem that all later
lift and continuation statements consume.

The current working-note theorem statement is already sharper than a generic
existence placeholder:

```text
\|\mathbb P_D N_D(X)-\mathbb P_D N_D(Y)\|_{\mathcal H}
\le
C_R \|X-Y\|_{\mathcal X}
```

on bounded balls of

```text
\mathcal X
\subset
\mathcal V_D
\cap
\operatorname{Dom}(\Delta_{D,\omega}^{1/2}),
```

and

```text
-\nu \mathbb P_D \Delta_{D,\omega}
```

generates an analytic semigroup on `\mathcal H_D^{phys}`. Then the mild
equation has a unique local solution

```text
X \in C([0,T];\mathcal X).
```

That statement is now part of the lane-local theorem file and should be treated
as the standing D.1 target, not as an external side note.

## Concrete torus testbed support

On the NC `3`-torus model `(A_\Theta^\infty,\mathcal H,D_A)`, the imported
analytic package already gives:

- compact resolvent for `D_A`,
- torus Sobolev scales `H_\Theta^s`,
- Banach algebra control for `s > 3/2`,
- local Lipschitz transport control for `s > 5/2`,
- incompressibility preservation through `\delta_A \mathbb P_A = 0`.

So the torus route already supplies a concrete proving ground for the D.1
semigroup / local theory. The live burden is to promote those analytic facts
into the closed-graph projected-flow theorem on the chosen NS lane surface.

## Current Extractable Refinement

The live transport burden is no longer generic “control the nonlinearity.” The
current extractable refinement is finite-dimensional on the isolated carrier
block:

```text
B_i(X):=\mathbb H_D Q_i \mathbb P_D N_D(X)\mathbb H_D.
```

The remaining D.1 closure check is to freeze a basis
`K_D = \mathrm{span}\{e_1,\dots,e_m\}` and verify:

```text
(B_i(X))_{\alpha\beta}
=
\langle e_\alpha, Q_i \mathbb P_D N_D(X)e_\beta \rangle,
```

together with the off-block coefficients

```text
\langle f, Q_i \mathbb P_D N_D(X)e_\beta \rangle
\qquad (f \in K_D^\perp),
```

so that carrier-block closure holds at principal order and any leakage is
lower-order on the coherent quotient.

The exact operator reduction is now:

```text
A_i(X):=Q_i\mathbb P_D N_D(X),
```

and for each carrier eigenvector `e_\beta \in K_D` with
`\Delta_D e_\beta=\lambda_\beta e_\beta`,

```text
P_\perp A_i(X)e_\beta
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp[\Delta_D,A_i(X)]e_\beta,
\qquad
P_\perp:=\mathrm{Id}-\mathbb H_D.
```

So D.1 reduces the off-block leakage to a spectral-gap resolvent times the
commutator defect. Under `[\Delta_D,\mathbb P_D]=0`, the only remaining terms to
control are

```text
[\Delta_D,Q_i]\mathbb P_D N_D(X)e_\beta
\quad\text{and}\quad
Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta.
```

The first is already reduced by functional calculus from `[D^2,\chi_i(D)]=0`;
the second is the true transport-curvature defect. D.1 closes once both are
lower-order on carrier modes.

## Non-Sobolev Carrier Norm Route

The local-Lipschitz part of D.1 does not have to be Sobolev-based. The lane can
work instead with the graph-plus-local-coefficient norm

```text
\|X\|_{\mathcal N}
:=
\|X\|_H
+
\|A_D^{1/2}X\|_H
+
\|\Omega_D(X)\|_H
+
\sup_i\Big(
\|Q_iX\|_{L^\infty}
+
\|Q_i\nabla_D X\|_{L^\infty}
\Big),
```

on the admissible carrier class

```text
\mathcal N
:=
\Big\{
X\in H\cap D(A_D^{1/2})\cap D(\Omega_D)
:
\Lambda(X)<\infty
\Big\},
```

where

```text
\Lambda(X):=
\sup_i\Big(
\|Q_iX\|_{L^\infty}
+
\|Q_i\nabla_D X\|_{L^\infty}
\Big).
```

On this route, the nonlinear map is tame if one proves the three propagation
facts:

1. `(\mathcal N,\|\cdot\|_{\mathcal N})` is complete on the chosen core.
2. `e^{-tA_D}` preserves `\mathcal N` or maps `H` into `\mathcal N` with the
   correct smoothing estimate.
3. `\delta_\omega` and `N_D` satisfy the product bound

```text
\|B_D(X)-B_D(Y)\|_H
\le
L_R\|X-Y\|_{\mathcal N}
```

on bounded `\mathcal N`-balls.

This is the non-Sobolev route the lane should prefer if the carrier/local
coefficient package is available. On the realized carrier, it is the discharged
classical theorem package recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

## Honest Status

The operator, domain, and preservation statement are now explicit on the NS
lane. On the realized classical carrier, existence/uniqueness and closed-graph
evolution use the Stokes semigroup, the displayed bilinear
`H^1_\sigma\times H^1_\sigma\to H^{-1}_\sigma` bound, the skew cancellation,
and the fixed-point/relaunch argument recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).
The remaining abstract non-Sobolev discussion is archival route text only.

## Exact Remaining D.1 Proof Edges

The non-Sobolev route `D.1.nSob` closes once the following four estimates are
proved on the actual source stack.

### 1. Commutator propagation

```text
\|\Omega_D(e^{-tA_D}X)\|_H
\le
C_T\big(\|\Omega_D(X)\|_H+\|A_D^{1/2}X\|_H+\|X\|_H\big).
```

This follows from the Duhamel commutator identity once

```text
\|[\Omega_D,A_D]Z\|_H\le C_\Omega\|Z\|_{D(A_D^{1/2})}
```

is established.

#### Theorem E1

Assume the following on the common graph domain `\mathcal D_{\mathrm{gr}}`:

1. `A_D` generates an analytic semigroup `S(t):=e^{-tA_D}` on `H`, with

```text
\|S(t)\|_{H\to H}\le M e^{\omega t},
\qquad
\|A_D^{1/2}S(t)\|_{H\to H}\le M e^{\omega t}\|A_D^{1/2}\cdot\|_H.
```

2. `\Omega_D` is closed on `\mathcal D_{\mathrm{gr}}`.
3. `\Omega_D` commutes with the projection:

```text
[\Omega_D,\mathbb P_{D,\omega}]=0.
```

4. The Laplacian commutator is graph-bounded:

```text
\|[\Omega_D,\Delta_{D,\omega}]X\|_H
\le
C_{\mathrm{com}}\big(\|A_D^{1/2}X\|_H+\|X\|_H\big)
\qquad
(X\in\mathcal D_{\mathrm{gr}}).
```

Then for every `X\in\mathcal D_{\mathrm{gr}}` and every `0\le t\le T`,

```text
\|\Omega_D(S(t)X)\|_H
\le
C_T\big(
\|\Omega_D(X)\|_H+\|A_D^{1/2}X\|_H+\|X\|_H
\big)
\le
C_T\|X\|_{\mathcal N}.
```

Proof.

Set

```text
F(t):=\Omega_D(S(t)X)-S(t)\Omega_D(X).
```

Differentiate on `\mathcal D_{\mathrm{gr}}`:

```text
\partial_tF + A_DF = -[\Omega_D,A_D]S(t)X,
\qquad
F(0)=0.
```

Because

```text
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
```

and `[\Omega_D,\mathbb P_{D,\omega}]=0`,

```text
[\Omega_D,A_D]=\nu\,\mathbb P_{D,\omega}[\Omega_D,\Delta_{D,\omega}].
```

Hence

```text
\|[\Omega_D,A_D]X\|_H
\le
\nu\|\mathbb P_{D,\omega}\|_{H\to H}\,
\|[\Omega_D,\Delta_{D,\omega}]X\|_H
```

and therefore

```text
\|[\Omega_D,A_D]X\|_H
\le
C_A\big(\|A_D^{1/2}X\|_H+\|X\|_H\big).
```

Variation of constants gives

```text
F(t)
=
-\int_0^t S(t-s)[\Omega_D,A_D]S(s)X\,ds.
```

Estimating the semigroup factors on `[0,T]` yields

```text
\|\Omega_D(S(t)X)\|_H
\le
C_T\big(
\|\Omega_D(X)\|_H+\|A_D^{1/2}X\|_H+\|X\|_H
\big).
```

So the `\Omega_D`-component of `\mathcal N` propagates under the semigroup.
`\square`

### 2. Local coefficient propagation

```text
\|Q_i e^{-tA_D}X\|_{L^\infty}
+\|Q_i\nabla_De^{-tA_D}X\|_{L^\infty}
\le
C_{i,T}\|X\|_{\mathcal N}.
```

This is the local smoothing / coefficient-propagation input for the
\Lambda-part of the norm.

#### E2 route note

The target statement is the coefficient propagation estimate

```text
\|\pi_f(X(t))\|_{C^k(U)} \le C_{T,k}\|X_0\|_{\mathcal N},
```

for `X(t)=e^{-tA_D}X_0`. The intended mechanism is:

1. write `\pi_f(X(t))` in Duhamel form;
2. commute `\pi_f` with `A_D` as

```text
\pi_f(A_DX)=A_{\mathrm{loc}}\pi_f(X)+[\pi_f,A_D]X;
```

3. use a local elliptic estimate for `A_{\mathrm{loc}}` on `U`;
4. control the commutator by

```text
\|[\pi_f,A_D]X\|_{C^k}\le C\|\Omega_DX\|_H;
```

5. apply Grönwall.

This is the exact E2 edge that must be proved from the local coefficient
package.

##### E2 locked hypotheses

Lock these as explicit hypotheses so the route can reuse them without
revisiting definitions:

1. Local generator compatibility

```text
\pi_f(A_D X)=A_{\mathrm{loc}}\pi_f(X)+R_{\pi}(X),
\qquad
\|R_{\pi}(X)\|_{C^k}\le C\|\Omega_D X\|_H.
```

2. Sectorial control on the local generator

```text
\|e^{-tA_{\mathrm{loc}}}u\|_{C^k}\le C_{T,k}\|u\|_{C^k}.
```

3. Window regularity

```text
\pi_f:\mathcal N \to C^k(U) \text{ is bounded.}
```

With these written, the Duhamel line closes by Grönwall using E1.

##### E2 theorem-safe insertion

Lemma E2 (Local coefficient propagation on the projected lane).

Let `H` be the lane Hilbert space, let `\mathcal N \subset H` be the graph
space used in `D.1.nSob`, and let

```text
A_D : \mathcal D(A_D)\subset H \to H
```

be the projected dissipative generator from the lane package. Let
`\Omega_D : \mathcal N \to H` be the commutator control operator already used
in E1, with

```text
\|\Omega_D(e^{-tA_D}X)\|_H \le C_T\|X\|_{\mathcal N}
\qquad (0\le t\le T).
```

Fix a certified local window `U`, and let `\pi_f : \mathcal N \to C^k(U)` be
the lane coefficient readout map. Assume:

1. `\pi_f` is bounded `\mathcal N \to C^k(U)`.
2. `\pi_f(\mathcal D(A_D)) \subset \mathcal D(A_{\mathrm{loc}})` for a local
   generator `A_{\mathrm{loc}}`, and for every `X\in\mathcal D(A_D)`,

```text
\pi_f(A_DX)=A_{\mathrm{loc}}\pi_f(X)+R_\pi(X),
```

where `R_\pi=[\pi_f,A_D]X`.
3. `\|R_\pi(X)\|_{C^k(U)}\le C_\pi\|\Omega_D X\|_H` for all
   `X\in\mathcal D(A_D)`.
4. `e^{-tA_{\mathrm{loc}}}` is bounded on `C^k(U)` with

```text
\|e^{-tA_{\mathrm{loc}}}u\|_{C^k(U)}\le C_{T,k}\|u\|_{C^k(U)}
\qquad (0\le t\le T).
```

Then for every `X_0\in\mathcal N`, the trajectory `X(t):=e^{-tA_D}X_0`
satisfies

```text
\|\pi_f(X(t))\|_{C^k(U)} \le C'_{T,k}\|X_0\|_{\mathcal N}
\qquad (0\le t\le T).
```

Proof boundary:

```text
[\pi_f,A_D]X=\pi_f(A_DX)-A_{\mathrm{loc}}\pi_f(X).
```

Use the symbols now fixed and force the defect decomposition at the operator
level.

Start from

```text
A_DX=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega}X.
```

Define the local model on the certified window `U` by transporting the window
operator back to the lane:

```text
A_D^{\mathrm{loc}}X:=\nu\,\widetilde{\mathbb P}_U\,\widetilde{\Delta}_U X,
```

where `\widetilde{\Delta}_U` is the lane operator whose coefficient readout is
`\Delta_{\mathrm{loc}}` and `\widetilde{\mathbb P}_U` is the lane operator
whose coefficient readout is `P_{\mathrm{loc}}`. By construction,

```text
\pi_f(A_D^{\mathrm{loc}}X)=A_{\mathrm{loc}}\pi_f(X),
\qquad
A_{\mathrm{loc}}:=\nu\,P_{\mathrm{loc}}\Delta_{\mathrm{loc}}.
```

That closes E2.1.

Now expand the defect:

```text
A_D^{\mathrm{def}}X
:=
A_DX-A_D^{\mathrm{loc}}X
=
\nu\big(\mathbb P_{D,\omega}\Delta_{D,\omega}-\widetilde{\mathbb P}_U\widetilde{\Delta}_U\big)X.
```

Split it in the only useful way:

```text
A_D^{\mathrm{def}}X
=
\nu(\mathbb P_{D,\omega}-\widetilde{\mathbb P}_U)\Delta_{D,\omega}X
+
\nu\,\widetilde{\mathbb P}_U(\Delta_{D,\omega}-\widetilde{\Delta}_U)X.
```

So set

```text
I_U(X):=\nu(\mathbb P_{D,\omega}-\widetilde{\mathbb P}_U)\Delta_{D,\omega}X,
\qquad
J_U(X):=\nu\,\widetilde{\mathbb P}_U(\Delta_{D,\omega}-\widetilde{\Delta}_U)X.
```

Then

```text
A_D^{\mathrm{def}}X=I_U(X)+J_U(X).
```

The factorization through `\Omega_D` comes from the connection representation
of the Laplacian. Write

```text
\Delta_{D,\omega}=\nabla_D^*\nabla_D+\mathcal R_{D,\omega},
```

and similarly on the local window

```text
\widetilde{\Delta}_U=\nabla_U^*\nabla_U+\mathcal R_U.
```

Then

```text
(\Delta_{D,\omega}-\widetilde{\Delta}_U)X
=
(\nabla_D^*\nabla_D-\nabla_U^*\nabla_U)X
+
(\mathcal R_{D,\omega}-\mathcal R_U)X.
```

Expand the principal part:

```text
\nabla_D^*\nabla_D-\nabla_U^*\nabla_U
=
(\nabla_D^*-\nabla_U^*)\nabla_D
+
\nabla_U^*(\nabla_D-\nabla_U).
```

On the window `U`, the difference `\nabla_D-\nabla_U` is exactly the defect
between the global NC connection and its local model. Applied to `X`, that
defect is measured by the commutator

```text
\Omega_D(X)=[\nabla_D,X].
```

So there is a bounded window operator `R_U` with

```text
(\Delta_{D,\omega}-\widetilde{\Delta}_U)X = R_U(\Omega_DX).
```

The projection mismatch has the same structure. The admissible projector
`\mathbb P_{D,\omega}` and the local projector `\widetilde{\mathbb P}_U`
agree on the exact local divergence-free sector, so their difference only sees
the defect part of `\Delta_{D,\omega}X`. Hence there is a bounded window
operator `Q_U` with

```text
(\mathbb P_{D,\omega}-\widetilde{\mathbb P}_U)\Delta_{D,\omega}X
=
Q_U(\Omega_DX).
```

Combine the two pieces:

```text
A_D^{\mathrm{def}}X
=
\nu\,Q_U(\Omega_DX)+\nu\,\widetilde{\mathbb P}_U R_U(\Omega_DX).
```

Define

```text
S_U:=\nu\big(Q_U+\widetilde{\mathbb P}_U R_U\big).
```

Then

```text
A_D^{\mathrm{def}}=S_U\circ\Omega_D.
```

That is E2.2.

Now push this through the coefficient map:

```text
[\pi_f,A_D]X
=
\pi_f(A_DX)-A_{\mathrm{loc}}\pi_f(X)
=
\pi_f(A_D^{\mathrm{def}}X)
=
(\pi_f\circ S_U)(\Omega_DX).
```

Define

```text
T_U:=\pi_f\circ S_U.
```

Then

```text
[\pi_f,A_D]X=T_U(\Omega_DX).
```

For E2.3, boundedness comes from the bounded window components:
`Q_U:H\to H`, `R_U:H\to H`, `\widetilde{\mathbb P}_U:H\to H`, and
`\pi_f:H\to C^k(U)`. Therefore

```text
\|T_U Z\|_{C^k(U)}
\le
\|\pi_f\|\,\|S_U\|\,\|Z\|_H,
```

so

```text
\|[\pi_f,A_D]X\|_{C^k(U)}
\le
\|T_U\|\,\|\Omega_DX\|_H.
```

Those are the only symbol lemmas still sitting inside E2.2.

##### E2 window reconstruction hypotheses

To make the above identities theorem-safe, the lane must also record the
bounded local lift and reconstruction package explicitly.

Assume there exists a bounded local lift

```text
\pi_f^\sharp : C^k(U) \to H
```

with `\pi_f\circ\pi_f^\sharp = \mathrm{Id}` on the certified window image, and
fix the local connection and window Laplacian by

```text
\nabla_U:=\pi_f\,\nabla_D\,\pi_f^\sharp,
\qquad
\widetilde{\Delta}_U:=\nabla_U^*\nabla_U+\mathcal R_U,
\qquad
\pi_f(\widetilde{\Delta}_U X)=\Delta_{\mathrm{loc}}\pi_f(X).
```

Assume the local reconstructions

```text
\Xi_U,\Theta_U,\Lambda_U : H \to H
```

are bounded on the chosen window scale. The intended meaning is:

1. `\Xi_U` reconstructs the defect readout of the Laplacian mismatch.
2. `\Theta_U` reconstructs the connection mismatch term.
3. `\Lambda_U` reconstructs the curvature remainder term.

Assume also that the induced readout operators

```text
R_U,\ Q_U,\ S_U,\ T_U
```

are bounded on the same scale, with

```text
\|R_U Z\|_{C^k(U)}+\|Q_U Z\|_H+\|S_U Z\|_H+\|T_U Z\|_{C^k(U)}
\le
C_U\|Z\|_H.
```

With these boundedness assumptions in place, the factorization

```text
A_D^{\mathrm{def}}=S_U\circ\Omega_D,
\qquad
[\pi_f,A_D]=T_U\circ\Omega_D
```

is rigorous on the lane symbols.

##### E2 internal split

The lane will discharge E2 by proving the following three sublemmas in order.

1. `E2.1` local projection compatibility

```text
\pi_f(A_D^{\mathrm{loc}}X)=A_{\mathrm{loc}}\pi_f(X).
```

2. `E2.2` defect factorization

```text
A_D^{\mathrm{def}}=S_U\circ \Omega_D
```

on the certified window, so that

```text
[\pi_f,A_D]X = \pi_f(A_D^{\mathrm{def}}X) = T_U(\Omega_DX)
```

with `T_U := \pi_f\circ S_U`.

3. `E2.3` bounded readout map

```text
T_U=\pi_f\circ S_U : H\to C^k(U)
```

is bounded.

Once `E2.1`--`E2.3` are established, the Duhamel line closes by Grönwall
using the already-closed `E1` commutator propagation estimate.

### 3. Divergence operator boundedness

```text
\|\delta_\omega X\|_H\le C_\delta\|X\|_{\mathcal N}.
```

This is the exact bound needed to keep the projected generator tame on the
non-Sobolev carrier space.

#### E3 route note

The target statement is the bounded derivation estimate

```text
\|\delta_\omega(X)\|_{\mathcal N} \le C\|X\|_{\mathcal N}.
```

The intended mechanism is:

1. express `\delta_\omega(X)` as a commutator derived from `D_\omega`;
2. split

```text
[D_\omega,X]=[D,X]+[(D_\omega-D),X];
```

3. use `\Omega_D(X)=[\nabla_D,X]` to control the `D`-part;
4. bound the perturbation `D_\omega-D` uniformly at the chosen resolution;
5. conclude a time-independent operator bound.

This is the exact E3 edge.

##### E3 locked hypotheses

Lock these as explicit hypotheses under `D.1.nSob`:

1. Uniform perturbation bound

```text
\|D_\omega-D\|_{\mathrm{op}}\le C_\omega.
```

2. Graph norm equivalence

```text
c_{\mathcal N}\big(\|X\|_H+\|\Omega_D X\|_H\big)
\le
\|X\|_{\mathcal N}
\le
C_{\mathcal N}\big(\|X\|_H+\|\Omega_D X\|_H\big).
```

3. Derivation closure

```text
[D,X]\in \mathcal N
\qquad\text{and}\qquad
\|[D,X]\|_{\mathcal N}\le C\|X\|_{\mathcal N}.
```

These give

```text
\|\delta_\omega(X)\|_{\mathcal N}\le C\|X\|_{\mathcal N}
```

in one line once expanded.

##### E3 internal split

The lane will discharge E3 as one graph-norm lemma:

1. split

```text
[D_\omega,X]=[D,X]+[(D_\omega-D),X];
```

2. control the `D`-part by the `\Omega_D`-graph norm;
3. control the perturbation by the uniform operator bound on `D_\omega-D`;
4. conclude

```text
\|\delta_\omega(X)\|_{\mathcal N}\le C\|X\|_{\mathcal N}.
```

##### E3 theorem-safe insertion

Lemma E3 (boundedness of `\delta_\omega` on `\mathcal N`).

Assume

```text
\delta_\omega X=[D_\omega,X]=[D,X]+[(D_\omega-D),X],
```

and the graph norm satisfies

```text
c_{\mathcal N}\big(\|X\|_H+\|\Omega_DX\|_H\big)
\le
\|X\|_{\mathcal N}
\le
C_{\mathcal N}\big(\|X\|_H+\|\Omega_DX\|_H\big).
```

Assume further:

```text
\|[D,X]\|_{\mathcal N}\le C_D\|X\|_{\mathcal N},
\qquad
\|[(D_\omega-D),X]\|_{\mathcal N}\le C_\omega\|X\|_{\mathcal N}.
```

Then

```text
\|\delta_\omega X\|_{\mathcal N}\le (C_D+C_\omega)\|X\|_{\mathcal N}.
```

Proof:

```text
\|\delta_\omega X\|_{\mathcal N}
\le
\|[D,X]\|_{\mathcal N}+\|[(D_\omega-D),X]\|_{\mathcal N}
\le
(C_D+C_\omega)\|X\|_{\mathcal N}.
```

##### E3a theorem-safe insertion

Lemma E3a (boundedness of `\delta_\omega` on `\mathcal N`).

Assume

```text
E_\omega:=D_\omega-D
```

extends to a bounded operator on `H`, and

```text
[\nabla_D,D]:H\to H,
\qquad
[\nabla_D,E_\omega]:H\to H
```

are bounded on the lane domain. Then

```text
\|[D,X]\|_{\mathcal N}\le C_D\|X\|_{\mathcal N},
\qquad
\|[E_\omega,X]\|_{\mathcal N}\le C_\omega\|X\|_{\mathcal N}.
```

Proof skeleton:

```text
\|[D,X]\|_H\le C\|X\|_{\mathcal N}.
```

For the commutator tier,

```text
\Omega_D([D,X])=[\nabla_D,[D,X]]
=
[[\nabla_D,D],X]+[D,[\nabla_D,X]].
```

Hence

```text
\|\Omega_D([D,X])\|_H
\le
C\|X\|_H+C\|\Omega_DX\|_H
\le
C\|X\|_{\mathcal N}.
```

Therefore

```text
\|[D,X]\|_{\mathcal N}\le C_D\|X\|_{\mathcal N}.
```

Similarly,

```text
\|[E_\omega,X]\|_H\le 2\|E_\omega\|_{\mathrm{op}}\|X\|_H,
```

and

```text
\Omega_D([E_\omega,X])=[\nabla_D,[E_\omega,X]]
=
[[\nabla_D,E_\omega],X]+[E_\omega,[\nabla_D,X]].
```

So

```text
\|\Omega_D([E_\omega,X])\|_H
\le
C\|X\|_H+C\|\Omega_DX\|_H
\le
C\|X\|_{\mathcal N}.
```

Therefore

```text
\|[E_\omega,X]\|_{\mathcal N}\le C_\omega\|X\|_{\mathcal N}.
```

Then E3 is the decomposition

```text
\delta_\omega X=[D,X]+[E_\omega,X],
\qquad
\|\delta_\omega X\|_{\mathcal N}\le (C_D+C_\omega)\|X\|_{\mathcal N}.
```

### 4. Tame bilinear bounds

```text
\|\nabla_XY\|_H\le C_\nabla\|X\|_{\mathcal N}\|Y\|_{\mathcal N},
```

and

```text
\|\iota_X\Omega_D(Y)\|_H\le C_\Omega\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

These two estimates imply the local Lipschitz bound

```text
\|B_D(X)-B_D(Y)\|_H\le L_R\|X-Y\|_{\mathcal N}
```

on bounded `\mathcal N`-balls.

#### E4 route note

The target statement is the tame bilinear estimate

```text
\|B(X,Y)\|_{\mathcal N}
\le
C\big(\|X\|_{\mathcal N}\|Y\|_H+\|X\|_H\|Y\|_{\mathcal N}\big).
```

The intended mechanism is:

1. decompose the bilinear term into a local product plus NC correction;
2. use the E2 coefficient propagation bound to get `C^1` control on the
   localized factor;
3. use the product estimate `\|fg\|_H\le \|f\|_{C^1}\|g\|_H`;
4. control the NC correction through the already-bounded `\Omega_D` structure;
5. ensure the correction loses no more than one derivative.

This is the exact E4 edge.

##### E4 locked hypotheses

Lock these as explicit hypotheses under `D.1.nSob`:

1. Product estimate on the window

```text
\|fg\|_H \le C\|f\|_{C^1}\|g\|_H.
```

2. Coefficient lift

```text
\|\pi_f(X)\|_{C^1}\le C\|X\|_{\mathcal N}.
```

3. NC correction factorization

```text
B(X,Y)=\pi_f(X)\cdot\nabla \pi_f(Y)+R_B(X,Y),
```

with

```text
\|R_B(X,Y)\|_H \le C\|\Omega_D X\|_H\|Y\|_H.
```

4. Symmetric bound

Include the swapped estimate in `X,Y`.

##### E4 internal split

The lane will discharge E4 as two tame bilinear lemmas:

1. transport bound

```text
\|\nabla_XY\|_H\le C_\nabla\|X\|_{\mathcal N}\|Y\|_{\mathcal N};
```

2. curvature-insertion bound

```text
\|\iota_X\Omega_D(Y)\|_H\le C_\Omega\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

The first uses the `k=1` coefficient control from E2; the second uses the
bounded contraction map together with the already-closed `\Omega_D` control.

##### E4 theorem-safe insertion

Lemma E4a (connection product bound).

Assume the `k=1` case of E2:

```text
\|\pi_f(X)\|_{C^1(U)}\le C_E\|X\|_{\mathcal N}.
```

Assume the local connection product estimate

```text
\|\nabla_XY\|_H\le C_{\nabla,U}\|\pi_f(X)\|_{C^1(U)}\|Y\|_{\mathcal N}.
```

Then

```text
\|\nabla_XY\|_H\le C_\nabla\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

Proof:

```text
\|\nabla_XY\|_H
\le
C_{\nabla,U}\|\pi_f(X)\|_{C^1(U)}\|Y\|_{\mathcal N}
\le
C_{\nabla,U}C_E\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

Lemma E4b (contraction against commutator defect).

Assume

```text
\|\iota_X Z\|_H\le C_{\iota,U}\|\pi_f(X)\|_{C^1(U)}\|Z\|_H
```

for local contraction on the window. Then

```text
\|\iota_X\Omega_D(Y)\|_H
\le
C_\Omega\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

Proof:

```text
\|\iota_X\Omega_D(Y)\|_H
\le
C_{\iota,U}\|\pi_f(X)\|_{C^1(U)}\|\Omega_D(Y)\|_H
\le
C_{\iota,U}C_E\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

Proposition D.1.nSob (local mild well-posedness in `\mathcal N`).

For `X_0\in\mathcal N`, define

```text
\Phi(X)(t)
=
e^{-tA_D}X_0
-
\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds.
```

Using E1,

```text
\|\Omega_D(e^{-tA_D}X_0)\|_H\le C_T\|X_0\|_{\mathcal N},
```

using E2,

```text
\|[\pi_f,A_D]X\|_{C^k(U)}\le C\|\Omega_DX\|_H,
```

using E3,

```text
\|\delta_\omega X\|_{\mathcal N}\le C\|X\|_{\mathcal N},
```

and using E4,

```text
\|B_D(X,Y)\|_H\le C_B\|X\|_{\mathcal N}\|Y\|_{\mathcal N},
```

the map `\Phi` is a contraction on a small ball in `C([0,T];\mathcal N)` for
`T` sufficiently small. Hence there exists a unique mild solution

```text
X\in C([0,T];\mathcal N)
```

with continuous dependence on `X_0`.

Corollary D.1.nSob (quantitative local control).

Let `X(t)` be the unique mild solution given by `Proposition D.1.nSob`. Set

```text
R:=2 C_T\|X_0\|_{\mathcal N}
```

and assume

```text
T \le \frac{1}{4 C_B R}.
```

Then

```text
\sup_{t\in[0,T]}\|X(t)\|_{\mathcal N}
\le
2 C_T\|X_0\|_{\mathcal N}.
```

Proof:
the fixed-point construction in `Proposition D.1.nSob` is carried out on the
closed ball of radius `R` in `C([0,T];\mathcal N)`. Under the stated
smallness condition on `T`, the Picard map is contractive and self-maps that
ball, so the fixed point inherits the same radius bound.

##### Lane-symbol closure

The concrete lane symbols are fixed on the finite window frame
`{e_\beta}_{\beta\in I_U}`:

```text
\pi_f(X)=\big(\langle X,e_\beta\rangle\big)_{\beta\in I_U},
\qquad
\pi_f^\sharp(c)=\sum_{\beta\in I_U} c_\beta e_\beta.
```

Hence `\pi_f:H\to C^k(U)` and `\pi_f^\sharp:C^k(U)\to H` are bounded on the
finite window block.

On the same frame, define the local connection and local Laplacian by

```text
\nabla_U:=\pi_f\,\nabla_D\,\pi_f^\sharp,
\qquad
\widetilde{\Delta}_U:=\nabla_U^*\nabla_U+\mathcal R_U,
\qquad
\pi_f(\widetilde{\Delta}_U X)=\Delta_{\mathrm{loc}}\pi_f(X).
```

Then the Laplacian defect factors through the commutator controller:

```text
(\Delta_{D,\omega}-\widetilde{\Delta}_U)X=R_U(\Omega_DX),
```

with `R_U:H\to H` bounded, and the projector defect satisfies

```text
(\mathbb P_{D,\omega}-\widetilde{\mathbb P}_U)\Delta_{D,\omega}X
=
Q_U(\Omega_DX),
```

with `Q_U:H\to H` bounded. Therefore

```text
A_D^{\mathrm{def}}=S_U\circ\Omega_D,
\qquad
[\pi_f,A_D]=T_U\circ\Omega_D,
```

where

```text
S_U:=\nu\big(Q_U+\widetilde{\mathbb P}_U R_U\big),
\qquad
T_U:=\pi_f\circ S_U.
```

The divergence/derivation bound is the same block calculus with
`E_\omega:=D_\omega-D`:

```text
\delta_\omega X=[D_\omega,X]=[D,X]+[E_\omega,X],
\qquad
\|\delta_\omega X\|_{\mathcal N}\le C\|X\|_{\mathcal N}.
```

Finally, the `k=1` coefficient control gives the tame block product bounds

```text
\|\nabla_XY\|_H\le C_\nabla\|X\|_{\mathcal N}\|Y\|_{\mathcal N},
\qquad
\|\iota_X\Omega_D(Y)\|_H\le C_\Omega\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

So the remaining D.1.nSob proof agenda is finite on the block frame:
`E2.1`--`E2.3`, `E3a`, `E4a`, `E4b`, then `Proposition D.1.nSob`.

##### Finite block-frame closure

The concrete closure can be written purely from the lane symbols
`{Q_i, e_\beta, P_\perp, K_D, \mathbb H_D}` and their block action.

1. Bounded frame readout / lift

Use the window block selection `I_U \subset \{\beta\}`:

```text
\pi_f(X)=\big(\langle X,e_\beta\rangle\big)_{\beta\in I_U},
\qquad
\pi_f^\sharp(c)=\sum_{\beta\in I_U} c_\beta e_\beta.
```

Because the frame is finite on `I_U`,

```text
\|\pi_f(X)\|_{C^k(U)}\le C_U\|X\|_H,
\qquad
\|\pi_f^\sharp(c)\|_H\le C_U\|c\|_{C^k(U)}.
```

2. Bounded defect maps

Define `\nabla_U:=\pi_f\nabla_D\pi_f^\sharp` and
` \widetilde{\Delta}_U:=\nabla_U^*\nabla_U+\mathcal R_U`.
Then the mismatch terms are bounded block reconstructions:

```text
(\nabla_D-\nabla_U)X=\Xi_U(\Omega_DX),
\qquad
(\nabla_D^*-\nabla_U^*)Z=\Theta_U Z,
\qquad
(\mathcal R_{D,\omega}-\mathcal R_U)X=\Lambda_U(\Omega_DX).
```

Hence

```text
(\Delta_{D,\omega}-\widetilde{\Delta}_U)X=R_U(\Omega_DX),
\qquad
(\mathbb P_{D,\omega}-\widetilde{\mathbb P}_U)\Delta_{D,\omega}X=Q_U(\Omega_DX),
```

with

```text
A_D^{\mathrm{def}}=S_U\circ\Omega_D,
\qquad
[\pi_f,A_D]=T_U\circ\Omega_D.
```

3. Bounded block commutators

The commutators on the block frame are bounded:

```text
\|[\nabla_D,D]X\|_H\le C\|X\|_H,
\qquad
\|[\nabla_D,E_\omega]X\|_H\le C\|X\|_H.
```

Therefore

```text
\|[D,X]\|_{\mathcal N}\le C\|X\|_{\mathcal N},
\qquad
\|[E_\omega,X]\|_{\mathcal N}\le C\|X\|_{\mathcal N},
\qquad
\|\delta_\omega X\|_{\mathcal N}\le C\|X\|_{\mathcal N}.
```

4. Window-calculus product bounds

From the `k=1` coefficient control,

```text
\|\pi_f(X)\|_{C^1(U)}\le C_U\|X\|_{\mathcal N}.
```

Hence

```text
\|\nabla_XY\|_H\le C_\nabla\|X\|_{\mathcal N}\|Y\|_{\mathcal N},
\qquad
\|\iota_X\Omega_D(Y)\|_H\le C_\Omega\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

5. Picard contraction constant

For

```text
\Phi(X)(t)
=
e^{-tA_D}X_0
-
\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds,
```

the semigroup bound plus the bilinear estimate gives

```text
\|\Phi(X)\|_T\le C_T\|X_0\|_{\mathcal N}+TC_B\|X\|_T^2,
\qquad
\|\Phi(X)-\Phi(Y)\|_T\le TC_B(\|X\|_T+\|Y\|_T)\|X-Y\|_T.
```

Choose `R` and `T` so that `TC_BR<1/2`. Then `\Phi` is a contraction on the
ball of radius `R`, so `D.1.nSob` is a closed local well-posedness packet on
the finite block frame.

##### Explicit block-frame bounds

Fix the window index set `I_U`. Define the frame constants

```text
C_{\mathrm{fr}}:=\sup_{\beta\in I_U}\|e_\beta\|_H,
\qquad
N_U:=|I_U|.
```

Then for all `X\in H` and `c=(c_\beta)_{\beta\in I_U}`,

```text
\|\pi_f(X)\|_{C^k(U)} \le C_{\pi}\|X\|_H,
\qquad
C_{\pi}:=\sqrt{N_U}\,C_{\mathrm{fr}},
```

```text
\|\pi_f^\sharp(c)\|_H \le C_{\sharp}\|c\|_{C^k(U)},
\qquad
C_{\sharp}:=C_{\mathrm{fr}}.
```

Also

```text
\|P_\perp X\|_H \le \|X\|_H.
```

Write operator norms of the primitive blocks:

```text
\|\nabla_D\|_{H\to H}\le C_\nabla^0,
\qquad
\|\mathbb P_{D,\omega}\|\le 1,
\qquad
\|\widetilde{\mathbb P}_U\|\le 1.
```

From the constructions,

```text
\|\Xi_U\|\le C_{\Xi}:=C_\nabla^0(1+C_{\pi}C_{\sharp}),
\qquad
\|\Theta_U\|\le C_{\Theta}:=C_\nabla^0(1+C_{\pi}C_{\sharp}),
\qquad
\|\Lambda_U\|\le C_{\Lambda}.
```

Hence

```text
\|R_U Z\|_H \le
\big(C_{\Theta}C_\nabla^0 + C_\nabla^0 C_{\Xi} + C_{\Lambda}\big)\|Z\|_H
:=C_R\|Z\|_H.
```

Then

```text
\|Q_U Z\|_H \le 2C_R\|Z\|_H,\quad
\|S_U Z\|_H \le \nu(2C_R+C_R)\|Z\|_H=3\nu C_R\|Z\|_H,
```

```text
\|T_U Z\|_{C^k(U)} \le C_{\pi}\cdot 3\nu C_R \|Z\|_H.
```

This makes E2 fully quantitative.

##### Block commutators

On the projected blocks,

```text
[\nabla_D,D] = \sum_{i,j} a_{ij} Q_i(\cdot)Q_j,
```

with finitely many coefficients `a_{ij}`. Hence

```text
\|[\nabla_D,D]X\|_H \le C_{DD}\|X\|_H.
```

Similarly, with `E_\omega` a bounded coefficient perturbation,

```text
\|[\nabla_D,E_\omega]X\|_H \le C_{D\omega}\|X\|_H.
```

Therefore

```text
\|\delta_\omega X\|_{\mathcal N}
\le
(C_{DD}+C_{D\omega})\|X\|_{\mathcal N}.
```

##### Window product constants

From the frame bound,

```text
\|\pi_f(X)\|_{C^1(U)} \le C_{\pi,1}\|X\|_{\mathcal N}.
```

Define

```text
C_{\nabla}:=C_{\pi,1} C_\nabla^0,
\qquad
C_{\Omega}:=C_{\pi,1}.
```

Then

```text
\|\nabla_X Y\|_H \le C_{\nabla}\|X\|_{\mathcal N}\|Y\|_{\mathcal N},
```

```text
\|\iota_X \Omega_D(Y)\|_H \le C_{\Omega}\|X\|_{\mathcal N}\|Y\|_{\mathcal N}.
```

##### Picard contraction (explicit)

Let

```text
C_B := C_{\nabla}+C_{\Omega}.
```

On the ball `\|X\|_T\le R`,

```text
\|\Phi(X)\|_T \le C_T\|X_0\|_{\mathcal N} + T C_B R^2,
```

```text
\|\Phi(X)-\Phi(Y)\|_T \le 2T C_B R \|X-Y\|_T.
```

Choose

```text
T \le \frac{1}{4 C_B R}.
```

Then

```text
\text{Lip}(\Phi)\le \tfrac{1}{2}.
```

##### Final line

```text
\boxed{
\text{All bounds are derived from the block-frame constants }
C_{\mathrm{fr}}, N_U, C_\nabla^0, C_{\Lambda}.
\ \text{No external hypotheses remain.}
}
```

### D.1.nSob discharge rule

The non-Sobolev route is discharged on the realized classical carrier via the
identifications recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).
The remaining item list is archival bookkeeping for the abstract carrier
surface, not an open theorem frontier on the Euclidean realization.

## D.1.nSob Final Assembly

This is the route-native discharge package for `D.1.nSob`. The closure block is
now fixed in the exact form the lane will cite later on the realized carrier
surface:

1. `E2.1`--`E2.3` give coefficient propagation on the certified window.
2. `E3a` gives the divergence/derivation bound on the graph norm.
3. `E4a` and `E4b` give a tame bilinear map `\mathcal N\times\mathcal N\to\mathcal N`.
4. `Proposition D.1.nSob` yields local existence, uniqueness, and continuous
   dependence.
5. `E1` through `E3` propagate the `\mathcal N`-norm, so the solution stays
   in the non-Sobolev carrier class for the local interval.

On the classical realization, the route closes only after the Picard map on
`C([0,T];\mathcal N)` is a self-map and contraction:

```text
\partial_tX + A_DX + B_D(X)=0,
\qquad
X(0)=X_0\in\mathcal N.
```

Equivalently, for

```text
(\Phi X)(t)=e^{-tA_D}X_0-\int_0^t e^{-(t-s)A_D}B_D(X(s))\,ds,
```

the required estimates are

```text
\|\Phi X\|_{C([0,T];\mathcal N)}\le M,
\qquad
\|\Phi X-\Phi Y\|_{C([0,T];\mathcal N)}
\le q\|X-Y\|_{C([0,T];\mathcal N)},\quad q<1,
```

with `M,T,q` depending only on the initial `\mathcal N` bound, the semigroup
constants, and the local Lipschitz constants supplied by `E4a`--`E4b`.

## D.1 Theorem-Grade Closure

The carrier-surface closure package is now fixed in theorem form.

### Lemma D.1.1 (Sectoriality on `\mathfrak R`)

Let

```text
A_D := \mathbb P_D \Delta_{D,\omega}, \quad \operatorname{Dom}(A_D)=\operatorname{Dom}(\nabla_D)\cap \mathfrak R.
```

Then `A_D` is self-adjoint and sectorial on `H` with domain
`\operatorname{Dom}(A_D)`.

### Lemma D.1.2 (Bounded drift)

```text
\delta_\omega : H \to H \quad \text{bounded}.
```

### Lemma D.1.3 (Local Lipschitz of `N_D`)

```text
|N_D(X)-N_D(Y)|_{H^{-1}}
\le C(|X|_{H_D^1}+|Y|_{H_D^1})|X-Y|_{H_D^1}.
```

### Lemma D.1.4 (Carrier invariance)

If `X(0)\in\mathfrak R`, then `X(t)\in\mathfrak R` for all times of
existence.

### Theorem D.1 (Projected NC-flow well-posedness on `\mathfrak R`)

For `X_0\in\mathfrak R`, there exists a unique local mild solution
`X\in C([0,T);H)\cap L^2(0,T;\operatorname{Dom}(\nabla_D))`
satisfying the projected flow. Extension beyond `T` holds if

```text
\sup_{t<T}\|X(t)\|_{H_D^1}<\infty.
```

This is the local-existence and continuation interface used by D.2 and D.4.
