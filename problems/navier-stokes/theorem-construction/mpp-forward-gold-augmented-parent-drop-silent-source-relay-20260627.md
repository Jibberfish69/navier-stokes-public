# Augmented parent-drop relay after silent source normal form

Date: 2026-06-27

Status: silent-source escape removed from the parent-drop relay.  This proves
the augmented parent-drop form; full MPP closure still depends on the global
selected-density / full-tower action finiteness already isolated in the Gold
route.

Related surfaces:

- `mpp-forward-gold-silent-interior-source-origin-normal-form-closure-20260627.md`
- `mpp-forward-gold-selected-action-trace-observability-boundary-20260626.md`
- `mpp-forward-gold-parabolic-service-absorption-decomposition-direct-test-20260626.md`
- `mpp-forward-gold-invisible-child-lockpick-audit-20260626.md`

## 1. Correct parent-drop statement

The pure Schur statement

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C R_{\rm legal}(Q)
```

is too strong.  Boundary-flat pressure-Hodge sources can be invisible to the
parent Schur trace.

The corrected statement is:

```math
\boxed{
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C R_{\rm legal}(Q).
}
\tag{1}
```

Here \(\Omega_Q^{strain/ex}\) is not a new proxy clock.  It is the same-material
top-strain / complete-frame / exchange coordinate already inside the full
four-body tower action.

## 2. Visible/null split

Decompose the selected child action into pressure-visible and Schur-silent
parts:

```math
A(Q')=A_{\rm vis}(Q')+A_{\rm sil}(Q').
```

The pressure-visible part is the part with nonzero parent-child pressure-Hodge
trace defect.  On that subspace, the compactness argument from the parent-drop
lockpick gives

```math
\sum_{Q'\in ch(Q)}A_{\rm vis}(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+C R_{\rm legal}(Q).
\tag{2}
```

More precisely, `(2)` is the Schur coercivity on the quotient by the silent
kernel.  Failure of `(2)` produces a retained limit with unit quotient-visible
selected action and zero Schur defect.  Zero Schur defect places the limit in
the silent kernel, contradicting nonzero quotient-visible action.  If the
sequence collapses into the silent kernel before the limit, it is handled by
`(3)` instead.

The silent part lies in the boundary-flat interior pressure-potential class:

```math
f=\mathcal L_Aw,
\qquad
w|_{\partial Q}=0,
\qquad
\partial_{\nu_A}w|_{\partial Q}=0.
```

By the source-origin normal form, such a source is unselected as projected
pressure force.  If it is genuinely selected, it enters through the strain
Hessian and is paid by same-material exchange:

```math
\sum_{Q'\in ch(Q)}A_{\rm sil}(Q')
\le
C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C R_{\rm legal}(Q).
\tag{3}
```

Adding `(2)` and `(3)` gives `(1)`.

## 3. Bellman drop

Capacity monotonicity gives

```math
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)+R_{\rm legal}(Q).
\tag{4}
```

Combine `(1)` with `(4)`:

```math
\sum_{Q'\in ch(Q)}A(Q')
+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le
B_{\rm cap}(Q)
+C\,\Omega_Q^{strain/ex}
+C\,D_Q^{vis/rad}
+C R_{\rm legal}(Q).
\tag{5}
```

This is the correct parent-drop law after the silent interior source audit.

## 4. Tree summation

Sum `(5)` over a laminar material tree rooted at \(Q_0\).  The capacity terms
telescopically drop:

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
C B_{\rm cap}(Q_0)
+C\sum_{Q\subseteq Q_0}\Omega_Q^{strain/ex}
+C\sum_{Q\subseteq Q_0}D_Q^{vis/rad}
+C R_{\rm legal}(Q_0).
\tag{6}
```

The visible pressure-Hodge branch is paid by capacity.  The silent selected
branch is paid by the same-material exchange coordinate.  No boundary
observability of boundary-flat sources is being assumed.

## 5. Relay status

The silent-source obstruction is removed from parent-drop.

What remains after `(6)` is exactly the known Gold action issue:

```math
\sum_Q\Omega_Q^{strain/ex}
<
\infty
```

as part of the full selected-density / full-tower same-material action.

So the route is now:

```math
\text{source-origin normal form}
\Rightarrow
\text{augmented parent-drop}
\Rightarrow
\sum_Q A(Q)
\lesssim
B_{\rm cap}(Q_0)
+\text{full same-material exchange action}
+R_{\rm legal}.
```

This verifies the parent-drop relay without reopening stale pressure-only,
Schur-only, or raw hidden-bubble-energy targets.
