# MPP Same-Witness Atlas Selection For H^{1/2}

## Status

Conditional supplier lemma for `SameLedgerHHalfExtraction.A`. The selection step is internal once the retained Field-window evidence atlas belongs to the witness ledger.

## Statement

Let

```math
\mathcal W=(O_{NS}^{work},Q,N,r,\Phi,\mathcal T)
```

be a synchronized CM witness ledger. Assume the retained Field-window evidence data of `\mathcal W` include a finite transported atlas

```math
\mathcal A(\mathcal W)=\{a_1,\dots,a_M\},
\qquad
\{\chi_a^{\mathcal W}(t)\}_{a\in\mathcal A(\mathcal W)}.
```

For a terminal pair `(t_m,J_m)`, define

```math
E_a(m)
:=
2^{J_m}\|P_{J_m}(\chi_a^{\mathcal W}(t_m)u(t_m))\|_{L^2(\mathbb T^3)}^2.
```

Let `a_m` be the least-index maximizer of `E_a(m)` over the fixed finite set `\mathcal A(\mathcal W)`. Then the selected chart `a_m` is a chart of the same witness ledger `\mathcal W`.

Moreover, if the atlas has bounded overlap and `TransportedPartitionLPCommutator.A` is available at the selected shell scale, then

```math
E_{a_m}(m)
\ge
\frac{c_{atlas}}{M}\,
2^{J_m}\|P_{J_m}u(t_m)\|_2^2
-
\operatorname{Err}_{pack}(m),
```

where `Err_pack(m)` is the Pack-controlled commutator remainder.

## Proof

The atlas `\mathcal A(\mathcal W)` is part of the retained Field-window evidence data of the same witness. The functions `\chi_a^{\mathcal W}(t)` are therefore fixed before the terminal dyadic shell is selected.

For each `(t_m,J_m)`, finite overlap and the transported commutator estimate give

```math
\sum_{a\in\mathcal A(\mathcal W)}E_a(m)
\ge
c_{atlas}\,2^{J_m}\|P_{J_m}u(t_m)\|_2^2
-
\operatorname{Err}_{pack}(m).
```

Since the index set has `M` elements, the least-index maximizer satisfies

```math
E_{a_m}(m)
\ge
M^{-1}
\sum_{a\in\mathcal A(\mathcal W)}E_a(m).
```

Combining the two inequalities gives the claimed lower bound.

The selected index `a_m` belongs to `\mathcal A(\mathcal W)` by definition. The tie-break rule is fixed before selection, so the chart choice uses the witness ledger itself and does not add an external cover.

## CM interpretation

This lemma prevents a public critical shell from floating outside the CM witness. The chart is selected from the material atlas already carried by `Pack_Q`. Once the commutator supplier controls localization, the shell has a material address inside `\mathcal W`.

The next question is participation and tower coherence. Participation is handled by `Part`; persistent high-frequency loss on retained Part plus Field-window evidence moves to the `Field` analysis.

## Boundary

This lemma supplies the same-witness selection step only. It does not prove the downstream `HHalfOscillationFieldExit.A` theorem.