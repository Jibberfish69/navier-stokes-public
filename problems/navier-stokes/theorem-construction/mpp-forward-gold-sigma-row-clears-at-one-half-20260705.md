---
theorem_id: forward-gold-sigma-row-clears-at-one-half-20260705
status: filed-pending-codex-regate
created: 2026-07-05
problem: navier-stokes
route: forward-gold / THE SYMBOLIC COMPARISONS / the sigma row of the constant table
authorship: Claude (Fable), 2026-07-05. Runs on cleared ground - the
  front-loading cubic, the cleared marginality T_req(2) = 0, the filed
  cube-is-half closed forms - plus two one-line displays and integer
  finishes in the campaign's own cleared style. Physical story Thomas
  Birnie: the child's share of every drain is half plus the third
  side's sliver, and the whole bill at the steepest gate is under half
  a coin - the payer clears the gate with coin to spare.
completion_truth: >-
  Clears the sigma-vs-M_req row of Codex's constant-table audit,
  pending re-gate: M_req < 1/2 <= sigma_min, so D_req =
  -log(1 - M_req/sigma_min) is WELL-DEFINED unconditionally and the
  decisive threshold with GAMMA_ANGLE now lacks only the c_diff and
  theta rows. THE CHAIN, four displays. (D1, THE GLOBAL SIGMA FLOOR,
  filed + improved) sigma(alpha) = (1 + c(alpha)/q)/2 > 1/2 globally
  (c > 0, already displayed); improved in the angle currency by
  completing the square: c(beta)^2 = (k - q cos(beta))^2 +
  q^2 sin^2(beta) >= q^2 sin^2(beta), so c/q >= sin(beta) and
  sigma_min >= [1 + sin(phi_min/2)]/2 - pure algebra, no rho. (D2,
  THE ONE-ENDPOINT EXTENSION of the cleared front-loading cubic) The
  cleared proof showed psi(s) = -8s^3 + 18s^2 - 1 >= 0 on
  [2^(-1/3), 1) with integer finish 5832 > 500; psi is increasing
  below three-halves (cleared derivative line), and at s = 2^(-1/2)
  (the N = 2 point) psi = 8 - 2 sqrt(2) > 0 iff 16 > 2 - integers.
  So ln D is convex on the extended range, H is concave there, the
  perspective g(N) = N H(1/N) is concave for N >= 2, and the
  increments decrease FROM N = 2: Delta_req(3) <= Delta_req(2) =
  T_req(3) - T_req(2) = T_req(3), using the CLEARED marginality
  T_req(2) = 0. Also T_req(3) > 0 by AM-GM: T_req(3) > 0 iff
  2 > (2 - t)^3 iff u + 1/u > 2 for u = 2^(1/3), t = 1/u - strict
  since u is not one. Hence M_req = max{Delta_req(3), T_req(3)/3}
  <= T_req(3). (D3, THE DECISIVE COMPARISON T_req(3) < 1/2, by
  clearing and integers) T_req(3) = ln[2/(2-t)^3] by the filed
  cube-is-half collapse, so T_req(3) < 1/2 iff 4 < e (2-t)^6.
  EXACT SEXTIC REDUCTION: with t^3 = 1/2 and u = 2^(1/3) (t = u^2/2,
  t^2 = u/2), (2-t)^3 = 15/2 - 12t + 6t^2 and (2-t)^6 =
  234 t^2 - 162 t - 63/4 = 117u - 81u^2 - 63/4 - every step
  displayed, quatrics eliminated through the defining cube. RATIONAL
  BRACKETING: 5/4 < u < 63/50 by the integer cubes 128 > 125 and
  250047 > 250000 (63^3 = 250047 vs 2 x 50^3). Then (2-t)^6 > 3/2
  iff 468u - 324u^2 > 69, and u(468 - 324u) > (5/4)(1494/25) =
  747/10 > 69 iff 747 > 690 - integers (468 - 324u > 468 -
  20412/50 = 1494/25). SERIES FRACTION: e > 65/24 by the first five
  terms, (24 + 24 + 12 + 4 + 1)/24, positive remainder. FINISH:
  e (2-t)^6 > (65/24)(3/2) = 65/16 = 4 + 1/16 > 4. QED. (D4, THE
  ROW) M_req <= T_req(3) < 1/2 <= sigma_min: the audit's row
  "sigma_min >= sigma_0 > M_req" holds with sigma_0 = 1/2 (and with
  margin in the angle currency via D1). CONSEQUENCES: D_req is
  well-defined with no conditional; the decisive threshold
  GAMMA_ANGLE c_diff sqrt(3/log2) >= log(1/theta) + D_req now has
  exactly TWO unfilled rows, c_diff and theta - the constant table
  is otherwise closed by exact displays. HONESTY: D2's extension
  and D3's bracketing are NEW one-line displays awaiting audit, not
  cleared; the integer-finish style is the campaign's own cleared
  precedent (5832 > 500); nothing here is a decimal - every
  comparison ends in integers or exact fractions. PRESS POINTS: the
  complete-the-square line (D1); psi at the N = 2 point (16 > 2);
  the sextic reduction's displayed algebra; the bracketing cubes;
  the 65/16 finish. QUEUE: this note's re-gate; the c_diff and
  theta rows (the last two); the threshold run; B1-B3; chapter 10.
  Filed is not cleared. No closure claimed.
