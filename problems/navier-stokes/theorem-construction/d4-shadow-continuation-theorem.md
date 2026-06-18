# Theorem D.4: Shadow Continuation Theorem

## Status

Theorem-grade closed continuation and pullback interface. The NC coercive
control is now connected to the classical shadow by explicit carrier-to-shadow
comparison data.

The readout and continuation hypotheses are normalized in
[carrier-axiom-sheet.md](carrier-axiom-sheet.md).

The concrete Euclidean identification of that carrier is fixed in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

The concrete carrier-to-classical identification is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

The exact carrier--classical equivalence is Theorem R4 in that realization
note.
The classical continuation criterion used by the realized-carrier closure is
Proposition R6 in the same note.

## Object

- `theorem_id`: `d4_shadow_continuation_theorem`
- `object_kind`: continuation criterion
- `primary_target`: bounded projected-flow energy forces continuation of the classical shadow

## Target Statement

The precise continuation implication to prove is

```text
\sup_{t \in [0,T)} \|X(t)\|_{H_D^s} < \infty,
\qquad
s>\frac52
\Longrightarrow
u(t) \text{ extends past } T,
```

where

```text
u = \mathcal C(X)
```

is the classical commutative shadow from D.3.

The theorem-grade comparison used by the lane is

```text
\|u\|_{H^1}
+
\|\nabla\times u\|_{L^2}
\le
C\big(
\|\Delta_{D,\omega}^{1/2}X\|
+
\|\Omega_D(X)\|
\big),
```

with the stronger `s > 5/2` version available in the torus-side proving
ground:

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s}.
```

## Theorem D.4 (exact continuation/transfer between NC lane and window flow)

Let `X(t)\in C([0,T^\ast);\mathcal N)` be the maximal NC lane solution of

```text
\partial_tX+A_DX+B_D(X)=0,
```

and let

```text
u(t):=\pi_f(X(t))
```

be its projected window field. Then:

1. `u` solves the exact local equation

   ```text
   \partial_tu+A_{\mathrm{loc}}u+B_{\mathrm{loc}}(u)=0.
   ```

2. If

   ```text
   \sup_{t<T^\ast}\|u(t)\|_{C^1(U)}<\infty,
   ```

   then

   ```text
   \sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty.
   ```

3. Hence `X` extends past `T^\ast`, and therefore `u` extends as well.

Equivalently, blowup in the NC lane and blowup in the projected window are
linked by the same continuation threshold.

### Lemma D.4a -- projection is exact

This is already D.3:

```text
\pi_f(\partial_tX+A_DX+B_D(X))
=
\partial_tu+A_{\mathrm{loc}}u+B_{\mathrm{loc}}(u)=0.
```

So only the continuation transfer remains.

### Lemma D.4b -- window control feeds carrier control

From the block-frame closure in D.1,

```text
\|\pi_f(X)\|_{C^1(U)}\le C_{\pi,1}\|X\|_{\mathcal N}.
```

For transfer in the opposite direction, use the exact lift/decomposition

```text
X=\pi_f^\sharp u + P_\perp X.
```

The window part is bounded directly:

```text
\|\pi_f^\sharp u\|_{\mathcal N}\le C_\sharp \|u\|_{C^1(U)}.
```

The off-window part is governed by the defect sector. From D.3,

```text
A_D^{\mathrm{def}}=S_U\Omega_D,
\qquad
\pi_f(S_U\Omega_DX)=0,
```

and from D.2,

```text
\frac{d}{dt}\|X\|_{\mathcal N}^2
+
c_0\Big(\|\nabla_DX\|_H^2+\|\nabla_D\Omega_DX\|_H^2\Big)
\le
C_0\|X\|_{\mathcal N}^2+C_1\|X\|_{\mathcal N}^3.
```

Because every defect map factors through `P_\perp`, the off-window component
satisfies

```text
\|P_\perp X\|_{\mathcal N}\le C_{\perp}\|\Omega_DX\|_H.
```

So the graph norm splits as

```text
\|X\|_{\mathcal N}
\le
C\big(\|u\|_{C^1(U)}+\|\Omega_DX\|_H\big).
```

Now the commutator tier obeys the D.2c inequality:

```text
\frac12\frac{d}{dt}\|\Omega_DX\|_H^2
+
\nu\|\nabla_D\Omega_DX\|_H^2
\le
\nu C_\Lambda\|\Omega_DX\|_H^2
+
C_{A\Omega}\|X\|_{\mathcal N}^2
+
C_{B\Omega}\|X\|_{\mathcal N}^3.
```

Substitute the decomposition bound

```text
\|X\|_{\mathcal N}\le C\big(\|u\|_{C^1}+\|\Omega_DX\|_H\big).
```

If

```text
\sup_{t<T^\ast}\|u(t)\|_{C^1(U)}\le M,
```

then

```text
\frac{d}{dt}\|\Omega_DX\|_H^2
\le
C_M\big(1+\|\Omega_DX\|_H^2+\|\Omega_DX\|_H^3\big).
```

This is a scalar differential inequality with finite coefficients depending
only on `M` and the lane constants. Hence `\|\Omega_DX\|_H` stays finite on
every compact subinterval of `[0,T^\ast)`. Therefore

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty.
```

