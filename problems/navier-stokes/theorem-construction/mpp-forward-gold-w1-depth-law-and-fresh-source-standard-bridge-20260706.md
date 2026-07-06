---
theorem_id: forward-gold-w1-depth-law-and-fresh-source-standard-bridge-20260706
status: filed-pending-codex-gate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / F4 W1 / decisive comparison resolved (sharp) + sqrt(N) depth law + fresh-source wall standard-theory bridge
authorship: >-
  Derivation: Claude (Opus 4.8), 2026-07-06, at the owner's request.
  Physical story, lane laws, and the whole Gold/fresh-source vocabulary:
  Thomas Birnie. This note stands DOWNSTREAM of, and agrees with, the two
  2026-07-06 Codex gates
  (mpp-forward-gold-codex-f4-w1-gamma-ceiling-gate,
  mpp-forward-gold-codex-f4-w1-longaccumulation-substitution-veto) and
  Fable's decisive-comparison note. It adds three things those notes did
  not: (1) the SHARP margin of the W1 verdict row, (2) the exact sqrt(N)
  depth law that the substitution veto implies, and (3) a bridge from the
  private fresh-source-wall vocabulary to the standard critical-regularity
  theorems, with an honest verdict on whether door (A) is a real reduction
  or a restatement.
depends_on:
  - mpp-forward-gold-FROZEN-FRONTIER-STATE-20260706.md
  - mpp-forward-gold-f4-w1-gamma-ceiling-decisive-comparison-20260706.md
  - mpp-forward-gold-codex-f4-w1-gamma-ceiling-gate-20260706.md
  - mpp-forward-gold-codex-f4-w1-longaccumulation-substitution-veto-20260706.md
  - mpp-forward-gold-codex-f4-w1-n-scope-home-audit-20260706.md
  - mpp-forward-gold-codex-f4-w1-macrofresh-source-wall-merge-20260706.md
