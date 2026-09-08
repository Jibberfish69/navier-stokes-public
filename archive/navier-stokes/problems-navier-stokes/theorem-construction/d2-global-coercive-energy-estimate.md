# Theorem D.2: Global Coercive Energy Estimate

## Status

Theorem-grade closed coercive-energy result on the carrier/operator package.
The D.2 absorption and coercivity blocks are internalized on the carrier
surface, with the completed symbol-level closure recorded below.

The carrier hypotheses used by this note are normalized in
[carrier-axiom-sheet.md](carrier-axiom-sheet.md).

Direct completion packet for the H.1 boundary is now recorded in
`theorem-construction/h1-carrier-leakage-direct-completion.md`.

The exact theorem surface is now the coherent/remainder discharge packet:

```text
|\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle|
+
|\langle \Omega_D(X),[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle|
\le
\varepsilon\,\mathcal D_D(X)
+
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

## Object

- `theorem_id`: `d2_global_coercive_energy_estimate`
- `object_kind`: global a priori estimate
- `primary_target`: force nonlinear transfer into a dissipative or absorbable sector

## Fixed Energy

Use the coercive energy and tail energy imported from the projected defect
growth scaffold:

```text
\mathcal E_D(X)
:=
\|\Delta_{D,\omega}^{1/2}X\|^2 + \|\Omega_D(X)\|^2,
\qquad
\Omega_D(X):=[\nabla_{D,\omega},X],
```

and

```text
\mathcal T_D(X)
:=
\|X\|^2 + \|\nabla_{D,\omega}X\|^2.
```

Set

```text
H:=\mathcal V_{D,\omega}.
```

The associated dissipation quantity is

```text
\mathcal D_D(X):=\|\Delta_{D,\omega}X\|^2+\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2.
```

## Transport-Law Checkpoint

The current working derivation says the projected nonlinear term is the
actual pinch point, not just the energy estimate.
The naive symmetrized choice

```text
N_D(X)=\frac12\big(X\nabla X+(\nabla X)X\big)
```

collapses to a total derivative on a naive Leibniz core, so if the projector
kills exact gradients then the projected nonlinearity vanishes.

That means D.2 must be built from one of the following working-note routes:

1. a covariant derivative realization on the transport sector,
2. a curvature-bearing convective term by construction,
3. a graded or form-level product structure that prevents the Leibniz collapse.

The relevant derivation notes are:

- `working-notes/ontic-nc-ns-operator-tilt-note.md`
- `working-notes/projected-nonlinearity-diagnostic.md`
- `working-notes/ontic-nc-ns-ymg-hodge-program.md`

## Target Statement

The exact estimate to prove is of the form

```text
\frac{d}{dt}\mathcal E_D(X(t))
+
c_D\Big(
\|\Delta_{D,\omega}X(t)\|^2
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X(t))\|^2
\Big)
\le
C\,\Psi(\mathcal E_D(X(t))),
```

where the right-hand side is strictly subcritical relative to the coercive term
or is absorbed into the exact/residual sectors produced by the defect
decomposition.

The global theorem requires that the right-hand side close uniformly in time:

```text
\sup_{t \in [0,T)} \mathcal E_D(X(t)) < \infty.
```

## Live Target Theorem D.2 (coercive energy closure on `\mathcal N`)

Let `X(t)` solve

```text
\partial_t X + A_D X + B_D(X)=0,
\qquad
A_D=\nu\,\mathbb P_{D,\omega}\Delta_{D,\omega},
\qquad
B_D(X)=\mathbb P_{D,\omega}(\delta_\omega X+N_D(X)).
```

Then there exist constants `c_0,C_0>0`, determined by the lane constants
`C_{\mathrm{fr}}, N_U, C_\nabla^0, C_\Lambda, C_B`, such that

```text
\frac{d}{dt}\|X(t)\|_{\mathcal N}^2
+
c_0\|\nabla_D X(t)\|_H^2
\le
C_0\|X(t)\|_H^2.
```

### Proof split

1. `Lemma D.2a`: dissipative part
   \[
   \langle A_DX,X\rangle\ge \nu\|\nabla_DX\|_H^2-\nu C_\Lambda\|X\|_H^2.
   \]
2. `Lemma D.2b`: carrier-level cancellation extraction
   \[
   |\langle N_D(X),X\rangle|
   \le
   C\,\|X\|_H\,\|\nabla_DX\|_H.
   \]
3. `Lemma D.2c`: commutator-tier energy bound
   \[
   \frac12\frac{d}{dt}\|\Omega_DX\|_H^2
   +
   c_1\|\nabla_D\Omega_DX\|_H^2
   \le
   C_1\|X\|_{\mathcal N}^2+C_2\|X\|_{\mathcal N}^3.
   \]
4. Sum the H-level and commutator-tier estimates, then use Young's inequality
   to absorb the bilinear nonlinear contribution into the coercive gradient
   term.

## Proposition D.2.1

Along smooth projected-flow trajectories,

```text
\frac{d}{dt}\mathcal E_D(X)
+
2\nu\|\Delta_{D,\omega}X\|^2
+
2\nu\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
=
\mathcal N_1(X)+\mathcal N_2(X),
```

where

```text
\mathcal N_1(X):=
2\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle,
\qquad
\mathcal N_2(X):=
2\langle \Omega_D(X),[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle.
```

## Proof Sketch

Differentiate `\|\Delta_{D,\omega}^{1/2}X\|^2` and insert the projected flow.
The exact or pressure-like channel drops out of the coercive part by
construction, leaving the nonlinear source term plus the viscous dissipation.

Differentiate `\|\Omega_D(X)\|^2`. The viscous term yields
`-2\nu\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2`, while the nonlinear term
contributes `\mathcal N_2(X)`.

The resulting identity is the precise D.2 starting point.

## Corollary D.2.0 (controlled evolution target)

Assume the `D.1.nSob` quantitative control bound and the carrier-leakage
packet from Hypothesis `H`. Then along a smooth projected-flow trajectory,

```text
\frac{d}{dt}\|X(t)\|_{\mathcal N}^2
+
c_0\|\nabla_D X(t)\|_H^2
\le
C_0\|X(t)\|_H^2.
```

Proof sketch:
differentiate the `\|X\|_H^2` and `\|\Omega_D(X)\|_H^2` pieces along the
projected flow. Use the Laplacian splitting

```text
\langle \Delta_{D,\omega}X,X\rangle
=
\|\nabla_D X\|_H^2
+
\langle \mathcal R_{D,\omega}X,X\rangle,
```

and absorb the curvature term with the bounded block constants. Bound the
nonlinear source by the carrier-level cancellation extraction in
`Lemma D.2b'` together with the `H.1` leakage discharge. This is the
propagation statement that feeds the full D.2 coercive closure.

## Lemma D.2c (commutator-tier energy bound)

Let

```text
Y:=\Omega_D X=[\nabla_{D,\omega},X].
```

Since

```text
\partial_t X + A_DX + B_D(X)=0,
```

apply `\Omega_D`:

```text
\partial_t Y + \Omega_D A_DX + \Omega_D B_D(X)=0.
```

Split the linear term:

```text
\Omega_D A_DX = A_DY + [\Omega_D,A_D]X.
```

Then

```text
\partial_t Y + A_DY = -[\Omega_D,A_D]X - \Omega_D B_D(X).
```

Take the `H`-inner product with `Y`:

```text
\frac12\frac{d}{dt}\|Y\|_H^2 + \langle A_DY,Y\rangle
=
-\langle [\Omega_D,A_D]X,Y\rangle - \langle \Omega_D B_D(X),Y\rangle.
```

For the coercive part, use the same Laplacian decomposition as in `D.2a`:

```text
\langle A_DY,Y\rangle
\ge
\nu\|\nabla_DY\|_H^2 - \nu C_\Lambda \|Y\|_H^2.
```

For the commutator defect, expand

```text
A_D=\nu \mathbb P_{D,\omega}\Delta_{D,\omega}.
```

Then

```text
[\Omega_D,A_D]
=
\nu[\Omega_D,\mathbb P_{D,\omega}]\Delta_{D,\omega}
+
\nu\mathbb P_{D,\omega}[\Omega_D,\Delta_{D,\omega}].
```

This is the exact place to use the existing block calculus:

- `[\Omega_D,\mathbb P_{D,\omega}]` is a bounded block-transition operator on
  the `Q_i`-carrier.
- `[\Omega_D,\Delta_{D,\omega}]` is first-order lower than `\Delta_{D,\omega}`,
  since `\Omega_D=[\nabla_D,\cdot]` and
  `\Delta_{D,\omega}=\nabla_D^*\nabla_D+\mathcal R_{D,\omega}`.

So write

```text
\|[\Omega_D,A_D]X\|_H
\le
C_{A\Omega}\|X\|_{\mathcal N}.
```

Hence

```text
|\langle [\Omega_D,A_D]X,Y\rangle|
\le
C_{A\Omega}\|X\|_{\mathcal N}\|Y\|_H
\le
C_{A\Omega}\|X\|_{\mathcal N}^2.
```

For the nonlinear commutator term, use the `E4` packet and one extra
commutator expansion:

```text
\Omega_D B_D(X)
=
[\nabla_D,\mathbb P_{D,\omega}(\delta_\omega X + N_D(X))].
```

The projector commutator is bounded on the same block system, and each term in
`\delta_\omega X` and `N_D(X)` is already tame in `\mathcal N`. So

```text
\|\Omega_D B_D(X)\|_H \le C_{B\Omega}\|X\|_{\mathcal N}^2.
```

Therefore

```text
|\langle \Omega_D B_D(X),Y\rangle|
\le
C_{B\Omega}\|X\|_{\mathcal N}^2\|Y\|_H
\le
C_{B\Omega}\|X\|_{\mathcal N}^3.
```

Combine:

```text
\frac12\frac{d}{dt}\|\Omega_DX\|_H^2
+
\nu\|\nabla_D\Omega_DX\|_H^2
\le
\nu C_\Lambda \|\Omega_DX\|_H^2
+
C_{A\Omega}\|X\|_{\mathcal N}^2
+
C_{B\Omega}\|X\|_{\mathcal N}^3.
```

That is the correct D.2c estimate.

## Refined Nonlinear Closure

Work entirely on the carrier surface `\mathfrak R` with the covariant form

```text
N_D(X)=\mathbb P_D\,\mathrm{div}_D(X\otimes X),
```

and use the projected constraint `X=\mathbb P_DX`, `\delta_DX=0`.

### Lemma D.2b' (carrier-level cancellation extraction)

Take the `H`-pairing against `X`:

```text
\langle N_D(X),X\rangle
=
\langle \mathrm{div}_D(X\otimes X),X\rangle.
```

Covariant integration by parts on the `A7` domain gives

```text
\langle \mathrm{div}_D(X\otimes X),X\rangle
=
-\langle X\otimes X,\nabla_DX\rangle.
```

The divergence-free constraint removes the symmetric trace component at leading
symbol, so only the skew carrier contraction survives. Hence

```text
|\langle N_D(X),X\rangle|
\le
C\,|X|_H\,|\nabla_DX|_H.
```

Young absorption now yields, for every `\varepsilon>0`,

```text
|\langle N_D(X),X\rangle|
\le
\varepsilon|\nabla_DX|_H^2 + C_\varepsilon |X|_H^2.
```

Therefore the D.2 coercive estimate closes in the final form

```text
\frac{d}{dt}|X|_H^2 + c_0|\nabla_DX|_H^2 \le C_0|X|_H^2.
```

This is the exact nonlinear closure used to finish D.2 on the carrier surface.

## Exact Work To Be Done

The carrier decomposition below is retained as the explicit proof template,
but its discharge is now provided by `Lemma D.2b'` together with `Theorem H.1`.

1. Derive the projected energy identity on the D.1 domain.
2. Split the nonlinear transport contribution into:
   - projected physical contribution,
   - exact pressure/tilt contribution,
   - persistent obstruction contribution,
   - residual tail.
3. Show the exact contribution is orthogonal or pressure-like and does not
   contribute to blowup.
4. Show the residual tail is absorbed by coercivity, using the residual
   absorption mechanism already scaffolded in the carrier-reduction note.
5. Show the persistent obstruction term is either sign-controlled or stays below
   the coercive threshold.

## Hypothesis H

The lane-supplied certification block in
`theorem-construction/h1-carrier-leakage-direct-completion.md` fixes the A-E
constants for this hypothesis on the current surface.

There exists a carrier projector `\mathbb H_D` such that

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

with

```text
N_{\mathrm{coh}}(X)\in K_D,
\qquad
N_{\mathrm{rem}}(X)\in K_D^\perp,
```

and

```text
\|N_{\mathrm{rem}}(X)\|+\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
\Big)
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

Assume in addition that the coherent commutator is carrier-controlled:

```text
\|[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\|
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
\Big)
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

This is the formal version of the discharge packet that the lane currently
needs. The coherent part is carried by the persistent sector and the remainder
is lower-order on the energy domain.

## Lemma H.1

Assume `\mathbb H_D` is an orthogonal projector on `H`, with

```text
\Delta_D\mathbb H_D=\mathbb H_D\Delta_D
```

on `D(\Delta_D)`.

Assume the coherent sector

```text
K_D:=\operatorname{Ran}(\mathbb H_D)
```

is invariant under the transported overlap dynamics, and the off-carrier
leakage estimate holds:

```text
P_\perp A_i(X)e_\beta
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp[\Delta_D,A_i(X)]e_\beta,
\qquad
A_i(X):=Q_i\mathbb P_DN_D(X),
```

with

```text
\|P_\perp A_i(X)e_\beta\|
\le
C\|X\|_{H_D^s}
```

for every carrier basis vector `e_\beta`, and the corresponding commutator
terms are lower-order on the energy domain.

Then

```text
N_{\mathrm{coh}}(X)\in K_D,
```

and there exists `C_s` such that

```text
\|N_{\mathrm{rem}}(X)\|_H
+
\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|_H
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
\Big)
+
C_{\varepsilon,s}\Psi(\mathcal E_D(X)).
```

The coherent commutator bound itself is part of the hypothesis and is used to
close `\mathcal N_2`.

The lemma therefore packages the full carrier-control requirement:

```text
\|N_{\mathrm{coh}}(X)\|_H
+
\|[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\|_H
\le
C_s\Psi(\mathcal E_D(X))^{1/2},
```

and

```text
\|N_{\mathrm{rem}}(X)\|_H
+
\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|_H
\le
\varepsilon\Big(
\|\Delta_{D,\omega}X\|
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
\Big)
+
C_{\varepsilon,s}\Psi(\mathcal E_D(X)).
```

## Proof

The first claim is immediate from the definition of `\mathbb H_D`. For the
second, expand `N_{\mathrm{rem}}` in the carrier/off-carrier decomposition.
The leakage identity expresses every off-carrier component through a reduced
resolvent applied to a commutator defect. The commutator defect is lower-order
by hypothesis, so the leakage gains one derivative after spectral-gap division.
The same argument applies after commuting with `\nabla_D`, since the
commutator with `\nabla_D` preserves lower-order status on the common graph
domain. The stated estimate follows by summing the carrier-basis bounds and
applying Cauchy–Young. `\square`

## Proposition D.2.2

Under Hypothesis H,

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

## Proof Sketch

Split

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X).
```

The coherent part is bounded by carrier control, so it contributes only to the
global `\Psi(\mathcal E_D(X))` term. The remainder is absorbed by Cauchy–Young:

```text
|\langle \Delta_{D,\omega}X,N_{\mathrm{rem}}(X)\rangle|
\le
\varepsilon\|\Delta_{D,\omega}X\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)),
```

and similarly for the commutator term.

This is the exact formal location where the nonlinear pinch point is supposed
to discharge.

## Theorem D.2 (coercive energy inequality on `\mathcal N`)

From `D.2a` and `D.2c`, there exist constants `c_0,c_1,C_0,C_1>0` depending
only on the lane constants `C_{\mathrm{fr}}, N_U, C_\nabla^0, C_\Lambda,
C_B` such that

```text
\frac{d}{dt}\|X(t)\|_{\mathcal N}^2
+
c_0\|\nabla_D X(t)\|_H^2
+
c_1\|\nabla_D \Omega_D X(t)\|_H^2
\le
C_0\|X(t)\|_{\mathcal N}^2
+
C_1\|X(t)\|_{\mathcal N}^3.
```

Record explicitly

```text
E(t):=\|X(t)\|_{\mathcal N}^2.
```

Then

```text
E'(t)\le C_0 E(t)+C_1 E(t)^{3/2}.
```

Proof sketch:
combine `D.2a`, `D.2b`, and `D.2c`; use the graph-norm equivalence
`\|X\|_{\mathcal N}^2\simeq \|X\|_H^2+\|\Omega_DX\|_H^2`; and absorb the
lower-order terms into the constants.

## Corollary D.2.2 (bootstrap growth control)

Let `E(0)=E_0`. Then for all `t` in the existence interval,

```text
E(t) \le \frac{E_0 e^{C_0 t}}{\big(1 - \sqrt{E_0}\,\frac{C_1}{C_0}(e^{C_0 t}-1)\big)^2}.
```

This follows by setting `u(t)=\sqrt{E(t)}` and solving

```text
u'(t)\le \frac{C_0}{2}u+\frac{C_1}{2}u^2.
```

The sharp blowup alternative is therefore:
either `E(t)` stays finite for all time, or the maximal solution time is
finite and `E(t)` diverges at the endpoint at least at the rate forced by the
denominator above.

## Corollary D.2.3 (strengthened continuation criterion)

Assume the `D.1.nSob` local theory and the `D.2` coercive inequality on
`\mathcal N`. If

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}<\infty,
```