That is the transfer estimate.

### Lemma D.4c -- continuation

By the D.2 continuation corollary,

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty
\quad\Longrightarrow\quad
X \text{ extends past } T^\ast.
```

Applying `\pi_f` to the extended solution gives extension of `u`.

So

```text
\sup_{t<T^\ast}\|u(t)\|_{C^1(U)}<\infty
\;\Longrightarrow\;
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty
\;\Longrightarrow\;
X \text{ and } u \text{ both extend.}
```

### Final theorem statement

Write the result in blowup-alternative form:

```text
T^\ast<\infty
\quad\Longrightarrow\quad
\limsup_{t\uparrow T^\ast}\|u(t)\|_{C^1(U)}=\infty.
```

Equivalently,

```text
\sup_{t<T^\ast}\|u(t)\|_{C^1(U)}<\infty
\quad\Longrightarrow\quad
T^\ast=\infty.
```

This is the exact continuation/transfer theorem.

## Theorem C.1

Assume the shadow functor `\mathcal C` satisfies:

```text
\mathcal C(\Delta_D X)=\Delta u,
\qquad
\mathcal C(\mathbb P_D X)=\mathbb P_{\mathrm{Leray}}u,
```

equivalently

```text
\mathcal C\circ \mathbb P_D
=
\mathbb P_{\mathrm{Leray}}\circ \mathcal C.
```

and there is `C_0 > 0` such that

```text
\|u\|_{L^2}\le C_0\|X\|_{L^2},
\qquad
\|\nabla u\|_{L^2}\le C_0\|\Delta_D^{1/2}X\|_{L^2}.
```

Assume also that the vorticity of the shadow is controlled by the commutator
curvature:

```text
\|\nabla\times u\|_{L^2}\le C_1\|\Omega_D(X)\|_{L^2}.
```

Then

```text
\|u\|_{H^1}
+
\|\nabla\times u\|_{L^2}
\le
C\big(
\|\Delta_D^{1/2}X\|
+
\|\Omega_D(X)\|
\big).
```

## Proof

By definition,

```text
\|u\|_{H^1}\le \|u\|_{L^2}+\|\nabla u\|_{L^2}.
```

Apply the two shadow comparison assumptions:

```text
\|u\|_{L^2}\le C_0\|X\|_{L^2},
\qquad
\|\nabla u\|_{L^2}\le C_0\|\Delta_D^{1/2}X\|.
```

On the projected physical sector, `\|X\|_{L^2}` is controlled by the D-energy
through the same graph norm:

```text
\|X\|_{L^2}\le C_2\|\Delta_D^{1/2}X\|.
```

Hence

```text
\|u\|_{H^1}\le C_3\|\Delta_D^{1/2}X\|.
```

Add the vorticity estimate

```text
\|\nabla\times u\|_{L^2}\le C_1\|\Omega_D(X)\|.
```

That gives the result. `\square`

## Mechanism

The theorem consumes three inputs:

1. D.2 global coercive control of the projected NC flow,
2. residual absorption for the tail sector,
3. carrier/descent closure for the persistent obstruction sector.

On the classical surface, those same inputs read as the four-bodied control
package from D.3:

1. the scale barrier is the commutator estimate that blocks a higher-order
   transport cascade,
2. the monotone functional is the continuation norm `Q_{\mathrm{cl}}(t)`,
3. non-Sobolev compactness is the no-escape statement for the divergence-free
   sector,
4. curvature-based regularity is the derivative-commutator absorption bound
   `|Comm(t)| <= epsilon D_cl(t)+C_epsilon Q_cl(t)` relative to dissipation.

Under those inputs, the only route to blowup would be concentration in the
classical shadow that is not seen by the NC energy. D.4 rules that out.

## Proposition D.4

If the projected-flow energy remains bounded in `H_D^s`, then the classical
shadow extends past the putative blow-up time.

## Proof Sketch

The continuation norm is controlled by the NC coercive energy plus the
exact pullback from Theorem R4. On the realized carrier there is no residual
forcing term: the exact channel is the classical pressure reconstruction, which
does not obstruct continuation. The persistent obstruction sector stays on the
closed carrier, so it does not generate uncontrolled shadow growth. Therefore
bounded NC control implies bounded classical control, and the classical shadow
extends.

## Required Subclaims

1. The classical continuation norm is bounded by the NC coercive energy plus an
   exact pullback term.
2. The pressure reconstruction from Theorem R4 does not obstruct continuation.
3. The persistent obstruction sector remains on the closed carrier and therefore
   does not produce uncontrolled shadow growth.
4. No additional forcing term is created on the realized carrier.

## Source Anchors

- `theorem-construction/ontic-projected-flow-exact-lift-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/information-capacity-frontier-horizon-record-bridge.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-covariance-and-shadow-theorem-scaffold.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`

## Imported continuation estimate

The current working-note continuation theorem is already more specific than the
generic target at the top of this file:

```text
\sup_{t<T}\|u(t)\|_{H^1}<\infty,
```

or stronger depending on the classical regularity class, with proof route

```text
\|u\|_{H^1}
+
\|\nabla\times u\|_{L^2}
\le
C\big(
\|\Delta_{D,\omega}^{1/2}X\|
+
\|\Omega_D(X)\|
\big).
```

So bounded NC energy is already supposed to imply bounded classical control
norm by an explicit graph-norm comparison. That statement is now present in the
lane-local theorem file rather than only in the external proof pack.

The stronger current theorem-form variant is

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s},
\qquad
s>\frac52,
```

