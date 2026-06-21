---
ns_viewer:
  theorem_id: forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621
  status: exact-finite-menu-selected-carrier-heredity-installed-forward-gold-not-proved
  proof_role: forward_gold_selected_carrier_heredity_finite_menu_reduction
  logical_landing_node: selected_carrier_heredity_finite_menu
  edge_effect: >-
    Proves the finite-menu part of SelectedCarrierHeredity.A. If an infinite
    retained tail has a fixed finite menu of candidate native selected carrier
    families and a nonzero retained carrier/action/source lower bound, then one
    carrier family occurs on an infinite subtail with a quantitative lower bound.
    Sparse scale skipping may then be performed inside that fixed-carrier subtail.
    This does not prove SelectedCarrierHeredity.A for continuum or infinite
    moving-selector families. The remaining selector obstruction is exactly a
    moving/continuum carrier escape, or a theorem that pays it by finite
    complexity, an integrable label modulus, selector-action charge, one-profile
    capture, or CM Part/Field consumption after same-witness admission.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mcp-finite-active-packet-reduction-test.md
    - problems/navier-stokes/theorem-construction/mcp-pack-ttu-continuum-label-obstruction-audit-tgc-a-444d37125d.md
    - problems/navier-stokes/theorem-construction/mcp-endpointselector-finite-complexity-rule-test.md
    - problems/navier-stokes/theorem-construction/mpp-pack-profile-selector-stability-direct-attempt-20260610.md
  downstream_consequence: >-
    Do not list finite selector heredity as an open wall. It is paid by
    pigeonhole/finite exhaustion. The sparse same-witness carrier custody branch
    now needs either a fixed finite native carrier menu, or a separate theorem
    preventing/paying continuum moving-selector escape, plus the already isolated
    parent-domain/exterior-spill and same-carrier density/UI payments.
---

# MPP Forward-Gold Selected Carrier Heredity Finite-Menu Reduction

Date: 2026-06-21

## Status

This note proves the finite-menu part of selected-carrier heredity. It does not
claim that the Navier-Stokes terminal selector is always finite-complexity.

The exact point is:

\[
\boxed{
\text{finite carrier menu + nonzero retained selected quantity}
\Longrightarrow
\text{fixed carrier on an infinite retained tail}.
}
\tag{SCH.1}
\]

So the finite-selector case is not a remaining obstruction. The remaining
obstruction is a moving selector through an infinite or continuum carrier
family.

## 1. Finite-menu hypotheses

Let \(\mathcal I\subset\mathbb N\) be an infinite retained tail of heat-scale
rescalings attached to the same terminal witness. Assume that, on this tail,
the native selected carrier comes from a fixed finite menu

\[
\mathfrak C=\{C_1,\ldots,C_M\},
\qquad
M<\infty.
\tag{SCH.2}
\]

For each \(j\in\mathcal I\) and each \(C_a\in\mathfrak C\), let

\[
A_j(C_a)\ge0
\tag{SCH.3}
\]

denote the retained nonnegative quantity in the branch under discussion:
carrier mass, selected critical action, selected positive source, or the
corresponding nonnegative same-carrier readout. The argument uses only
nonnegativity and the fact that all \(A_j(C_a)\) are measured in the same
currency.

Assume a nonzero retained finite-menu lower bound:

\[
\sum_{a=1}^{M} A_j(C_a)\ge a_0>0
\qquad
(j\in\mathcal I).
\tag{SCH.4}
\]

This covers the sharper selected case \(A_j(C(j))\ge a_0\), since then the sum
over the finite menu is at least \(a_0\).

## 2. Fixed carrier extraction

For each \(j\in\mathcal I\), choose \(a(j)\in\{1,\ldots,M\}\) so that

\[
A_j(C_{a(j)})
=
\max_{1\le a\le M} A_j(C_a).
\tag{SCH.5}
\]

By `(SCH.4)`,

\[
A_j(C_{a(j)})\ge {a_0\over M}.
\tag{SCH.6}
\]

Since the index set \(\{1,\ldots,M\}\) is finite and \(\mathcal I\) is infinite,
there is \(a_\ast\in\{1,\ldots,M\}\) and an infinite subtail
\(\mathcal I_\ast\subset\mathcal I\) such that

\[
a(j)=a_\ast
\qquad
(j\in\mathcal I_\ast).
\tag{SCH.7}
\]

Therefore, on the subtail \(\mathcal I_\ast\),

\[
A_j(C_{a_\ast})\ge {a_0\over M}
\qquad
(j\in\mathcal I_\ast).
\tag{SCH.8}
\]

Thus the selected carrier family is fixed on an infinite retained tail, with a
quantitative lower bound. In the sharper selected case
\(A_j(C(j))\ge a_0\), the lower bound remains \(a_0\) on the fixed-label
subtail whenever \(C(j)=C_{a_\ast}\).

## 3. Compatibility with sparse scale skipping

Once the fixed-carrier subtail \(\mathcal I_\ast\) is obtained, choose a sparse
subsequence \(j_k\in\mathcal I_\ast\) exactly as in the sparse custody note:

\[
\Lambda_k:={r_{j_{k+1}}\over r_{j_k}}\le2^{-k}.
\tag{SCH.9}
\]

Because \(j_k\in\mathcal I_\ast\), the same carrier family \(C_{a_\ast}\) and
the lower bound `(SCH.8)` remain true on the sparse chain:

\[
A_{j_k}(C_{a_\ast})\ge {a_0\over M}.
\tag{SCH.10}
\]

The moving-gauge same-solution identity is unchanged:

\[
v_{j_{k+1}}(s,y)
=
\Lambda_k A_k^T
v_{j_k}(\Lambda_k^2s,\ B_k+\Lambda_k A_ky).
\tag{SCH.11}
\]

Thus finite-menu selected-carrier heredity is compatible with the previously
installed sparse same-witness carrier custody reduction.

## 4. What this does not prove

The argument above uses the finiteness of \(\mathfrak C\). It gives no
continuum-selector theorem.

If the selected carrier can move through infinitely many labels or through a
continuum active family, the proof above has no fixed \(M\), no uniform
pigeonhole lower bound, and no fixed carrier subtail forced by counting alone.
The existing moving-spike obstruction remains the model:

\[
\text{each fixed finite selector can miss all but finitely many later spikes,}
\tag{SCH.12}
\]

while the supremal or selected terminal carrier still sees every spike.

So the remaining non-finite selector branch must be handled by one of the
following actual mechanisms:

\[
\boxed{
\text{finite-complexity rule, integrable label modulus, selector-action charge,
one-profile capture, profile production, or CM Part/Field consumption}.
}
\tag{SCH.13}
\]

## 5. Consequence for sparse custody

Combining this note with the sparse custody reduction gives:

\[
\boxed{
\begin{aligned}
&\text{same witness}\\
&+\text{fixed finite native carrier menu with retained nonzero quantity}\\
&+\text{controlled parent domain or paid exterior spill}\\
&+\text{same-carrier density/UI on the sparse gauge defect}
\end{aligned}
\Longrightarrow
\text{sparse fixed-carrier custody}.
}
\tag{SCH.14}
\]

The finite-menu selector clause in `(SCH.14)` is paid here. The remaining hidden
branch is not a finite-selector bookkeeping problem; it is genuine moving or
continuum selected-carrier escape.

## Verdict

\[
\boxed{
\text{SelectedCarrierHeredity.A is proved in the fixed finite-menu case.}
}
\tag{SCH.15}
\]

\[
\boxed{
\text{The general case still needs a theorem that prevents or pays moving
selected-carrier escape.}
}
\tag{SCH.16}
\]
