# Formal Package: Ontic Projected Flow, Exact Lift, Classical Corollary

## Status

This is the strongest formal package currently derivable from the live NS lane
surfaces.

It is theorem-bearing local package material, not a discharged proof.
Its job is to state the projected-flow route in the sharpest theorem order now
supported on the lane:

```text
ontic theorem first,
exact lift package second,
classical theorem as corollary third.
```

The concrete realization and exact pullback surface is recorded in
[carrier-realization-classical-identification.md](carrier-realization-classical-identification.md).

## I. Ontic projected-flow package

Work on the projected physical sector

```text
\mathcal V_{D,\omega}
:=
\{X\in \operatorname{Dom}(\mathbb P_{D,\omega}) : X=\mathbb P_{D,\omega}X\}.
```

Let

```text
\mathcal L_D(X)
:=
\mathbb P_{D,\omega}\big(\delta_\omega X+N_D(X)-\nu \Delta_{D,\omega}X\big),
```

with domain

```text
\operatorname{Dom}(\mathcal L_D)
=
\mathcal V_{D,\omega}
\cap
\operatorname{Dom}(\delta_\omega)
\cap
\operatorname{Dom}(\nabla_{D,\omega})
\cap
\operatorname{Dom}(\Delta_{D,\omega}).
```

Assume the projected flow

```text
\partial_t X+\mathcal L_D(X)=0,
\qquad
X(0)=X_0,
```

is well-posed on `\mathcal V_{D,\omega}`.

Assume also a transport-coherent carrier sector

```text
K_D \subset \mathcal V_{D,\omega},
\qquad
\mathcal V_{D,\omega}=K_D\oplus K_D^\perp,
```

with

```text
\Delta_{D,\omega}K_D\subseteq K_D,
\qquad
\langle \Delta_{D,\omega}Y,Y\rangle \ge c_D\|Y\|^2
\quad (Y\in K_D^\perp),
```

