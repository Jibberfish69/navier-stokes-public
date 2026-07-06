---
theorem_id: forward-gold-f3-two-coin-cell-pricing-gagliardo-nirenberg-20260705
status: filed-pending-codex-gate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / FROZEN FRONTIER F3 / P2 weighted Gate-A cell skeleton - throughput priced in tax and in time
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the water can move its quota through a gate only by paying the
  penny-tax as it goes - dissipation, weighted by how hard it is being
  pushed - or by sitting on reserve for the length of the bell.
  Throughput is priced in tax and in time; there is no third coin. The
  two payers of the impedance structure are here as an estimate on the
  actual water: the dissipation coin carries the dial weight, the time
  coin carries the reserve, and both are read on the same doubled
  neighborhood the membership law already licensed.
depends_on:
  - mpp-forward-gold-codex-f3-ga-tax-backing-to-weighted-gate-a-hall-reduction-20260705.md
  - mpp-forward-gold-codex-f3-pressure-allocation-regate-20260705.md
  - mpp-forward-gold-f3-ledger-first-contact-chronological-queue-suitable-solutions-20260705.md
  - mpp-forward-gold-f3-pressure-participation-near-far-allocation-20260705.md
  - mpp-forward-gold-codex-hall-relation-construction-routing-20260705.md
