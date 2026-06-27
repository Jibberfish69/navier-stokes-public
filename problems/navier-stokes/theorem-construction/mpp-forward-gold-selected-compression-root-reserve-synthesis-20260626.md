---
theorem_id: forward-gold-selected-compression-root-reserve-synthesis-20260626
status: narrowed-to-original-history-root-reserve
created: 2026-06-26
problem: navier-stokes
route: forward-gold same-material full-clock / selected first-ratio gain
attacks_hinge:
  - RepeatedCorePositiveVariationRootBound.A
  - ScaleInvariantSelectedCapacityNoEscape.A
  - RetainedSelectionBoundaryTax.A
  - SelectedCompressionRootReserve.A
---

# Selected compression root-reserve synthesis

## 1. Current object

After pressure-visible/null routing, the selected action on a retained packet has
the branch-local control

```math
A(Q)
\le
C\left(
\langle U_Q,\mathsf S_Q U_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
+R_{\rm legal}(Q)
\right).
\tag{1}
```

Here:

- `\langle U_Q,\mathsf S_Q U_Q\rangle` is the parent-child pressure-Hodge
  Schur visible part.
- `\mathcal S_{\rm normal}` is packet-normal collar compression service.
- `\mathcal S_{\rm covector}` is wave-covector compression service.
- `\mathcal B_{\rm select}` is the strict material-subset reselection tax.

The local lower bound is therefore not the missing theorem. If `A(Q)\simeq 1`,
then at least one term on the right of (1) is scale-invariantly positive unless
the packet exits legally.

## 2. What remains

The proof-bearing statement is the original-history upper/root reserve:

```math
\sum_{Q\in\mathcal T_{\rm sel}}
\left(
\langle U_Q,\mathsf S_Q U_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q)
\right)
\le
C_N(u_0)+R_{\rm legal}.
\tag{2}
```

This is the sharpened form of

```text
SelectedCompressionRootReserve.A
```

and it is equivalent to proving the selected first-ratio strict gain after the
pressure-visible/null split.

## 3. Reused-core branch

For reused material cores, the installed same-line tax gives

```math
\sum_{Q_k\subset\mathcal A(a)} A(Q_k)
\le
C\,\mathcal V_{\rm core}(a)+R_{\rm legal}(a).
\tag{3}
```

The first unsupported line is the root bound

```math
\int \mathcal V_{\rm core}(a)\,d\mathcal R_{\rm ancestry}(a)
\le
C_N(u_0)+R_{\rm legal}.
\tag{4}
```

Incompressibility, complete-frame payment, Hodge attachment, compactness, and
support-tree counting attach or orient the variation. They do not prove (4).

## 4. Shrinking-core branch

For shrinking selected cores, the pressure-visible/null split already yields
scale-invariant local payment:

```math
A(Q_k)\simeq1
\Rightarrow
\langle U_{Q_k},\mathsf S_{Q_k}U_{Q_k}\rangle
+\mathcal S_{\rm normal}(Q_k)
+\mathcal S_{\rm covector}(Q_k)
+\mathcal B_{\rm select}(Q_k)
\gtrsim 1.
\tag{5}
```

The missing line is again not a lower bound. It is the summability of those
payments over the retained original material history.

## 5. Reselection branch

The compression-or-reselection dichotomy is valid:

```math
\text{shrinking retained selected ancestry}
\Rightarrow
\text{material compression}
\quad\text{or}\quad
\text{strict subset reselection}.
\tag{6}
```

For genuine material compression, the Lagrangian singular-value equation gives
the logarithmic service cost. For strict subset reselection, the needed tax is
not a new independent endpoint theorem. It is the selection-boundary component
`\mathcal B_{\rm select}` in the same root reserve (2).

Thus

```text
RetainedSelectionBoundaryTax.A
```

is a component of `SelectedCompressionRootReserve.A`, not a replacement for it.

## 6. Exact live theorem

The current Gold theorem is:

```text
SelectedCompressionRootReserve.A
```

Statement:

For one original smooth material history and one retained selected laminar tree,
the total selected compression/reselection service obeys (2).

Equivalently, every selected first-ratio unit is paid by one finite original-data
root reserve:

```math
\sum_{Q\in\mathcal T_{\rm sel}} A(Q)
\le
C_N(u_0)+R_{\rm legal}.
\tag{7}
```

This closes both branch forms:

```math
\text{RepeatedCorePositiveVariationRootBound.A}
\quad\text{and}\quad
\text{ScaleInvariantSelectedCapacityNoEscape.A}.
\tag{8}
```

## 7. Current status

The installed proof inputs do not yet prove (2). They prove branch-local
attachment, orientation, local payment, and failed-proxy exclusions. The first
unproved mathematical line is finite original-history root reserve for

```math
\langle U_Q,\mathsf S_Q U_Q\rangle
+\mathcal S_{\rm normal}(Q)
+\mathcal S_{\rm covector}(Q)
+\mathcal B_{\rm select}(Q).
\tag{9}
```

No proxy lower-bound, local storage, complete-frame pressure probe, or raw
capacity renormalization should be promoted to Gold closure unless it proves
that root reserve.
