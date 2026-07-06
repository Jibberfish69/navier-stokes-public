---
theorem_id: forward-gold-consolidation-product-dissolves-pincer-verified-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / CONSOLIDATION / verify+prune+correct the SYNTHESIS pincer; relocate the irreducible hardness
authorship: >-
  Derivation and verification: Claude (Opus 4.8), 2026-07-06, at the
  owner's order to consolidate and synthesize the Gold route toward
  closure. Physical story, Gate-6 / Waleffe machinery, and the pincer
  plan: Thomas Birnie and Claude (Fable). This note gates three of my own
  checkable results against the record and honestly relocates what remains.
  It stands downstream of
  mpp-forward-gold-SYNTHESIS-one-sided-contraction-recruit-or-attenuate-pincer-20260706
  and the four bottom-root-horn Codex notes, and was cross-checked by an
  independent 3-agent adversarial pass (Door-2 void; row-fails; Door-1
  status), all returning high-confidence agreement.
depends_on:
  - mpp-forward-gold-SYNTHESIS-one-sided-contraction-recruit-or-attenuate-pincer-20260706.md
  - mpp-forward-gold-codex-delta-g6a-factorized-source-row-20260706.md
  - mpp-forward-gold-codex-delta-g6a-root-factor-bottom-root-obstruction-20260706.md
  - mpp-forward-gold-codex-bottom-root-horn-financed-obstruction-20260706.md
  - mpp-forward-gold-codex-bottom-root-horn-cm-route-audit-20260706.md
  - mpp-forward-gold-codex-financed-swing-rootgap-floor-reduction-20260706.md
  - mpp-forward-gold-return-race-elliptic-writeup-and-w1-20260705.md
  - mpp-forward-gold-w1-depth-law-and-fresh-source-standard-bridge-20260706.md
completion_truth: >-
  A consolidation with three verified sub-results and an honest relocation
  of the hardness. VERIFIED: (1) Door 2 (poor-horn throughput comparison)
  is void as a horn-exclusion — both sides are r_-independent and the LHS
  grows with the swing, so it cannot isolate the r_-->0 degeneration; any
  horn-isolating object is Door 1 relabeled. (2) The SYNTHESIS Part-I Vieta
  top-endpoint floor is proof-grade: U_+ = r_+(r_-+r_*-r_+) >= r_+(r_*-r_+)
  exactly (since r_- = X = |a_3|^2 >= 0), and both factors are already
  financed, so the bottom-root horn kills ONLY the bottom endpoint and Door
  1 is BYPASSED, not a wall to climb — conditional on the extraction
  dynamics and a consumer re-gate. (3) The SYNTHESIS Part-II three-line
  forced-recruitment induction is quantitatively WRONG as written
  (q^K <= 1/4 is insufficient once the package ceiling exceeds ~2x the
  margin); the correct block length is K = ceil(log(e_marg/2E_max)/log q),
  after which the conclusion (unbounded climb forces an unbounded fresh
  chain) survives. Additionally g3 (gap_0>0 at entry) is discharged: it is
  the period-capped separatrix gap, not a new input. RELOCATED HARDNESS: the
  route now rests on a small NAMED set — the slow-extraction laws
  dI_1=dI_2=-rho X and dG_0^2/dt=-rho G_0^2 (displayed for the reduced
  Waleffe relay model, NOT derived from full NS); the Part-II G2 step
  "blowup => unbounded readout climb" (Type-I / bounded-criterion,
  ESS-class); the clock-conversion rate; and, beneath all, the reduction of
  full NS to a relayed-triad elliptic model. No product row, F2/F4/F5,
  Chapter-10, manuscript, or MPP closure is proved. Filed is not cleared.
---

# Consolidation: the product side dissolves, the pincer is real but relocates the wall

## 0. Purpose

The owner asked to consolidate and synthesize the Gold route toward
closure. This note does four things, each checkable: prunes one dead door,
verifies one proof-grade core, corrects one wrong induction, discharges one
flagged gap — and then states plainly where the irreducible difficulty now
lives. It supersedes the reading in
`mpp-forward-gold-w1-depth-law-and-fresh-source-standard-bridge-20260706.md`
that the product side "reduces to Door 1 (a wall)": Door 1 is bypassable.

## 1. Product side — Door 2 void, and the horn dissolves at the top endpoint

**Door 2 is void (verified).** The bottom-root horn is r_- = eps,
r_+ = A+eps, r_* = B+eps with A, B (hence the modulus m = A/B) fixed as
eps -> 0. Door 2 asks to show the branch is sub-financing:
alpha A sqrt(B) / (C_per K(A/B)) < r_0(f) tau_min. Both sides are
r_-independent (LHS by construction; r_0(f)=f^2/(2 pi rho) and
tau_min = sqrt(1-m_cap)/6 are modulus/amplitude data, and the modulus is
fixed on the horn). A constant in eps cannot isolate the eps -> 0 limit
from its eps > 0 siblings. Worse, LHS ~ A sqrt(B) grows with the swing, so
for large B the inequality is simply false. Hence Door 2 cannot dispose of
the horns that matter; any object that does isolate the horn is keyed on
r_- / U_- / G_0^2 directly — i.e. it is Door 1, not a throughput comparison.
The product-side frontier is therefore NOT "Door 1 or Door 2." It is Door 1,
or the top-endpoint bypass below.

