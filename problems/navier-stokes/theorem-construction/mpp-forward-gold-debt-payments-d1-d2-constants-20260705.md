---
theorem_id: forward-gold-debt-payments-d1-d2-constants-20260705
status: d1-paid-gronwall-d2-paid-return-drains-forward-constants-closed-by-parking-cap
created: 2026-07-05
problem: navier-stokes
route: forward-gold / theorem 2 / debt payments
authorship: Claude (Fable), 2026-07-05. Physical story Thomas Birnie.
completion_truth: >-
  Three debts paid at proof-sketch level, one flagged sub-debt added, two
  items remain open. D1 PAID (Gronwall): linear damping perturbs the
  inviscid three-wave trajectory by at most C M1/M in relative amplitude
  over the bounded extraction window, so the un-parking return bound
  degrades by exactly the claimed factor (1 - C M1/M) for M >= 2 M1 -
  ODE perturbation, no subtlety. D2 PAID (channel identity): the return
  channel is the swap-back q to p - by construction it drains the
  DESCENDING package, not the echo; residence dissipation is channel-blind
  (proportional). Hence attenuation hits the forward half at least
  proportionally and forward fraction <= (1 - c0)/2 per octave - cleaner
  than the conjectured 1/2 - c0/2. Flagged sub-debt D2-prime: the
  branch-mixing supremum - an octave strategy mixing same-helicity
  (ceiling 1/2 with toll) and catalyst-flipped (C_rev O(1) bite) paths
  must be bounded by the max over classified branches, each strictly
  sub-financing; finite one-page argument, not yet written. CONSTANTS
  CLOSED BY THE PARKING CAP: the only free parameter was the parking
  depth L (swap-period log-divergence near the separatrix, M1 ~ L,
  weakening payer 1's window as 1/L). But the un-parking theorem caps
  useful parking depth: extraction of fraction f un-parks the phase to
  distance ~ f REGARDLESS of initial depth, so parking beyond ln(1/f) is
  useless - L <= ln(1/f) + C. Therefore c0 >= min( f^2/rho ,
  c1/ln(1/f) ) with f optimizable: an explicit positive floor with NO
  free parameter. The enemy's single tuning knob is capped by the same
  theorem that taxes it. REMAIN OPEN: ladder-scaling locality exponent
  (finite computation); the two PDE lifts (L1-prime general bands;
  handoff-before-return) by the L1 discipline; D2-prime; rigorous
  write-ups (elliptic chain level). Nothing else. No closure claimed;
  the conditional chain stands on exactly this list.
---

# Debt payments: D1, D2, and the parking cap

## D1 - damped return (paid, Gronwall)

The damped three-wave system deviates from its inviscid trajectory by a
relative amplitude error at most e^(gamma dt) - 1 <= C gamma/(g a) =
C M1/M over the extraction window dt <= C/(g a). The un-parking bound
therefore survives damping with factor >= 1 - C M1/M for M >= 2 M1.
Standard ODE perturbation; debt paid.

## D2 - the split bookkeeping (paid, by channel identity)

The worry was that attenuation might hit only the echo half, leaving the
forward half at the full 1/2 ceiling. It cannot: the return channel IS
the swap-back - it drains the descending package by construction (the
spring takes back what was transferred, q to p); and residence
dissipation is channel-blind. So attenuation strikes the forward half at
least proportionally:

  forward fraction per octave <= (1 - c0)/2.

Cleaner than conjectured. New flagged sub-debt D2-prime: the
branch-mixing supremum (octave strategies mixing same-helicity and
mixed-branch steps are bounded by the max over classified branches, each
strictly sub-financing) - finite, one page, not yet written.

## The constants - closed by the parking cap

The floor c0 = min(r0, c1/M1) had one apparent free parameter: parking
depth L (near-separatrix tuning makes the swap period, hence M1, grow
like L, weakening the viscous payer's window). The un-parking theorem
caps it: extraction of fraction f kicks the parked phase to distance ~ f
no matter how deep the parking, so depth beyond ln(1/f) buys nothing:

  L <= ln(1/f) + C,   hence   c0 >= min( f^2/rho , c1/ln(1/f) ) > 0,

f optimizable (f = 1/2 suffices). The enemy's only tuning knob is capped
by the same theorem that taxes its use. The floor is explicit, positive,
and parameter-free.

## Remaining open (the complete list)

Ladder-scaling locality exponent (finite computation); PDE lift of
L1-prime beyond marginal bands; PDE lift of handoff-before-return;
D2-prime branch-mixing supremum; rigorous elliptic-level write-ups of the
return-race chain. Conditional on these, the chain stands: uniform floor,
geometric decay of critical mass, signed-height peak bound, smoothness
via the critical embedding, T*-plus schedule and Silver closing the
Clay-facing statement in pass-or-exit form.
