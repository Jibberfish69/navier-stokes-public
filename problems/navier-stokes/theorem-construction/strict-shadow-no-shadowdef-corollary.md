# Strict-Shadow No-ShadowDef Consumer Corollary

## Position

This is a short downstream corollary note, not a branch root.

It sits after the earlier CM-to-Euclidean export splice and after the exact
strict-shadow package on that exported Euclidean surface. So it is a consumer
consequence of `(A1b)`, not an additional burden alongside `(A1a)`--`(A1c)`.

## Corollary

Let `u=\mathcal C(X)` on the Euclidean surface already supplied by the earlier
CM-to-Euclidean export splice. Assume the exact strict-shadow identities

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

and hence

```math
\mathcal C(\mathbb P_DN_D(X))
=
\mathbb P_{\mathrm{Leray}}(u\cdot\nabla u).
\tag{3}
```

Then the weak-form D.3 remainder

```math
\mathcal C(\mathcal L_D(X))
=
\mathrm{classical\_NS}(u)+\mathrm{ShadowDef}(X)
\tag{4}
```

collapses to

```math
\mathrm{ShadowDef}(X)=0.
\tag{5}
```

Equivalently,

```math
\mathcal C(\mathcal L_D(X))=\mathrm{classical\_NS}(u).
\tag{6}
```

## Proof

This is exactly the downstream consumer consequence proved in
[strict-shadow-no-shadowdef-theorem.md](/Users/thomasbirnie/Workspace/ToE/Research-Consolidation/problems/navier-stokes/theorem-construction/strict-shadow-no-shadowdef-theorem.md).
Once the splice and exact strict-shadow package have already produced the exact
classical projected equation on the exported Euclidean surface, there is no
remaining sector for `\mathrm{ShadowDef}(X)` to occupy. ∎

## Meaning

This corollary does **not** prove the splice or the strict-shadow hypotheses.
It records only the downstream exact consequence:

```math
\boxed{
\text{after exact strict shadow is granted on the exported Euclidean surface, the weak remainder disappears.}
}
\tag{7}
```

So the weak robustness branch and the exact strict-shadow/export branch remain
distinct.
