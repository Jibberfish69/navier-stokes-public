---
theorem_id: forward-gold-dwell-run-split-monotone-casimir-swing-beats-six-drifts-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / one-sided product route / answer to the bottom-floor/top-gap reduction — the dwell-run split
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, answering Codex's top-bracket
  sharp form (bottom-floor/gap reduction) the same day. Physical story
  Thomas Birnie: the fluid-object that enters carrying a high bottom
  is not a different enemy — it is the same enemy earlier in its life.
  The bottom holding is the Casimir, and the Casimir only ever drains
  on a financed window; it cannot be refilled. So the high-bottom
  phase is a PREFIX of the history, over in a dwell time the drain
  itself prices, and after the prefix the object runs forever in the
  low-bottom band where the spring's average height (never less than
  half the swing) beats the drift with room to spare. The certification
  constant is six: the swing must beat six drifts.
depends_on:
  - mpp-forward-gold-codex-top-bracket-sharp-form-bottom-floor-gap-reduction-20260706.md
  - mpp-forward-gold-codex-one-sided-product-consumer-rewrite-20260706.md
  - mpp-forward-gold-top-bracket-elliptic-certification-telescoped-bottom-20260706.md
  - mpp-forward-gold-codex-financed-swing-rootgap-floor-reduction-20260706.md
  - mpp-forward-gold-codex-period-cap-traversal-reduction-20260706.md
  - mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705.md
completion_truth: >-
  Answers the bottom-floor/top-gap reduction by converting the s/g
  band condition into a monotone-prefix endpoint charge plus one
  constant comparison. Variables as in the sharp-form note: s = r_-,
  A = r_+ - r_-, g = r_* - r_+, sigma = sigma(m) >= 1/2, d = d_R4;
  rho_ext denotes the Gate-6 extraction drain rate (NOT the coupling
  ratio rho = |g_2|/(2|g_1|) of the seed row — name collision noted).
  (D1 - CASIMIR DECAY IS PRICED BY FINANCING, exact) On a financed
  window, d e = rho_ext X dt with e^+(I) >= G_e |I| and X <= X_max
  give int rho_ext dt >= G_e t / X_max, hence G_0^2(t) <= G_0^2(0)
  exp(-G_e t / X_max): the Casimir decays EXPONENTIALLY at the sheet
  rate G_e/X_max. (D2 - THE SPLIT IS DEFINED BY THE MONOTONE
  QUANTITY) Set the Casimir threshold G_thr := (g_0/2) A_0 (A_0 +
  g_0) (financed floors A >= A_0, g >= g_0 from Phi_0 + period cap).
  DWELL := {G_0^2 > G_thr}, RUN := {G_0^2 <= G_thr}. Because G_0^2
  only decays on financed windows, DWELL is a PREFIX of each routed
  block and RUN is forward-invariant — no re-entry, no recount; this
  is the C4 telescope lesson applied to the bottom FLOOR instead of
  the bottom retreat. On RUN: s = G_0^2/(r_+ r_*) <= G_thr/(A_0(A_0
  + g_0)) = g_0/2 <= g/2. (D3 - DWELL IS BOUNDED, one log) T_dwell
  <= (X_max/G_e) log( G_0^2(entry) / G_thr ) <= (X_max/G_e) log(
  X_max^3 / G_thr ), per routed block, charged to the length row
  exactly as B_bot^prod and 2 K_off T_* are — an endpoint/block
  charge, never a rate. Named and quarantined to Chapter 10. (D4 -
  THE RUN ROW IS ONE CONSTANT COMPARISON, exact fractions) On RUN
  (s <= g/2), using ONLY sigma >= 1/2: sigma g - (1-sigma)s =
  sigma(g+s) - s >= (g-s)/2 >= g/4, and d(s+g) <= (3/2) d g; hence
  the sharp positivity condition A(sigma g - (1-sigma)s) > d(s+g)
  holds whenever A > 6d, i.e. A_0 > 6 d_R4^+: THE SWING BEATS SIX
  DRIFTS. This replaces A/2 > d as the certification surface for
  Delta_G6a^top restricted to RUN, and it is sufficient for the
  exact bracket, not just the crude floor. (D5 - CONSUMER AMENDMENT
  REQUESTED) The active-window rows spend c_W^top on RUN only; DWELL
  contributes T_dwell to the length-row numerator. This is the same
  surgery the consumer rewrite performed for B_bot^prod and is
  Codex's to gate. HONEST GAPS: (k1) D1 rests on the extraction law
  dG_0^2 = -rho_ext G_0^2 — Manley-Rowe-forced within the relay
  model, W-0 footing, same as Part I, no worse and no better; (k2)
  the financed floors A_0, g_0 and the caps X_max enter D2/D3 and
  are Phi_0-financed — Phi_0 > 0 remains the producer beneath
  everything; (k3) DWELL windows still pay time-integrated rent
  (D_P2^ti runs over them) — the amendment must confirm no
  double-charge; (k4) A_0 > 6 d_R4^+ is a REAL comparison that can
  fail; if it fails, F4 decides at an honest physical point, and
  the sharper sigma^-/m-band form of D4 (constant better than 6 on
  a certified modulus band) is the named fallback. No product
  positivity, F2/F4/F5, Chapter-10, manuscript, or MPP closure is
  claimed. Filed is not cleared.