and coherent/remainder split

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X),
```

where

```text
N_{\mathrm{coh}}(X)\in K_D,
\qquad
N_{\mathrm{rem}}(X)\in K_D^\perp,
```

and `N_{\mathrm{rem}}(X)` is lower-order on the energy domain.

Define

```text
\mathcal E_D(X)
:=
\|\Delta_{D,\omega}^{1/2}X\|^2+\|\Omega_D(X)\|^2,
\qquad
\Omega_D(X):=[\nabla_{D,\omega},X].
```

Then the differentiated identity

```text
\frac{d}{dt}\mathcal E_D(X)
+
2\nu\|\Delta_{D,\omega}X\|^2
+
2\nu\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
=
\mathcal N_1(X)+\mathcal N_2(X)
```

reduces to the coercive estimate

```text
\frac{d}{dt}\mathcal E_D(X)
+
c_D\Big(
\|\Delta_{D,\omega}X\|^2
+
\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
\Big)
\le
C\,\Psi(\mathcal E_D(X)),
```

provided the bilinear hinge closes:

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

The formal reduction is

```text
\mathcal N_1(X)
=
2\langle \Delta_{D,\omega}X,\mathbb P_DN_D(X)\rangle,
\qquad
\mathcal N_2(X)
=
2\langle \Omega_D(X),[\nabla_{D,\omega},\mathbb P_DN_D(X)]\rangle.
```

Split

```text
\mathbb P_DN_D(X)=N_{\mathrm{coh}}(X)+N_{\mathrm{rem}}(X).
```

The coherent term is handled by carrier bookkeeping and bounded by the
persistent sector norm. The remainder term is lower-order, so

```text
|\langle \Delta_{D,\omega}X,N_{\mathrm{rem}}(X)\rangle|
\le
\varepsilon\|\Delta_{D,\omega}X\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)),
```

and

```text
|\langle \Omega_D(X),[\nabla_{D,\omega},N_{\mathrm{rem}}(X)]\rangle|
\le
\varepsilon\|\Delta_{D,\omega}^{1/2}\Omega_D(X)\|^2
+
C_\varepsilon\Psi(\mathcal E_D(X)).
```

So the ontic package yields

```text
\sup_{t\in[0,T)}\mathcal E_D(X(t))<\infty
```

once the bilinear hinge is discharged.

## II. Exact lift package

Let

```text
u:=\mathcal C(X),
```

with `\mathcal C` the strict shadow functor.

The exact lift package is

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

The projector intertwining relation is therefore

```text
\mathcal C\circ \mathbb P_D
=
\mathbb P_{\mathrm{Leray}}\circ \mathcal C,
```

equivalently

```text
\mathbb P_{\mathrm{Leray}}(\mathcal C(X))
=
\mathcal C(\mathbb P_DX).
```

This is the exact statement that the ontic incompressibility projector
descends to the classical Leray projector. The projected classical operator
form is then

```text
\partial_t u-\nu\Delta u+\mathbb P_{\mathrm{Leray}}\big((u\cdot\nabla)u\big)=0.
```

The nonlinear identity is read through

```text
N_D(X)=\nabla_XX+\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X),
```

together with

```text
\mathcal C(\nabla_XX)=(u\cdot\nabla)u
```

and

```text
\mathcal C(\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X))=0.
```

In the torus model,

```text
X=\sum_n x_nU^n,
\qquad
U^mU^n=e^{-\pi i\,m\cdot \Theta n}U^{m+n},
```

and the pure NC interaction defect has the form

```text
R_\Theta(X)
=
\sum_{j,m,n}
n_j\sigma^j x_mx_n
\big(e^{-\pi i\,m\cdot\Theta n}-1\big)U^{m+n}.
```

Under strict shadow,

```text
\mathcal C\big((e^{-\pi i\,m\cdot\Theta n}-1)U^{m+n}\big)=0,
```

so

```text
\mathcal C(R_\Theta(X))=0
\quad\text{and hence}\quad
\mathcal C(\iota_X\Omega^{\mathrm{nc}}_{D_\Theta}(X))=0.
```

Therefore

```text
\mathcal C(N_D(X))=(u\cdot\nabla)u,
```

and projector compatibility gives

```text
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
```

## III. Classical shadow theorem

Assume the ontic projected-flow package and the exact lift package.
Then `u=\mathcal C(X)` satisfies

```text
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u,
\qquad
\nabla\cdot u=0.
```

The proof is formal: apply `\mathcal C` to

```text
\partial_t X+\mathbb P_DN_D(X)=\nu\,\mathbb P_D\Delta_DX,
```

and use the exact lift identities.

## IV. Classical continuation from ontic control

Assume in addition the continuation-level bound

```text
\sup_{t\in[0,T)}\|X(t)\|_{H_D^s}<\infty,
\qquad
s>\frac52.
```

Then

```text
\sup_{t\in[0,T)}\|u(t)\|_{H^s}<\infty.
```

Indeed, the norm comparison

```text
\|u\|_{H^s}\le C\|X\|_{H_D^s}
```

immediately gives bounded classical continuation norm. Hence

```text
\sup_{t\in[0,T)}\mathcal E_D(X(t))<\infty
\Longrightarrow
u(t)\text{ extends past }T
```

once the `H_D^s` continuation bound is available on the lane surface.

## V. Source-grounded route theorem in lift form

Here is the cleanest route-aligned theorem statement supported by the current
package.

**Theorem.**
Let

```text
u_0\in C_c^\infty(\mathbb R^3),
\qquad
\nabla\cdot u_0=0.
```

Assume:

1. projected ontic flow well-posedness on `\mathcal V_{D,\omega}`;
2. the coherent/remainder split for `\mathbb P_DN_D(X)` closes the D.2
   coercive estimate;
3. the exact lift package holds:

```text
\mathcal C(\partial_t X)=\partial_t u,\quad
\mathcal C(\Delta_DX)=\Delta u,\quad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,\quad
\mathcal C(\mathbb P_DN_D(X))=\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u),\quad
\|u\|_{H^s}\le C\|X\|_{H_D^s};
```

4. the ontic `H_D^s` norm stays globally bounded.

Then the classical shadow `u=\mathcal C(X)` is a global smooth solution of the
original 3D incompressible Navier-Stokes equation with initial data `u_0`.

The proof architecture is

```text
ontic global control
\to
exact lift to classical NS
\to
classical continuation
\to
global smooth classical solution.
```

## Honest status

This is the strongest formal derivation currently supported by the lane.

What is formal here:

- the ontic projected-flow route architecture,
- the exact lift package,
- the reduction of D.2 to the coherent/remainder bilinear hinge,
- the classical theorem as a corollary of ontic control plus exact lift.

What remains live burden:

- D.1 as a fully discharged lane-local well-posedness theorem,
- the D.2 bilinear hinge in fully closed theorem form,
- the continuation-level global `H_D^s` bound on a lane-local theorem surface.

## Local source anchors

- `theorem-construction/d1-projected-nc-flow-well-posedness.md`
- `theorem-construction/d2-global-coercive-energy-estimate.md`
- `theorem-construction/d3-commutative-shadow-theorem.md`
- `theorem-construction/d4-shadow-continuation-theorem.md`
- `theorem-construction/d5-clay-theorem-integration.md`
- `theorem-construction/classical-closure-warrant-carrier.md`
