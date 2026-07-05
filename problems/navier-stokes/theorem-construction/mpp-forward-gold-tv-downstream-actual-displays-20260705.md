---
theorem_id: forward-gold-tv-downstream-actual-displays-20260705
status: codex-regated-tv-skeleton-speed-display-cleared-tau-and-boundary-thresholds-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / TV downstream as displayed inequalities
authorship: Claude (Fable), 2026-07-05. Prose replaced by formulas,
  second time the lesson is applied. Physical story Thomas Birnie.
completion_truth: >-
  Replaces the TV-downstream prose with displayed inequalities, pending
  re-gate; all symbols are filed objects. (DISPLAY 1, THE PRICE
  FUNCTIONS) Domain: K in [K_min, K_cap], with the modulus map
  m(K) = 1 - 16 exp(-2K) (the filed separatrix identity, inverted).
  SHALLOW PRICE:  P_sh(K) = r0(f) x tau(m(K)),  where r0(f) is the
  filed closed-form return floor and tau is the filed exact elliptic
  active fraction - explicit in K through m(K), continuous, and
  positive on the closed domain because m(K_cap) is strictly below one
  (the cap ends the band before the separatrix). DEEP PRICE:
  P_dp(K) = r0(f) x [ margin(K) ]_+ / L0,  margin(K) = L0 - gap(K)
  - c_dw / K,  gap(K) = c_gap x 16 exp(-2K)  (the F-1 display), L0 the
  filed left-side closed form - the positive part makes P_dp defined
  on the whole domain, zero at and below the crossing, increasing
  above it (gap and dwell both strictly decreasing, F-1/F-2). FLOOR
  DISPLAY:  max(P_sh(K), P_dp(K)) >= P_sh(K_cap) = r0(f) tau(m(K_cap))
  > 0  - one explicit closed form, the no-common-zero floor, because
  P_sh is decreasing in K (tau decreasing toward the separatrix) and
  positive at the right endpoint. (DISPLAY 2, THE TRAVERSAL
  INEQUALITY) With N_c the number of complete swings in a window and
  (X3 - X2) the swing amplitude:
  2 N_c (X3 - X2) <= TV_win(X) <= 2 (N_c + 2)(X3 - X2),
  the boundary integer TWO counting at most one incomplete swing per
  window end; combined with the CLEARED identity throughput =
  TV_win / 2:  N_c >= throughput/(X3 - X2) - 2  - the displayed
  bracket with the named integer; absorption: on financed windows
  throughput/(X3 - X2) exceeds any fixed integer or the period cap
  bites (filed), so the minus-two is absorbed by the financing floor's
  own slack. (DISPLAY 3, THE SPEED QUOTIENT) Package speed
  |dX/dt| = 2 g sqrt(C(X)) <= 2 g sqrt(C_max), with C_max the cubic's
  maximum over [X2, X3], attained at the interior critical point given
  by the quadratic formula on C' - an exact closed form in the levels,
  displayed; therefore each complete swing takes time at least
  2 (X3 - X2) / (2 g sqrt(C_max)) = (X3 - X2)/(g sqrt(C_max)),
  and the period ceiling from the throughput floor follows as the
  displayed quotient: few swings force long periods with every factor
  explicit. STATE: the three demanded displays are now inequalities
  with filed symbols; nothing remains in prose anywhere in the TV
  chain. PRESS POINTS: the monotonicity of tau toward the separatrix
  (one line from the filed elliptic expression); the quadratic-formula
  critical point of the cubic (one display). Outstanding: this note's
  re-gate; the w_eff re-gate; the symbolic comparisons; chapter 10.
  Filed is not cleared. No closure claimed.
---

# TV downstream, as inequalities

## Codex re-gate update, same date

Codex re-gate filed at
`mpp-forward-gold-codex-w-eff-tv-actual-displays-regate-20260705.md`.
This note now has the three requested inequality skeletons. The speed
quotient is cleared after inserting the exact critical-point display
below. Two TV dependencies remain open before symbolic comparisons:
the shallow-price floor still needs the explicit \(\tau\) positivity or
monotonicity line on the capped band, and the boundary integer
absorption still needs a displayed financing/period-cap threshold.
Filed is not cleared beyond the skeleton inequalities and the speed
maximum formula.

## 1. The price functions

Domain K in [K_min, K_cap]; m(K) = 1 - 16 exp(-2K).

  P_sh(K) = r0(f) tau(m(K))    (explicit, continuous, positive on
                                the closed domain)
  P_dp(K) = r0(f) [L0 - gap(K) - c_dw/K]_+ / L0,
      gap(K) = c_gap 16 exp(-2K)

  max(P_sh, P_dp)(K) >= P_sh(K_cap) = r0(f) tau(m(K_cap)) > 0.

The floor is the right-endpoint value of a decreasing positive
function - one closed form, no common zero possible.

## 2. The traversal inequality

  2 N_c (X3 - X2) <= TV_win(X) <= 2 (N_c + 2)(X3 - X2)
  N_c >= throughput/(X3 - X2) - 2    (throughput = TV/2, cleared)

Boundary integer two; absorbed on financed windows because the
throughput-to-amplitude quotient exceeds any fixed integer or the
period cap bites first (filed).

## 3. The speed quotient

  |dX/dt| <= 2 g sqrt(C_max),   C_max = C at the interior critical
  point of the cubic (quadratic formula on C', displayed);

  time per complete swing >= (X3 - X2)/(g sqrt(C_max));
  period ceiling from the throughput floor = the displayed quotient.

Codex critical-point display. For
\[
C(X)=X(I_1-X)(I_2-X)-G_0^2,
\]
the critical points are the two roots of
\[
C'(X)=3X^2-2(I_1+I_2)X+I_1I_2=0,
\]
namely
\[
X_{\pm}
=
\frac{I_1+I_2\pm\sqrt{I_1^2-I_1I_2+I_2^2}}{3}.
\]
The capped-band speed constant is therefore
\[
C_{\max}
=
\max\{C(X_\pm):X_\pm\in[X_2,X_3]\}.
\]
Thus
\[
|\dot X|\le 2g\sqrt{C_{\max}},
\qquad
T_{\rm swing}\ge
\frac{X_3-X_2}{g\sqrt{C_{\max}}}.
\]

## Register

Three display skeletons are present, and the speed maximum is now
displayed. Press points: tau's monotonicity/positivity line and the
boundary integer absorption threshold. Outstanding: the symbolic
comparisons; chapter 10. Filed is not cleared. No closure claimed.
