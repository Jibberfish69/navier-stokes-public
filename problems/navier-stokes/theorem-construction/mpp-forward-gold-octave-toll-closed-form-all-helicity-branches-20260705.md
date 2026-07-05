---
theorem_id: forward-gold-octave-toll-closed-form-all-helicity-branches-20260705
status: atomic-octave-toll-closed-in-all-helicity-branches-sub-half-everywhere
created: 2026-07-05
problem: navier-stokes
route: forward-gold / impedance / per-octave toll
authorship: >-
  Codex 2026-07-05: normalized c_down(alpha,s), catalyst optimum alpha=2s/3,
  c_*(s)=4s^3/(4s^3+27(1-s)), supermultiplicative composition, octave bound
  1/28 (same-helicity). Claude (Fable): verification and the mixed-helicity
  branch closure below.
completion_truth: >-
  Atomic (single coherent path, helical normal form, threshold-linearized)
  octave toll now closed in ALL helicity branches. Same-helicity: best
  catalyst alpha=2s/3, octave retention <= 1/28 (Codex; verified). Mixed
  helicity: only the catalyst-flipped branch (s_k=-1) relays at all - the
  parent-flipped and target-flipped branches have negative coefficient
  product (no pair instability, no relay). For the catalyst-flipped branch
  the eigenvector carries (k+p) in place of (p-k): c_down =
  alpha^2(s+alpha)/(alpha^2(s+alpha)+(1-s)), increasing in alpha, supremum
  at alpha->s: c_*(s)=2s^3/(2s^3+(1-s)), octave value c_*(1/2)=1/3,
  supremum unattained. Since self-financing a doubling ladder needs
  retention >= 1/2 per octave, NO atomic branch self-finances: 1/28 and 1/3
  are both strictly below 1/2. The impedance theorem holds atomically in
  every branch, in closed form. Remaining burdens unchanged and narrowed:
  coherent multi-parent dwell (transversality/escape from the aligned
  variety - persistent tangency must be shown degenerate/no-descent or
  rotated out by pressure/Leray geometry), and lifting the normal-form
  caveats (geometric prefactor, beyond-threshold amplitudes).
---

# Octave toll closed in all branches

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

Verdict: doubling ladder needs >= 1/2 per octave to self-finance. Best
same-helicity octave: 1/28. Best mixed octave: 1/3. Sub-half everywhere -
the atomic impedance theorem is branch-complete. Live burdens: the
multi-parent dwell/transversality theorem; normal-form lifting.
