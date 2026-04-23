# Strict-Shadow No-Remainder Consumer Corollary

## Position

This note is a downstream consumer corollary on the Euclidean
strict-shadow/export surface.

It sits after the earlier CM-to-Euclidean export splice and after the exact
strict-shadow package on that exported Euclidean surface. So it is not a branch
root and it is not an additional theorem burden beside `(A1a)`--`(A1c)`.

## Upstream inputs already consumed

Assume the projection package already written in

- [ontic-projected-flow-exact-lift-package.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/ontic-projected-flow-exact-lift-package.md)
- [d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
- [ns-shadow-route-a-vs-b.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/ns-shadow-route-a-vs-b.md)
- [theta-to-kd-and-exact-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/working-notes/theta-to-kd-and-exact-shadow-theorem.md)

and let `u=\mathcal C(X)` on the Euclidean surface already supplied by the
earlier CM-to-Euclidean export splice.

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

## Corollary

If the exact strict-shadow package `(1)`--`(3)` holds on that exported
Euclidean surface, then

```math
\mathrm{ShadowDef}(X)\equiv 0
\tag{4}
```

and

```math
E_{\mathrm{sh}}(X)\equiv 0.
\tag{5}
```

## Proof

Under the exact strict-shadow hypotheses, applying `\mathcal C` to the
projected flow gives the exact strong-form classical shadow equation

```math
\partial_t u+\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)=\nu\Delta u.
\tag{6}
```

Equivalently,

```math
\partial_t u+u\cdot\nabla u+\nabla p=\nu\Delta u,
\qquad
\nabla\cdot u=0.
\tag{7}
```

But the weaker branch recorded in
[d3-commutative-shadow-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/d3-commutative-shadow-theorem.md)
also writes

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X),
\tag{8}
```

and

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u)
+
E_{\mathrm{sh}}(X).
\tag{9}
```

Comparing `(6)`--`(7)` with `(8)` forces `\mathrm{ShadowDef}(X)=0`, and
comparing the exact projected nonlinear identity `(3)` with `(9)` forces
`E_{\mathrm{sh}}(X)=0`. ∎

## Meaning

This corollary does not prove the splice or the strict-shadow hypotheses.

It proves only the downstream exact point:

```math
\boxed{
\text{once the splice and exact strict-shadow package are already granted, the remainder branch disappears.}
}
\tag{10}
```

So the exact strict-shadow/export branch and the weaker robustness branch remain
separate theorem shapes.