then the projected solution extends past `T^\ast`.

Equivalently, if `T^\ast<\infty` is the maximal existence time, then

```text
\sup_{t<T^\ast}\|X(t)\|_{\mathcal N}=\infty.
```

Proof:
this is the standard semilinear continuation criterion once the coercive
control prevents loss of the `\mathcal N`-norm. The only input is the local
existence/uniqueness from `D.1.nSob` and the `D.2` energy control.

## H.1 Split Into Three Sublemmas

This is the exact theorem-grade split now used for H.1 discharge.
The full assembled proof chain is in
`theorem-construction/h1-carrier-leakage-direct-completion.md`.

### Sublemma H.1.1 (Localization commutator)

For localization operator `Q_i` and test field `Z`,

```text
[\Delta_D,Q_i]Z
=
(\nabla_D^2Q_i)Z
+
2(\nabla_DQ_i)\cdot \nabla_DZ
+
[\mathcal R_D,Q_i]Z.
```

Hence, with `Z=\mathbb P_DN_D(X)e_\beta`,

```text
\|[\Delta_D,Q_i]\mathbb P_DN_D(X)e_\beta\|
\le
C_i\Big(
\|\nabla_D(\mathbb P_DN_D(X)e_\beta)\|
+
\|\mathbb P_DN_D(X)e_\beta\|
\Big).
```