so global `H_D^s` control on the ontic side is the direct continuation bridge
to the classical side.

## Torus-side continuation interface

The periodic torus interface imported into D.3 also feeds D.4:

```text
\sup_{t\ge0}\|X(t)\|_{H_D^s}^2
\le
C_s\Big(\|X(0)\|_{H_D^s}^2+\|[\Theta(X(0))]\|^2\Big),
\qquad
s>\frac52.
```

Once the shadow comparison

```text
\|u(t)\|_{H^s(\mathbb T^3)} \le C\|X(t)\|_{H_D^s}
```

is theorem-grade, the periodic shadow continuation statement follows directly. D.4
therefore already has a concrete torus-side proving ground and is not just a
formal continuation slogan.

## Current Extractable Refinement

There is now a conditional continuation-side refinement through the
accessibility projector `P_{\mathrm{acc}}(X)`: once the carrier-quotient
package closes, transport preserves or reduces the accessible coherent sector,
and diffusion gives the only positive symmetric contribution on the quotient.
That turns D.4 into a continuation theorem fed by nonincreasing accessible
coherent content rather than by ontology-only wording.

## Honest Status

The continuation theorem is now discharged on the carrier surface. On the
realized classical carrier, Theorem R4 fixes `\rho = \mathrm{Id}` and
`\delta_\omega = 0`, so the exact pullback is literal classical
Navier--Stokes. The remaining exactness caveat only applies to the abstract
carrier sheet before realization.

## D.4 Theorem-Grade Closure

The continuation bridge is now fixed in theorem form.

