---
theorem_id: forward-gold-refill-telescoped-dwell-return-budget-row-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / one-sided product route / answer to the net-extraction subgate — the refill-telescoped dwell charge and the return budget row
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, answering the update-429/430
  gate's net-extraction subgate the same day. Physical story Thomas
  Birnie: the gate is right that the bottom can be refilled — the
  fluid-object's returns flow back on the swing. But a refill is not
  free: it is a theft being repaid, and the ledger already carries
  that debt. Every hour the object spends back in the high-bottom
  phase was purchased with returned mass, and complete theft takes
  infinite patience — the enemy cannot refill the bottom forever
  without an infinite return budget. So the dwell does not need to be
  a prefix. It needs to be AFFORDABLE: initial excess plus total
  refills, divided by the drain each dwelling period must pay. One
  new row remains — the return budget is finite per history — and it
  lives exactly where the return race always lived.
depends_on:
  - mpp-forward-gold-codex-fable-update429-430-pincer-pricing-dwellrun-gate-20260706.md
  - mpp-forward-gold-dwell-run-split-monotone-casimir-swing-beats-six-drifts-20260706.md
  - mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705.md
  - mpp-forward-gold-codex-period-cap-traversal-reduction-20260706.md
  - mpp-forward-gold-codex-top-bracket-sharp-form-bottom-floor-gap-reduction-20260706.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