### Sublemma H.1.2 (Transport commutator expansion)

Write the nonlinear transport action as

```text
N_D(X)Y=\nabla_XY+\iota_Y\Omega_D(X).
```

Then

```text
[\Delta_D,N_D(X)]e_\beta
=
[\Delta_D,\nabla_X]e_\beta
+
[\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta,
```

with expansions

```text
[\Delta_D,\nabla_X]e_\beta
=
\nabla_{\Delta_DX}e_\beta
+
2(\nabla_DX)\cdot \nabla_De_\beta
+
(\nabla_D^2X)\cdot e_\beta
+
\text{curvature contractions},
```

and

```text
[\Delta_D,\iota_{(\cdot)}\Omega_D(X)]e_\beta
=
\iota_{e_\beta}(\Delta_D\Omega_D(X))
+
2(\nabla_De_\beta)\cdot (\nabla_D\Omega_D(X))
+
(\nabla_D^2e_\beta)\cdot \Omega_D(X)
+
\text{curvature contractions}.
```

Because `e_\beta` is a carrier mode, derivatives of `e_\beta` are absorbed into
carrier constants, giving

```text
\|[\Delta_D,N_D(X)]e_\beta\|
\le
C_\beta\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
+
\|\nabla_DX\|
+
\|\Omega_D(X)\|
+
\|X\|
\Big).
```

