# Torus Projected-Flow Extraction

## Status

Lane-local extraction of the concrete torus / shadow material that already
exists in the working-note corpus. This file is not a new proof. Its job is to
keep the usable torus-route theorems inside `problems/navier-stokes/**` instead
of leaving them stranded in side notes.

## Source anchors

- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/nc-3torus-concrete-model-evaluation.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-covariance-and-shadow-theorem-scaffold.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md`
- `problems/navier-stokes/theorem-construction/torus-curvature-insertion-shadow-lemma.md`

## Concrete torus model

The compact derivation lab is the smooth NC `3`-torus spectral triple

```text
(A_\Theta^\infty,\mathcal H,D_A),
```

with

```text
D_A
=
-i\sum_{j=1}^3 \sigma^j(\delta_j+\operatorname{ad}_{A_j}),
```

and differential package

```text
\nabla_A := [D_A,\cdot],
\qquad
\delta_A := \nabla_A^*,
\qquad
\Delta_A := \delta_A\nabla_A + \nabla_A\delta_A.
```

The concrete projected transport law is

```text
N_A(X):=\nabla_X^A X + \iota_X F_A.
```

The concrete projector candidate is

```text
\mathbb P_A := Id - \nabla_A \Delta_A^{-1}\delta_A.
```

## D.1 extraction

The imported semigroup statement is:

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

The torus model strengthens that scaffold with:

- compact resolvent for `D_A`,
- standard torus Sobolev scales `H_\Theta^s`,
- Banach algebra control for `s > 3/2`,
- local Lipschitz transport estimate for `s > 5/2`,
- incompressibility preservation through `\delta_A \mathbb P_A = 0`.

## D.2 extraction

The energy object is

```text
\mathcal E_D(X)
:=
\|\Delta_{D,\omega}^{1/2}X\|^2 + \|\Omega_D(X)\|^2,
\qquad
\Omega_D(X):=[\nabla_{D,\omega},X].
```

The exact channel is already localized by

```text
\mathbb P_D = Id - \nabla_D \Delta_D^{-1}\delta_D,
```

so

```text
\nabla_D P_D(X)
=
(Id-\mathbb P_D)\big(\delta_\omega X + N_D(X) - \nu \Delta_D X\big),
```

with

```text
\Delta_D P_D(X)
=
\delta_D\big(\delta_\omega X + N_D(X) - \nu \Delta_D X\big).
```

The current differentiated energy identity is

```text
\frac{d}{dt}\mathcal E_D(X)
+
2\nu\|\Delta_{D,\omega}X\|^2
+
2\nu\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
=
\mathcal N_1(X)+\mathcal N_2(X).
```

The torus route reduces the remaining wall to three direct analysis problems:

1. symbol calculation on the overlap carrier quotient,
2. invariant-subbundle check for the carrier-local transport algebra,
3. operator-Lipschitz estimate for overlap transport.

The sharper torus-side local-to-global push is:

```text
[\sigma_0(\mathcal C_{ij})]=0
\quad\text{in the carrier quotient,}
```

carrier invariance under overlap transport, and quotient-norm continuity of the
transported local nonlinear update.

## D.3 extraction

The commutative shadow package is:

```text
\mathcal C(\Delta_D X)=\Delta\,\mathcal C(X),
\qquad
\mathcal C(\mathbb P_D X)=\mathbb P_{\mathrm{Leray}}\mathcal C(X).
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

The strong-form shadow theorem target is

```text
\partial_t u + \mathbb P_{\mathrm{Leray}}(u\cdot\nabla u) = \nu \Delta u,
\qquad
\nabla\cdot u=0,
```

equivalently

```text
\partial_t u + u\cdot\nabla u + \nabla p = \nu \Delta u,
\qquad
\nabla\cdot u=0.
```

The current continuation-level torus bound is

```text
\sup_{t\ge0}\|X(t)\|_{H_D^s}^2
\le
C_s\Big(\|X(0)\|_{H_D^s}^2+\|[\Theta(X(0))]\|^2\Big),
\qquad
s>\frac52.
```

Once

```text
\|u(t)\|_{H^s(\mathbb T^3)} \le C\|X(t)\|_{H_D^s}
```

is theorem-grade, the periodic classical shadow continues globally.

## Honest status

This extraction materially upgrades the lane-local D-route files, but it does
not prove them. The torus route still acts as the compact proving ground for:

- D.1 semigroup and sector-preservation closure,
- D.2 coercive energy closure after removing the exact channel,
- D.3 shadow descent with either exact or vanishing shadow error.

## Curvature insertion / strict shadow lemma

The Marvin note localized the exact missing torus step:

```text
\mathcal C(\iota_X\Omega_D(X))=0.
```

Lane-local expansion should be read as:

```text
D_\Theta = D_0 + \mathsf K_\Theta,
\qquad
\mathsf K_\Theta = \Theta^{ab}K_{ab},
```

so that

```text
\Omega_{D_\Theta}(X)
=
[D_0,X] + [\mathsf K_\Theta,X],
```

and therefore

```text
\iota_X\Omega_{D_\Theta}(X)
=
\iota_X[D_0,X] + \Theta^{ab}\,\iota_X[K_{ab},X].
```

The exact-shadow reading is:

- the `D_0` piece belongs to the transport / exact sector handled elsewhere;
- the `\Theta^{ab}` piece is deformation-carried and should vanish in the
  strict commutative quotient;
- the whole insertion therefore lands in the commutator / shadow-invisible
  sector once the torus expansion is made theorem-grade.

The three available proof routes are:

1. commutator-kernel,
2. symbol-level antisymmetry,
3. trace-duality against commutative observables.
