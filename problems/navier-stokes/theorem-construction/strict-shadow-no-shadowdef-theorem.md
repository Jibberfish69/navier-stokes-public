# Strict-Shadow No-ShadowDef Consumer Corollary

## Purpose

This note records a downstream consumer corollary on the Euclidean
export/discharge surface:

```math
\boxed{
\text{once the earlier CM-to-Euclidean export splice and the exact strict-shadow package are granted, }
\mathrm{ShadowDef}(X)\text{ vanishes.}
}
```

It is not a strict-shadow theorem root and it is not the CM-to-Euclidean export
splice. It sits downstream of that splice and, more specifically, downstream of
the exact strict-shadow input `(A1b)` on the exported Euclidean surface.

## Upstream inputs already consumed

Let `u=\mathcal C(X)` on the Euclidean surface already supplied by the earlier
CM-to-Euclidean export splice. Assume the strict-shadow package recorded in:

- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md)
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md)
- [theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md)

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

## Corollary

Under the earlier CM-to-Euclidean export splice and the exact strict-shadow
package `(1)`--`(5)` on that exported Euclidean surface, the weak-form remainder
satisfies

```math
\mathrm{ShadowDef}(X)=0.
\tag{6}
```

## Proof

Apply `\mathcal C` to the projected flow equation

```math
\partial_t X+\mathbb P_DN_D(X)=\nu\,\mathbb P_D\Delta_DX.
\tag{7}
```

Using `(1)` and `(5)` gives

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u.
\tag{8}
```

Equivalently,

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{9}
```

So on the strict-shadow surface the projected equation is the exact classical
Navier--Stokes equation.

The weaker readout package in
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
also writes

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X),
\tag{10}
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
\tag{11}
```

But `(8)`--`(9)` show that the projected equation already equals the classical
one with no extra remainder. Therefore the total weak-form remainder must
vanish, which is exactly `(6)`. ∎

## Exact meaning

Equation `(6)` does **not** say that each named term in `(11)` vanishes
separately under every representation.

It says the exact downstream thing the Euclidean export/discharge package needs:

```math
\boxed{
\text{after the splice and exact strict shadow are already in place, there is no surviving }
\mathrm{ShadowDef}\text{ remainder.}
}
\tag{12}
```

So this note is a consumer corollary after `(A1b)`. It is not an additional
burden beside `(A1a)`--`(A1c)` and it is not independent route authority.
