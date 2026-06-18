# MPP LocalPositiveSourceCarleson / PRD selected same-fluid terminal-family attempt

Date: 2026-05-17

Status: failed unconditional discharge. The attempt sharpens the source-control atom to the source-weighted angular / signed no-free-sink term.

## Target

For every bounded-overlap same-fluid terminal family `\mathcal F_N` selected by the source-pulse branch, prove

```math
\boxed{
LocalPositiveSourceCarleson.A:
\sum_{P\in\mathcal F_N}\int_{Q(P)}
[\mathcal N_{preCauchy}^{loc}(u;P)]_+\,dxdt
\le o_N(1)+\mathrm{Legal}_N(\mathcal F_N).
}
\tag{LPSC}
```

A packetwise sufficient estimate is

```math
\boxed{
PositiveRemainderDepletion.A:
\int_{Q(P)}[\mathcal R_P]_+
\le
\theta\int_{Q(P)}\mathcal D_P
+\mathrm{ParentDrain}(P)
+\mathrm{Legal}(P),
\qquad 0<\theta<1.
}
\tag{PRD}
```

The signed localization form is

```math
\mathcal N_{preCauchy}^{loc}
=
\partial_t\mathcal E_P+\mathcal D_P+\operatorname{div}_{\Phi}\mathcal J_P+\mathcal R_P.
\tag{DEC}
```

The derivative term telescopes on finite same-fluid donor trees, the divergence term is legal, and fixed entrance leaves vanish by `EntranceLeafDecay.A`. Thus `(PRD)` would imply `(LPSC)` and close the Zeno source-control wall.

## Attempt 1: local energy gives the positive-part estimate

The local energy inequality controls the signed localized balance: time derivative, dissipative drain, pressure/cutoff leakage, and boundary flux. After legal routing, the remaining interior source is the selected positive part of `\mathcal R_P`.

The passage

```math
\int \mathcal R_P \quad\leadsto\quad \int[\mathcal R_P]_+
```

requires a native negative-part comparison or a depletion mechanism. The signed identity alone permits full cancellation before terminal positive selection, while `(LPSC)` asks for control after localization, weighting, and positive-part extraction.

Collapse:

```math
local\ energy\ signed\ control
\nRightarrow LocalPositiveSourceCarleson.A.
```

## Attempt 2: finite donor balance closes the terminal tail

For a finite same-fluid refill tree, `LocalDonorBalance.A` telescopes the derivative and parent-edge terms to entrance leaves and legal losses. This proves finite-tree payment.

For the terminal Zeno branch, every finite truncation leaves a terminal layer of selected positive source leaves. Passing the truncation depth to infinity requires a uniform estimate on the positive source carried by those leaves. That estimate is exactly `(LPSC)`.

Thus finite donor balance reduces the infinite tail to the target estimate. It supplies no independent depletion of `[\mathcal R_P]_+`.

## Attempt 3: bounded overlap supplies depletion

Bounded overlap gives a multiplicity bound for selected cylinders:

```math
\sum_{P\in\mathcal F_N}\mathbf 1_{Q(P)}\le C.
```

It converts packetwise integrability into familywise integrability. It gives no sign gain and no small factor. A coherent terminal source-current can charge every selected packet with the same sign while preserving bounded overlap.

Therefore bounded overlap is a summation license, not the depletion mechanism.

## Attempt 4: ASAC pair-weight payment controls the native remainder

ASAC pays retained angular/pair-weight defects arising from mismatched one-sided terminal weights. This handles the retained signed-partner mismatch after the exchange graph is split.

The PRD remainder is the native localized interior positive source that survives after retained partners, legal exits, and finite donor trees are routed. ASAC controls a paid defect channel; it does not bound the surviving terminal native source-current.

Collapse:

```math
ASAC\ pair\ defect\ payment
\nRightarrow PositiveRemainderDepletion.A.
```

## Attempt 5: Cauchy/Young margin split for the source remainder

The near-band active source-current reduces to the source-weighted angular term

```math
\sum_{P\in\mathcal F_N}\int_{Q(P)}
\chi_P |w_{j_P}|^2
\left[e_{j_P}\cdot S_{<j_P}^{loc}e_{j_P}\right]_+.
\tag{SWAD}
```

A Cauchy/Young estimate has the form

```math
(SWAD)
\le
\eta\sum_P\int_{Q(P)}\mathcal D_P
+C_\eta\mathsf{ActiveSquareReserve}(\mathcal F_N)
+\mathrm{Legal}_N.
```

The first term is spendable only as the displayed fraction
`0<eta<1` of `sum_P int_{Q(P)} D_P`, leaving the remaining dissipative record
coercive. The second term is exactly the active-square reserve /
scale-critical Carleson quantity. Hence this route proves only the conditional
statement

```math
PositiveActiveCarlesonReserve.A
\Longrightarrow PositiveRemainderDepletion.A.
```

It gives no independent PRD theorem.

## Attempt 6: material eigenframe variation proves PRD

The source-weighted angular pass reduces the aligned terminal packet to near-band material strain variation. Far-low turnover is heat-penalized and legal. The near-band variation leaves the signed near-band source-current

```math
\mathcal S_{near}
=
\sum_{P\in\mathcal F_N}\omega_P\tau_P\int_{I_P}Source_P^{loc}(t)b_P^{near}(t)\,dt.
```

The exact remaining theorem is `TerminalWeightedNoFreeSink.A_ind`. Its direct audit pays retained partners, legal exits, and finite donor trees, then leaves terminal Zeno refill. That refill is the same atom handled by `TerminalSourceReverseHolder.A`, a produced rigid Zeno class, or active reserve.

So eigenframe variation gives the best current reduction:

```math
TerminalWeightedNoFreeSink.A_{ind}
\Longrightarrow SourceWeightedTerminalAngularDepletion.A
\Longrightarrow PositiveRemainderDepletion.A.
```

The first implication remains open at the terminal Zeno refill subcase.

## Verdict

The direct selected-family proof of `(LPSC)` / `(PRD)` fails from installed inputs.

The valid conditional structure is

```math
SourceWeightedTerminalAngularDepletion.A
\Longrightarrow PositiveRemainderDepletion.A
\Longrightarrow LocalPositiveSourceCarleson.A
\Longrightarrow ScaleCriticalTreeCarleson.A.
```

The independent source-weighted angular theorem reduces to the signed no-free-sink theorem on selected near-band source-current edges:

```math
TerminalWeightedNoFreeSink.A_{ind}.
```

Its unpaid subcase is terminal Zeno refill. Thus the PRD/LPSC route returns to the same three doors already isolated:

```text
1. TerminalSourceReverseHolder.A / UniformTemporalSourceIntegrability_p.A;
2. ZenoBoundedClass_B.A + ZenoResidueLiouville_B.A for a produced explicit class B;
3. PositiveActiveCarlesonReserve.A with independent scale-critical content.
```

The current attempt adds no unconditional PRD discharge. It confirms that PRD is the shortest theorem-facing formulation of the source-control wall, with `SourceWeightedTerminalAngularDepletion.A` and `TerminalWeightedNoFreeSink.A_ind` as the sharpest lower route labels.
