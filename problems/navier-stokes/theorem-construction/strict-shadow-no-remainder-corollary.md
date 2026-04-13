# Strict Shadow No-Remainder Corollary

## Purpose

This note isolates one exact consequence of the strict-shadow package:

```math
\boxed{
\text{under the exact strict-shadow hypotheses, there is no surviving shadow remainder.}
}
```

So the weak-form `ShadowDef` branch, the forcing-form `E_{\mathrm{sh}}` branch,
and the exact strict-shadow branch are not to be read at the same time.

## Exact strict-shadow hypotheses

Assume the projection package already written in

- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md),
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md),
- [ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md),
- [theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Documents/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md).

Namely:

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
\mathcal C(\iota_X\Omega_D^{\mathrm{nc}}(X))=0,
\tag{2}
```

and hence

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{3}
```

## Strong-form shadow identity

Under `(1)` and `(3)`, applying `\mathcal C` to the projected flow gives the
exact strong-form classical shadow equation

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u.
\tag{4}
```

Equivalently,

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{5}
```

## Weak-form remainder branch

The weaker branch recorded in
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
writes

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X),
\tag{6}
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
\tag{7}
```

## Forcing-form remainder branch

The same weaker robustness surface also records the nonlinear descent with a
shadow forcing term:

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)
+
E_{\mathrm{sh}}(X).
\tag{8}
```

## Corollary

If the exact strict-shadow hypotheses `(1)`--`(3)` hold, then

```math
\mathrm{ShadowDef}(X)\equiv 0.
\tag{9}
```

and

```math
E_{\mathrm{sh}}(X)\equiv 0.
\tag{10}
```

### Proof

Under the exact strict-shadow hypotheses, the shadowed equation is exactly
`(4)`, or equivalently `(5)`.

But `(6)` says the same shadowed operator equals

```math
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X).
```

Comparing the exact strong-form identity with the weak-form decomposition
forces

```math
\mathrm{ShadowDef}(X)=0.
```

Likewise, `(3)` is the exact projected nonlinear identity. Comparing it with the
forcing-form robustness decomposition `(8)` forces

```math
E_{\mathrm{sh}}(X)=0.
```

So both remainder readouts disappear on the exact strict-shadow surface.

## Meaning

This corollary does not prove the strict-shadow hypotheses.

It proves a clean logical point:

```math
\boxed{
\text{once the exact strict-shadow package is granted, the remainder branch disappears.}
}
```

So:

- `Route A` = exact strict-shadow, no projected remainder and no forcing remainder;
- `Route B` = weaker robustness branch with named leftovers.

Those are separate theorem shapes.
