---
theorem_id: forward-gold-partii-correction-acceptance-wii-decomposition-pricing-completeness-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / same-day correction of Part II + h1 discharge + W-II decomposition (the pricing-completeness attack)
authorship: >-
  Derivation: Claude (Fable), 2026-07-06. Part-II correction found by
  Claude (Opus 4.8) in the consolidation note; independently verified
  exactly here before acceptance (same-day correction law, my own
  error). Physical story Thomas Birnie: the pincer's jaws were set at
  the wrong width — a climber who enters a block already carrying the
  whole ceiling can coast through a short block without recruiting;
  the block must be long enough that coasting alone drops him below
  the margin, and "long enough" is the logarithm of how much he can
  carry over what he must keep. And for the second wall: a ladder
  that stops recruiting fresh participation does not merely stall —
  every rung above the last financed admission decays on the
  contraction the toll booth already charges; if the ledger truly
  prices everything the fluid-object produces at that scale, decay of
  the priced readout starves the singularity below the classical
  epsilon, and the classical local-regularity theorem finishes it.
  The whole second wall is the single sentence "nothing at critical
  scale escapes the ledger's pricing" — which is the faithfulness of
  the ledger, the same wall as the first. Two walls, one wall.
depends_on:
  - mpp-forward-gold-consolidation-product-dissolves-pincer-verified-20260706.md
  - mpp-forward-gold-wI-extraction-laws-manley-rowe-reclassification-20260706.md
  - mpp-forward-gold-SYNTHESIS-one-sided-contraction-recruit-or-attenuate-pincer-20260706.md
  - mpp-forward-gold-top-bracket-elliptic-certification-telescoped-bottom-20260706.md
  - mpp-forward-gold-codex-gate6a-endpoint-weight-floor-reduction-20260705.md
  - mpp-forward-gold-codex-one-sided-product-consumer-rewrite-20260706.md