**The top-endpoint bypass is proof-grade at its core (verified).** The
Gate-6 cubic is the Waleffe helical-triad transfer ODE
`(dX/dt)^2 = 4 g^2 (X-r_-)(r_+-X)(r_*-X)`, X = |a_3|^2. Monic form
`C(X)=X^3-(I_1+I_2)X^2+I_1 I_2 X - G_0^2`, Vieta on 0 <= r_- < r_+ < r_*:

\[
  r_-+r_++r_*=I_1+I_2, \qquad r_- r_+ r_* = G_0^2 .
\]

Therefore, exactly,

\[
  U_+ = r_+(I_1+I_2-2r_+) = r_+(r_-+r_*-r_+) \ge r_+(r_*-r_+)
  \qquad (r_- = |a_3|^2 \ge 0),
\]
\[
  U_- = r_-(r_+ + r_* - r_-), \qquad r_- = G_0^2/(r_+ r_*).
\]

Two facts follow with no new estimate. (i) `U_-` dies exactly on the
`G_0^2 -> 0` branch — the horn is the vanishing-Casimir branch, and it
kills only the BOTTOM endpoint. (ii) `U_+` is floored by
(top root) x (separatrix gap); `r_+ >= A` (swing floor Phi_0) and
`r_*-r_+` (period cap) are BOTH already financed. So the top-endpoint
contribution `U_+(delta_+^fr - d_R4)` carries a positive financed floor,
while the bottom endpoint's collapse is confined to one endpoint. Declaring
the demand as the top-endpoint margin
`Delta_G6a^top := inf_K U_+(delta_+^fr - d_R4)` removes the horn from the
certified quantity.

**What the bypass still owes.** Two things, neither of which is Door 1:
- (a) the extraction dynamics that make the bottom endpoint a bounded
  PREPAID transient rather than a persistent deficit —
  `dG_0^2/dt = -rho G_0^2 <= 0` (so r_- only decays, total retreat
  <= r_-(t_0)) and `dI_1 = dI_2 = -rho X` (so the Manley-Rowe gap
  `gap_0 = I_2 - I_1` is conserved and `U_+ -> I_1 gap_0 > 0` on the horn);
- (b) a CONSUMER RE-GATE (Part-I gap g1): the crossing / W6 consumers must
  accept "ceiling-decay + bounded-bottom-transient" in place of two-sided
  contraction. This is a re-gate of already-installed consumers, not a new
  estimate.

## 2. Discharge of g3 — gap_0 > 0 is the period cap, not a new input

Part I flags `gap_0 = I_2 - I_1 > 0 at entry` as a "new but weak domain
input." It is not new. On the horn limit `G_0^2 -> 0`, the cubic degenerates
to `X(X-I_1)(X-I_2)`, so `r_+ -> I_1`, `r_* -> I_2`, hence
`gap_0 = I_2 - I_1 = lim (r_* - r_+)`. The separatrix gap `r_* - r_+` is
exactly what the period cap floors: `T_per <= T_*` gives `m <= m_* < 1`,
i.e. `r_* - r_+ >= A_0(1/m_* - 1) > 0`. So `gap_0 > 0` is the period-capped
separatrix gap already financed by the swing floor plus the period cap.
Modulo the root-labeling check (g2), g3 is discharged. This also means the
top-endpoint floor cannot itself be defeated by a SECOND (top) coalescence
horn `r_+ ↑ r_*`: that horn is `m ↑ 1`, which the period cap already excludes.

## 3. Correction — the Part-II forced-recruitment induction constant

Part II.1 claims: given `E_{j+1} <= q E_j + F_j` (q = (1-c_0)/2 < 1/2) and
survival `E_j >= e_marg` across a block of K rungs with `q^K <= 1/4`, then
`sum_block F_j >= e_marg/2`. **The constant is wrong.** Iterating,
`E_{j+K} <= q^K E_j + S`, so survival gives `S >= e_marg - q^K E_j`. With
only `q^K <= 1/4`, an adversary entering the block near the package ceiling
`E_j = E_max` has `S >= e_marg - (1/4)E_max`, which is <= 0 once
`E_max > 4 e_marg`. Direct simulation (minimal-injection adversary starting
at E_max) confirms: at `E_max/e_marg = 10` and `50`, the note's `K=2` block
permits **zero** recruitment while surviving.

**The fix.** Require `q^K <= e_marg/(2 E_max)`, i.e.
`K = ceil( log(e_marg/(2 E_max)) / log q )`. Then `q^K E_j <= e_marg/2` for
all `E_j <= E_max`, so `S >= e_marg/2`. Simulation confirms the guarantee is
restored (K = 4 at ratio 10, K = 6 at ratio 50). The qualitative conclusion
is intact: every surviving N-rung climb forces `>= N/K` fresh first
admissions with `K = O(log(E_max/e_marg))` fixed; since blowup needs
unbounded climb, `N/K -> infinity`, so the sharp depth-law demand `N* >= 111`
is met for climbs longer than `111 K`. The pincer keeps its teeth; only the
recruitment-per-rung constant softens by the ceiling-to-margin log.

