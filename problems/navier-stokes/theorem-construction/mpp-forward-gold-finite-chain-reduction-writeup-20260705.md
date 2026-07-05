---
theorem_id: forward-gold-finite-chain-reduction-writeup-20260705
status: per-handoff-form-proved-shaped-global-form-impossible-and-not-needed
created: 2026-07-05
problem: navier-stokes
route: forward-gold / lifting campaign / FiniteChainReduction
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie.
completion_truth: >-
  The write-up, with an honest internal catch found during writing. THE
  CATCH: the naive global statement - track the whole B-band chain over a
  window residence by Gronwall - is IMPOSSIBLE: the chain contains clocks
  2^B faster than the window, so the Gronwall factor is e^(2^B) against an
  off-chain error 2^(-B); global tracking diverges. It is also NOT NEEDED.
  The return-race tax at rung j is decided by a per-handoff local
  statement, and that one is provable: (1) SEVEN-MODE WINDOW - the tax at
  rung j depends on the (j-1, j, j+1) triad pair with catalysts, over rung
  j's own handoff time T_j; (2) EXOGENOUS FORCING - genuinely external
  (off-ladder) forcing over that window is bounded by the paid locality
  exponents: eta ~ 2^(-B) relative, geometric; (3) ENDOGENOUS DEEPER-RUNG
  INFLUENCE - rungs j+/-2 and beyond act on the balance at rung j ONLY
  through (i) frequency shifts, which are ZERO by twist locality
  (frequencies depend on own members only - the ChainUniformR0 fact), and
  (ii) amplitude motion of j+/-1, which is exactly the priced channels of
  the tax-incidence lemma - relay, return, or dissipation; (4) GRONWALL
  over ONE handoff at the LOCAL clock: Lipschitz-times-time is O(1), so
  tracking error <= C eta with a bounded constant; (5) CONCLUSION:
  per-handoff tax >= r0(five-mode)/2 - C 2^(-B), positive for explicit
  B >= B0. The reduction is therefore proved-shaped in exactly the form
  the campaign consumes: the tax survives the lift per handoff, which is
  where the single-dial floor spends it. Remaining residues: W1 - the
  dominant-helical-mode-per-band truncation within the window (intra-band
  spread joins the elliptic-write-up-level exposition debt); constants of
  the Gronwall and locality steps (join list d); the suitable-weak-
  solution interface (mollified fields are smooth, so the ODE arguments
  are legitimate on the filtered system; the defect is reached by the
  already-established closedness limit). No closure claimed.
---

# FiniteChainReduction: per-handoff form (the only form needed)

## 0. SCOPE HEADER (2026-07-05, per Codex nine-gate audit, gate 2)

The per-handoff Gronwall below is a FAST-WINDOW statement, and always
was: its hypothesis - Lipschitz-constant-times-duration order one at
the local clock (section 4) - IS the fast-window condition of the
tempo dichotomy (population-lemma note). The audit is right that this
scope was not written on the label. It now is: this note's eta-autonomy
and tracking conclusions apply to windows whose handoff completes on
the natural clock (relay exponent order one). SLOW windows (fine chop,
near-degenerate relay, stalling - exponent large) are OUTSIDE this
note's scope and are taxed instead by the predator or viscous payers
(rectification note; persistence dichotomy); no statement of this note
is invoked on them. The single-dial floor consumes the two classes as
a max over horns: fast windows pay the return race through THIS note's
lift; slow windows pay order-one through the predator/viscous route -
each window, one classification, one tax, and the composed floor is
the minimum of the two horns' taxes, both positive.

## 1. The catch: global tracking is impossible

A B-band chain spans clock ratios 2^B. Gronwall over a window residence
pays e^(L T) with L T ~ 2^B, against off-chain errors ~ 2^(-B): the
global reduction diverges and is unprovable as stated. Filed as a checked
obstruction so no future session attempts it.

## 2. Why per-handoff is sufficient

The campaign spends the tax per handoff (single-dial floor is per step).
The return-race analysis at rung j lives on the seven-mode window
(j-1, j, j+1 plus catalysts) over rung j's own clock T_j. Nothing in the
tax computation references longer horizons.

## 3. The three influences on the window, all controlled

Exogenous (off-ladder): bounded by the paid locality exponents (UV 1,
IR 2); relative size eta ~ 2^(-B) after including B neighbor bands.
Deeper-rung frequency influence: zero, by twist locality - triad
frequencies are amplitude-linear in their own members only.
Deeper-rung amplitude influence: enters only through the motion of
a_(j+/-1), and every such motion is priced by tax incidence as relay,
return, or dissipation. The window is autonomous up to eta plus priced
channels.

## 4. Gronwall at the local clock

Over one handoff, Lipschitz-constant-times-duration is O(1) (the window
evolves on its own clock). Tracking error against the exact five-mode
chain: <= C eta. Hence:

  per-handoff tax >= r0/2 - C 2^(-B) > 0 for explicit B >= B0.

The return-race floor survives the lift in exactly the form the
single-dial argument consumes it.

## 5. Residues

W1: dominant-mode-per-band truncation (intra-band spread) - exposition
debt at the elliptic-write-up level. Constants of steps 3-4: join list
(d). Weak-solution interface: ODE arguments run on mollified (smooth)
fields; passage to the defect uses the established closedness mechanism.
With this note, list item (a) is proved-shaped; the campaign's remaining
content is (c) write-ups, (d) constants, and W1. The Codex strike audit is
already filed and no longer a live residue.
