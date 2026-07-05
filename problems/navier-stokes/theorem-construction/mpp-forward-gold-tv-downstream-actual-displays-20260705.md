---
theorem_id: forward-gold-tv-downstream-actual-displays-20260705
status: codex-regated-tv-skeleton-speed-display-cleared-tau-and-boundary-thresholds-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / TV downstream as displayed inequalities
authorship: Claude (Fable), 2026-07-05. Prose replaced by formulas,
  second time the lesson is applied. Physical story Thomas Birnie.
completion_truth: >-
  Codex re-gated this note as a partial payment. The three requested
  TV inequality skeletons are present: the shallow/deep price
  functions on one capped-band depth domain, the complete-swing
  traversal inequality with a boundary integer, and the capped-band
  speed quotient. Codex inserted the missing closed-form speed maximum
  by taking the cubic maximum at the two quadratic critical points.
  Still open before symbolic comparisons: the shallow-price floor
  must display the exact tau positivity/monotonicity line on the
  capped band, and the boundary minus-two absorption must be written
  as a financing or period-cap threshold inequality. Chapter 10
  remains unexecuted. Filed is not cleared beyond the skeleton
  inequalities and speed maximum formula. No closure claimed.
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