## 4. The linkage — the two walls are chained through c_0, not identical

Part II's contraction rate is `q = (1 - c_0)/2`. Thus `q < 1/2 ⟺ c_0 > 0`
(for `c_0 in (0,1)`): the seed-side half-barrier (the "affine-Schur
accretivity" contraction) is `c_0 > 0` in different clothing, and `c_0 > 0`
is exactly what Part I's top-endpoint margin delivers. So the product-side
wall and the seed-side wall are neither the same object nor independent:
they are **chained** — product `⟹ c_0 > 0 ⟹` seed contraction `⟹` pincer.
This is the precise content of "two horns of one toll-booth": one positive
constant `c_0`, produced once (product side), spends twice (it floors the
product row and it powers the recruit-or-attenuate dichotomy).

## 5. Honest relocation — where the irreducible hardness now sits

After the pruning, the verification, and the correction, the Gold route no
longer has a sprawling frontier. It rests on a short, named list — and two
of these are genuinely hard, standard-class obstructions wearing campaign
clothes:

1. **The extraction dynamics (Part-I load-bearing).**
   `dI_1 = dI_2 = -rho X` (gap conservation) and `dG_0^2/dt = -rho G_0^2`
   (Casimir decay) are DISPLAYED for the reduced Waleffe relay model in the
   return-race writeup. Their derivation from actual Navier-Stokes — that
   the real extraction operator taxes both Manley-Rowe invariants at equal
   rate and drives the Casimir down monotonically — is not established here.
   This is the true Part-I gap; the Vieta floor above is only as strong as
   these laws.
2. **"Blowup ⟹ unbounded readout climb" (Part-II gap G2).** The pincer
   convicts only histories that climb without bound. Excluding a
   bounded-readout blowup is a Type-I / bounded-criterion statement — it is
   in the ESS `L^infty_t L^3_x` / CKN class, the same critical wall the seed
   side met. G2 hides genuine PDE content and must not be counted as
   bookkeeping.
3. **The clock-conversion rate (G3).** Forced fresh mass per K rungs must
   convert to `>= 1` financed clock contribution per K rungs at the P1
   weight. The transcription exists; the rate needs a display.
4. **The reduction itself.** All of the above lives on the relayed-triad
   elliptic model. That a single isolated Waleffe triad is periodic and
   "never tightens itself" is exactly why blowup, if it exists, is a
   COLLECTIVE effect of infinitely many coupled triads. The passage from
   full NS to the relayed model is the deepest unverified bridge, and it is
   plausibly where "the wall is the Millennium Problem restated" ultimately
   bites.

## 6. The consolidated Gold closure structure

Conditional chain, with each link's status marked:

\[
  \underbrace{\text{Vieta floor}}_{\text{proof-grade}}
  + \underbrace{\text{extraction laws}}_{\text{wall W-I}}
  + \underbrace{\text{consumer re-gate } g1}_{\text{re-gate}}
  + \underbrace{\text{period cap}=g3}_{\text{financed}}
  \Rightarrow \Delta_{\rm G6a}^{\rm top}>0 \Rightarrow c_0>0
\]
\[
  c_0>0
  + \underbrace{\text{corrected induction}}_{\text{proof-grade (this note)}}
  + \underbrace{\text{blowup}\Rightarrow\text{unbounded climb}}_{\text{wall W-II (ESS-class)}}
  + \underbrace{\text{clock rate } G3}_{\text{display owed}}
  \Rightarrow \text{W1 passes on every blowup-threatening history}
\]
\[
  \Rightarrow \text{F4 re-runs} \Rightarrow \text{F5}.
\]

Net: the Gold route is now a mostly-finite conditional certificate resting
on exactly two hard inputs — the NS-derivation of the extraction laws (W-I)
and the unbounded-climb necessity (W-II) — plus one owed display (G3) and
two re-gates (g1, g2). Everything that was sprawling — Door 2, the
bottom-root horn as a wall, the "new domain input" g3, and the vague
depth-law wall — is resolved, bypassed, discharged, or converted into the
forced-recruitment dichotomy. That is genuine consolidation. It is not
closure: W-I and W-II are real, and W-II is ESS-class.

## 7. Both endings

- **If W-I and W-II fall** (the extraction laws are NS-derived and
  bounded-readout blowup is excluded), the conditional chain closes the
  Gold certificate modulo the named re-gates and the finite Chapter-10 pass.
- **If they do not,** the honest deliverable is this: the entire Gold route
  has been compressed to two standard-class obstructions on the Waleffe
  relay model, with every intermediate bookkeeping door either paid or
  provably dead. That is the sharpest possible map of where the difficulty
  is now concentrated.

Filed is not cleared. No closure claimed.
