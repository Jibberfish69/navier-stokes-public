---
theorem_id: forward-gold-return-budget-mass-conversion-nogo-reentry-parking-reduction-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / one-sided product route / the return budget row — mass conversion, a bookkeeping no-go, and the re-entry/parking reduction
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, attacking the open
  return-budget row the same day the parametric gate named it.
  Physical story Thomas Birnie: the enemy's refill rides the
  swap-back ray — the same channel as the theft, run backwards. Pure
  accounting cannot stop it, and this note proves why: stolen goods
  are cheap to return at the bottom of the swing, so the enemy can
  pump the bottom back up with zero net mass. What stops it is not
  the ledger but the CLOCK: within any honest draining period the
  refill residue is only the frozen-average error, already priced by
  R4; and a refill big enough to re-lift the bottom must re-park the
  spring — and parking was priced long ago: it survives extraction
  only in a nearly useless logarithmic band, and each re-parking
  pays that price again. The return budget is a dynamical fact about
  when the swap-back ray can fire, not a conservation fact about how
  much mass it carries.
depends_on:
  - mpp-forward-gold-codex-refill-dwell-budget-parametric-gate-20260706.md
  - mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-refill-telescoped-dwell-return-budget-row-20260706.md
  - mpp-forward-gold-signed-subwindow-decomposition-20260705.md
  - mpp-forward-gold-r4-one-period-phase-amplitude-perturbation-20260705.md
completion_truth: >-
  Reduces the open return-budget row V_log^+ <= V_cap^+ by two exact
  lemmas, one exact no-go, and one two-part decomposition; proves no
  positivity and does not close the row. (F1 - LOG-TO-MASS
  CONVERSION, exact) On the dwell region G_0^2 > G_thr the package
  coordinate is floored: X >= s = G_0^2/(r_+ r_*) > G_thr/X_max^2;
  since d(phi)^+ = (rho_ext)_- dt = d e^-/X, every unit of swap-back
  MASS lifts phi = log G_0^2 by at most X_max^2/G_thr. Hence
  V_log^+ (above threshold) <= (X_max^2/G_thr) E^-_dwell: the row
  converts from log currency to the ledger's native package-mass
  currency. (F2 - THE BOOKKEEPING NO-GO, exact) Mass-pairing alone
  CANNOT close the row. A drain of mass m executed at X <= X_max
  costs the enemy phi-down >= m/X_max, while its paired refill of
  the same mass executed at X >= G_thr/X_max^2 buys phi-up <=
  m X_max^2/G_thr; the pump ratio is X_max^3/G_thr, and G_thr <
  sup G_0^2 <= X_max^3 ALWAYS, so the ratio exceeds 1 on every
  admissible band: a drain-low/refill-bottom cycle lifts phi with
  zero net mass. Consequence: NO proof of V_cap^+ from mass
  conservation / no-recount pairing alone can exist; the row is
  DYNAMICAL - it must come from when the swap-back orientation can
  fire, not from how much mass it carries. (This is the same genre
  as the rate-gap incompatibility: an exact closure of a whole class
  of attempted proofs.) (F3 - THE TWO-PART DECOMPOSITION, lawful
  homes named) Split V_log^+ by the installed signed-subwindow
  routing at period granularity: (i) FORWARD-ROUTED periods (net
  extraction orientation positive): the intra-period refill residue
  is the frozen-vs-true one-period error - R4 currency; the needed
  display is v_R4 := the per-period up-variation budget of log G_0^2
  on forward periods, homed at the R4 one-period
  phase/amplitude-perturbation note in the same normalization as
  drift_per; the finite row v_R4 < delta then makes forward periods
  contribute NO kind-2 dwell periods at deadband delta. (ii)
  BACKWARD-ROUTED episodes (the D2 swap-back ray): each dwell
  re-entry requires >= delta of up-variation delivered by
  backward-routed mass above the threshold; the residual physical
  row is THE RE-ENTRY COUNT ROW N_re <= N_cap per routed history.
  (F4 - THE PARKING CAP IS THE NAMED CANDIDATE FOR N_re, flagged
  not proved) A refill that re-lifts the Casimir above threshold
  re-creates the near-turning configuration; the return-race
  writeup's un-parking law (separatrix distance >= f after
  extraction REGARDLESS of prior tuning; parking survives
  extraction only in the band K in [pi/2, (1/2)ln(16/f)]) prices
  each re-parking anew - re-entries are not free repetitions but
  full-price parkings, and the financed extraction un-parks each
  one. Whether this yields N_re <= N_cap (or a per-re-entry time
  cost that the length row can absorb) is the flagged verification,
  homed at the parking/un-parking sections of the return-race
  writeup - per the flag-then-verify protocol nothing is claimed
  beyond the naming. HONEST NET: the return-budget row now reads
  [v_R4 < delta on forward periods] + [N_re <= N_cap for
  backward-routed re-entries], with (F2) proving no third route
  through pure accounting exists. Both are REAL rows that can fail;
  failures are honest deliverables. No product positivity,
  F2/F4/F5, Chapter-10, manuscript, or MPP closure is claimed.
  Filed is not cleared.