---

# The sigma row clears at one-half

## 1. The global sigma floor, and its angle improvement

Filed already: sigma(alpha) = (1 + c(alpha)/q)/2 > 1/2 since c > 0.
Improved, one line, by completing the square:

  c(beta)^2 = k^2 + q^2 - 2kq cos(beta)
            = (k - q cos(beta))^2 + q^2 sin^2(beta)
            >= q^2 sin^2(beta),

so c/q >= sin(beta) for every k, and on the slice

  sigma_min >= [1 + sin(phi_min/2)] / 2 > 1/2.

The child's share of every drain is half plus the third side's
sliver - and the sliver is an angle fact, not a leg fact.

## 2. The extension: increments decrease from N = 2

The cleared front-loading proof reduced log-convexity of D to
psi(s) = -8s^3 + 18s^2 - 1 >= 0 and proved it on [2^(-1/3), 1).
psi increases below three-halves (cleared line psi' = 12s(3 - 2s)).
At the N = 2 point s = 2^(-1/2):

  psi(2^(-1/2)) = 9 - 2 sqrt(2) - 1 = 8 - 2 sqrt(2) > 0
  iff 64 > 8 - integers.

So concavity of the perspective g(N) = N H(1/N) holds from N = 2,
increments decrease from Delta_req(2) on, and with the CLEARED
T_req(2) = 0:

  Delta_req(3) <= Delta_req(2) = T_req(3).

Positivity T_req(3) > 0: iff 2 > (2 - t)^3 iff u + 1/u > 2,
u = 2^(1/3) - AM-GM, strict. Hence

  M_req = max{Delta_req(3), T_req(3)/3} <= T_req(3).

## 3. T_req(3) < 1/2, by clearing and integers

By the filed cube-is-half collapse, T_req(3) = ln[2/(2-t)^3],
t = 2^(-1/3); so T_req(3) < 1/2 iff 4 < e (2-t)^6.

SEXTIC REDUCTION (t^3 = 1/2; u = 2^(1/3), t = u^2/2, t^2 = u/2):

  (2-t)^3 = 8 - 12t + 6t^2 - 1/2 = 15/2 - 12t + 6t^2,
  (2-t)^6 = 225/4 - 180t + 234t^2 - 144t^3 + 36t^4
          = 234t^2 - 162t - 63/4        (t^3 = 1/2, t^4 = t/2)
          = 117u - 81u^2 - 63/4.

BRACKETING BY INTEGER CUBES:

  u > 5/4   iff 128 > 125;
  u < 63/50 iff 250047 > 250000   (63^3 vs 2 x 50^3).

Then (2-t)^6 > 3/2 iff 468u - 324u^2 > 69:

  468 - 324u > 468 - 20412/50 = 1494/25,
  u(468 - 324u) > (5/4)(1494/25) = 747/10 > 69 iff 747 > 690.

SERIES FRACTION: e > (24 + 24 + 12 + 4 + 1)/24 = 65/24, remainder
positive. FINISH:

  e (2-t)^6 > (65/24)(3/2) = 65/16 = 4 + 1/16 > 4.   QED.

The whole bill at the steepest gate is under half a coin.

## 4. The row, closed

  M_req <= T_req(3) < 1/2 <= sigma_min,

with margin in the angle currency by section 1. D_req is
well-defined unconditionally; the decisive threshold with
GAMMA_ANGLE now has exactly two unfilled rows: c_diff and theta.

## 5. Register

Sigma row cleared by exact displays and integer finishes in the
campaign's cleared style; D2-D3 are new displays awaiting audit.
Press points: the complete-the-square line; 16 > 2 at the N = 2
point; the sextic reduction; the bracketing cubes; the 65/16
finish. Queue: re-gate; c_diff and theta rows; the threshold run;
B1-B3; chapter 10. Filed is not cleared. No closure claimed.
