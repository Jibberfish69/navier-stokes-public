---
theorem_id: forward-gold-f1-predator-cone-population-bernstein-packet-lemma-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / F1 / R2b predator-cone population — the geometric packet lemma (Bernstein nonconcentration)
authorship: >-
  Derivation: Claude (Fable), 2026-07-06, attacking the single open
  R2 gate named by the R2 audit, per the frozen order (F1 first).
  Physical story Thomas Birnie: a packet of the fluid-object is not
  a needle - it lives in one correlation volume of space, and a
  thing that small in space cannot be that sharp in direction. The
  uncertainty principle is the physical law here: spatial
  concentration FORCES angular spread. The enemy would like the
  packet's mass to hide on the collinear knife-edge where the
  helical coupling dies; but to hide on a knife-edge in wavenumber,
  the packet would have to be spread over many correlation volumes
  in space - and the ladder frame's packets, by their installed
  definition, are not. Half the mass, at least, stands away from
  every knife-edge, at an angle the correlation constant fixes once
  and for all.
depends_on:
  - mpp-forward-gold-codex-r2-normal-form-lift-audit-20260705.md
  - mpp-forward-gold-r2-normal-form-lift-ratio-theorem-20260705.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-codex-r2b-population-regate-audit-20260705.md
completion_truth: >-
  Pays the R2b predator-cone population clause - the single open
  gate of F1 named by the R2 audit - by an unconditional
  nonconcentration lemma about the actual packet objects, with the
  shape floor an exact closed form; leaves the G-ratio floor on the
  populated shape class as a named quarantined constant and flags
  the essential-support variant. (L1 - THE LEMMA, unconditional,
  classical ingredients only) Let f be a ladder-frame packet at band
  mu: Fourier support in the annulus mu/2 <= |xi| <= 2mu, spatial
  support in a ball of radius R = a/mu (one correlation volume -
  the packet's INSTALLED definition in the ladder concentration
  frame; a is the frame's correlation constant). For any fixed
  plane P through the origin (the collinear/degenerate set of any
  selected partner pair) and any angular half-width theta, the
  packet's L2 mass in the slab S_theta = {xi in the annulus:
  angle(xi, P) < theta} obeys, by Bernstein + Plancherel:
  |f_hat(xi)| <= |B_R|^{1/2} ||f||_2, so mass(S_theta)/||f||^2 <=
  |S_theta| |B_R| / (2 pi)^3 <= [(4 pi/3)^2 (2^3 - 2^{-3})
  /(2 pi)^3] a^3 theta =: C_B a^3 theta, with C_B = (4pi/3)^2
  (63/8)/(2pi)^3 = 7 pi^2 (16/9)... displayed exactly in the body
  as a pure closed form - no decimals. Choosing theta_* :=
  1/(2 C_B a^3) gives: AT LEAST HALF the packet's L2 mass lies at
  angular distance >= theta_* from EVERY fixed collinear plane
  simultaneously-per-plane (one plane at a time, as the population
  clause requires for the selected pair). (L2 - POPULATION
  CONSEQUENCE) For any selected partner pair, the packet leg
  populates triangles with the pair whose angle at the packet leg
  is >= theta_*, carrying mass fraction >= 1/2; the band
  assignments (sub-octave row, installed) bound the side ratios;
  hence BOUNDED-SHAPE (all angles floored by a closed-form function
  of theta_* and the band ratios) hyperbolic predator triangles
  receive >= 1/2 of the packet's usable mass. The abstract
  cone-availability statement of R2 becomes a population statement
  about the actual decomposition, as the audit demanded. (L3 - THE
  G-RATIO FLOOR, named and quarantined) On the populated shape
  class, the common helical triple-product factor |G| is bounded
  below by an exact trigonometric function of the shape floor;
  G_floor(theta_*, band ratios) is NAMED and quarantined to
  Chapter 10 - this is exactly the "certified G-ratio lower floor"
  alternative the audit offered, now backed by a populated class
  instead of abstract availability. HONEST GAPS: (t1) the lemma
  uses COMPACT spatial support; if the frame's packets have only
  essential support (mass 1 - eps in the ball), the bound degrades
  to fraction >= 1/2 - eps' with eps' displayed - the
  essential-support variant is flagged for the gate; (t2) the
  correlation constant a must be the frame's carried constant -
  band-data check; (t3) "usable mass" must match the audit's sense
  (participating in the window's monomials) - the routing from
  mass fraction to monomial participation is the regate point;
  (t4) the exact closed form of C_B is displayed in the body and
  must be re-derived at gate (arithmetic of annulus volume x ball
  volume x Plancherel). If (t1)-(t3) clear, R2b's population
  clause is PAID and F1 reduces to zero open gates (R2a cleared
  2026-07-05; R2b scaling cleared; R2c scope stands); the
  falsifiability clause is honored vacuously (the coefficients DO
  preserve the fractions - R2a). No F2/F4/F5, Chapter-10,
  manuscript, or MPP closure is claimed. Filed is not cleared.
---

# F1: the predator-cone population is forced by the uncertainty principle

## L1. The nonconcentration lemma (unconditional)

Let \(f\) be a ladder-frame packet at band \(\mu\): Fourier support
in the annulus \(\mu/2 \le |\xi| \le 2\mu\), spatial support in a
ball \(B_R\) with \(R = a/\mu\) — one correlation volume, the
packet's installed definition; \(a\) is the frame's correlation
constant.

For a fixed plane \(P\) through the origin and angular half-width
\(\theta\), let
\(S_\theta = \{\xi \in \text{annulus} : \angle(\xi, P) < \theta\}\).

Bernstein: \(|\hat f(\xi)| \le \|f\|_{L^1} \le |B_R|^{1/2}\|f\|_2\),
with \(|B_R| = \frac{4\pi}{3}\frac{a^3}{\mu^3}\).
Plancherel: \(\int|\hat f|^2 = (2\pi)^3\|f\|_2^2\).
The slab: the set at angular distance \(<\theta\) from a plane
occupies the sphere-fraction \(\sin\theta \le \theta\), so
\(|S_\theta| \le \theta\cdot\frac{4\pi}{3}\bigl((2\mu)^3 -
(\mu/2)^3\bigr) = \frac{4\pi}{3}\cdot\frac{63}{8}\,\mu^3\theta\).
Hence

\[
  \frac{\int_{S_\theta}|\hat f|^2}{(2\pi)^3\|f\|_2^2}
  \;\le\;
  \frac{|S_\theta|\,|B_R|}{(2\pi)^3}
  \;=\;
  \frac{\frac{4\pi}{3}\cdot\frac{63}{8}
  \cdot\frac{4\pi}{3}}{(2\pi)^3}\;a^3\theta
  \;=\;
  \frac{\frac{16\pi^2}{9}\cdot\frac{63}{8}}{8\pi^3}\;a^3\theta
  \;=\;
  \boxed{\frac{7}{4\pi}\,a^3\,\theta}
  \;=:\;C_B\,a^3\,\theta .
\]

(Exact: \(\frac{16}{9}\cdot\frac{63}{8} = 14\);
\(14\pi^2/(8\pi^3) = \frac{7}{4\pi}\).)

Choose

\[
  \boxed{\;\theta_* := \frac{1}{2\,C_B\,a^3} = \frac{2\pi}{7\,a^3}\;}
\]

Then AT LEAST HALF the packet's \(L^2\) mass lies at angular
distance \(\ge \theta_*\) from the fixed plane. Spatial
concentration forces angular spread: a one-correlation-volume
packet cannot hide on a collinear knife-edge.

## L2. Population consequence

For any selected partner pair, the packet leg populates triangles
whose angle at the packet leg is \(\ge \theta_*\), carrying mass
fraction \(\ge 1/2\). The installed band assignments (sub-octave
row) bound the side ratios. Hence bounded-shape hyperbolic predator
triangles — all angles floored by a closed-form function of
\(\theta_*\) and the band ratios — receive at least half the
packet's usable mass. The audit's demand is met in its own terms:
an availability statement about an abstract cone is replaced by a
population statement about the actual packet/window decomposition.

## L3. The G-ratio floor (named, quarantined)

On the populated shape class, the common helical triple-product
factor \(|G|\) has an exact trigonometric lower bound
\(G_{\rm floor}(\theta_*, \text{band ratios})\) — named and
quarantined to Chapter 10. This is the audit's "certified G-ratio
lower floor" alternative, now backed by a populated class.

## Gaps (honest)

(t1) compact vs essential spatial support — the \(1/2 - \varepsilon'\)
variant is flagged; (t2) \(a\) must be the frame's carried
correlation constant; (t3) "usable mass" must match the audit's
sense — mass fraction to monomial participation is the regate
point; (t4) the \(C_B\) arithmetic is displayed for re-derivation
at gate.

If (t1)–(t3) clear: R2b's population clause is paid, and F1 has
zero open gates (R2a cleared 2026-07-05 with the phase-gauge
correction; R2b exact scaling cleared; R2c scope stands). The
falsifiability clause is honored in the affirmative direction: the
actual Leray-projected coefficients DO preserve the fractions and
sector signs (R2a), and the population that makes them participate
is forced by the uncertainty principle.

Filed is not cleared. No closure claimed.