completion_truth: >-
  Answers the net-extraction subgate by replacing the prefix claim
  with a refill-telescoped budget bound; the prefix property is NOT
  claimed. Scope acceptance first: the Casimir law is the Gate-6
  normalized signed-measure finite-chain slow row, d(log G_0^2)/dt =
  -rho_ext with rho_ext SIGNED; positive part = drain, negative part
  = return/refill; this note keeps that scope visible throughout.
  (E1 - THE BUDGET IDENTITY, exact) Along a routed history let
  phi = log G_0^2, phi_thr = log G_thr, V_log^+ := int (rho_ext)_-
  dt (the total upward log-variation = the RETURN BUDGET in log
  units). All downward variation of phi spent above the threshold is
  financed by initial excess plus refills: total down-drop above
  phi_thr <= (phi(0) - phi_thr)_+ + V_log^+. (E2 - PERIOD
  GRANULARITY WITH HYSTERESIS, a routing choice) Classify each
  complete traversal period (boundary-routed; each period <= T_* by
  the period cap): RUN iff sup over the period of G_0^2 <=
  (6/5) G_thr, DWELL otherwise, with G_thr = (g_0/2) A_0 (A_0+g_0)
  and deadband delta_re = log(6/5). On RUN periods s =
  G_0^2/(r_+ r_*) <= (6/5)(g_0/2) = (3/5) g_0 <= (3/5) g, and the
  D4 chain with theta = 3/5 gives the RUN row A_0 > 8 d_R4^+ (exact:
  sigma g - (1-sigma)s >= (1-theta)g/2 = g/5; d(s+g) <=
  (8/5) d g; A g/5 > (8/5) d g iff A > 8d). THE SWING BEATS EIGHT
  DRIFTS on the hysteresis route; six on the prefix route if a net
  law is later supplied. (E3 - DWELL PERIODS ARE COUNTED BY THE
  BUDGET) Let q_per := e_per^+/X_max be the per-period drain
  quantum on financed dwell periods (e_per^+ = the per-traversal
  drain floor OWED as a display by the period-cap traversal
  reduction - flagged n1). Every DWELL period either pays net
  log-drop >= q_per - delta_re (kind 1, charged to E1's budget) or
  contains internal up-variation >= delta_re (kind 2, charged to
  V_log^+/delta_re); hence #DWELL periods <= [(phi(0) -
  phi_thr)_+ + V_log^+]/(q_per - delta_re)_+ + V_log^+/delta_re + 1,
  and total dwell time <= (#DWELL periods) T_*. Boundary cases of
  the classification fold into the constants at gate time; the
  budget identity itself is exact. (E4 - THE RETURN BUDGET ROW,
  the single new input) V_log^+ <= V_cap^+ per routed history on
  the carried band. This is the note's one genuinely new finite
  row. Its natural home is the return-race / later-debt machinery:
  refills are repaid thefts, already priced once by first-admission
  - the row asserts the ledger's return currency is finite per
  history. Named, quarantined to Chapter 10. (E5 - CONSUMER
  AMENDMENT v2) c_W^top is spent on RUN periods; the dwell charge
  enters the LENGTH row as the bounded block term (#DWELL periods)
  T_* alongside B_bot^prod and 2 K_off T_*; dwell periods still pay
  time-integrated rent as occupied time - the dwell charge is a
  length-row term, a different currency, so no double-charge
  (n3 for Codex to confirm). HONEST GAPS: (n1) the per-period drain
  quantum e_per^+ display is owed from the period-cap traversal
  reduction; (n2) V_cap^+ is a REAL new row that can fail - if the
  return budget is unbounded on the carried band, the dwell charge
  is unbounded and this route fails at an honest physical point
  (the return race lost); (n3) rent non-double-charge confirmation;
  (n4) q_per > delta_re needed for kind-1 counting (else re-split
  the deadband); (n5) all of it on W-0 footing (the signed slow
  row is the finite-chain relay law). No product positivity,
  F2/F4/F5, Chapter-10, manuscript, or MPP closure is claimed.
  Filed is not cleared.
---

# The refill-telescoped dwell charge: dwell is affordable, not free

## E0. Scope acceptance

The gate is right: the Gate-6 rho row is a SIGNED measure —
\(d(\log G_0^2)/dt = -\rho_{\rm ext}\) with both orientations
present, negative mass routed as return/debt. A positive gross
drain floor does not bound the net. The prefix claim of the
dwell-run note is therefore withdrawn; what follows replaces it and
needs no monotonicity.

## E1. The budget identity (exact)

Along a routed history write \(\phi = \log G_0^2\),
\(\phi_{\rm thr} = \log G_{\rm thr}\), and

\[
  V^+_{\log} := \int (\rho_{\rm ext})_-\,dt
  \qquad\text{(the RETURN BUDGET in log units).}
\]

Every unit of downward \(\phi\)-variation spent above the threshold
is financed by the initial excess or by refills:

\[
  \text{(down-drop above }\phi_{\rm thr})
  \;\le\;
  \bigl(\phi(0)-\phi_{\rm thr}\bigr)_+ \;+\; V^+_{\log} .
\]

## E2. Period granularity with hysteresis (a routing choice)

Classify each complete boundary-routed traversal period (each of
length \(\le T_*\) by the period cap):

\[
  \text{RUN} \iff \sup_{\rm period} G_0^2 \le \tfrac{6}{5}\,G_{\rm thr},
  \qquad \text{DWELL otherwise},
\]

with \(G_{\rm thr} = \tfrac{g_0}{2}A_0(A_0+g_0)\) and deadband
\(\delta_{\rm re} = \log\tfrac{6}{5}\). On RUN periods

\[
  s \le \frac{(6/5)G_{\rm thr}}{A_0(A_0+g_0)} = \frac{3}{5}g_0
  \le \frac{3}{5}g,
\]

and the D4 chain with \(\theta = \tfrac35\) gives, exactly,

\[
  \sigma g-(1-\sigma)s \ge \frac{(1-\theta)g}{2} = \frac{g}{5},
  \qquad
  d(s+g) \le \frac{8}{5}\,d\,g,
\]

so the sharp top bracket is positive on RUN whenever

\[
  \boxed{\;A_0 > 8\,d_{\rm R4}^+\;}
  \qquad\text{— the swing beats eight drifts (hysteresis route).}
\]

(Six drifts remain sufficient on the original split if a net
extraction law is later supplied.)

## E3. Dwell periods are counted by the budget

Let \(q_{\rm per} := \mathfrak e^+_{\rm per}/X_{\max}\) be the
per-period drain quantum on financed dwell periods
(\(\mathfrak e^+_{\rm per}\) = the per-traversal drain floor owed as
a display by the period-cap traversal reduction — gap n1). Every
DWELL period is one of two kinds:

1. **kind 1** — net log-drop \(\ge q_{\rm per} - \delta_{\rm re}\),
   charged against E1's budget;
2. **kind 2** — internal up-variation \(\ge \delta_{\rm re}\),
   charged against \(V^+_{\log}/\delta_{\rm re}\).

Hence

\[
  \#\text{DWELL}
  \;\le\;
  \frac{(\phi(0)-\phi_{\rm thr})_+ + V^+_{\log}}
       {(q_{\rm per}-\delta_{\rm re})_+}
  \;+\;
  \frac{V^+_{\log}}{\delta_{\rm re}}
  \;+\;1,
  \qquad
  T_{\rm dwell}^{\rm tot} \le (\#\text{DWELL})\,T_* .
\]

Classification boundary cases fold into the constants at gate time;
the budget identity is exact.

## E4. The return budget row (the single new input)

\[
  \boxed{\;V^+_{\log} \le V^+_{\rm cap}\;}
  \qquad\text{per routed history on the carried band.}
\]

This is the note's one genuinely new finite row. Its home is the
return-race / later-debt machinery: a refill is a repaid theft,
already priced once by first-admission — the row asserts the return
currency is finite per history. Complete theft takes infinite
patience; so does complete refill. Named, quarantined to Chapter 10.

## E5. Consumer amendment v2

\(c_W^{\rm top}\) is spent on RUN periods. The dwell charge enters
the LENGTH row as \((\#\text{DWELL})\,T_*\), beside
\(B_{\rm bot}^{\rm prod}\) and \(2K_{\rm off}T_*\). Dwell periods
still pay time-integrated rent as occupied time — the dwell charge
is a length-row term, a different currency (n3 for Codex to
confirm).

## Gaps (honest)

(n1) the per-period drain quantum \(\mathfrak e^+_{\rm per}\)
display is owed from the period-cap traversal reduction;
(n2) \(V^+_{\rm cap}\) is a REAL new row that can fail — an
unbounded return budget means the dwell charge is unbounded and this
route fails at an honest physical point: the return race lost;
(n3) rent non-double-charge; (n4) \(q_{\rm per} > \delta_{\rm re}\)
needed for kind-1 counting (else re-split the deadband);
(n5) the signed slow row is the finite-chain relay law — W-0
footing throughout.

Filed is not cleared. No closure claimed.
