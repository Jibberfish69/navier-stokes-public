---
theorem_id: forward-gold-e1-e4-displayed-estimates-20260705
status: e1-e2-e4-displayed-e3-displayed-shape-with-named-kernel-constants-regate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / goal item 6 / estimate targets E1-E4 as displays
authorship: Claude (Fable), 2026-07-05. Displayed estimates with exact
  objects and named constants; nothing asserted by analogy. Physical
  story Thomas Birnie.
completion_truth: >-
  Writes the four estimate-level targets as DISPLAYS with exact objects.
  (E1, per-channel uniform variation) Define the channel flux as the
  increment cubic with the increment factor band-projected: Pi_(E,j)^eps
  = the CET representation with delta(P_j u) in place of delta(u) in one
  factor. Then, for every compact K with neighborhood K', uniformly in
  eps and j:  |Pi_(E,j)^eps|(K) <= ||K_0||_(L1) x C_CET x
  ||u||^3_(L3(K')),  because smooth Littlewood-Paley kernels are
  L1-normalized by scaling (one constant, all bands) and the CET bound
  is cubic in local L3, which the suitable class supplies by
  interpolation. Helicity side: the same display times the channel
  wavenumber. Weak-star precompactness per channel follows on compacts;
  the DIAGONAL over the countable channel set extracts one mollification
  subsequence for all channels; tightness on finite-readout compacts is
  the E2 tail display below. (E2, reconstruction) At fixed eps the
  Littlewood-Paley resolution of the identity telescopes EXACTLY: the
  sum over j of Pi_(E,j)^eps equals Pi_E^eps against every test
  function (finitely many bands meet any test function's frequency
  budget up to tails). On a compact inside a finite-readout superlevel
  set at level Lambda, for bands above the readout the UV
  integration-by-parts display gives |Pi_(E,j)^eps|(K) <=
  ||grad phi||_(L1) x 2^(-(j - J_Lambda)) x (local L3 budget cubed),
  J_Lambda the band index at Lambda; geometric in j, hence the channel
  series is ABSOLUTELY summable in local variation, uniformly in eps;
  dominated convergence of partial sums against test functions
  identifies the sum of the channel defect measures with the total
  defect on the finite-readout set. (E4, cellwise bounded variation
  before composition) Gate A at fixed eps supplies the oriented ray
  decomposition of each (channel, cell) flux with channel-signed TV
  controlled by the dissipation budget (marginal form) or by the
  Reynolds weight times dissipation (weighted form) - filed. Total
  variation is LOWER SEMICONTINUOUS under weak-star convergence, so
  each limit cell measure inherits the SAME TV bound from its
  approximants along the diagonal subsequence:  TV(mu_(j,Q)) <=
  liminf TV(Pi_(j,Q)^eps) <= (Gate A budget for (j,Q)).  Compatible
  bounded variation therefore PRECEDES composition, and the cellwise
  decompose-tax-route order followed by countable additivity is
  legitimate as claimed. (E3, tail domination in signed currency -
  displayed shape, the heaviest) The localization tails are increment
  cubics whose one band-separated factor carries a commutator kernel
  with geometric decay; apply THE SAME Gate A ray decomposition to the
  tail cubic (it is a channel-pair increment cubic, the object Gate A
  decomposes) and display:  TV_signed(tail_(j,Q)) <= sum over
  neighboring cells Q' of  c_ker x 2^(-separation(Q,Q')) x
  TV_signed(Pi_(j,Q')^eps),  with c_ker the named commutator-kernel
  decay constant (mollifier and band-projector moments). The right
  side IS Gate A currency - the admitted signed variation of adjacent
  cells - so the domination is in-currency by construction of the
  display, not by analogy; the geometric weights sum. HONEST GRADE:
  E1, E2, E4 are displayed at proof grade from standard ingredients
  (L1-normalized kernels; telescoping; lower semicontinuity); E3 is
  displayed at estimate-shape grade - the constant c_ker and the
  applicability of Gate A's decomposition to the tail cubics are the
  two points Codex should press; if the second point fails, the tails
  route through the UNSIGNED bound of E2 instead, at the cost of
  carrying them as untyped dissipation-budget error rather than
  admitted debt - a fallback that weakens bookkeeping elegance, not
  the theorem. Codex re-gate requested. Chapter 10 unexecuted. Filed
  is not cleared. No closure claimed.
---

# E1-E4 as displays

## E1. Per-channel uniform variation

Channel flux: the CET increment cubic with one factor band-projected.
Display, uniform in eps and j, for compact K with neighborhood K':

  |Pi_(E,j)^eps|(K) <= ||K_0||_(L1) C_CET ||u||^3_(L3(K'))
  |Pi_(H,j)^eps|(K) <= kappa_j x (the same right side)

Ingredients: smooth LP kernels are L1-normalized by scaling (one
constant for all bands); CET is cubic in local L3; the suitable class
gives local L3 by interpolation. Weak-star precompactness per channel;
one diagonal subsequence over the countable channel set.

## E2. Exact telescoping and absolutely summable tails

At fixed eps the LP resolution telescopes exactly against test
functions. Above the readout on a finite-readout compact:

  |Pi_(E,j)^eps|(K) <= ||grad phi||_(L1) 2^(-(j - J_Lambda))
                        x (local L3 budget)^3

Geometric in j: absolute variation summability, uniform in eps;
dominated convergence identifies the channel-measure sum with the
total defect exactly where the cone theorem lives.

## E3. Tail domination in Gate A currency (displayed shape)

Apply Gate A's ray decomposition to the tail cubics themselves and
display:

  TV_signed(tail_(j,Q)) <= sum_(Q' adjacent)
      c_ker 2^(-separation(Q,Q')) TV_signed(Pi_(j,Q')^eps)

Right side = admitted signed variation of adjacent cells: in-currency
by construction. Press points for Codex: the named kernel constant;
Gate A's applicability to tail cubics. Fallback if the latter fails:
tails route through E2's unsigned bound as dissipation-budget error -
bookkeeping elegance lost, theorem intact.

## E4. Bounded variation precedes composition

TV is lower semicontinuous under weak-star convergence: each limit
cell measure inherits Gate A's TV budget from its approximants along
the diagonal subsequence. Compatible BV therefore precedes the
cellwise decompose-tax-route composition, and countable additivity
closes it. QED at display grade.

## Register

E1, E2, E4 displayed at proof grade; E3 at estimate-shape grade with
its two press points and an honest fallback. All to Codex. Chapter 10
unexecuted. No closure claimed.
