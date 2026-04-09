# Strict-Shadow No-ShadowDef Corollary

## Purpose

This note isolates one exact consequence of the strict-shadow package already
present in the lane:

```math
\boxed{
\text{under the exact strict-shadow hypotheses, the weak-form remainder }
\mathrm{ShadowDef}(X)\text{ vanishes.}
}
```

So the weak robustness branch and the exact strict-shadow branch should not be
merged.

## Strict-shadow hypotheses

Let `u=\mathcal C(X)`.
Assume the exact strict-shadow identities

```math
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u,
\tag{1}
```

```math
\mathcal C(\nabla_X X)=(u\cdot\nabla)u,
\qquad
\mathcal C(\iota_X\Omega_D^{\mathrm{nc}}(X))=0.
\tag{2}
```

Write

```math
N_D(X)=\nabla_X X+\iota_X\Omega_D^{\mathrm{nc}}(X).
\tag{3}
```

Then

```math
\mathcal C(N_D(X))=(u\cdot\nabla)u,
\qquad
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{4}
```

These are exactly the identities carried in

- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md),
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md),
- [theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md),
- [torus-ns-conditional-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/torus-ns-conditional-shadow-theorem.md).

## Corollary

Under the strict-shadow hypotheses `(1)`-`(4)`, the weak-form D.3 remainder

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X)
\tag{5}
```

collapses to

```math
\mathrm{ShadowDef}(X)=0.
\tag{6}
```

Equivalently,

```math
\mathcal C(\mathcal L_D(X))=\mathrm{classical\_NS}(u).
\tag{7}
```

## Proof

Under strict shadow, the nonlinear part descends exactly:

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{8}
```

The exact/projection terms also descend exactly:

```math
\mathcal C(\partial_t X)=\partial_t u,
\qquad
\mathcal C(\Delta_DX)=\Delta u,
\qquad
\mathcal C(\mathbb P_DX)=\mathbb P_{\mathrm{Leray}}u.
\tag{9}
```

So after applying `\mathcal C` to the projected `NC` flow, every surviving term
is already part of the classical incompressible Navier--Stokes operator on `u`.

The weak-form placeholders

```math
\nabla p_{\mathrm{shadow}},
\qquad
\mathrm{CurvShadow}(X),
\qquad
\mathrm{TailShadow}(X)
\tag{10}
```

belong to the weaker robustness branch, where exact descent is not assumed.
Under the strict-shadow identities, there is no leftover sector for them to
occupy.

Hence

```math
\mathrm{ShadowDef}(X)=0.
\tag{11}
```

## Meaning

This corollary does **not** prove that the strict-shadow hypotheses are true on
the active carrier class.

It proves something narrower and exact:

```math
\boxed{
\text{if the strict-shadow identities hold, then the D.3 weak remainder disappears identically.}
}
\tag{12}
```

So Route A and Route B are genuinely different theorem branches.