completion_truth: >-
  No closure claimed. This note resolves the deferred C-3 verdict row with
  proof-grade bounds (the current W1 seed transcription underpays by a
  factor > 6 at the angle ceiling and > 1.77 at a perfect angle), derives
  the exact depth requirement any licensed rescue must meet (N >= 111 rungs
  sharp; N >= 81 by the frozen file's rounder constants), and identifies the
  structural reason (a sqrt(N) clock floor cannot chase an O(1) log-demand
  without quadratic depth). It then places door (A) against the standard
  literature: at the uniform strength door (A) requires,
  CriticalFreshSourceTentCarleson.A is a non-circular but
  regularity-equivalent-hard critical-scale bound, in the same class as the
  known critical-norm / partial-regularity control. Filed is not cleared. No
  W1 repair, F4 pass, F5 pass, Chapter-10 completion, manuscript completion,
  or MPP closure is claimed.
---

# W1: the sharp verdict, the sqrt(N) depth law, and where the wall sits in standard theory

## 0. What this note does and does not do

It does NOT repair W1 and it does NOT weaken the two Codex gates of
2026-07-06. It agrees with them. It closes three questions those notes
left implicit:

1. **How badly** does the current W1 seed row fail? (Codex proved `LHS < 8/3
   < RHS`; the true margin is much larger and worth recording, because the
   size of the gap decides whether a transcription tweak could ever help.)
2. **How deep** must the only licensed rescue reach? (The
   substitution-veto note names `LongAccumulationRow(N*)` as the owed
   theorem but not the required `N*`. The `sqrt(N)` clock floor fixes it
   exactly.)
3. **Where does door (A) live** in the standard Navier-Stokes regularity
   literature, and is it circular?

## 1. The W1 verdict row, resolved with a margin (sharpens the Codex gate)

The installed seed certificate (n-scope home audit, Chapter-10 worksheet)
is, at the angle ceiling `Gamma^- <= (2 - sqrt2)/2`,

\[
  \underbrace{\frac{2-\sqrt2}{2}\,\pi\sqrt{\frac{3}{2\ln2}}}_{\text{ceiling of the supply}}
  \ \ >\ \
  \underbrace{\log\!\frac{63000\,\pi}{53}}_{\text{floor of the demand}}
  \qquad(\text{must hold for W1 to pass}).
\]

The Codex gate proved this false by `LHS < 8/3 < RHS`. The sharp values,
with rigorous one-sided bounds, are:

\[
  \text{LHS}_{\text{ceiling}}
  = \tfrac{2-\sqrt2}{2}\,\pi\sqrt{\tfrac{3}{2\ln2}} < 1.3537,
  \qquad
  \text{RHS} = \log\!\tfrac{63000\pi}{53} > 8.225 .
\]

(Upper bound on the LHS from `sqrt2 > 1.41421`, `pi < 3.14160`,
`ln2 > 0.69314`; lower bound on the RHS from `63000 pi/53 > 3734` and
`e^{8.225} < 3734`.) Hence

\[
  \boxed{\ \text{RHS}/\text{LHS}_{\text{ceiling}} > 6.07\ }
\]

The current seed row does not miss by an epsilon that a sharper `rho^+` or
`tau^-` transcription could recover; it misses by **more than a factor of
six**. Even the physically unreachable perfect angle (`gamma_G = 1`, i.e.
drop the `Gamma^-` cap) gives

\[
  \text{LHS}_{\text{perfect}} = \pi\sqrt{\tfrac{3}{2\ln2}} < 4.6216,
  \qquad
  \text{RHS}/\text{LHS}_{\text{perfect}} > 1.779 .
\]

**Consequence for the revisit targets.** The gamma-ceiling note listed, in
order of leverage, (i) the seed-demand constants `4 pi rho / tau_min`,
(ii) the exponent scope, (iii) `D_req`. Item (i) is now eliminated as a
solo rescue: the `56 pi` came from a conservative `rho^+ = 7` versus the
sharp `6`, a factor `7/6`; no honest sharpening of `O(1)` demand constants
closes a factor-6 (or even a factor-1.78) gap. The row cannot be saved on
the demand side alone. That leaves exponent scope (ii) as the only
structural door -- which is exactly what Section 2 prices.

## 2. The sqrt(N) depth law (makes the substitution veto quantitative)

The substitution-veto note established that the only lawful way to grow the
supply side is a `LongAccumulationRow(N*)` / `ContiguousFirstAdmissionChain`
theorem: one first-admitted packet must finance `N*` clock rungs before a
single terminal seed charge, dodging both horns (no-recount if the rungs
are rereads; cost-composition if they are distinct admissions). It did not
say how large `N*` must be. The clock calculus already answers this. The
general floor (C1 deletion re-gate) is

\[
  \Lambda_N \ \ge\ \gamma_G\,\pi\sqrt{\frac{N}{2\ln2}} .
\]

It grows like **`sqrt(N)`, sub-linearly**, while the demand it must beat is
a **fixed** `R := log(63000 pi/53)`, an `O(1)` number in log-units set by
the seed geometry. Requiring the guaranteed floor to clear the demand,
`gamma_G pi sqrt(N/(2 ln2)) > R`, inverts to a hard depth requirement:

\[
  \boxed{\ N \ >\ \frac{2\ln2}{\pi^2}\,\frac{R^2}{\gamma_G^2}\ } .
\]

Evaluated:

| angle regime | `gamma_G` | required depth `N*` |
|---|---|---|
| perfect angle | `1` | `N* > 9.50`  ->  `N* >= 10` |
| angle ceiling | `(2-sqrt2)/2` | `N* > 110.8`  ->  `N* >= 111` |

**This reconciles the frozen file's depth-pricing exactly.** Section 4 of
the frozen frontier quotes `N* >= 128 ln2/pi^2 (>= 9)` and
`N* >= 1152 ln2/pi^2 (>= 81)` with no derivation. They are the same
inversion with rounder inputs: take the demand as the round `R = 8` and the
angle penalty as the round `Gamma^- < 1/3` (a demand inflation `x3`, hence
`x9` in `N` because of the square):

\[
  \text{perfect: } N^* > \tfrac{2\ln2}{\pi^2}\,8^2 = \tfrac{128\ln2}{\pi^2}=8.99,
  \qquad
  \text{ceiling: } N^* > \tfrac{2\ln2}{\pi^2}\,24^2 = \tfrac{1152\ln2}{\pi^2}=80.9 .
\]

So the depth-pricing was never a separate estimate -- it IS the W1 verdict
row read as a function of depth. The sharp constants (`R > 8.225`,
`Gamma^- = 0.29289`, not `1/3`) push the honest ceiling depth up from `81`
to `111`.

**The structural reading.** A `sqrt(N)` supply chasing an `O(1)` log-demand
needs `N ~ (R/rate)^2 ~ 100` rungs. This is not an accident of transcription;
it is the shape of the estimate. The Gold route cannot be financed by any
short chain. It closes only if one packet genuinely recruits fresh, first-
admitted participation contiguously across `~100` octaves of scale -- with
one terminal charge and no duplicated residence/return/bath cost. That is
the precise, quantitative form of the question the frozen file's Section 6
poses in words ("does the cascade recruit genuinely fresh participation as
it climbs, or only carry the same reserve up?").

## 3. The frontier dichotomy (clean statement)

Combining Sections 1-2 with the macrofresh merge, the entire F4 seed side
now reads as one dichotomy with no remaining slack on the first horn:

- **Horn 1 (short chain).** At the installed depth `N = 3`, W1 fails by
  `>6x` (ceiling) / `>1.77x` (perfect). No demand-constant sharpening
  rescues it. *Closed negative.*
- **Horn 2 (deep chain).** W1 passes only via a
  `ContiguousFirstAdmissionChain(N*)` with `N* >= 111` (sharp), one
  terminal charge, no-recount, composed cost, W3/W6 compatible. By the
  macrofresh merge this producer *is*
  `CriticalFreshSourceTentCarleson.A` / `FreshSourceCriticalScaleMemoryBound.A`
  restricted to a finite `>=111`-rung ladder. *Open, and equal to the
  named wall.*

There is no third finite-row door: the angle side is capped by an exact
constant, the demand side is floored by paid inputs, and the only free
parameter (`N`) is governed by the `sqrt(N)` law.

## 4. Where the wall sits in standard Navier-Stokes theory

Door (A) is stated in the campaign's private vocabulary. Translated, it is
a **critical-scale Carleson/tent bound on the genuinely fresh part of the
enstrophy production of one material history.** That object has close, and
well-understood, standard relatives:

- **Caffarelli-Kohn-Nirenberg (1982) epsilon-regularity.** If
  `limsup_{r->0} (1/r) \iint_{Q_r} |\nabla u|^2 \,dx\,dt < eps_*`, the point
  is regular. The scaled local enstrophy `(1/r)\iint_{Q_r}|\nabla u|^2` is
  *exactly a scale-memory / tent quantity* -- the same shape as the
  fresh-source integral in the macrofresh merge. CKN is the theorem that a
  small critical tent mass forbids singularity.
- **Escauriaza-Seregin-Sverak (2003).** `u \in L^\infty_t L^3_x` forbids
  blowup: the critical `L^3` norm must become unbounded at a singular time.
  Any bound on "fresh critical increments summed across scales" is a bound
  of exactly this critical, scale-invariant type.
- **Tao (2019) quantitative regularity.** If `\|u\|_{L^\infty_t L^3_x} <= A`
  the solution is controlled (by a triple-exponential in `A`), and blowup
  would require the critical norm to concentrate across scales only in a
  slow, `~ (\log\log)`-organised way. This is the standard statement that
  singularity formation, if it exists, is a *deep, slow, multi-scale
  recruitment* -- the same phenomenon `Horn 2` is trying to price and
  exclude.

**Verdict (honest).** Door (A) is **not circular**: it is a forward a priori
critical bound (like CKN's tent criterion), not a step that assumes the
smoothness it wants to prove -- so it is a legitimate reduction target,
unlike a contrapositive that must import regularity. **But it is not an
easier target.** At the uniform strength `Horn 2` needs -- a fresh-critical
Carleson bound holding over arbitrary selected macro-histories and all
finite `N*` -- taking an increasing exhaustion recovers precisely a
critical-scale no-concentration estimate of ESS/CKN/Tao strength. The
`sqrt(N)`-vs-`O(1)` mismatch in Section 2 is the campaign's own coordinates
showing the classical obstruction: the natural energy is one derivative too
weak (supercritical) to finance critical-scale demand at bounded depth. So
the frozen file's Section-6 sentence -- "the wall is plausibly the
Millennium Problem restated" -- is, in standard terms, **accurate**: door
(A) is a genuine, non-circular reduction whose difficulty is of the same
order as the critical-regularity problem itself.

## 5. Honest assessment and both endings

- **Delivered (finite-row, unconditional about the current row):** the W1
  seed transcription at `N = 3` fails its exact ceiling comparison by a
  factor `> 6`; no demand-constant sharpening recovers it; the only
  licensed depth rescue must reach `N* >= 111` rungs; that deep producer is
  the fresh-source scale-memory wall; and that wall is a non-circular but
  critical-regularity-hard estimate. This is a sharp map of exactly where
  the difficulty concentrates -- a deliverable in the goal's own terms.
- **Not delivered:** any proof that a `>=111`-rung contiguous first-
  admission chain exists (Horn 2), i.e. any progress on
  `CriticalFreshSourceTentCarleson.A`. Nothing here brings the wall closer;
  it locates it precisely and dresses it in standard clothes.
- **The next word that matters** is still the physical one the frozen file
  names: whether one material history recruits genuinely fresh critical
  participation, contiguously, across ~100 octaves. Section 2 says any
  affirmative must be quantitative at that depth; Section 4 says an
  affirmative of the needed uniformity would be a critical no-concentration
  theorem. A short or soft argument cannot reach it.

Filed is not cleared. No closure claimed.
