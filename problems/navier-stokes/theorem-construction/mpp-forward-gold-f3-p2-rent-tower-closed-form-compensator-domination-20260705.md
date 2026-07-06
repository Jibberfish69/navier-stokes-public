---
theorem_id: forward-gold-f3-p2-rent-tower-closed-form-compensator-domination-20260705
status: codex-gated-rent-tower-accepted-compensator-prefix-escrow-regated
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / P2 - the rent tower sums in closed form; the compensator is dominated by the rent
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the rent the two-coin split charges is not an open threat - it is a
  tower of dues fading by band, and fading dues sum to one number the
  worksheet can read. And once every cell's tax is backed by half its
  own penny-jar plus rent, there is no separate overdraft monster
  left: whatever the collector cannot cover IS the rent, nothing
  more - one drawer, one row, one verdict left to the interval pass.
depends_on:
  - mpp-forward-gold-codex-f3-p2-m-dial-consolidation-20260705.md
  - mpp-forward-gold-codex-f3-p1-core-gross-pricing-gate-20260705.md
  - mpp-forward-gold-f3-two-coin-cell-pricing-gagliardo-nirenberg-20260705.md
  - mpp-forward-gold-codex-overdraft-compensator-routing-20260705.md
completion_truth: >-
  Executes two of the four remaining P2 items on the consolidated
  surface; everything displayed is an exact closed form or a one-line
  domination. (R1 - THE RENT TOWER SUMS, EXACT) On the dyadic tower
  kappa_j = 2^j kappa_min, the consolidated rent rows carry the
  displayed decays kappa^{-2} (Young part, taxed) and kappa^{-1/2}
  (cutoff-reserve part, taxed); tower-summing at a fixed cell:
  sum_j (2^j kappa_min)^{-2} = (4/3) kappa_min^{-2} and sum_j
  (2^j kappa_min)^{-1/2} = (2 + sqrt(2)) kappa_min^{-1/2} - EXACT
  (geometric ratios 1/4 and 1/sqrt(2); the second closed form from
  (1 - 1/sqrt2)^{-1} = 2 + sqrt2). Hence the per-cell taxed rent
  aggregates to ONE displayed row: RENT_P2(cell) := (nu /
  (sqrt2 C_B C_m C_S E_0)) sqrt2 C_3 |I| [ (1/4)(3C_3/(4C_B C_m C_S
  E_0))^3 (4/3) kappa_min^{-2} (2Qbar')^3 + (2/r)^{3/2} (2+sqrt2)
  kappa_min^{-1/2} (2Qbar')^{3/2} ] - all symbols named, all
  numerical factors exact fractions or sqrt2-closed forms, no
  decimals. Per-partition aggregation: RENT_P2(total) <= RENT_P2(cell
  envelope) x N_cells, with N_cells floored by the worksheet's T_min
  residence-time counting and the retained partition's domain guards
  - the aggregate is ONE worksheet row, quarantined to F4. (R2 - THE
  COMPENSATOR IS DOMINATED BY THE RENT, one line) The consolidated
  diagonal row gives, on every retained Hall cut S: sum_S theta_i
  mu_i <= (1/2) beta(R_diag(S)) + (1/(2N_ov)) sum_S rho_i/M_{c,i}.
  Therefore the prefix deficit of the tax queue against half-budget
  backing satisfies, on every chain prefix J: K^tax(J) := sup over
  prefixes of [ sum theta mu - (1/2) sum beta ]_+ <= (1/(2N_ov))
  RENT_P2(J). The overdraft compensator for the diagonal-backed
  demand family is DOMINATED BY THE RENT ROW - dK^tax routing
  contracts onto the same single worksheet row; no separate overdraft
  object remains for this family (the minimal-compensator lemma then
  gives K^tax <= the displayed bound, since the minimal compensator
  is dominated by any feasible one). (CONSEQUENCE FOR P2's LEDGER)
  Of Codex's four open items: item 1 (rent aggregation) EXECUTED to
  the single-row form - the worksheet comparison itself is F4; item
  3 (dK^tax routing) CONTRACTED onto the same row for the
  diagonal-backed family; item 2 (prefix/suffix carry OUTSIDE the
  diagonal relation) remains open exactly for demand rows not
  diagonal-backed - named; item 4 (diffuse tower summability) stays
  with F2/F4. HONEST GUARDS: (g1) the domination in R2 is against
  HALF-budget backing by construction of the two-coin split - the
  full-budget question does not arise because the split never
  promised more; (g2) Qbar' in the rent envelope is an episode sup -
  its entrance-readable surrogate (entrance reserve + queue income
  cap, from the paid chronological queue) is the predictability
  route if the worksheet requires it, named; (g3) nothing here
  proves RENT_P2 is SMALL - smallness is exactly an F4 interval-pass
  row; if the row fails there, the failure is a Chapter-10 finite-row
  failure per the F2 reduction's failure taxonomy. NOT PAID: the
  carry edges for non-diagonal demand; diffuse summability (F2/F4);
  the F4 pass itself; F5. Payment type: exact geometric closed
  forms + a one-line compensator domination - execution on the
  consolidated surface, no new estimate beyond gated ones. Filed is
  not cleared. No closure claimed.
---

# F3/P2: the rent tower sums; the overdraft monster is just the rent

## Codex gate, same date

Codex gate filed:
`mpp-forward-gold-codex-f3-p2-rent-tower-gate-20260705.md`.

Accepted: the consolidated taxed rent has dyadic decay
\(\kappa^{-2}\) in the Young part and \(\kappa^{-1/2}\) in the
cutoff-reserve part, so the displayed geometric sums reduce rent
aggregation to one worksheet row.

Accepted with correction: the diagonal row makes cumulative
\({\rm RENT}_{P2}\) a feasible prefix compensator, hence
\[
  K^{\rm tax}(t)\le {\rm RENT}_{P2}(t)
\]
for every prefix. This contracts the diagonal-family overdraft to the
rent allowance in prefix/escrow form.

Regated: this prefix domination does not imply literal Stieltjes
measure domination \(dK^{\rm tax}\le d{\rm RENT}_{P2}\). Any downstream
consumer needing a measure inequality must use escrowed rent in the
queue or prove a separate submeasure/absolute-continuity statement.

## 1. R1: the rent tower in closed form

The consolidated (taxed) rent rows decay in the band mark as
\(\kappa^{-2}\) (Young part) and \(\kappa^{-1/2}\) (cutoff-reserve
part). On the dyadic tower \(\kappa_j=2^j\kappa_{\min}\):

\[
  \sum_{j\ge0}\big(2^j\kappa_{\min}\big)^{-2}
  =
  \frac43\,\kappa_{\min}^{-2},
  \qquad
  \sum_{j\ge0}\big(2^j\kappa_{\min}\big)^{-1/2}
  =
  \big(2+\sqrt2\big)\,\kappa_{\min}^{-1/2}
\]

- exact (ratios \(\tfrac14\) and \(\tfrac1{\sqrt2}\);
\((1-1/\sqrt2)^{-1}=2+\sqrt2\)). The per-cell taxed rent therefore
aggregates to ONE displayed row,

\[
  {\rm RENT}_{P2}({\rm cell})
  :=
  \frac{\nu}{\sqrt2\,C_BC_mC_SE_0}\,
  \sqrt2\,C_3\,|I|
  \left[
    \frac14
    \Big(\frac{3C_3}{4C_BC_mC_SE_0}\Big)^{3}
    \frac43\,\kappa_{\min}^{-2}\,(2\bar Q')^{3}
    +
    \Big(\frac2r\Big)^{3/2}
    \big(2+\sqrt2\big)\,\kappa_{\min}^{-1/2}\,(2\bar Q')^{3/2}
  \right],
\]

all symbols named, all numerical factors exact. Per-partition:

\[
  {\rm RENT}_{P2}({\rm total})
  \le
  {\rm RENT}_{P2}({\rm cell\ envelope})\times N_{\rm cells},
\]

with \(N_{\rm cells}\) floored by the worksheet's \(T_{\min}\)
residence-time counting and the retained partition's domain guards.
The aggregate is ONE worksheet row, quarantined to F4.

## 2. R2: the compensator is dominated by the rent

The consolidated diagonal row gives, on every retained Hall cut
\(S\):

\[
  \sum_{i\in S}\theta_i\mu_i
  \le
  \frac12\,\beta\big(R_{\rm diag}(S)\big)
  +
  \frac{1}{2N_{\rm ov}}\sum_{i\in S}\frac{\rho_i(\lambda_i^*)}{M_{c,i}}.
\]

Hence on every chain prefix \(J\), the tax queue's deficit against
half-budget backing obeys

\[
  K^{\rm tax}(J)
  :=
  \sup_{\rm prefixes}
  \Big[\sum\theta\mu-\tfrac12\sum\beta\Big]_+
  \;\le\;
  \frac{1}{2N_{\rm ov}}\,{\rm RENT}_{P2}(J),
\]

and by the paid minimal-compensator lemma the minimal
\(dK^{\rm tax}\) is dominated by this feasible one. The overdraft
compensator for the diagonal-backed demand family IS the rent row -
one drawer, one row, no separate monster.

## 3. P2's ledger after this note

EXECUTED: rent aggregation to single-row form (R1); \(dK^{\rm tax}\)
contraction onto that row for the diagonal-backed family (R2).

OPEN, exactly: prefix/suffix carry for demand rows NOT
diagonal-backed; diffuse demand-row tower summability (owned by
F2/F4); the F4 interval comparison of \({\rm RENT}_{P2}\) itself
(smallness is NOT claimed here - if the row fails, it fails as a
Chapter-10 finite-row failure per the F2 reduction's taxonomy); F5.

GUARDS: the domination is against half-budget backing by
construction of the two-coin split; \(\bar Q'\)'s entrance-readable
surrogate (entrance reserve + queue income cap, from the paid
chronological queue) is the predictability route if the worksheet
requires it.

Filed is not cleared. No closure claimed.
