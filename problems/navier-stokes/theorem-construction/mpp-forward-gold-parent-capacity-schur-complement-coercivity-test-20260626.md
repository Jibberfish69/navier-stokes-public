# Parent capacity Schur-complement coercivity test

Status: parent-drop not proved; exact operator-level missing theorem isolated.

## 1. Target

The Codex goal-loop oracle asks for

```math
\sum_{Q'\in ch(Q)} A(Q')+
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le B_{\rm cap}(Q)+R_{\rm legal}(Q),
\tag{1}
```

where `B_cap(Q)` is the parent-collar pressure-Helmholtz--Leray Dirichlet capacity reserve.

The existing direct attack shows that capacity monotonicity gives only

```math
\sum_{Q'\in ch(Q)}B_{\rm cap}(Q')
\le B_{\rm cap}(Q)+R_{\rm legal}(Q),
\tag{2}
```

and leaves the selected action term `sum A(Q')` unpaid.

## 2. Schur-complement form of the missing drop

Let `Lambda_Q` be the Dirichlet-to-Neumann form for the transported parent collar, and let `Lambda_{Q'}` be the child collar forms after legal synchronization. Then the capacity drop in (1) is the Schur complement

```math
\mathsf S_Q
:=
\Lambda_Q-igoplus_{Q'\in ch(Q)}\Lambda_{Q'}
```

on the compatible parent-child pressure-Helmholtz--Leray trace data.

Thus the desired Bellman inequality is equivalent to the coercivity estimate

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
\langle U_Q,\mathsf S_Q U_Q\rangle
+R_{\rm legal}(Q).
\tag{3}
```

This is sharper than the abstract parent-drop statement: the missing object is not another reserve, but lower coercivity of the parent-child DtN Schur complement against the selected critical-strain action.

## 3. Why ordinary elliptic coercivity is insufficient

The Schur complement is nonnegative by variational capacity monotonicity. Nonnegativity proves (2). To prove (3), it must dominate the selected material action.

That domination is false from raw capacity scaling alone. A one-child half-tail can keep the Schur complement at the raw scale level while retaining order-one normalized selected action. This is the same critical profile

```math
\nu_\ell = {2^{-\ell}\over \ell+1},
\qquad
\sum_\ell \nu_\ell<\infty,
\qquad
\sum_\ell 2^\ell\nu_\ell=\infty.
```

Therefore the parent capacity drop requires a strict trace-to-action coercivity theorem, not only harmonic extension minimality.

## 4. Exact missing theorem

The next exact hinge is

```math
\boxed{\text{SelectedActionTraceCoercivity.A}}
```

Statement:

For each retained laminar material parent `Q`, the pressure-Helmholtz--Leray trace on the transported parent collar carries enough nondegenerate boundary data that the parent-child DtN Schur complement controls the selected child action:

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
\langle U_Q,(\Lambda_Q-\oplus_{Q'}\Lambda_{Q'})U_Q\rangle
+R_{\rm legal}(Q).
```

Equivalently, no retained child can carry unit selected critical-strain action while remaining invisible to the parent-child pressure-Helmholtz--Leray Schur complement at summable raw cost.

## 5. Result

`SelectedCriticalStrainCapacityParentDrop.A` is not discharged. It is now reduced to the operator-level theorem `SelectedActionTraceCoercivity.A` / `CapacitySchurComplementSelectedAction.A`.

This is the right next target because it names the precise missing lower bound inside the best concrete reserve currently available: the parent-collar pressure-Helmholtz--Leray capacity reserve.