---
theorem_id: forward-gold-f1-essential-support-variant-paley-wiener-consistency-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / F1 / t1 closed — the essential-support Bernstein variant, and a Paley-Wiener consistency self-correction
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, closing gap t1 of my own
  Bernstein packet lemma the same day, with one self-correction
  found in the act of closing it. Physical story Thomas Birnie: the
  packet cannot be perfectly caged in space AND perfectly pure in
  band - the field does not allow both at once. The honest packet
  is pure in band and caged in space only up to a small spill. The
  lemma survives the spill: a packet that keeps seven-eighths of
  itself inside its correlation volume still cannot aim its mass at
  the collinear knife-edge - the spill can hide, the body cannot.
depends_on:
  - mpp-forward-gold-f1-predator-cone-population-bernstein-packet-lemma-20260706.md
  - mpp-forward-gold-codex-r2-normal-form-lift-audit-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
completion_truth: >-
  Closes gap t1 of the Bernstein packet lemma and files one
  same-day self-correction; proves the essential-support variant
  with exact fractions. (M0 - SELF-CORRECTION, Paley-Wiener
  consistency) The original L1 hypothesis pair (EXACT Fourier
  support in the annulus AND EXACT spatial support in the ball) is
  vacuous: a nonzero exactly band-limited function is entire in
  space and cannot be compactly supported. t1 is therefore not an
  optional variant but THE lemma; the consistent reading, matching
  the ladder frame's installed definitions, is: EXACT band
  limitation (Fourier support in the annulus mu/2 <= |xi| <= 2mu)
  + ESSENTIAL spatial support (mass fraction >= 1 - eps inside the
  ball B_R, R = a/mu). The compact-support display of L1 remains
  correct as the f_1-step of the proof below; only its standalone
  reading is struck. (M1 - THE ESSENTIAL VARIANT, exact) Let
  ||f - f chi_{B_R}||_2^2 <= eps ||f||_2^2. Split f = f_1 + f_2,
  f_1 = f chi_{B_R}. Pointwise |f_hat|^2 <= 2|f_hat_1|^2 +
  2|f_hat_2|^2. The f_1 term uses only spatial support (Bernstein
  as in L1): slab fraction <= 2 C_B a^3 theta with C_B = 7/(4 pi).
  The f_2 term uses only Plancherel: <= 2 eps. Hence the slab mass
  fraction of f obeys frac(S_theta) <= 2 C_B a^3 theta + 2 eps.
  (M2 - THE CORRECTED FLOOR) With spill eps <= 1/8 and
  theta_*^ess := 1/(8 C_B a^3) = pi/(14 a^3): frac <= 1/4 + 1/4 =
  1/2, so AT LEAST HALF the packet's mass lies at angular distance
  >= theta_*^ess = pi/(14 a^3) from any fixed collinear plane.
  All constants exact fractions; the population consequence (L2)
  and the G-ratio floor (L3) of the parent note carry over with
  theta_* replaced by theta_*^ess. (M3 - WHAT THE FRAME MUST
  SUPPLY) The single remaining input for t1 is the spill bound:
  the ladder frame's packets keep mass fraction >= 7/8 inside one
  correlation volume - this is a FRAME-DEFINITION check (the
  correlation-volume constant a may simply be taken as the radius
  at which the installed packet class achieves spill <= 1/8, which
  then also feeds theta_*^ess = pi/(14 a^3) - one constant, one
  place, quarantined). Remaining parent gaps: t2 (a is the carried
  constant - now sharpened to the spill-1/8 radius reading), t3
  (usable-mass = monomial participation - the regate point,
  untouched here), t4 (arithmetic re-derivation - extended by
  M1-M2's factors of 2). No F2/F4/F5, Chapter-10, manuscript, or
  MPP closure is claimed. Filed is not cleared.
---

# t1 closed: the essential-support variant, with a Paley-Wiener self-correction

## M0. Self-correction (same-day law)

The parent lemma's hypothesis pair — exact Fourier support in the
annulus AND exact spatial support in a ball — is vacuous: a nonzero
band-limited function is entire and cannot vanish on any open set.
So t1 was never optional; the essential-support statement IS the
lemma. The consistent hypotheses, matching the ladder frame's
installed definitions: exact band limitation, essential spatial
support (spill \(\le \varepsilon\) outside \(B_R\), \(R = a/\mu\)).
The parent's compact-support display survives as the \(f_1\)-step
below; its standalone reading is struck.

## M1. The essential variant (exact)

Let \(\|f - f\chi_{B_R}\|_2^2 \le \varepsilon\|f\|_2^2\). Split
\(f = f_1 + f_2\), \(f_1 = f\chi_{B_R}\). Pointwise
\(|\hat f|^2 \le 2|\hat f_1|^2 + 2|\hat f_2|^2\).

The \(f_1\) term uses only spatial support (the parent's Bernstein
step): its slab contribution is \(\le 2C_B a^3\theta\) of the total
mass, \(C_B = \frac{7}{4\pi}\). The \(f_2\) term uses only
Plancherel: \(\le 2\varepsilon\). Hence

\[
  \frac{\int_{S_\theta}|\hat f|^2}{(2\pi)^3\|f\|_2^2}
  \;\le\;
  2C_B a^3\theta + 2\varepsilon .
\]

## M2. The corrected floor

With spill \(\varepsilon \le \tfrac18\) and

\[
  \boxed{\;\theta_*^{\rm ess} := \frac{1}{8C_Ba^3}
  = \frac{\pi}{14\,a^3}\;}
\]

the slab fraction is \(\le \tfrac14 + \tfrac14 = \tfrac12\): at
least half the packet's mass lies at angle
\(\ge \theta_*^{\rm ess}\) from any fixed collinear plane. The
population consequence and the G-ratio floor of the parent note
carry over with \(\theta_*\) replaced by \(\theta_*^{\rm ess}\).

## M3. What the frame must supply

One input remains for t1: the spill bound — the frame's packets
keep mass fraction \(\ge \tfrac78\) inside one correlation volume.
This is a frame-definition check: \(a\) may simply be read as the
radius at which the installed packet class achieves spill
\(\le \tfrac18\); the same constant then feeds
\(\theta_*^{\rm ess} = \pi/(14a^3)\). One constant, one place,
quarantined.

Remaining parent gaps: t2 (sharpened to the spill-radius reading),
t3 (usable-mass = monomial participation — the regate point,
untouched), t4 (arithmetic re-derivation, extended by the factors
of 2 above).

Filed is not cleared. No closure claimed.
