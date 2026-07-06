---
theorem_id: forward-gold-threshold-floor-pays-twice-r4tv-parkingtime-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / one-sided product route / paying R4-TV and ParkingTime — the threshold floor pays twice more
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, answering the return-budget
  gate's two demanded bridges the same day. Physical story Thomas
  Birnie: the same floor that made stolen goods expensive to return
  makes them SLOW to return. Above the threshold the bottom of the
  swing cannot empty, so the swap-back channel — which needs the
  package's own amplitude as a carrier — has a capped rate: the
  enemy cannot flash-refill the bottom; every lift of the bottom
  costs real time on the clock, and the clock is exactly what the
  financed drain is winning. The refill war is a war of rates, and
  the drain's rate is financed while the refill's rate is capped.
depends_on:
  - mpp-forward-gold-codex-return-budget-nogo-reentry-gate-20260706.md
  - mpp-forward-gold-return-budget-mass-conversion-nogo-reentry-parking-reduction-20260706.md
  - mpp-forward-gold-codex-gate6-rho-signed-measure-reduction-20260705.md
  - mpp-forward-gold-r4-one-period-phase-amplitude-perturbation-20260705.md
  - mpp-forward-gold-codex-same-monomial-home-pushforward-payment-20260705.md
  - mpp-forward-gold-codex-refill-dwell-budget-parametric-gate-20260706.md
completion_truth: >-
  Pays the shapes of both demanded bridges from one lever - the
  threshold floor X >= X_flr := G_thr/X_max^2 on the above-threshold
  region - leaving named displays and one routing convention for the
  gate; proves no row positive. (G1 - SWAP-BACK RATE CAP, exact
  shape) The extraction monomial M carries the shared-mode amplitude
  sqrt(X) exactly once (M = a_pkg b_1 b_2 in the second triad's
  five-mode form), so |rho_ext| = 2 d_pkg |Re M|/X <=
  2 d_pkg B_1 B_2 / sqrt(X), where B_1, B_2 are the carried-band
  amplitude caps of the receiving daughters. Above the threshold:
  (rho_ext)_- <= rho_max^- := 2 d_pkg B_1 B_2 X_max / sqrt(G_thr) -
  a pure band symbol. OWED DISPLAY (o1): the exact monomial
  amplitude factorization at the same-monomial home. (G2 -
  PARKINGTIME(delta), exact given G1) d(phi)^+/dt = (rho_ext)_- <=
  rho_max^- above the threshold, so any re-entry lift of size delta
  costs routed time tau_re(delta) := delta/rho_max^- > 0. This is
  the gate's ParkingTime form: the count-to-budget bridge is TIME
  ITSELF - N_re <= (block lift time)/tau_re, finite on any finite
  routed block. (G3 - THE DWELL-FRACTION ROW, the consumer form)
  With the paid drain quantum q_per^- = A_0/X_max, a re-entry of
  lift delta generates at most ceil(delta/(q_per^- - delta)) + 1
  dwell periods before decay re-crosses the threshold, hence dwell
  time per re-entry cycle <= (delta/(q_per^- - delta) + 2) T_*,
  while the cycle contains >= tau_re(delta) of lift time. Sufficient
  RATE row, all named band symbols: (delta/(q_per^- - delta) + 2)
  T_* rho_max^-/delta <= f_dw for a target dwell fraction f_dw <
  1/2; then RUN occupies >= 1 - f_dw of every routed block, the
  dwell charge becomes a bounded FRACTION instead of an endpoint,
  and the consumer amendment spends c_W^top on the run fraction
  (amendment v3, Codex to gate; the endpoint form with B_phi
  remains for the initial excess). (G4 - R4-TV(delta), the demanded
  form) Above the threshold the map z -> rho_ext(z) = 2 d_pkg
  Re M(z)/X(z) is a LIPSCHITZ composition on the band (numerator
  polynomial in band-capped amplitudes; denominator floored by
  X_flr), with constant L_rho displayed from band caps and X_flr.
  With the R4 note's pointwise closeness sup |z(t) - z_0(t)| <= C_z
  drift_per and a forward reference with (rho_ref)_- = 0, the
  splitting (a+b)_- <= (a)_- + |b| gives v_R4^TV =
  int_per (rho_true)_- dt <= T_* L_rho C_z drift_per =: C_TV T_*
  drift_per, which is the gate's demanded row; R4-TV(delta) then
  reads C_TV T_* drift_per < delta. OWED (o2): the L_rho display at
  the R4/monomial homes; (o3) THE ROUTING CONVENTION: forward
  periods are classified so that the frozen/reference drain is
  one-signed nonnegative on them (net-orientation classification at
  period granularity) - a convention to install, not an estimate.
  HONEST GAPS: (o1)-(o3) above; (o4) the cycle bookkeeping of G3 at
  gate level (lift/decay/run partition of a routed block); (o5) the
  two final comparisons are REAL and can fail - R4-TV(delta) fails
  if drift is too large against the deadband, and the
  dwell-fraction row fails if the swap-back rate cap is too weak
  against the drain quantum; both failures are honest F4 endings at
  physical points (drift beats deadband; refill rate beats drain
  rate). Nothing here proves Delta_G6a^top > 0, Phi_0 > 0,
  F2/F4/F5, Chapter 10, the manuscript, or the MPP. Filed is not
  cleared.
