---
theorem_id: forward-gold-adiabatic-return-channel-o1-o4-displays-routing-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / one-sided product route / paying the return-budget closing list o1-o4 — the return channel is adiabatic
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, paying the threshold-floor
  gate's closing list the same day. Physical story Thomas Birnie: the
  swap-back rides the handoff channel, and the handoff turns on the
  SLOW clock — the next rung's phase barely moves during one swing of
  the spring. So the return channel cannot flicker: within one
  period its direction is essentially fixed, periods of pure theft
  and periods of pure payback come in long runs, and the rare
  mixed-sign periods at the turning of the slow phase are exactly as
  rare as the two clocks are separated. The fluid-object's own
  hierarchy — each rung slower than the last — is what routes its
  refills into countable, priced episodes.
depends_on:
  - mpp-forward-gold-codex-threshold-floor-r4tv-parkingtime-gate-20260706.md
  - mpp-forward-gold-threshold-floor-pays-twice-r4tv-parkingtime-20260706.md
  - mpp-forward-gold-codex-same-monomial-home-pushforward-payment-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-r4-one-period-phase-amplitude-perturbation-20260705.md
  - mpp-forward-gold-codex-refill-dwell-budget-parametric-gate-20260706.md
completion_truth: >-
  Pays the four display/routing items of the threshold-floor gate's
  closing list, leaving the two band-symbol comparisons (F4
  quarantine) plus one new named scale-separation symbol; proves no
  comparison. (o1 - MONOMIAL SLOT DISPLAY) In the two-triad relay of
  the return-race writeup, the second triad is (a_pkg, b_1, b_2)
  with da_pkg/dt = g'_pkg conj(b_1 b_2); hence Xdot|_ext =
  2 Re(conj(a_pkg) g'_pkg conj(b_1 b_2)) = 2 g'_pkg Re M with M =
  conj(a_pkg b_1 b_2) (Re unchanged under conjugation), so d_pkg =
  g'_pkg, the second triad's package-slot coupling, and |M| =
  sqrt(X)|b_1||b_2| exactly - the sqrt(X)-once factorization in the
  same coordinates as the same-monomial home. BAND-DATA FLAG: the
  daughter caps B_1, B_2 are next-rung band data (bounded by the
  next cell's ceilings); named, carried, quarantined. (o2 - L_rho
  DISPLAY, sufficient constant) On the region {X >= X_flr, |b_i| <=
  B_i, X <= X_max}, rho_ext(a, b_1, b_2) = 2 d_pkg Re(a b_1 b_2)/
  |a|^2 has the (non-sharp) Lipschitz constant L_rho <= 2 d_pkg
  [ 3 B_1 B_2 / X_flr + (B_1 + B_2)/sqrt(X_flr) ], X_flr =
  G_thr/X_max^2, by the quotient rule with |grad_a| <= 3|b_1 b_2|/
  |a|^2 and |grad_{b_i}| <= |a||b_j|/|a|^2 = |b_j|/|a| <=
  B_j/sqrt(X_flr). All band symbols; C_TV = L_rho C_z. (o3 - THE
  ADIABATIC ROUTING CONVENTION, declared) The frozen reference
  rho_frozen(t) = rho_ext(z_0(t)) oscillates only through the
  second-triad phase, which turns on the SLOW clock: let T_slow be
  the second-triad (handoff) period floor on the carried band - a
  NEW NAMED BAND SYMBOL, homed at the relay scale separation (the
  sub-octave rung structure), quarantined to Chapter 10. Declare:
  a completed period is PURE-FORWARD iff rho_frozen >= 0 throughout,
  PURE-BACKWARD iff rho_frozen <= 0 throughout, MIXED otherwise.
  Since sign changes of the slow phase occur at most twice per
  T_slow, the mixed-period fraction per routed block is <=
  2 T_*/T_slow. On pure-forward periods (rho_ref)_- = 0 holds
  POINTWISE and the accepted R4-TV chain applies verbatim:
  v_R4^TV <= C_TV T_* drift_per per period. Pure-backward and mixed
  periods are BACKWARD-ROUTED wholesale: their refill is charged to
  the re-entry/ParkingTime account, which prices refill by rate
  regardless of origin ((rho_ext)_- <= rho_max^- above threshold);
  per backward/mixed period the lift is <= rho_max^- T_*. (o4 -
  CYCLE BOOKKEEPING, declared for re-gate) (b1) lift intervals =
  maximal above-threshold segments of increasing phi, each assigned
  to the unique re-entry (up-crossing of G_thr e^delta) it
  completes - disjoint by maximality; backward-routed periods'
  refill assigns to the re-entry their accumulated lift completes.
  (b2) dwell/decay periods are the completed boundary-routed
  periods counted by the parametric gate at quantum q_per^- =
  A_0/X_max. (b3) the routed block for the dwell-run split IS the
  consumer block on which c_W^top is spent (one block, one clock,
  one ledger). (b4) the initial excess B_phi = (phi(0) -
  phi_thr)_+ is charged ONCE per block as an endpoint term - never
  per re-entry, never per period. CONSEQUENCE - the return-budget
  comparison list, final form (all F4 quarantine): (c1) R4-TV:
  C_TV T_* drift_per < delta; (c2) dwell-fraction:
  (delta/(q_per^- - delta) + 2) T_* rho_max^-/delta <= f_dw < 1/2;
  (c3) NEW, the adiabatic-mixing term: the backward/mixed refill
  rate (2 T_*/T_slow) rho_max^- T_*/delta re-entries per period
  must fit inside the same f_dw budget - sufficient combined form:
  (delta/(q_per^- - delta) + 2) (T_*/delta)(rho_max^- +
  2 rho_max^- T_*/T_slow) <= f_dw. HONEST GAPS: (p1) T_slow's floor
  display is owed at the relay/sub-octave home; (p2) o1's daughter
  caps B_1 B_2 are band data to be confirmed as carried; (p3) the
  declarations b1-b4 and the o3 classification are conventions -
  Codex must check consistency with the installed signed-subwindow
  decomposition and boundary routing; (p4) all three comparisons
  are REAL and can fail - honest F4 endings (drift beats deadband;
  refill rate beats drain; the clocks insufficiently separated). No
  product positivity, F2/F4/F5, Chapter-10, manuscript, or MPP
  closure is claimed. Filed is not cleared.
---

# The return channel is adiabatic: paying o1-o4

## o1. Monomial slot display

In the two-triad relay, the second triad is \((a_{\rm pkg}, b_1,
b_2)\) with \(\dot a_{\rm pkg} = g'_{\rm pkg}\overline{b_1 b_2}\).
Hence

\[
  \dot X\big|_{\rm ext}
  = 2\,g'_{\rm pkg}\operatorname{Re}\overline{a_{\rm pkg} b_1 b_2},
  \qquad
  d_{\rm pkg} = g'_{\rm pkg},
  \qquad
  |M| = \sqrt X\,|b_1||b_2| .
\]

The \(\sqrt X\)-once factorization holds exactly in the
same-monomial home's coordinates. Band-data flag: \(B_1, B_2\) are
next-rung caps (bounded by the next cell's ceilings) — named,
carried, quarantined.

## o2. The Lipschitz display (sufficient constant)

On \(\{X \ge X_{\rm flr},\ |b_i| \le B_i,\ X \le X_{\max}\}\), the
quotient rule gives \(|\nabla_a \rho| \le 3|b_1b_2|/|a|^2\) and
\(|\nabla_{b_i}\rho| \le |b_j|/|a|\), hence

\[
  \boxed{\;
  L_\rho \le 2 d_{\rm pkg}
  \Bigl[\frac{3B_1B_2}{X_{\rm flr}}
  + \frac{B_1 + B_2}{\sqrt{X_{\rm flr}}}\Bigr]
  \;},
  \qquad
  X_{\rm flr} = \frac{G_{\rm thr}}{X_{\max}^2},
  \qquad
  C_{\rm TV} = L_\rho C_z .
\]

All band symbols. Non-sharp; sufficient.

## o3. The adiabatic routing convention (declared)

The frozen reference \(\rho_{\rm frozen}(t) =
\rho_{\rm ext}(z_0(t))\) oscillates only through the second-triad
phase, which turns on the SLOW clock. Let \(T_{\rm slow}\) be the
second-triad (handoff) period floor on the carried band — a new
named band symbol, homed at the relay scale separation (sub-octave
rung structure), quarantined to Chapter 10.

Classify each completed period: PURE-FORWARD iff
\(\rho_{\rm frozen} \ge 0\) throughout; PURE-BACKWARD iff \(\le 0\)
throughout; MIXED otherwise. Sign changes of the slow phase occur
at most twice per \(T_{\rm slow}\), so

\[
  \text{mixed-period fraction} \;\le\; \frac{2T_*}{T_{\rm slow}} .
\]

On pure-forward periods \((\rho_{\rm ref})_- = 0\) holds POINTWISE
and the accepted R4-TV chain applies verbatim. Pure-backward and
mixed periods are backward-routed wholesale: their refill goes to
the re-entry/ParkingTime account, which prices refill by rate
regardless of origin — per such period the lift is
\(\le \rho^-_{\max}T_*\).

## o4. Cycle bookkeeping (declared for re-gate)

1. **Lift intervals** = maximal above-threshold segments of
   increasing \(\phi\), each assigned to the unique re-entry
   (up-crossing of \(G_{\rm thr}e^\delta\)) it completes — disjoint
   by maximality.
2. **Dwell/decay periods** are the completed boundary-routed
   periods counted at quantum \(q_{\rm per}^- = A_0/X_{\max}\).
3. **One block, one clock, one ledger:** the dwell-run block IS the
   consumer block on which \(c_W^{\rm top}\) is spent.
4. **The initial excess** \(B_\phi\) is charged once per block as
   an endpoint term — never per re-entry, never per period.

## The comparison list, final form (F4 quarantine)

\[
  \text{(c1)}\quad C_{\rm TV}T_*\operatorname{drift}_{\rm per} < \delta;
\]
\[
  \text{(c2)}\quad
  \Bigl(\frac{\delta}{q_{\rm per}^- - \delta} + 2\Bigr)
  \frac{T_*\rho^-_{\max}}{\delta} \le f_{\rm dw} < \frac12;
\]
\[
  \text{(c3)}\quad
  \Bigl(\frac{\delta}{q_{\rm per}^- - \delta} + 2\Bigr)
  \frac{T_*}{\delta}
  \Bigl(\rho^-_{\max} + \frac{2\rho^-_{\max}T_*}{T_{\rm slow}}\Bigr)
  \le f_{\rm dw}
  \quad\text{(combined form, absorbing the mixing term).}
\]

## Gaps (honest)

(p1) the \(T_{\rm slow}\) floor display is owed at the
relay/sub-octave home; (p2) the daughter caps \(B_1B_2\) are band
data to be confirmed as carried; (p3) the declarations are
conventions — consistency with the installed signed-subwindow
decomposition and boundary routing is Codex's to check; (p4) all
three comparisons are REAL and can fail — honest F4 endings: drift
beats deadband, refill rate beats drain, or the clocks are
insufficiently separated.

Filed is not cleared. No closure claimed.