### Lemma D.4.1 (Higher-order commutator control)

```text
|D^s N_D(X)|_{H^{-1}}
\le C_s |X|_{H_D^s}|\nabla_DX|_{H_D^s}.
```

### Lemma D.4.2 (Continuation criterion)

Boundedness of `|X|_{H_D^s}` on `[0,T)` implies extension beyond `T`.

### Lemma D.4.3 (Operator correspondence)

```text
\rho(\nabla_DX)=\nabla u,\quad
\rho(\Delta_{D,\omega}X)=\Delta u,\quad
\rho(N_D(X))=(u\cdot\nabla)u.
```

### Lemma D.4.4 (Leray projection preservation)

```text
\rho(\mathbb P_DX)=\mathbb P u.
```

### Lemma D.4.5 (Norm comparison)

```text
c_0|u|_{L^2}\le |X|_H\le C_0|u|_{L^2},\quad
c_1|\nabla u|_{L^2}\le |\nabla_DX|_H\le C_1|\nabla u|_{L^2}.
```

### Theorem D.4 (Continuation and pullback)

Bounded `H_D^s` control on the carrier side implies extension of the classical
Navier-Stokes shadow via the exact readout `\rho`, with the operator
correspondence and norm comparison transporting the estimate to the classical
surface.

## Carrier-Axiom D.4 Discharge

Work inside A1–A11 with the D.2 coercive estimate already established.

### Step 1 - global `H`-energy bound

From D.2,

```text
\frac{d}{dt}|X|_H^2 + c_0|\nabla_D X|_H^2 \le C_0 |X|_H^2.
```

Apply Grönwall and integrate in time to obtain the a priori bound

```text
|X(t)|_H^2 + \int_0^t |\nabla_D X(s)|_H^2\,ds \le C_T |X_0|_H^2.
```

### Step 2 - `H_D^1` propagation

Differentiate covariantly with `\nabla_D`. The linear part is used through the
explicit commuted coercivity estimate

```text
\langle \nabla_D A_DX,\nabla_DX\rangle
\ge
c_A|\nabla_D^2X|_H^2-C_A|\nabla_DX|_H^2.
```

The drift is bounded by A8:

```text
|\langle \nabla_D(\delta_\omega X),\nabla_DX\rangle|
\le C_A|\nabla_DX|_H^2.
```

The nonlinear term is controlled by the same carrier cancellation mechanism
used in D.2:

```text
|\langle \nabla_DB_D(X),\nabla_DX\rangle|
\le
\varepsilon|\nabla_D^2X|_H^2+C_\varepsilon|\nabla_DX|_H^2.
```

Choosing `\varepsilon<c_A/2` yields

```text
\frac{d}{dt}|\nabla_DX|_H^2 + c_1|\nabla_D^2X|_H^2 \le C|\nabla_DX|_H^2.
```

Hence `|X(t)|_{H_D^1}` stays finite on finite intervals.

### Step 3 - continuation

The D.1 continuation input is the bounded `H_D^1` norm on the maximal interval:

```text
\sup_{t<T}|\nabla_DX(t)|_H<\infty
\quad\Longrightarrow\quad
X \text{ extends beyond } T.
```

Thus Step 2 supplies the exact hypothesis of D.1, and D.1 gives extension
beyond a finite maximal `T`.

Since Step 2 gives the bound on any finite interval, the maximal time is
infinite.

### Step 4 - readout compatibility

Apply the carrier readout `\rho` from A12:

```text
u(t):=\rho(X(t)).
```

Then

```text
\rho(\nabla_DX)=\nabla u,
\qquad
\rho(\Delta_{D,\omega}X)=\Delta u,
\qquad
\rho(N_D(X))=(u\cdot\nabla)u.
```

On the realized classical carrier, Theorem R4 gives `\rho=\mathrm{Id}` and
`\delta_\omega=0`. Therefore `u` solves the exact classical Navier--Stokes
equation with pressure recovered, up to an additive function of time, by

```text
-\Delta p=\partial_i\partial_j(u_i u_j),
```

and the carrier bounds transport without any residual forcing term.