---

# The threshold floor pays twice more: R4-TV and ParkingTime

## G0. The lever

Everything below uses one paid fact: on the above-threshold region,

\[
  X \;\ge\; X_{\rm flr} := \frac{G_{\rm thr}}{X_{\max}^2} \;>\; 0 .
\]

The floor that converted log currency to mass currency (F1) also
tames every \(1/X\) and \(1/\sqrt X\) in the extraction channel.

## G1. Swap-back rate cap (exact shape; display owed)

The extraction monomial carries the shared-mode amplitude exactly
once: \(M = a_{\rm pkg}\,b_1 b_2\) with \(|a_{\rm pkg}| = \sqrt X\)
and \(b_1, b_2\) the receiving daughters. Hence

\[
  |\rho_{\rm ext}|
  = \frac{2 d_{\rm pkg}|{\rm Re}\,M|}{X}
  \le \frac{2 d_{\rm pkg} B_1 B_2}{\sqrt X},
\]

and above the threshold

\[
  \boxed{\;(\rho_{\rm ext})_- \le \rho^-_{\max}
  := \frac{2 d_{\rm pkg} B_1 B_2 X_{\max}}{\sqrt{G_{\rm thr}}}\;}
\]

— a pure band symbol. (Owed display o1: the exact amplitude
factorization at the same-monomial home.)

## G2. ParkingTime(δ) — the bridge is time itself (exact given G1)

Above the threshold \(d\phi^+/dt = (\rho_{\rm ext})_- \le
\rho^-_{\max}\), so a re-entry lift of size \(\delta\) costs

\[
  \boxed{\;\tau_{\rm re}(\delta) = \frac{\delta}{\rho^-_{\max}} > 0\;}
\]

of routed time. This is the gate's ParkingTime form: the
count-to-budget bridge is the clock — \(N_{\rm re} \le
(\text{block lift time})/\tau_{\rm re}\), finite on any finite
routed block. The enemy cannot flash-refill the bottom; every lift
buys the drain time to work.

## G3. The dwell-fraction row (consumer form)

With the paid drain quantum \(q_{\rm per}^- = A_0/X_{\max}\), a
re-entry of lift \(\delta\) generates at most
\(\lceil \delta/(q_{\rm per}^- - \delta)\rceil + 1\) dwell periods
before decay re-crosses the threshold. Each cycle holds
\(\ge \tau_{\rm re}(\delta)\) of lift time. Sufficient RATE row, all
named band symbols:

\[
  \boxed{\;
  \Bigl(\frac{\delta}{q_{\rm per}^- - \delta} + 2\Bigr)
  \frac{T_*\,\rho^-_{\max}}{\delta}
  \;\le\; f_{\rm dw} \;<\; \frac12
  \;}
\]

Then RUN occupies \(\ge 1 - f_{\rm dw}\) of every routed block, the
dwell charge becomes a bounded fraction instead of an endpoint (the
initial-excess endpoint term \(B_\phi\) remains), and the consumer
amendment spends \(c_W^{\rm top}\) on the run fraction (amendment
v3, Codex to gate).

## G4. R4-TV(δ) — the demanded display

Above the threshold, \(z \mapsto \rho_{\rm ext}(z) =
2 d_{\rm pkg}{\rm Re}\,M(z)/X(z)\) is a Lipschitz composition on
the band: numerator polynomial in band-capped amplitudes,
denominator floored by \(X_{\rm flr}\); constant \(L_\rho\)
displayed from band caps and \(X_{\rm flr}\) (owed o2). With the R4
pointwise closeness \(\sup_{I_{\rm per}}\|z - z_0\| \le
C_z\operatorname{drift}_{\rm per}\) and a forward reference with
\((\rho_{\rm ref})_- = 0\), the splitting
\((a + b)_- \le (a)_- + |b|\) gives

\[
  v^{\rm TV}_{\rm R4}
  = \int_{I^{\rm fwd}_{\rm per}} (\rho_{\rm true})_-\,dt
  \;\le\; T_*\,L_\rho C_z \operatorname{drift}_{\rm per}
  =: C_{\rm TV}\,T_*\operatorname{drift}_{\rm per},
\]

which is the gate's demanded form;

\[
  \text{R4-TV}(\delta):\qquad
  C_{\rm TV}\,T_*\operatorname{drift}_{\rm per} < \delta .
\]

Owed o3: the routing convention that forward periods carry a
one-signed nonnegative reference drain (net-orientation
classification at period granularity) — a convention to install,
not an estimate.

## Gaps (honest)

(o1) monomial amplitude factorization display at the same-monomial
home; (o2) the \(L_\rho\) display at the R4/monomial homes;
(o3) the one-signed-reference routing convention; (o4) the
lift/decay/run cycle bookkeeping of G3 at gate level; (o5) the two
final comparisons are REAL and can fail — R4-TV fails if drift
beats the deadband, the dwell-fraction row fails if the refill rate
beats the drain rate; both are honest F4 endings at physical
points.

Filed is not cleared. No closure claimed.
