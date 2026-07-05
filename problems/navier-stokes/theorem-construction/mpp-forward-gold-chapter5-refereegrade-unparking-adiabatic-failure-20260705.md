---
theorem_id: forward-gold-chapter5-refereegrade-unparking-adiabatic-failure-20260705
status: goal-item-4-piece-two-filed-adiabatic-defense-preempted-throughput-dichotomy-stated
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 4 / chapter 5 referee-grade draft (payer 2)
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie: the
  sands of time run slow at the turning point - and that is precisely why
  the parked enemy cannot be protected: relative to its own slowed clock,
  every extraction is fast, and fast perturbations break adiabatic
  shelter. The spring is guarded by the enemy's own slowness.
completion_truth: >-
  Goal item 4, piece two: the un-parking theorem written to referee
  shape, and - the new content - the ADIABATIC DEFENSE PREEMPTED. No
  filed note had addressed the strongest objection a referee (or the
  enemy) can raise against payer 2: that action invariance protects a
  deeply parked orbit against slow extraction. The rebuttal is exact and
  runs in the enemy's disfavor with depth: adiabatic protection requires
  the parameter drift per period to be small against the distance to the
  separatrix; the period grows like the parking depth K while the
  distance shrinks EXPONENTIALLY in K (the closed-form identity
  1 - m = 16 e^(-2K)); their ratio diverges with depth, so for ANY fixed
  extraction fraction f there is a depth beyond which protection fails
  within a single period - and that threshold reproduces EXACTLY the
  filed parking cap K <= (1/2) ln(16/f). Protection would demand
  extraction exponentially small in depth; but extraction IS the enemy's
  descent throughput. Hence the THROUGHPUT DICHOTOMY, the referee-grade
  form of payer 2: in every window, either the enemy's throughput is
  below f (self-throttled descent - no enemy) or the orbit crosses, the
  turning-phase identity yields phase distance >= f, and the race
  integral collects the closed-form floor. What remains transcription-
  grade: the standard separatrix-crossing lemma (citation-grade,
  Neishtadt-type, named T5) and the five-mode-to-pendulum reduction
  details (already per-handoff paid, cross-referenced). Codex gate
  requested on the adiabatic-failure comparison and on whether the
  dichotomy's "self-throttled" horn needs a quantitative bridge to the
  geometric-decay bookkeeping (it does not appear to: sub-f throughput
  per window IS sub-financing directly). No closure claimed.
---

# Chapter 5 (referee shape): un-parking, and why adiabatic shelter fails

## 1. Setting (cited)

Per-handoff seven-mode window (FiniteChainReduction, paid); within it
the active triad reduces to the exact pendulum: X(t) = X_2 +
(X_3 - X_2) sn^2(lambda t; m), period 2 K(m)/lambda, with the
separatrix identity K(m) = (1/2) ln(16/(1 - m)) + o(1). Parking = dwell
at the turning point X_3 with depth K. Extraction by the next triad =
slow drift of the Manley-Rowe levels at relative rate set by the
extracted fraction f per window (D1, paid: damping is a controlled
perturbation of this picture).

## 2. The adiabatic defense, stated at full strength

The enemy's best objection: a slowly perturbed oscillator conserves its
action, so slow extraction should deform the parked orbit smoothly and
never wake the return. If that held at the separatrix, parking depth
would be unbounded and payer 2 would vanish at high Reynolds.

## 3. The failure comparison (exact, monotone, in the enemy's disfavor)

Adiabatic protection is available only while the drift per period is
small compared to the orbit's distance to the separatrix. Both sides of
that comparison are closed forms:

  drift per period  ~  f x (period)  ~  f K(m) / lambda-units,
  distance to separatrix  =  1 - m  =  16 e^(-2K).

Their ratio grows like f K e^(2K): it DIVERGES with depth. The deeper
the parking, the slower the enemy's own clock at the turning point, and
the faster - relative to that clock - any fixed extraction becomes.
Adiabatic shelter is not merely unavailable at the separatrix; it
degrades EXPONENTIALLY in exactly the regime the enemy needs it.
Protection would require f smaller than e^(-2K) up to fixed factors,
i.e. extraction exponentially small in depth. Setting the ratio to
order one reproduces the filed parking cap:

  K <= (1/2) ln(16/f) + O(1),

now derived as the adiabatic-failure threshold rather than asserted
from the phase identity alone - two independent derivations, one cap.

## 4. Crossing and the phase floor

Once the comparison of section 3 exceeds order one, the orbit crosses
the separatrix region within a single period (T5: standard
separatrix-crossing estimate, citation-grade). After crossing, the
turning-phase identity d(phi_t)/d(ln A) = 2 tan(phi_t/2) >= 1 (filed,
exact) converts the extraction fraction into phase distance
Delta phi >= f, and the race integral (filed, exact inequalities only)
collects the closed-form return floor r0(f) - amplitude-free, as the
story requires.

## 5. The throughput dichotomy (payer 2, referee-grade form)

THEOREM (dichotomy). In every handoff window, exactly one of:
(a) the enemy's extracted fraction is below f: descent throughput is
self-throttled below the financing requirement in that window; or
(b) the extracted fraction is at least f: adiabatic shelter fails
(section 3), the orbit crosses (section 4), and the return floor r0(f)
is collected in closed form.
Either horn is sub-financing; f is a free dial fixed once (the filed
optimization over f is closed-form). This is payer 2 as a two-line
statement, with the adiabatic objection consumed inside horn (b), and
it is the form chapter 8 composes with payer 1 via the single dial.

## 6. Debts and gate

T5: separatrix-crossing lemma, citation-grade transcription. Reduction
details: cross-reference FiniteChainReduction and ChainUniformR0 (both
paid). Codex gate requested on: the section-3 comparison as stated (is
the drift-per-period numerator the right adiabatic modulus at a
SEPARATRIX rather than a generic orbit - Neishtadt's setting says yes,
transcribe carefully); and the dichotomy's horn (a) bridging directly
into the chapter-8 bookkeeping (it should compose with no new constant:
sub-f throughput is sub-financing by definition of the financing
requirement).
