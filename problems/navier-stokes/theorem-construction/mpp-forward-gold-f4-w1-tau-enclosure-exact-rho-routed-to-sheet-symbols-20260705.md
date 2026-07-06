---
theorem_id: forward-gold-f4-w1-tau-enclosure-exact-rho-routed-to-sheet-symbols-20260705
status: filed-pending-codex-gate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / F4 Stage-3 workbook / W1 inputs - tau lower enclosure paid exactly; rho routed to sheet symbols
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie:
  the slow sands at the turning point still run - a sixth of the clock
  survives every ellipse the spring can draw, discounted only by the
  square root of how close the family is allowed to park. And the
  return race's rho was never a new number: it is the ratio of two
  rungs of the same ladder, so its ceiling is written in the ladder's
  own marks - one floor remains to cite, and it is the sector floor
  the record already fought for.
depends_on:
  - mpp-forward-gold-codex-w1-seed-chain-enclosure-front-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-codex-f1-angle-population-regate-20260705.md
  - mpp-forward-gold-f1-slack-inequality-chord-ratio-floor-20260705.md
completion_truth: >-
  Two Stage-3 W1 inputs advanced on the enclosure front. (T-1: tau^-
  PAID, exact) The tau gate's compact-family formula is tau(m) =
  [arcsn(sqrt3/2; m) - arcsn(1/2; m)] / (2K(m)) on m in [0, m_cap].
  Monotone comparison, both directions displayed: NUMERATOR =
  int_{1/2}^{sqrt3/2} dt / sqrt((1-t^2)(1-m t^2)) >= int_{1/2}^{sqrt3/2}
  dt / sqrt(1-t^2) = arcsin(sqrt3/2) - arcsin(1/2) = pi/3 - pi/6 =
  pi/6 (since 1 - m t^2 <= 1); DENOMINATOR: K(m) = int_0^1 dt /
  sqrt((1-t^2)(1-m t^2)) <= (pi/2)/sqrt(1-m) (since 1 - m t^2 >=
  1 - m). Hence tau(m) >= (pi/6) sqrt(1-m) / pi = sqrt(1-m)/6,
  uniformly on the compact family: TAU^- := sqrt(1 - m_cap)/6 - an
  EXACT closed form in the single sheet symbol m_cap (whose own
  enclosure m_cap < 1 lives at the tau gate's home; at m_cap = 0 the
  bound is 1/6 exactly, the m = 0 value of the formula - the
  comparison is tight at the circular limit). No decimals; two
  one-line monotone comparisons. (T-2: rho^+ ROUTED, one floor
  remaining) Identification from the race integral of the return-race
  writeup: returned >= (2/pi) g_1 a f (Delta t)/2 with Delta t =
  f/(g_2 a) gives returned >= (f^2/pi)(g_1/g_2); matching r_0 =
  f^2/(2 pi rho) yields RHO = |g_2| / (2 |g_1|) EXACTLY - the
  return-race coupling ratio is a ratio of two Waleffe difference
  factors of the SAME triad (the common triangle factor G cancels):
  g_2 proportional to s_3 kappa_3 - s_1 kappa_1, g_1 proportional to
  s_2 kappa_2 - s_3 kappa_3. ENCLOSURE ROUTE: numerator |s_3 kappa_3
  - s_1 kappa_1| <= kappa_1 + kappa_3 <= Sigma_max (triangle
  inequality - already a sheet symbol); denominator |s_2 kappa_2 -
  s_3 kappa_3|: OPPOSITE helicities give >= kappa_2 + kappa_3 >=
  2 kappa_min (sheet symbol, exact); SAME helicities give kappa_3 -
  kappa_2, which requires the cleared sector/difference-factor floor
  - the record's sector citations (S_relay >= p type) floor the
  difference factors by a side length; NAME the floor DIFF^- with
  home at the sector-citation note, DIRECTION GUARD flagged: the
  gate must confirm which difference factor the cleared citation
  floors and against which side; if the cleared floor reads on the
  other factor, the same route runs with the triad's labels
  permuted (the paid pushforward makes the relabeling lawful).
  CANDIDATE ENCLOSURE: RHO^+ = Sigma_max^+ / (2 min(2 kappa_min^-,
  DIFF^-)) - two sheet symbols plus ONE named floor; the W1 blocker
  reduces from "no enclosure exists" to "certify DIFF^-" (or confirm
  the opposite-helicity case is the only financed one, in which case
  RHO^+ = Sigma_max^+ / (4 kappa_min^-) outright in sheet symbols).
  (W1 STATE AFTER THIS NOTE, if gated) Paid inputs: D_req^+ =
  log(375/106) (Codex), TAU^- = sqrt(1 - m_cap)/6 (here). Routed:
  RHO^+ to Sigma_max^+, kappa_min^-, DIFF^-. Still needed: the F1
  chain enclosures kappa_min^-, J_min^-, C_amp^+ (home T_res C_Q
  E_res^{3/2}), Sigma_max^+, plus m_cap's enclosure and DIFF^-'s
  certification. The boxed W1 margin then runs. GUARDS: (g1) the
  race-integral normalization matching r_0 = f^2/(2 pi rho) is the
  reshape note's convention - if the lane's rho convention carries a
  different factor of 2, the identification shifts by that exact
  factor and the route survives (the c_T precedent); (g2) TAU^-'s
  validity needs only m_cap < 1 - if the tau home certifies
  m_cap <= 1 - delta for named delta, TAU^- = sqrt(delta)/6.
  Payment type: one exact enclosure by displayed monotone
  comparisons + one exact identification routing a blocker to sheet
  symbols with a single named floor and direction guard. No interval
  arithmetic beyond exact closed forms. Filed is not cleared. No
  closure claimed.
