---
theorem_id: forward-gold-mixed-race-pen-and-paper-computation-20260705
status: race-computed-crude-constants-medium-wins-every-chop-number-not-certified
created: 2026-07-05
problem: navier-stokes
route: forward-gold / composition / mixed-helicity fine-chop race
authorship: >-
  Race target from the correction note (Codex break, verified). Computation:
  Claude (Fable), pen and paper. Physical mechanism: Thomas Birnie's
  waste/payback story; relay-drift lock underwrites the no-suppression step.
completion_truth: >-
  Pen-and-paper race computation, crude order-one constants, 1D ladder
  skeleton, helical normal form. Result: the reverse-leakage tax on the
  mixed fine-chopped ladder is at least ~2 ln2 in log-energy per octave in
  the conservative case (waste lifetime one turnover at marginal Re), and
  grows linearly in the chop number N if waste persists. The required
  additional toll to break self-financing is (ln2)/2. Delivered/required
  margin ~ 4 at every N; the enemy's optimal chop reverts to N ~ 1 where
  scalar retention is 1/3 < 1/2 and the channel is closed by the one-step
  bound. Verdict: the mixed channel is closed at every chop number, modulo
  order-one constants and 3D angular factors - which are exactly the
  Stage-2/3 certification items. Not certified; margin factor ~4 is robust
  to moderate constant errors but not to sign errors, and the 3D angular
  geometry of the reverse cone must be checked.
---

# The mixed race, computed

## 1. Ledger of the race

Fine chop: N catalyst-flipped steps per octave, progress delta = ln2/N per
step. Scalar retention after the octave: 2^(-1/2) = exp(-(ln2)/2). Doubling
ladder needs exp(-ln2). Required additional tax: (ln2)/2 ~ 0.347 in
log-energy per octave. The race: does reverse leakage deliver it?

## 2. The waste pair and its reverse coupling

Each step sheds energy fraction ~ delta/2 into a catalyst mode k(-) adjacent
in scale to the retained package q(+): a same-scale opposite-helicity pair,
amplitudes a_k ~ sqrt(delta/2) a, a_q ~ a. The pair couples to every
large-scale partner m ~ q - k; the m-equation coefficient in the reverse
triad is ~(s_k k - s_q q) ~ -2 kappa - the coupling carries the LARGE
wavenumber. Pair-driven growth: da_m/dt ~ 2 kappa a_k a_q ~ sqrt(2 delta)
kappa a^2.

## 3. No suppression (relay-drift lock applied)

Phase-suppressing the reverse transfer requires tangency of the reverse
triad's alignment constraint while the pair's amplitudes move - and they
move, because the ladder is actively feeding q. By the relay-drift lock,
tangency plus moving amplitudes is impossible: leakage runs at its natural
rate. This is where the lock stops being decorative and pays.

## 4. The two cases

Persistent waste (lifetime ~ octave): leaked energy per pair ~ 2 delta (N a)^2
per unit band energy; summed, leakage/throughput ~ 2 ln2 N - linear in N,
catastrophic for fine chopping.

Conservative case (waste lifetime one turnover, marginal Re): each pair
leaks ~ 2 delta a^2; N pairs give leakage/throughput ~ 2 ln2 ~ 1.39 per
octave - independent of N. Note the leak drains the pair, hence the
RETAINED q(+) package directly (reverse triad pulls from both members):
it taxes retention, not the already-shed waste.

## 5. Verdict

Required: 0.347 per octave. Delivered: >= ~1.39 (conservative), growing
~ N (persistent). Margin factor ~ 4 at every chop number; enemy's optimum
reverts to N ~ 1, where the one-step bound 1/3 < 1/2 already closes the
channel. Mixed fine-chop self-financing fails at every N in this model.

## 6. Open (certification scope)

Order-one constants; 3D angular measure of the reverse cone m in
[q-k, q+k]; waste-lifetime law at marginal Re; lifting the helical normal
form. These are compact-family checks - the same Stage-2/3 scope as the
retention and twist floors, now with the full atomic chain reduced to them.