completion_truth: >-
  Four payments. (A - SAME-DAY CORRECTION, my own Part-II error,
  accepted and independently verified) The SYNTHESIS Part-II block
  condition q^K <= 1/4 is WRONG: exact counterexample q = 49/100
  (c_0 = 1/50), E_max = 10 e_marg, K = 2 (q^2 = 2401/10000 <= 1/4):
  the zero-injection adversary survives the block with
  E = (2401/1000) e_marg >= e_marg and recruits NOTHING. Accepted
  fix (Opus): K = ceil( log(2 E_max / e_marg) / log(1/q) ); then
  q^K E_j <= e_marg/2 for every entry E_j <= E_max and survival
  forces block recruitment S >= e_marg/2. Verified exactly (worst
  case entry at E_max, exact fractions). The pincer's conclusion
  survives with the corrected block: any surviving climb of N rungs
  forces >= floor(N/K) fresh first admissions of mass >= e_marg/2,
  K = O(log(E_max/e_marg)); blowup-threatening histories need
  N > 111 K. E_max is hereby NAMED (the financed package/readout
  ceiling on the carried band) and QUARANTINED to Chapter 10.
  (B - h1 DISCHARGED) The G6a home (codex-gate6a-endpoint-weight-
  floor-reduction) defines <X>_fr as the one-period time average of
  the frozen Gate-6 orbit, with R4 entering additively as
  <X>_true >= <X>_fr - C_per drift_per. That is exactly the
  classical sn^2 period average of C2: <X>_fr = r_- + A sigma(m),
  sigma(m) = (1 - E(m)/K(m))/m >= 1/2. Convention matches verbatim;
  C2 applies at the home with no re-derivation. (C - ACCEPTANCE)
  The Manley-Rowe reclassification is accepted: within the relay
  model the extraction laws are forced (shared action sits in both
  invariants with unit ceiling weight and is spent once), so Part
  I's conserved gap is derived, and W-I folds into the faithfulness
  meta-gap W-0. Door-2 voidness and the g3 discharge (gap_0 = the
  period-capped separatrix gap) are likewise accepted. (D - THE
  ATTACK: W-II DECOMPOSED) Contrapositive form: BOUNDED READOUT
  IMPLIES NO SINGULAR POINT, decomposed into (W-II-a) proof-grade
  given c_0 > 0: if no fresh admission is financed beyond rung
  N_max, the installed recursion E_{j+1} <= q E_j + F_j runs with
  F_j = 0, so rung readout decays geometrically, E_{N_max + n} <=
  q^n E_max — attenuation is the pincer's own contraction with the
  income switched off; (W-II-b) THE PRICING-COMPLETENESS
  INEQUALITY, named, the sole new mathematics: D_j <= C_pc E_j
  uniformly on the carried band, where D_j is the scale-j local
  scaled dissipation of the actual suitable solution (the dyadic
  shell contribution to the CKN quantity r^{-1} int_{Q_r} |grad
  u|^2) and E_j the financed rung readout — "nothing produced at
  critical scale escapes the ledger's pricing"; (W-II-c) IMPORTED
  CLASSICAL: geometric decay of D_j sums the CKN tail below epsilon
  at some scale, and epsilon-regularity (CKN; suitable solutions —
  which F3's ledger formation already inhabits) excludes the
  singular point. CONSEQUENCE IF (W-II-b) LANDS: W-II is paid
  modulo c_0 > 0 and the CKN import, and the route's two remaining
  walls COLLAPSE TO ONE — W-0, ledger faithfulness, now appearing
  twice as (i) the extraction laws' NS-derivation and (ii) pricing
  completeness. The natural home for (W-II-b) is the F3 interface
  (the chronological energy queue and two-coin cell pricing were
  closed ON ACTUAL SUITABLE SOLUTIONS, not on the relay model), so
  the transcription attempt belongs there, not in Gate 6. HONEST
  GAPS: (d1) (W-II-a) needs c_0 > 0 uniformly at rungs > N_max —
  chained to the product side exactly as in the consolidation; (d2)
  the domination direction matters: D_j <= C_pc E_j (readout
  dominates shell), not the converse, and any unpriced production
  breaks it — C_pc IS the faithfulness constant; (d3) uniformity of
  C_pc in j is scale invariance of the pricing, to be checked
  against the P1 gross pricing displays; (d4) the CKN import must
  be scoped in the manuscript as classical background. No product
  positivity, F2/F4/F5, Chapter-10, manuscript, or MPP closure is
  claimed. Filed is not cleared.
---

# Part-II correction accepted; h1 discharged; W-II decomposed

## A. The correction (my error, verified exactly, accepted)

The SYNTHESIS Part-II block condition `q^K <= 1/4` is insufficient.
Exact counterexample, checked in exact arithmetic before acceptance:

\[
  q = \frac{49}{100}\ \Bigl(c_0 = \frac{1}{50}\Bigr),\qquad
  E_{\max} = 10\,e_{\rm marg},\qquad
  K = 2\ \Bigl(q^2 = \frac{2401}{10000} \le \frac14\Bigr):
\]

the zero-injection adversary enters at \(E_{\max}\) and exits at
\(E = \frac{2401}{1000}\,e_{\rm marg} \ge e_{\rm marg}\) — survival
with ZERO recruitment. The claimed floor \(S \ge e_{\rm marg}/2\)
fails whenever \(E_{\max} > 4\,e_{\rm marg}\).

Accepted fix (consolidation note):

\[
  \boxed{\;K = \Bigl\lceil \frac{\log(2E_{\max}/e_{\rm marg})}
  {\log(1/q)} \Bigr\rceil\;}
  \quad\Longrightarrow\quad
  q^K E_j \le \frac{e_{\rm marg}}{2}\ \ \forall E_j \le E_{\max},
\]

so survival across the block forces \(S \ge e_{\rm marg}/2\).
Verified exactly at worst-case entry \(E_j = E_{\max}\).

The pincer's teeth survive: a surviving climb of \(N\) rungs forces
\(\ge \lfloor N/K \rfloor\) fresh first admissions of mass
\(\ge e_{\rm marg}/2\) each, with \(K = O(\log(E_{\max}/e_{\rm marg}))\);
blowup-threatening histories need \(N > 111K\). \(E_{\max}\) is named
and quarantined to Chapter 10.

## B. h1 discharged — the average convention matches

The G6a home defines the frozen margin against \(\langle X\rangle_{\rm fr}\)
with R4 entering additively:
\(\langle X\rangle_{\rm true} \ge \langle X\rangle_{\rm fr}
- C_{\rm per}\operatorname{drift}_{\rm per}\). The frozen quantity is
the one-period time average of the unperturbed Gate-6 orbit — exactly
the classical average of C2:

\[
  \langle X\rangle_{\rm fr} = r_- + A\,\sigma(m),\qquad
  \sigma(m) = \frac{1 - E(m)/K(m)}{m} \ge \frac12 .
\]

C2 applies at the home verbatim. h1 is closed; the sufficient
swing-versus-drift row stands on the home's own convention.

## C. Acceptances

1. **Manley-Rowe reclassification** accepted: within the relay model
   the extraction laws are forced — the shared action sits in both
   Manley-Rowe invariants with unit ceiling weight and can be spent
   only once, so both ceilings drop at the equal rate \(-\rho X\) and
   the gap is conserved exactly. Part I's conserved-gap line is now
   DERIVED, and W-I folds into the faithfulness meta-gap W-0.
2. **Door-2 voidness** accepted (both sides r_-independent; cannot
   isolate the horn).
3. **g3 discharge** accepted (gap_0 is the period-capped separatrix
   gap; the top-coalescence horn \(m \uparrow 1\) is excluded by the
   same cap).

## D. The attack — W-II decomposed into contraction + one inequality + a classical import

Contrapositive of W-II: **bounded readout implies no singular point.**

**(W-II-a) Attenuation is the pincer's own contraction (proof-grade
given \(c_0 > 0\)).** Bounded readout means a last financed rung
\(N_{\max}\): no fresh admission is financed beyond it. The installed
recursion \(E_{j+1} \le qE_j + F_j\) then runs with \(F_j = 0\) for
\(j > N_{\max}\), so

