# Strict Shadow Implies No ShadowDef

## Purpose

This note isolates one exact consequence of the strict-shadow Route `A`
hypotheses already present on the Navier--Stokes lane:

```math
\boxed{
\text{under the exact strict-shadow hypotheses, the weak-form }
\mathrm{ShadowDef}(X)\text{ vanishes.}
}
```

This does **not** prove the strict-shadow hypotheses themselves.
It proves that once those hypotheses hold, the weaker `ShadowDef` branch is no
longer a live remainder on the exact route.

## Exact strict-shadow hypotheses

Let `u=\mathcal C(X)`.
Assume the strict-shadow package recorded in:

- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md),
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md),
- [ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md),
- [theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md).

These hypotheses are:

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

Hence, writing

```math
N_D(X)=\nabla_X X+\iota_X\Omega_D^{\mathrm{nc}}(X),
\tag{3}
```

one has

```math
\mathcal C(N_D(X))=(u\cdot\nabla)u
\tag{4}
```

and therefore

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{5}
```

## Exact projected equation

Apply `\mathcal C` to the projected flow equation

```math
\partial_t X+\mathbb P_DN_D(X)=\nu\,\mathbb P_D\Delta_DX.
\tag{6}
```

Using `(1)` and `(5)` gives

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u.
\tag{7}
```

Equivalently,

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{8}
```

So on the strict-shadow surface the projected equation is the exact classical
Navier--Stokes equation.

## Comparison with the weak-form remainder package

The weaker readout package in
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
also writes

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X),
\tag{9}
```

with

```math
\mathrm{ShadowDef}(X)
=
\nabla p_{\mathrm{shadow}}
+
\mathrm{CurvShadow}(X)
+
\mathrm{TailShadow}(X).
\tag{10}
```

But on the exact strict-shadow surface, `(7)`-`(8)` show that the projected
equation already equals the classical one with no extra remainder.

Therefore the total weak-form remainder must vanish:

```math
\boxed{
\mathrm{ShadowDef}(X)=0
\qquad
\text{under the strict-shadow hypotheses.}
}
\tag{11}
```

## Exact meaning

Equation `(11)` does **not** say that each named term in `(10)` vanishes
separately under every representation.

It says the following, which is exactly what the theorem route needs:

```math
\boxed{
\text{on the exact strict-shadow branch, there is no surviving projected remainder.}
}
\tag{12}
```

So the objects

- `\mathrm{ShadowDef}(X)`,
- `\mathrm{CurvShadow}(X)`,
- `\mathrm{TailShadow}(X)`,
- `E_{\mathrm{sh}}(X)`,

belong to the weaker robustness branch, not to the exact strict-shadow branch.

## Route consequence

The exact branch now reads:

```math
\text{strict shadow}
\Longrightarrow
\text{exact classical NS readout}
\Longrightarrow
\text{no extra projected remainder term.}
\tag{13}
```

So the exact remaining burden on Route `A` is not absorption of `ShadowDef`.
It is proving the strict-shadow hypotheses themselves on the active carrier
class and coupling them to a continuation-level bound.
