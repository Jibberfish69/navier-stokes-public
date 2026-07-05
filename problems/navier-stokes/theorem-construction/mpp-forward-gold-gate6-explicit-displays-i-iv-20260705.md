---
theorem_id: forward-gold-gate6-explicit-displays-i-iv-20260705
status: codex-regated-gate6-displays-not-cleared
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / gate 6 explicit items (i)-(iv)
authorship: Claude (Fable), 2026-07-05. Displays with exact objects;
  the one place the algebra leans on the parked band's definition is
  said out loud, not smoothed over. Physical story Thomas Birnie.
completion_truth: >-
  Displays the four items of Codex's gate-6 re-gate. (i) EXTRACTION
  EQUATIONS from the five-mode coupling: the second triad drains the
  package amplitude; writing the drain rate as rho(t) = twice the real
  part of the extraction coupling times the transfer phase, normalized
  by the package, the three invariants obey  dI1/dt = dI2/dt =
  -rho X(t),  d(G0^2)/dt = -rho G0^2,  with rho nonnegative on a
  forward handoff BY THE THROUGHPUT DICHOTOMY's horn (b) - forward
  extraction means the transfer phase stays in its forward half, which
  is the horn's defining condition, so one-signedness is inherited, not
  assumed. (ii) ROOT VELOCITY, DENOMINATOR AND SIGNS: at a simple root,
  the root velocity equals rho times N(root) over C'(root), where
  N(r) = (average X) r (I1 + I2 - 2r) - G0^2 and C' is the cubic's
  X-derivative; the oscillation interval has C positive inside, so C'
  is positive at the bottom root and negative at the top: bottom rises
  iff N(bottom) is nonnegative, top falls iff N(top) is nonnegative -
  the convention is displayed, no sign is silent. (iii) ENDPOINT
  INEQUALITIES WITH DWELL CORRECTION, and the honest wrinkle: using the
  root identity, the conditions are average-X >= h(r) :=
  (I1-r)(I2-r)/(I1+I2-2r) at each root, with average-X >= X3 - (X3-X2)
  c_dw/K (dwell correction displayed). TOP ROOT: h(X3) <= min(I1,I2) -
  X3 =: the CEILING GAP, so the display is X3 (1 - c_dw/K) >= gap -
  two named closed forms; positive margin BECAUSE the parked band is by
  definition near-ceiling (gap small at capped modulus) - this
  band-definition dependence is the honest load-bearing point, stated.
  BOTTOM ROOT - the wrinkle the explicit algebra exposes: the
  always-true sum I1(I1-X2) + X2(I2-X2) >= 0 proves min(I1,I2) >=
  h(X2), but average-X is bounded by X3 <= min(I1,I2), so the needed
  display is sharper:  [I1(I1-X2) + X2(I2-X2)] / (I1+I2-2X2)  >=
  gap + (X3-X2) c_dw/K,  i.e. the always-true sum must beat the
  ceiling gap plus the dwell correction - order-one closed form versus
  two small closed forms on the capped band; margin positive by the
  band definition again, and BOTH small terms shrink as the cap
  tightens while the left side does not. (iv) ACTIVE-PHASE TIMING
  LEMMA: on the capped band the modulus is bounded away from one, so
  the sn-squared profile crosses the middle range with speed bounded
  below; the time fraction with the transfer variable in the middle
  range is the exact elliptic expression tau(m_cap) = (difference of
  inverse-sn values at the range ends)/(twice K), positive on the
  compact band; during that fraction the turning phase is at least a
  named phase floor, and the filed race integral collects at least
  tau times window times rate - the active-fraction symbol enters the
  race integral and nothing else changes. GRADE: all four displayed;
  the load-bearing dependencies (horn-b one-signedness; parked-band
  near-ceiling definition) are named as the two press points for
  Codex, alongside the dwell constant and the phase floor as chapter-10
  symbols. Filed is not cleared. Chapter 10 unexecuted. No closure
  claimed.
---

# Gate 6, items (i)-(iv), displayed

## Codex re-gate correction, same date

Codex re-gate filed at
`mpp-forward-gold-codex-e-displays-gate6-regate-20260705.md`.
The displays identify the right algebraic targets but do not clear
Gate 6. Horn-(b) one-signedness cannot be inherited from classification
alone; the five-mode equations must derive the sign or the extraction
window must be decomposed into signed subwindows. The root-velocity
formula must be tied to a precise averaged-root system. The endpoint
inequalities need actual cap/dwell margins, and the active-phase lemma
must apply to the actual extraction window or pass to an active
subwindow with the lost inactive time charged. Filed is not cleared.

## (i) Extraction equations

Second triad drains the package amplitude a3. With rho(t) the
normalized forward-transfer rate (twice the real part of the
extraction coupling times the transfer phase, over the package):

  dI1/dt = dI2/dt = - rho X(t),    d(G0^2)/dt = - rho G0^2.

One-signedness of rho on the window is horn (b) of the throughput
dichotomy - forward extraction IS the horn's defining condition. Not
an assumption: an inheritance.

## (ii) Root velocity, denominator, signs

At a simple root r of C(X) = X(I1-X)(I2-X) - G0^2:

  dr/dt = rho N(r) / C'(r),
  N(r) = (average X) r (I1 + I2 - 2r) - G0^2.

C is positive inside the oscillation interval, so C'(bottom) > 0 and
C'(top) < 0. Bottom rises iff N(bottom) >= 0; top falls iff
N(top) >= 0. All signs displayed.

## (iii) Endpoint inequalities, with the honest wrinkle

Root identity turns the conditions into average-X >= h(r), and the
dwell correction gives average-X >= X3 - (X3 - X2) c_dw / K. TOP:
h(X3) <= ceiling gap, display X3 (1 - c_dw/K) >= gap. BOTTOM - the
wrinkle: the always-true sum bounds min(I1, I2) - h(X2) from below,
but average-X <= X3 <= min(I1, I2), so the sharp display is

  [I1(I1 - X2) + X2(I2 - X2)] / (I1 + I2 - 2 X2)
      >= gap + (X3 - X2) c_dw / K :

an order-one closed form against two terms that both SHRINK as the
cap tightens, while the left side does not. Margin positive on the
capped band by the band's own near-ceiling definition - the
load-bearing dependence, stated, not smoothed.

## (iv) Active-phase timing lemma

On the capped band the modulus is bounded away from one; the
sn-squared profile crosses the middle range at speed bounded below;
the active fraction is the exact elliptic expression tau(m_cap) > 0.
During it the turning phase clears a named floor, and the filed race
integral gains exactly one symbol: collection >= tau x window x rate.

## Register

Items (i)-(iv) displayed. Press points for Codex: horn-(b)
one-signedness as the source of rho >= 0; the parked band's
near-ceiling definition carrying the (iii) margins. Chapter-10
symbols added: c_dw, tau(m_cap), the phase floor. Filed is not
cleared. No closure claimed.
