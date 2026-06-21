---
ns_viewer:
  theorem_id: forward-gold-selected-square-budget-failure-cm-face-direct-test-20260620
  status: conditional-cm-face-consumption-proved-forward-supplier-not-proved
  proof_role: cm_consumption_of_selected_square_budget_failure
  logical_landing_node: selected_square_budget_failure_to_pack_part_field
  edge_effect: "Proves the CM-side consumption of the exact selected participation square-budget failure. Once the failure is admitted as the same terminal witness, Pack failure, Part failure, or retained Part plus Field-window evidence with Field incompatibility exhausts it. Field incompatibility is by the installed H^s readout: a positive Field certificate gives dyadic decay strong enough to force the selected square current to zero, contradicting a fixed positive square-budget failure."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-participation-square-budget-direct-attempt-20260620.md
    - problems/navier-stokes/theorem-construction/mpp-clay-terminal-witness-invalidation-20260523.md
    - problems/navier-stokes/theorem-construction/mpp-retained-pack-part-critical-concentration-to-field-bridge-20260519.md
  downstream_consequence: "The selected participation square-budget failure is not a fourth endpoint type after same-witness admission. It is forward-gold supplier failure before admission, and Part/Field face material after admission."
---

# MPP Forward-Gold Selected Square-Budget Failure CM Face Direct Test

Date: 2026-06-20

## Status

Direct CM-face test complete.

This note does not prove the forward-gold selected square budget.  It proves
what happens to failure of that budget after the failure is admitted as the
same terminal witness.

The result is:

```math
\boxed{
\text{same-witness selected square-budget failure}
\Longrightarrow
\text{Part/Field failure.}
}
\tag{SBC.1}
```

## 1. Failure being consumed

The forward-gold supplier target was the selected-current square budget

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le
Legal_j+o_j(1),
\qquad
\lambda_j=2^j.
\tag{SBC.2}
```

Failure of `(SBC.2)` on the same terminal tail means that, after declared legal
losses have been removed, there are selected terminal packets \(Q_m\), shell
indices \(j_m\to\infty\), and heat windows \(I_m\) such that

```math
\int_{I_m}\lambda_{j_m}
\bigl(\Pi_{j_m}^{part,+}(t)\bigr)^2\,dt
\ge \eta>0.
\tag{SBC.3}
```

Here \(\Pi_j^{part,+}\) is the already assembled same-fluid participation
current: pressure, convection, viscosity, cutoffs, projectors, commutators, and
selector effects are on the same ledger before the positive part is tested.

## 2. Admission gives the Field-certification tree

Assume `(SBC.3)` is not merely a support calculation but is part of a
CM-test-admissible terminal Clay witness \(W_*\).  By
`ClayTerminalWitnessCMEntry.A`, \(W_*\) enters the same-fluid terminal CM tree.

If the selected terminal carrier does not survive, then the first Part/Field fails:

```math
\neg Pack_Q.
\tag{SBC.4}
```

If the carrier survives but the assembled current cannot be placed inside the
same Navier--Stokes pressure-viscosity participation tower through the required
depth, then the second face fails:

```math
Pack_Q\wedge\neg Part_{N_s,Q}.
\tag{SBC.5}
```

So it remains only to test the retained case:

```math
Pack_Q\wedge Part_{N_s,Q}.
\tag{SBC.6}
```

## 3. Field incompatibility

Assume, toward contradiction, that a positive Field certificate also survives:

```math
Field_{N_s,r,Q}
\quad
\text{for some }r>0.
\tag{SBC.7}
```

By the installed continuation readout in
`ClayFiniteFailureTypeCMExhaustion.A`, with \(N_s\) chosen above the
\(H^s\), \(s>5/2\), threshold, `(SBC.7)` gives a finite same-solution local
high-regularity bound:

```math
\sup_{t<T_*}\|u(t)\|_{H^s(Q)}\le C_s.
\tag{SBC.8}
```

The high-frequency shell energy then decays:

```math
E_j(t)=\|w_j(t)\|_{L^2(Q)}^2
\le
C_s\lambda_j^{-2s}.
\tag{SBC.9}
```

The viscous part of the assembled current is bounded by

```math
\lambda_j^2E_j(t)
\le
C_s\lambda_j^{2-2s}.
\tag{SBC.10}
```

The low-frequency strain factor is bounded in \(L^\infty\) because
\(s>5/2\), so the trilinear feed satisfies

```math
\int |S_{<j}^{loc}|\,|w_j|^2\,dx
\le
C_sE_j(t)
\le
C_s\lambda_j^{-2s}.
\tag{SBC.11}
```

The pressure, projection, cutoff, and commutator pieces are lower-order
localized terms on the same Field packet and obey the weaker of the two bounds
above.  Hence, for a heat window of length comparable to \(\lambda_j^{-2}\),

```math
\int_{I_j}\lambda_j
\bigl(\Pi_j^{part,+}(t)\bigr)^2\,dt
\le
C_s\lambda_j
\lambda_j^{4-4s}
\lambda_j^{-2}
=
C_s\lambda_j^{3-4s}
\to0
\tag{SBC.12}
```

because \(s>5/2\).

This contradicts the retained square-budget failure `(SBC.3)`.

Therefore, after Pack and Part survive, no positive Field certificate survives:

```math
Pack_Q\wedge Part_{N_s,Q}\wedge (SBC.3)
\Longrightarrow
\forall r>0\,\neg Field_{N_s,r,Q}.
\tag{SBC.13}
```

## 4. Exhaustion

Combining `(SBC.4)`, `(SBC.5)`, and `(SBC.13)` gives

```math
\boxed{
ClayWitness_{CM}(W_*)
+
\text{selected square-budget failure on }W_*
\Longrightarrow
\neg Pack_Q
\vee
\bigl(Pack_Q\wedge\neg Part_{N_s,Q}\bigr)
\vee
\bigl(Pack_Q\wedge Part_{N_s,Q}\wedge
\forall r>0\,\neg Field_{N_s,r,Q}\bigr).
}
\tag{SBC.14}
```

By `ClayCMContrapositiveEmbedding.A`, this Part/Field failure supports

```math
Exit(Q;\mathfrak O_{NS}^{work})
=
\neg Member(Q;\mathfrak O_{NS}^{work}).
\tag{SBC.15}
```

## Verdict

Failure of the selected participation square budget is not a fourth terminal
type once it is admitted as the same terminal witness.

Before admission, it remains the forward-gold supplier failure:

```math
\text{UnweightedTerminalCriticalActionReserve.A is not proved.}
```

After admission, it is consumed by the CM Part/Field tree:

```math
\boxed{
\text{selected square-budget failure}
\Rightarrow
\text{Part/Field failure.}
}
```