\[
  E_{N_{\max}+n} \le q^{\,n} E_{\max},\qquad q = \frac{1-c_0}{2} < \frac12 :
\]

geometric decay of the rung readout below the last financed scale.
No new estimate — the toll booth's contraction with the income
switched off.

**(W-II-b) THE PRICING-COMPLETENESS INEQUALITY (the sole new
mathematics).** Let \(D_j\) be the scale-\(j\) local scaled
dissipation of the actual suitable solution — the dyadic shell
contribution to the CKN quantity
\(r^{-1}\!\int\!\!\int_{Q_r}|\nabla u|^2\). The needed display:

\[
  \boxed{\;D_j \le C_{\rm pc}\,E_j\;}
  \qquad\text{uniformly on the carried band.}
\]

In one sentence: NOTHING PRODUCED AT CRITICAL SCALE ESCAPES THE
LEDGER'S PRICING. The direction matters — the readout must dominate
the shell, and any unpriced production breaks it; \(C_{\rm pc}\) is
the faithfulness constant made explicit. Its natural home is the F3
interface: the chronological energy queue and the two-coin cell
pricing were closed ON ACTUAL SUITABLE SOLUTIONS, not on the relay
model, so the transcription attempt belongs there, not in Gate 6.

**(W-II-c) The classical import.** Given (a) and (b), the CKN tail
sums geometrically below any \(\varepsilon\) at a small enough scale,
and epsilon-regularity for suitable weak solutions excludes the
singular point. Imported as classical background, scoped in the
manuscript.

**Consequence if (W-II-b) lands.** W-II is paid modulo \(c_0 > 0\)
and the CKN import — and the route's two remaining walls collapse to
ONE. W-0, ledger faithfulness, then appears twice: (i) the extraction
laws' NS-derivation (Part I's footing) and (ii) pricing completeness
(Part II's footing). Two walls, one wall.

## Gaps (honest)

(d1) (W-II-a) needs \(c_0 > 0\) uniformly at rungs \(> N_{\max}\) —
chained to the product side exactly as in the consolidation;
(d2) the domination direction is load-bearing: \(D_j \le C_{\rm pc}E_j\),
never the converse;
(d3) uniformity of \(C_{\rm pc}\) in \(j\) is scale invariance of the
pricing — to be checked against the P1 gross pricing displays
(\(\mu \le R_g\kappa^{1/2}\beta^{1/2}\));
(d4) the CKN import is classical background and must be scoped as
such in F5.

Filed is not cleared. No closure claimed.