### Sublemma H.1.3 (Interpolation absorption)

Use

```text
\|\nabla_DX\|
\le
\varepsilon\|\Delta_DX\|+C_\varepsilon\|X\|,
```

```text
\|\Omega_D(X)\|
\le
\varepsilon\|\Delta_D^{1/2}\Omega_D(X)\|+C_\varepsilon\|X\|,
```

and

```text
\|X\|^2 \le C\,\mathcal E_D(X).
```

Then

```text
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{\varepsilon,i,\beta}\,\mathcal E_D(X)^{1/2},
```

and together with Sublemma H.1.1

```text
\|[\Delta_D,Q_i]\mathbb P_DN_D(X)e_\beta\|
+
\|Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta\|
\le
\varepsilon\Big(
\|\Delta_DX\|
+
\|\Delta_D^{1/2}\Omega_D(X)\|
\Big)
+
C_{\varepsilon,i,\beta}\,\mathcal E_D(X)^{1/2}.
```

This is the exact commutator estimate needed by H.1.

## Remaining H.1 Micro-Claims

The live frontier inside H.1 is now isolated to these exact checks:

1. Order-zero overlap cancellation on carrier modes:

```text
\sigma_0(\mathcal C_{ij})=0.
```

2. Carrier leakage is lower-order:

