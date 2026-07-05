---
theorem_id: forward-gold-mixed-race-pen-and-paper-computation-20260705
status: corrected-race-verdict-survives-by-two-payer-dichotomy-old-2ln2-constant-retracted
created: 2026-07-05
problem: navier-stokes
route: forward-gold / composition / mixed-helicity fine-chop race
authorship: >-
  Race target from the correction note (Codex break, verified). Computation:
  Claude (Fable), pen and paper. Physical mechanism: Thomas Birnie's
  waste/payback story; relay-drift lock underwrites the no-suppression step.
completion_truth: >-
  CORRECTED later the same day. This note's original conservative-case
  delivery constant (~2 ln2 per octave, margin factor ~4) was a crude
  overclaim and must not be quoted as the current result. Explicit
  constants in the certified-constants payment note deliver about 25x
  less in the short-waste branch. The verdict survives by a different
  mechanism: the two-payer dichotomy. Short waste lifetime forces
  marginal local Reynolds, so the viscous payer collects O(1) over the
  slowed relay; long lifetime keeps the waste pair alive, so the
  reverse-spring payer collects the certified >=0.43 per step. With that
  corrected accounting, every chop number is sub-financing and the coarse
  flipped corner N=1 is the certified strategy supremum. This note is
  retained as the race skeleton plus correction record; current constants
  and margins live in mpp-forward-gold-certified-constants-payment-20260705.md.
---

# The mixed race, computed

## 0. CORRECTION HEADER (2026-07-05, later same day, self-filed)

The conservative-case delivery constant below ("~2 ln2 per octave,
independent of N") was crude overclaim: certifying the constants
(profile c_2 >= 1/2, moved fraction alpha^2 >= 1/2, angular sin^2 slice)
shows the short-waste-lifetime branch delivers ~25x less than claimed in
this note's Section 4. The VERDICT of Section 5 survives, but by a
different mechanism: the two-payer dichotomy. Short waste lifetime forces
marginal local Reynolds, where the VISCOUS payer collects O(1) per step
over the slowed relay; long lifetime keeps the pair alive, where the
reverse-spring tax collects >= 0.43 per step certified. Either way every
chop number is sub-financing, with the corner N = 1 as the certified
strategy supremum. See the certified-constants payment note (same date)
for the corrected accounting. The margin-factor-4 claim below should not
be quoted; the certified margins are stated there instead.

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