---

# The return budget: mass conversion, a no-go, and the re-entry/parking reduction

## F1. Log-to-mass conversion above the threshold (exact)

On the dwell region \(G_0^2 > G_{\rm thr}\),

\[
  X \ge s = \frac{G_0^2}{r_+ r_*} > \frac{G_{\rm thr}}{X_{\max}^2},
\]

and \(d\phi^+ = (\rho_{\rm ext})_-\,dt = d\mathfrak e^-/X\), so

\[
  \boxed{\;
  V^+_{\log}\big|_{\rm above\ thr}
  \;\le\;
  \frac{X_{\max}^2}{G_{\rm thr}}\;\mathfrak E^-_{\rm dwell}
  \;}
\]

with \(\mathfrak E^-_{\rm dwell}\) the swap-back package mass
delivered above the threshold. The row converts from log currency to
the ledger's native mass currency.

## F2. The bookkeeping no-go (exact)

Mass pairing cannot close the row. A drain of mass \(m\) at
\(X \le X_{\max}\) costs the enemy

\[
  \phi\text{-down} \ge \frac{m}{X_{\max}},
\]

while its paired refill of the same mass at
\(X \ge G_{\rm thr}/X_{\max}^2\) buys

\[
  \phi\text{-up} \le \frac{m\,X_{\max}^2}{G_{\rm thr}} .
\]

The pump ratio is \(X_{\max}^3/G_{\rm thr}\), and since
\(G_0^2 = r_-r_+r_* \le X_{\max}^3\) on the band,
\(G_{\rm thr} < X_{\max}^3\) ALWAYS: the ratio exceeds one on every
admissible band. A drain-high/refill-low cycle lifts \(\phi\) with
zero net mass.

**Consequence.** No proof of \(V^+_{\rm cap}\) can come from mass
conservation or no-recount pairing alone. The return budget is a
DYNAMICAL row — it must come from when the swap-back orientation can
fire, not from how much mass it carries. This closes a whole class
of attempted proofs, in the same genre as the rate-gap
incompatibility.

## F3. The two-part decomposition (lawful homes named)

Split \(V^+_{\log}\) by the installed signed-subwindow routing at
period granularity:

1. **Forward-routed periods** (net extraction orientation positive):
   the intra-period refill residue is the frozen-vs-true one-period
   error — R4 currency. Needed display:
   \[
     v_{\rm R4} := \text{per-period up-variation budget of } \log G_0^2
     \text{ on forward periods},
   \]
   homed at the R4 one-period phase/amplitude-perturbation note, in
   the same normalization as \(\operatorname{drift}_{\rm per}\). The
   finite row \(v_{\rm R4} < \delta\) makes forward periods
   contribute NO kind-2 dwell periods at deadband \(\delta\).
2. **Backward-routed episodes** (the D2 swap-back ray): each dwell
   re-entry needs \(\ge \delta\) of up-variation from backward-routed
   mass above the threshold. Residual physical row:
   \[
     \boxed{\;N_{\rm re} \le N_{\rm cap}\;}
     \qquad\text{per routed history (THE RE-ENTRY COUNT ROW).}
   \]

Then

\[
  V^+_{\log}
  \;\le\;
  (\#\text{forward periods})\,v_{\rm R4}
  \;+\;
  N_{\rm re}\cdot(\text{per-episode lift}),
\]

and with \(v_{\rm R4} < \delta\) the dwell count of the parametric
gate is driven by \(N_{\rm re}\) alone.

## F4. The parking cap is the named candidate for N_re (flagged, not proved)

A refill that re-lifts the Casimir above threshold re-creates the
near-turning configuration: the spring must re-park. The
return-race writeup prices parking exactly: extraction of fraction
\(f\) moves the separatrix distance to \(\ge f\) REGARDLESS of prior
tuning, and parking survives extraction only in the band
\(K \in [\pi/2, \tfrac12\ln(16/f)]\) — nearly useless. So each
re-entry is a full-price parking, un-parked by the financed
extraction itself. Whether this yields \(N_{\rm re} \le N_{\rm cap}\)
outright, or a per-re-entry time cost the length row absorbs, is the
flagged verification, homed at the parking/un-parking sections of
the return-race writeup. Per the flag-then-verify protocol, nothing
is claimed here beyond the naming.

## Honest net

The return-budget row now reads

\[
  [\,v_{\rm R4} < \delta \text{ on forward periods}\,]
  \;+\;
  [\,N_{\rm re} \le N_{\rm cap}\,],
\]

with F2 proving no third route through pure accounting exists. Both
are REAL rows that can fail; failures are honest deliverables (the
return race lost, at a physical point).

Filed is not cleared. No closure claimed.