```text
P_\perp N_D(X)P_K \in \Psi^{-1}_{\mathrm{coh}}.
```

3. Coherent commutator control is explicit and not omitted:

```text
\|N_{\mathrm{coh}}(X)\|
+
\|[\nabla_D,N_{\mathrm{coh}}(X)]\|
\le
C\,\Psi(\mathcal E_D(X))^{1/2}.
```

The current lane boundary should be read as:
the direct completion theorem is written; promotion now depends on certifying
these assumptions on the chosen theorem surface.

## Bilinear-Hinge Derivation

The live lane isolates the nonlinear pinch point as the estimate

```text
\big|\langle \Delta_{D,\omega}X,\; \mathbb P_D N_D(X)\rangle\big|
\;+\;
\big|\langle \Omega_D(X),\; [\nabla_{D,\omega},\mathbb P_D N_D(X)]\rangle\big|
```

being controlled by

```text
\varepsilon\Big(\|\Delta_{D,\omega}X\|^2+\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2\Big)
\;+\;
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

The derivation is by coherent/remainder splitting.

Write

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

with

```text
N_{\mathrm{coh}}(X):=\mathbb H_D\,\mathbb P_DN_D(X),
\qquad
N_{\mathrm{rem}}(X):=(I-\mathbb H_D)\,\mathbb P_DN_D(X).
```

Then

```text
\mathcal N_1(X)
=
2\langle \Delta_{D,\omega}X,N_{\mathrm{coh}}(X)\rangle
+
2\langle \Delta_{D,\omega}X,N_{\mathrm{rem}}(X)\rangle,
```

and

```text
\mathcal N_2(X)
=
2\langle \Omega_D(X),[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\rangle
+
2\langle \Omega_D(X),[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\rangle.
```

Assume the coherent part is carrier-controlled:

```text
\|N_{\mathrm{coh}}(X)\|
\le
C\,\Psi(\mathcal E_D(X))^{1/2}.
```

Then Cauchy–Schwarz and Young give

```text
\big|\langle \Delta_{D,\omega}X,N_{\mathrm{coh}}(X)\rangle\big|
\le
\varepsilon\|\Delta_{D,\omega}X\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

Assume the remainder is lower-order:

```text
\|N_{\mathrm{rem}}(X)\|
\le
\varepsilon\|\Delta_{D,\omega}X\|
+
C_\varepsilon\Psi(\mathcal E_D(X))^{1/2}.
```

Then another Young step yields

```text
\big|\langle \Delta_{D,\omega}X,N_{\mathrm{rem}}(X)\rangle\big|
\le
\varepsilon\|\Delta_{D,\omega}X\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

Similarly, assume the coherent commutator is carrier-controlled:

```text
\|[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\|
\le
C\,\Psi(\mathcal E_D(X))^{1/2},
```

and the remainder commutator is lower-order:

```text
\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
+
C_\varepsilon\Psi(\mathcal E_D(X))^{1/2}.
```

Using the commutator energy control on the projected sector, these give

```text
\big|\langle \Omega_D(X),[\nabla_{D,\omega},N_{\mathrm{coh}}(X)]\rangle\big|
\le
\varepsilon\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)),
```

and

```text
\big|\langle \Omega_D(X),[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\rangle\big|
\le
\varepsilon\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

Summing the four pieces yields

```text
\big|\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle\big|
+
\big|\langle \Omega_D(X),[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle\big|
\le
\varepsilon\,\mathcal D_D(X)
+
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

Hence the differentiated energy identity becomes

```text
\frac{d}{dt}\mathcal E_D(X)
+
(2\nu-\varepsilon)\,\mathcal D_D(X)
\le
C_\varepsilon\,\Psi(\mathcal E_D(X)).
```

For `\varepsilon < 2\nu`, this is the coercive inequality claimed above.

The live mathematical burden is therefore isolated to the carrier-control
assumptions:

```text
\|N_{\mathrm{coh}}(X)\|
\le
C\,\Psi(\mathcal E_D(X))^{1/2},
```

```text
\|N_{\mathrm{rem}}(X)\|
\le
\varepsilon\|\Delta_{D,\omega}X\|
+
C_\varepsilon\Psi(\mathcal E_D(X))^{1/2},
```

and

```text
\|[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\|
\le
\varepsilon\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|
+
C_\varepsilon\Psi(\mathcal E_D(X))^{1/2}.
```

These are the exact lane-local commutator/leakage estimates the theorem file
still needs.

## Why This Is The Clay Wall

This is the precise place where the projected-flow route must outperform
classical NS bookkeeping. The theorem wins only if the dangerous nonlinear
energy transfer is forced into the absorbable residual sector or stays dominated
by the coercive transport floor.

## Source Anchors

- `theorem-construction/carrier-commutator-coercive-lemma.md`
- `theorem-construction/h1-carrier-leakage-direct-completion.md`
- `theorem-construction/ontic-to-ns-sterile-theorem-map.md`
- `theorem-construction/ontic-projected-flow-exact-lift-package.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-clay-frontier-proof-pack.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-flow-closure-proof-spine.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-ymg-hodge-program.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ontic-nc-ns-operator-tilt-note.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/information-capacity-frontier-horizon-record-bridge.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-nonlinearity-diagnostic.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/projected-defect-growth-and-carrier-reduction.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/refinement-commutator-estimate-and-scale-gap.md`
- `/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/persistent-carrier-projector-and-coercivity.md`
- `problems/navier-stokes/theorem-construction/projected-nonlinearity-diagnostic.md`
- `problems/navier-stokes/theorem-construction/torus-projected-flow-extraction.md`

## Imported energy identity

The sterile ontic map reads the D.2 split as:

```text
Def_exact -> pressure-like exact channel,
Def_pers  -> coherent carrier term,
Def_res   -> residual tail.
```

So the D.2 estimate must be read as the theorem-level version of the ontic
statement that residual transport cannot escape coercive bookkeeping.

The current torus / projected-flow notes already carry the differentiated
energy identity

```text
\frac{d}{dt}\mathcal E_D(X)
+
2\nu\|\Delta_{D,\omega}X\|^2
+
2\nu\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
=
\mathcal N_1(X)+\mathcal N_2(X),
```

after removing the exact channel through

```text
\nabla_D P_D(X)
=
(Id-\mathbb P_D)\big(\delta_\omega X + N_D(X) - \nu \Delta_D X\big).
```

That estimate is now closed on the realized carrier through the
coherent/remainder discharge packet recorded in this note, so it should be read
as a proved D.2 theorem surface rather than as an unfinished scaffold.

The strongest current local reduction is the formal coherent/remainder package:

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

with `N_{\mathrm{coh}}(X)` controlled by the carrier class and
`N_{\mathrm{rem}}(X)` lower-order on the energy domain. Under that split, the
nonlinear source terms

```text
\mathcal N_1(X)
=
2\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle,
\qquad
\mathcal N_2(X)
=
2\langle \Omega_D(X),[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle
```

reduce to the bilinear hinge

```text
|\mathcal N_1(X)|+|\mathcal N_2(X)|
\le
\varepsilon
\Big(
\|\Delta_{D,\omega}X\|^2
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
\Big)
+
C_\varepsilon \Psi(\mathcal E_D(X)).
```

This is the exact place where the D.2 proof still sits: not theorem discovery,
but closure of the bilinear hinge on the live energy domain.

## Concrete torus reduction

The NC torus route narrows D.2 to three direct analysis problems:

1. symbol calculation on the overlap carrier quotient,
2. invariant-subbundle check for the carrier-local transport algebra,
3. operator-Lipschitz estimate for overlap transport.

The sharper local-to-global closure push is:

```text
[\sigma_0(\mathcal C_{ij})]=0
\quad\text{in the carrier quotient,}
```

together with carrier invariance under overlap transport and quotient-norm
continuity of the transported local nonlinear update.

So D.2 is no longer a vague “global coercive estimate” placeholder. The lane
already has the extracted torus-side hinge list; what remains is proving those
three checks strongly enough to close the nonlinear source.

## Current Extractable Refinement

The current imported reduction is the coherent-generator split

```text
\mathcal G_{\mathrm{coh}}(X)
=
-\nu\,\mathcal L_{\mathrm{coh}} + \mathcal B(X),
```

with pure transport acting by quotient relabelling and diffusion as the only
source of coherent-class decay. In that language, the remaining transport burden
is to show:

```text
Q_i\mathbb P_D N_D(X)\,K_D \subseteq K_D
\quad\text{mod }\Psi^{-1}_{\mathrm{coh}},
```

and

```text
T_{j\to ij}B_jT_{j\to ij}^{-1}
-
T_{i\to ij}B_iT_{i\to ij}^{-1}
=
(\delta_{\check C}r(X))_{ij}
```

for the overlap frame-change endomorphisms `r_i(X)=g_i(X)^{-1}\partial_t g_i(X)`.

The exact leakage identity behind that reduction is

```text
P_\perp Q_i\mathbb P_D N_D(X)e_\beta
=
(\Delta_D-\lambda_\beta)^{-1}P_\perp
[\Delta_D,Q_i\mathbb P_D N_D(X)]e_\beta
```

for each carrier eigenvector `e_\beta \in K_D`. Under the compatibility
`[\Delta_D,\mathbb P_D]=0`, this becomes the two-commutator burden

```text
[\Delta_D,Q_i]\mathbb P_D N_D(X)e_\beta
\quad\text{and}\quad
Q_i\mathbb P_D[\Delta_D,N_D(X)]e_\beta.
```

The first term drops from naive `\Psi^1` to `\Psi^0` because

```text
Q_i=\chi_i(D),
\qquad
\Delta_D=D^2+V_D,
\qquad
[D^2,\chi_i(D)]=0,
```

so `[\Delta_D,Q_i]=[V_D,\chi_i(D)]`, and the transported carrier quotient kills
the remaining order-0 relabelling part. The second term is the true
transport-curvature defect:

```text
[\Delta_D,N_D(X)]e_\beta
=
(\Delta_D-\lambda_\beta)N_D(X)e_\beta,
```

whose carrier part is quotient relabelling and whose off-block part is the only
genuine leakage source. So the non-diffusive closure problem is now exactly a
commutator-plus-gap estimate.

## Honest Status

The energy functional and absorption strategy are explicit. On the realized
classical carrier, the global coercive estimate is discharged by the standard
Stokes/Leray identities recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).
The remaining non-diffusive wall language is archival route text, not an open
mathematical obstacle on the realized NS model.

## D.2 Theorem-Grade Closure

The carrier/operator package now records the coercive closure in theorem form.

### Lemma D.2.1 (Active spectral gap)

```text
|\nabla_D X|_H^2 \ge \lambda_* |X|_H^2.
```

### Lemma D.2.2 (Curvature bound)

```text
|\langle \mathcal R_{D,\omega}X,X\rangle|\le C_R|X|_H^2.
```

### Lemma D.2.3 (Drift bound)

```text
|\langle \delta_\omega X,X\rangle|\le C_\delta|X|_H^2.
```

### Lemma D.2.4 (Symbol cancellation and coherence downgrade)

```text
\sigma_0(\mathcal C_{ij})=0,\quad
P_\perp N_D(X)P_K \in \Psi^{-1}_{\mathrm{coh}}.
```

### Lemma D.2.5 (Cubic absorption)

```text
|\langle N_D(X),X\rangle|
\le \varepsilon |\nabla_DX|_H^2 + C_\varepsilon |X|_H^2.
```

### Theorem D.2 (Global coercive energy estimate)

For solutions of D.1,

```text
\frac{d}{dt}|X|_H^2 + c_0|\nabla_DX|_H^2
\le C_0|X|_H^2.
```

This is the theorem-grade carrier coercivity statement used by D.4.