---

# F4/W1: a sixth of the clock survives; rho is the ladder's own ratio

## 1. T-1: the tau lower enclosure, exact

The tau gate's formula on the compact family \(m\in[0,m_{\rm cap}]\):

\[
  \tau(m)
  =
  \frac{\operatorname{arcsn}(\sqrt3/2;m)-\operatorname{arcsn}(1/2;m)}
       {2K(m)}.
\]

NUMERATOR (using \(1-mt^2\le1\)):

\[
  \int_{1/2}^{\sqrt3/2}\frac{dt}{\sqrt{(1-t^2)(1-mt^2)}}
  \ \ge\
  \int_{1/2}^{\sqrt3/2}\frac{dt}{\sqrt{1-t^2}}
  =
  \frac\pi3-\frac\pi6
  =
  \frac\pi6 .
\]

DENOMINATOR (using \(1-mt^2\ge1-m\)):

\[
  K(m)
  \le
  \frac{\pi/2}{\sqrt{1-m}} .
\]

Hence, uniformly on the family,

\[
  \boxed{\ \tau_{\min}\ \ge\ \tau^-:=\frac{\sqrt{1-m_{\rm cap}}}{6}\ }
\]

- an exact closed form in the single sheet symbol \(m_{\rm cap}\); at
\(m_{\rm cap}=0\) it reads \(1/6\), the exact circular-limit value, so
the comparison is tight there. Two one-line monotone comparisons, no
decimals.

## 2. T-2: rho identified and routed

From the race integral (return-race writeup, section 5):
returned \(\ge(2/\pi)g_1af\,\Delta t/2\) with \(\Delta t=f/(g_2a)\)
gives returned \(\ge(f^2/\pi)(g_1/g_2)\); matching the reshape
convention \(r_0=f^2/(2\pi\rho)\):

\[
  \boxed{\ \rho=\frac{|g_2|}{2|g_1|}\ }
\]

- a ratio of two Waleffe difference factors of the SAME triad (the
common factor \(G\) cancels): \(g_2\propto s_3\kappa_3-s_1\kappa_1\),
\(g_1\propto s_2\kappa_2-s_3\kappa_3\).

ENCLOSURE ROUTE:

1. numerator: \(|s_3\kappa_3-s_1\kappa_1|\le\kappa_1+\kappa_3\le
   \Sigma_{\max}\) - a sheet symbol;
2. denominator, opposite helicities:
   \(|s_2\kappa_2-s_3\kappa_3|=\kappa_2+\kappa_3\ge2\kappa_{\min}\) -
   a sheet symbol, exact;
3. denominator, same helicities: \(\kappa_3-\kappa_2\) needs the
   cleared sector/difference-factor floor - NAMED \({\rm DIFF}^-\),
   home at the sector-citation note. DIRECTION GUARD: the gate must
   confirm which difference factor the cleared citation floors; if it
   reads on the other factor, the route runs with labels permuted
   (lawful by the paid pushforward).

CANDIDATE:

\[
  \rho^+
  =
  \frac{\Sigma_{\max}^+}{2\min\big(2\kappa_{\min}^-,\ {\rm DIFF}^-\big)},
\]

and if the financed family carries only the opposite-helicity
denominator, outright in sheet symbols:
\(\rho^+=\Sigma_{\max}^+/(4\kappa_{\min}^-)\).

## 3. W1 state and guards

PAID: \(D^+_{\rm req}=\log(375/106)\) (Codex);
\(\tau^-=\sqrt{1-m_{\rm cap}}/6\) (here). ROUTED: \(\rho^+\) to
\(\Sigma_{\max}^+,\kappa_{\min}^-,{\rm DIFF}^-\). STILL NEEDED:
\(\kappa_{\min}^-,J_{\min}^-,C_{\rm amp}^+,\Sigma_{\max}^+\),
\(m_{\rm cap}\)'s enclosure, \({\rm DIFF}^-\)'s certification. Then
the boxed W1 margin runs.

GUARDS: (g1) if the lane's \(\rho\) convention carries a different
factor of 2 than the reshape matching, the identification shifts by
that exact factor and the route survives (the \(c_T\) precedent);
(g2) \(\tau^-\) needs only \(m_{\rm cap}<1\); with a certified
\(m_{\rm cap}\le1-\delta\), \(\tau^-=\sqrt\delta/6\).

Filed is not cleared. No closure claimed.
