---
theorem_id: forward-gold-octave-toll-closed-form-all-helicity-branches-20260705
status: corrected-same-helicity-closed-mixed-fine-chop-break-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / impedance / per-octave toll
authorship: >-
  Codex 2026-07-05: normalized c_down(alpha,s), catalyst optimum alpha=2s/3,
  c_*(s)=4s^3/(4s^3+27(1-s)), supermultiplicative composition, octave bound
  1/28 (same-helicity), and later correction of the mixed-helicity fine-chop
  composition break. Claude (Fable): mixed-helicity one-step classification.
completion_truth: >-
  CORRECTION INSTALLED. The prior "sub-half in every branch / chopping never
  helps" conclusion was false for the catalyst-flipped mixed-helicity branch.
  Same-helicity remains closed in the threshold-linearized helical normal form:
  best catalyst alpha=2s/3, c_*(s)=4s^3/(4s^3+27(1-s)), c_*(1/2)=1/28, and
  c_*(s)c_*(t)<=c_*(st), so chopping does not help. Mixed helicity remains
  branch-classified at one step: only the catalyst-flipped branch (s_k=-1)
  relays; parent-flipped and target-flipped branches are stable. For the
  catalyst-flipped branch c_*(s)=2s^3/(2s^3+(1-s)) and c_*(1/2)=1/3 for a
  single octave step, but composition reverses the same-helicity conclusion:
  two half-octave steps reach 1/2 and fine chopping tends to 2^(-1/2)>1/2.
  Thus scalar retention alone does not kill the mixed fine-chop ladder. The
  remaining atomic burden is the mixed-helicity phase/reverse-instability
  budget: each fine chopped step creates same-scale opposite-helicity waste
  whose reverse-transfer instabilities must be phase-suppressed, and that
  suppression is governed by the relay-drift/transversality machinery.
---

# Octave toll corrected: same helicity closed, mixed fine-chop open

## Correction header

The previous verdict in this note was wrong. The same-helicity composition law
is valid, but the catalyst-flipped mixed-helicity branch does not satisfy the
same chopping monotonicity. The false claim was:

  Sub-half everywhere - the atomic impedance theorem is branch-complete.

The corrected state is:

  Same-helicity scalar retention is sub-half per octave and chopping only
  decreases it. Catalyst-flipped mixed-helicity scalar retention is 1/3 for
  a single octave step, reaches 1/2 for two half-octave steps, and tends to
  2^(-1/2) under arbitrarily fine chopping. Mixed fine-chop self-financing
  is therefore not killed by scalar retention.

Same-helicity (Codex, verified): c_down = a^2(s-a)/(a^2(s-a)+(1-s)),
max at a=2s/3, c_*(s)=4s^3/(4s^3+27(1-s)), c_*(1/2)=1/28, and
c_*(s)c_*(t) <= c_*(st): chopping never helps.

Mixed-helicity classification (new): injecting the middle mode, the pair
instability needs positive coefficient product. Parent-flipped (s_p=-1):
product (-p-q)(k+p) < 0 - stable, no relay. Target-flipped (s_q=-1):
product (p+q)(k-p) < 0 - stable, no relay. Catalyst-flipped (s_k=-1):
product (p-q)(-k-p) > 0 - relays, with threshold eigenvector
|x/y| = (q/k) sqrt((q-p)/(k+p)) and

  c_down = a^2(s+a) / ( a^2(s+a) + (1-s) ),  a=k/q, s=p/q,

increasing in a, supremum as a->s (catalyst adjacent to parent):
c_*(s) = 2s^3/(2s^3+(1-s)); octave c_*(1/2) = 1/3, unattained.

Composition correction: this mixed branch is not supermultiplicative in the
same direction. For an equal N-step octave,

  c_*(2^(-1/N))^N -> 2^(-1/2).

In particular, N=2 gives exactly 1/2. The one-step value 1/3 is not a
per-octave ceiling once the ladder is allowed to chop the octave.

Verdict: same-helicity atomic impedance is closed at 1/28 in this normal form.
Mixed-helicity scalar retention remains viable under fine chopping. The live
burdens are the mixed-helicity phase/reverse-instability race and normal-form
lifting.