completion_truth: >-
  Supplies the DIAGONAL/DOUBLED-CELL SKELETON of P2's weighted Gate-A
  cell-Hall inequality, unconditionally, on the actual solution class
  (u in L^infty_t L^2_x cap L^2_t H^1_x locally - no pressure, no
  global energy needed; every currency is one already paid by the
  first-contact and allocation notes). (T1 - THE PRICING INEQUALITY)
  For every retained cell (B = B(x_a,r), half-open episode I) the L^3
  throughput currency mu_cell := int_I ||u||^3_{L^3(B)} - the
  denomination in which ALL four income channels and the licensed
  near-field locality edge are already expressed - is priced by the
  doubled cell's two ledger currencies: with Qbar' = sup over I of the
  tested reserve on 2B and beta' = nu int_I int_{2B} |grad u|^2 the
  doubled-cell residence budget, localized Gagliardo-Nirenberg (cutoff
  eta = 1 on B, supported in 2B, |grad eta| <= 2/r; R^3 interpolation
  ||g||_{L^3} <= C_3 ||g||^{1/2}_{L^2} ||grad g||^{1/2}_{L^2}; the
  elementary (x+y)^{3/2} <= sqrt(2)(x^{3/2}+y^{3/2})) plus Holder in
  time (exponents 4/3 and 4) give
    mu_cell <= sqrt(2) C_3 [ (2 Qbar')^{3/4} |I|^{1/4} (beta'/nu)^{3/4}
      + (2/r)^{3/2} |I| (2 Qbar')^{3/2} ].
  Exact combinatorial constants; one named analytic constant C_3
  (quarantined to chapter 10). (T2 - EXACT YOUNG SPLIT: THE TWO COINS)
  For every dial lambda > 0, Young with exponents (4/3, 4) is exact:
    (beta'/nu)^{3/4} X <= (3/4) lambda^{4/3} (beta'/nu)
      + (1/4) lambda^{-4} X^4,  X := (2 Qbar')^{3/4} |I|^{1/4},
  X^4 = (2 Qbar')^3 |I|; hence
    mu_cell <= M_lambda beta' + rho_cell(lambda),
    M_lambda := (3/4) sqrt(2) C_3 lambda^{4/3} / nu,
    rho_cell(lambda) := sqrt(2) C_3 |I| [ (1/4) lambda^{-4} (2Qbar')^3
      + (2/r)^{3/2} (2Qbar')^{3/2} ].
  This is the weighted Gate-A cell shape: throughput linear in the
  positive residence budget with an explicit weight (the dissipation
  coin, dial-weighted, carrying 1/nu exactly as a Reynolds-type readout
  must), plus a residual that is PROPORTIONAL TO EPISODE LENGTH and
  priced in reserve alone (the time coin) - the currency the worksheet
  already carries on its residence-time rows. Both payers read only
  the doubled neighborhood: no reach beyond the locality edge the
  pressure regate licensed. (T3 - CUT FORM, DIAGONAL RELATION) Summing
  over any finite retained family S with bounded overlap N_ov of the
  doubled cells: sum_{i in S} mu_i <= M_lambda N_ov beta(2S) +
  sum_{i in S} rho_i - a Hall-cut inequality for the diagonal/doubled
  relation with the routed residual on the time rows. WHAT THIS DOES
  NOT PAY, exactly: mu here is the L^3 CURRENCY, not yet P1's actual
  flux-gate/SRP throughput row - P2 consumes this skeleton only after
  P1 supplies mu as the retained row; matching the free dial
  lambda^{4/3} to the campaign's Reynolds-excess/tower readout M_j is
  the Gate-A consolidation step, named open; the carry
  (prefix/suffix) edges of the Hall relation are untouched here; the
  marginal-cell fixed tax floor and uniform attenuation stay with
  F2/F4 per the frozen split; record localization F3(c); F5. Payment
  type under the frozen law: a proved unconditional inequality about
  actual solutions in already-paid currencies, with exact exponents
  (3/4, 1/4, 3/2) and exact split constants (3/4, 1/4); the analytic
  constant C_3 and overlap N_ov are named and quarantined. Filed is
  not cleared. No closure claimed.
---

# F3/P2: two-coin cell pricing - throughput pays in tax or in time

## 0. Scope and currencies

Solution class: \(u\in L^\infty_tL^2_x\cap L^2_tH^1_x\) locally - no
pressure representation, no global energy, no suitability needed for
this note (every suitable weak solution of the lane qualifies). Cell
conventions as in the first-contact note. Currencies, all already on
the ledger:

\[
  \mu_{\rm cell}:=\int_I\|u(t)\|_{L^3(B)}^3\,dt
  \quad\text{(the } L^3 \text{ throughput denomination)},
\]

\[
  \bar Q':=\sup_{t\in I}\ \tfrac12\!\int_{2B}|u(t)|^2,
  \qquad
  \beta':=\nu\int_I\!\!\int_{2B}|\nabla u|^2 .
\]

Every income channel of the chronological queue and the licensed
near-field locality edge is denominated in \(\mu\)-currency on \(B\) or
\(2B\); the two payers \(\bar Q',\beta'\) are the queue's own reserve
and budget read on the doubled neighborhood - the one edge the
pressure regate licensed.

## 1. T1: the pricing inequality (exact exponents)

Fix \(\eta\) with \(\eta=1\) on \(B\), \(\operatorname{supp}\eta\subset
2B\), \(0\le\eta\le1\), \(\|\nabla\eta\|_\infty\le 2/r\). For a.e.
\(t\), the \(\mathbb R^3\) interpolation
\(\|g\|_{L^3}\le C_3\|g\|_{L^2}^{1/2}\|\nabla g\|_{L^2}^{1/2}\) applied
to \(g=\eta u(t)\), with
\(\|\nabla(\eta u)\|_{L^2}\le\|\nabla u\|_{L^2(2B)}
+\tfrac2r\|u\|_{L^2(2B)}\) and
\((x+y)^{3/2}\le\sqrt2\,(x^{3/2}+y^{3/2})\), gives

\[
  \|u(t)\|_{L^3(B)}^3
  \le
  \sqrt2\,C_3
  \Big[
    \|u\|_{L^2(2B)}^{3/2}\|\nabla u\|_{L^2(2B)}^{3/2}
    +
    \big(\tfrac2r\big)^{3/2}\|u\|_{L^2(2B)}^{3}
  \Big].
\]

Integrate over the episode; bound \(\|u\|_{L^2(2B)}^2\le 2\bar Q'\) and
apply Holder in time with exponents \((4/3,4)\) to
\(\int_I\|\nabla u\|_{L^2(2B)}^{3/2}\le
|I|^{1/4}\big(\int_I\|\nabla u\|_{L^2(2B)}^2\big)^{3/4}\):

\[
  \mu_{\rm cell}
  \le
  \sqrt2\,C_3
  \Big[
    (2\bar Q')^{3/4}\,|I|^{1/4}\,\big(\beta'/\nu\big)^{3/4}
    +
    \big(\tfrac2r\big)^{3/2}|I|\,(2\bar Q')^{3/2}
  \Big].
\]

Exponents \((3/4,\ 1/4,\ 3/2)\) exact; \(\sqrt2\) and \(2/r\) exact;
\(C_3\) named and quarantined.

## 2. T2: the exact Young split - two coins, no third

For any dial \(\lambda>0\), with \(X:=(2\bar Q')^{3/4}|I|^{1/4}\) and
Young's inequality at exponents \((4/3,4)\):

\[
  \big(\beta'/\nu\big)^{3/4}X
  \le
  \tfrac34\lambda^{4/3}\,\big(\beta'/\nu\big)
  +
  \tfrac14\lambda^{-4}X^4,
  \qquad
  X^4=(2\bar Q')^3|I| .
\]

Therefore

\[
  \mu_{\rm cell}
  \le
  M_\lambda\,\beta'
  +
  \rho_{\rm cell}(\lambda),
\]

\[
  M_\lambda
  :=
  \frac{3\sqrt2\,C_3\,\lambda^{4/3}}{4\,\nu},
  \qquad
  \rho_{\rm cell}(\lambda)
  :=
  \sqrt2\,C_3\,|I|
  \Big[
    \tfrac14\lambda^{-4}(2\bar Q')^{3}
    +
    \big(\tfrac2r\big)^{3/2}(2\bar Q')^{3/2}
  \Big].
\]

This is the weighted Gate-A cell shape demanded by the P2 reduction:

1. THE TAX COIN: throughput linear in the positive residence budget
   \(\beta'\), with explicit weight \(M_\lambda\) carrying \(1/\nu\) -
   exactly the scaling a Reynolds-type readout must carry - and a free
   dial \(\lambda\) in place of the campaign's tower readout.
2. THE TIME COIN: the residual \(\rho_{\rm cell}\) is PROPORTIONAL TO
   \(|I|\) and priced in reserve alone - per-unit-bell-length rent, the
   currency the frozen worksheet already carries on its residence-time
   rows.

No third coin appears. Both payers read only the doubled neighborhood
\(2B\): the pricing never reaches past the locality edge already
licensed by the pressure allocation gate.

## 3. T3: cut form over the diagonal relation

For a finite retained family \(S\) whose doubled cells have overlap
multiplicity at most \(N_{\rm ov}\) (a property of the declared cell
lattice, named),

\[
  \sum_{i\in S}\mu_i
  \le
  M_\lambda\,N_{\rm ov}\,\beta\big(\textstyle\bigcup_{i\in S}2B_i\big)
  +
  \sum_{i\in S}\rho_i(\lambda)
\]

- a Hall-cut inequality for the diagonal/doubled-cell relation, with
the residual routed onto the time rows. The dial may be chosen per
cell (\(\lambda_i\), predictable, since \(\bar Q',|I|,r\) are
entrance-readable), which is the shape of the predictable
Reynolds-weighted density \(\theta_i\simeq1/M_i\) in the reduced P2
statement.

## 4. Register - paid / open, exactly

PAID, unconditional on the actual class: the cell pricing inequality
T1 with exact exponents; the exact two-coin split T2 exhibiting the
two-payer impedance structure on actual solutions; the diagonal cut
form T3 with named overlap.

NOT PAID, exactly: \(\mu\) here is the \(L^3\) CURRENCY - P2 consumes
this skeleton only after P1 supplies the actual flux-gate/SRP retained
throughput row in this denomination; matching the free dial
\(\lambda^{4/3}\) to the campaign's Reynolds-excess/tower readout
\(M_j\) (the Gate-A consolidation); the carry (prefix/suffix) edges of
the Hall relation; the marginal-cell fixed tax floor and uniform
attenuation (frozen to F2/F4); record localization F3(c); F5.
Constants \(C_3\), \(N_{\rm ov}\) named and quarantined to chapter 10.

Filed is not cleared. No closure claimed.
