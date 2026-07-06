---
theorem_id: forward-gold-f4-rent-row-time-integrated-declaration-counting-dissolves-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / product front / the rent row declared time-integrated for ALL retained cells - the counting question dissolves
authorship: >-
  Derivation: Claude (Fable), 2026-07-06. Physical story Thomas Birnie:
  charge rent by the hour, not by the lease. Once the ledger bills
  only occupied time, it no longer needs to count tenants - a thousand
  small tenants and one large tenant pay the same total for the same
  occupancy, and the building's energy cap is the only landlord that
  matters. The lease-counting problem was an artifact of billing by
  supremum; billed by history, it never existed.
depends_on:
  - mpp-forward-gold-codex-time-integrated-rent-f4-payment-20260706.md
  - mpp-forward-gold-codex-weighted-cell-assembly-qbar-sup-obstruction-20260706.md
  - mpp-forward-gold-codex-f4-charged-financed-split-reduction-20260706.md
  - mpp-forward-gold-codex-cellassembly-lineage-count-reduction-20260706.md
  - mpp-forward-gold-codex-f3-p2-m-dial-consolidation-20260705.md
  - mpp-forward-gold-codex-f4-rent-envelope-cell-length-gate-20260705.md
completion_truth: >-
  Exercises the row-declaration pattern (gated twice before: the
  modified-channel row, the clipped-cell convention) on Codex's
  TimeIntegratedRent payment: the F4 rent row is DECLARED
  TIME-INTEGRATED FOR ALL RETAINED CELLS - financed and sub-financed
  alike - since the pointwise-Young route is valid for every cell and
  STRONGER than the sup-row cell by cell (it charges only occupied
  time; the sup-row overcharges dormant time). CONSEQUENCES, in
  order: (C1 - THE COUNTING QUESTION DISSOLVES) LineageCount_F4,
  F4ChargedFinancedSplit, and JminToCountFloor become UNNECESSARY
  for the rent row - they were artifacts of the raw
  length-times-supremum assembly; the time-integrated packing lemma
  (bounded overlap + energy cap) bounds the assembled rent linearly
  in |I| with NO count of any kind: sum_i rho_ti,i <= sqrt2 C_3 |I|
  [ (1/4) lambda^{-4} (2 N_ov E_0)^3 + (2/r)^{3/2}
  (2 N_ov E_0)^{3/2} ] (up to the fixed overlap-carrying
  convention). N_time and B_time LEAVE the sheet; the CellAssembly
  guard package reduces to BoundaryTail_F4 alone. (C2 - THE ONE
  REMAINING DISPLAY, honest) the M-dial consolidation summed the
  rent TOWER with per-band dials lambda*_i and kappa-decays; the
  time-integrated declaration requires RE-DISPLAYING that tower sum
  with q_i(t) pointwise in place of Qbar'_i - same geometric sums,
  same dial, the packing lemma applied at p = 3 and p = 3/2 per
  band; mechanical, but it must be displayed before D_P2^{ti}
  replaces D_P2 on the sheet - NAMED: TimeIntegratedTowerDisplay.
  (C3 - THE PRODUCT FRONT AFTER, if gated) R_prod^F4 =
  (1/2)Delta_G6a - K_off(1 - tau_min + Omega_R4) - D_P2^{ti} > 0,
  with D_P2^{ti} in sheet symbols (nu, C's, E_0, N_ov, r,
  kappa_min via the tower) and NO assembly guards beyond
  BoundaryTail_F4; the front is [the row] + [Delta_G6a ingredients]
  + [BoundaryTail_F4] + [the display C2] + [length choice]. (C4 -
  LAWFULNESS) same pattern as the gated declarations: the
  time-integrated row is a cell-by-cell STRENGTHENING of the gated
  sup-row (rho_ti <= rho_sup always, by q(t) <= Qbar'); every
  downstream consumer of the rent row consumes an upper envelope,
  so a smaller lawful envelope substitutes freely; the escrow/
  prefix-compensator machinery (K^tax <= RENT) only improves. GUARD:
  if any gated note is found to spend the SUP-row's specific value
  (not as an upper envelope), the declaration is revisited there -
  none found in the rent chain (the tower gate, the envelope gate,
  the rent-loaded consolidation all treat RENT as an upper bound).
  NOT PAID: TimeIntegratedTowerDisplay (C2); BoundaryTail_F4's
  numerical bound; Delta_G6a's compact-band ingredients; the wall;
  Door C. The financed/sub-financed split may still matter for
  OTHER rows (tax, records) - it is only the RENT row that no
  longer needs it. Payment type: a lawful strengthening declaration
  dissolving three named theorems into one mechanical display -
  the third time the row-declaration pattern has removed a false
  burden. Filed is not cleared. No closure claimed.
---

# F4 rent: charge by the hour, and the tenant count never mattered

## 1. The declaration

The F4 rent row is declared TIME-INTEGRATED for ALL retained cells:

per cell, the reserve rent is
\[
  \rho_{{\rm ti},i}(\lambda)
  =
  \sqrt2\,C_3
  \int_{I_i}
  \Big[
    \tfrac14\lambda^{-4}(2q_i(t))^3
    +
    \big(\tfrac2{r}\big)^{3/2}(2q_i(t))^{3/2}
  \Big]dt,
  \qquad
  q_i(t)=\tfrac12\!\int_{2B_i}|u(t)|^2,
\]

as paid by Codex's pointwise-Young derivation - valid for every
retained cell, financed or not, and STRONGER than the sup-row cell by
cell (\(q_i(t)\le\bar Q'_i\) pointwise, so
\(\rho_{\rm ti}\le\rho_{\rm sup}\) always).

## 2. C1: the counting question dissolves

With the time-integrated row, the packing lemma (doubled overlap
\(\le N_{\rm ov}\), energy cap \(E_0\)) assembles the whole retained
family with NO count:

\[
  \sum_i\rho_{{\rm ti},i}(\lambda)
  \le
  \sqrt2\,C_3\,|I|
  \Big[
    \tfrac14\lambda^{-4}(2N_{\rm ov}E_0)^3
    +
    \big(\tfrac2r\big)^{3/2}(2N_{\rm ov}E_0)^{3/2}
  \Big]
\]

(up to the fixed overlap-carrying convention). LineageCount_F4,
F4ChargedFinancedSplit, and JminToCountFloor were artifacts of
billing by supremum - billed by history, they never existed.
\(N_{\rm time}\) and \(B_{\rm time}\) leave the sheet; the assembly
guard package reduces to BoundaryTail_F4 alone.

## 3. C2: the one remaining display (honest)

The M-dial consolidation summed the rent TOWER with per-band dials
\(\lambda^*_i\) and the \(\kappa^{-2}\), \(\kappa^{-1/2}\) decays.
The declaration requires re-displaying that tower sum with
\(q_i(t)\) pointwise in place of \(\bar Q'_i\) - same geometric
sums, same dial, the packing lemma applied per band at \(p=3\) and
\(p=3/2\). Mechanical, but it must be displayed before
\(D_{P2}^{\rm ti}\) replaces \(D_{P2}\) on the sheet. NAMED:
TimeIntegratedTowerDisplay.

## 4. C3: the product front after (if gated)

\[
  R_{\rm prod}^{F4}
  =
  \tfrac12\Delta_{\rm G6a}
  -K_{\rm off}(1-\tau_{\min}+\Omega_{\rm R4})
  -D_{P2}^{\rm ti}
  >0,
\]

with \(D_{P2}^{\rm ti}\) in sheet symbols and no assembly guards
beyond BoundaryTail_F4. The front: the row, \(\Delta_{\rm G6a}\)'s
ingredients, BoundaryTail_F4, the display, the length choice.

## 5. C4: lawfulness and guard

Same pattern as the twice-gated declarations: every downstream
consumer of RENT spends an UPPER ENVELOPE (the tower gate, the
envelope gate, the rent-loaded consolidation, the prefix-escrow
compensator all treat RENT as an upper bound), so a smaller lawful
envelope substitutes freely and the compensator domination only
improves. GUARD: if any gated note is found to spend the sup-row's
specific value rather than an envelope, the declaration is revisited
there - none found in the rent chain. The financed/sub-financed
split may still matter for OTHER rows (tax, record); only the RENT
row sheds it.

NOT PAID: TimeIntegratedTowerDisplay; BoundaryTail_F4's numerical
bound; \(\Delta_{\rm G6a}\)'s compact-band ingredients; the wall;
Door C.

Filed is not cleared. No closure claimed.