---

# The dwell-run split: the high bottom is a prefix, and the swing must beat six drifts

## D1. Financing prices the Casimir's decay (exact)

On a financed window the drain currency is
\(d\mathfrak e = \rho_{\rm ext} X\,dt\) with
\(\mathfrak e^+(I) \ge G_{\mathfrak e}|I|\) and \(X \le X_{\max}\).
Hence

\[
  \int_0^t \rho_{\rm ext}\,dt'
  \;\ge\;
  \frac{G_{\mathfrak e}}{X_{\max}}\,t,
  \qquad
  G_0^2(t)
  \;\le\;
  G_0^2(0)\,
  e^{-G_{\mathfrak e} t / X_{\max}} .
\]

The Casimir decays exponentially at the sheet rate
\(G_{\mathfrak e}/X_{\max}\). (\(\rho_{\rm ext}\) is the Gate-6
extraction drain rate; it is NOT the seed row's coupling ratio
\(\rho = |g_2|/(2|g_1|)\) — the name collision is hereby flagged.)

## D2. The split is defined by the monotone quantity

Set the Casimir threshold

\[
  G_{\rm thr} := \frac{g_0}{2}\,A_0\,(A_0+g_0),
\]

with \(A \ge A_0\), \(g \ge g_0\) the financed floors (swing floor
from \(\Phi_0\); separatrix gap from the period cap). Define

\[
  \text{DWELL} := \{\,G_0^2 > G_{\rm thr}\,\},
  \qquad
  \text{RUN} := \{\,G_0^2 \le G_{\rm thr}\,\}.
\]

Because \(G_0^2\) only decays on financed windows, DWELL is a
**prefix** of each routed block and RUN is **forward-invariant**: no
re-entry, no recount. This is the telescoped-bottom lesson applied to
the bottom floor instead of the bottom retreat. On RUN,

\[
  s = \frac{G_0^2}{r_+ r_*}
  \le \frac{G_{\rm thr}}{A_0 (A_0+g_0)}
  = \frac{g_0}{2}
  \le \frac{g}{2}.
\]

## D3. The dwell is bounded — one logarithm per block

From D1,

\[
  T_{\rm dwell}
  \;\le\;
  \frac{X_{\max}}{G_{\mathfrak e}}
  \log\frac{G_0^2(\text{entry})}{G_{\rm thr}}
  \;\le\;
  \frac{X_{\max}}{G_{\mathfrak e}}
  \log\frac{X_{\max}^3}{G_{\rm thr}},
\]

per routed block — an endpoint/block charge in the length row,
exactly where \(B_{\rm bot}^{\rm prod}\) and \(2K_{\rm off}T_*\)
already sit. Never a rate. Named, quarantined to Chapter 10.

## D4. On RUN the sharp row is one constant comparison

On RUN (\(s \le g/2\)), using only \(\sigma \ge \tfrac12\):

\[
  \sigma g - (1-\sigma)s
  = \sigma(g+s) - s
  \;\ge\; \frac{g+s}{2} - s
  = \frac{g-s}{2}
  \;\ge\; \frac{g}{4},
  \qquad
  d(s+g) \le \frac{3}{2}\,d\,g .
\]

Hence the sharp positivity condition
\(A(\sigma g - (1-\sigma)s) > d(s+g)\) holds whenever

\[
  \boxed{\;A_0 > 6\,d_{\rm R4}^+\;}
  \qquad\text{— the swing beats six drifts.}
\]

This certifies the EXACT top bracket on RUN (not merely the crude
floor), and it replaces \(A/2 > d\) as the certification surface. If
a better constant is needed, the named fallback is the
\(\sigma^-\)-band form: on a certified modulus band \(m \in [m_0,
m_*]\), replace \(\tfrac12\) by \(\sigma(m_0)\) and re-derive the
constant.

## D5. Consumer amendment (requested, Codex to gate)

The active-window rows spend \(c_W^{\rm top}\) over RUN only; DWELL
contributes \(T_{\rm dwell}\) to the length-row numerator. Same
surgery as \(B_{\rm bot}^{\rm prod}\). The amendment must confirm
DWELL windows' time-integrated rent is not double-charged (k3).

## Gaps (honest)

(k1) D1 rests on \(dG_0^2 = -\rho_{\rm ext}G_0^2\) —
Manley-Rowe-forced within the relay model; W-0 footing, same as
Part I. (k2) \(A_0, g_0, X_{\max}\) are \(\Phi_0\)-financed;
\(\Phi_0 > 0\) remains the producer beneath everything. (k3) rent
non-double-charge on DWELL. (k4) \(A_0 > 6d_{\rm R4}^+\) is a REAL
comparison that can fail; both endings remain deliverables, and F4
decides at an honest physical point.

Filed is not cleared. No closure claimed.
