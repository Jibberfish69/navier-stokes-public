---
theorem_id: forward-gold-return-race-lower-bound-proof-20260705
status: four-step-proof-chain-derived-at-two-triad-level-constants-and-lift-open
created: 2026-07-05
problem: navier-stokes
route: forward-gold / theorem 2 / return-race tax / payer 2
authorship: Claude (Fable), 2026-07-05. The mechanism is Thomas Birnie's
  spring; the un-parking step is the relay-drift lock doing its third job.
completion_truth: >-
  The return-race lower bound is derived as a four-step proof chain at the
  two-triad (five-mode) chain level, with an explicit crude constant;
  certification and PDE lift remain open. Setup: inviscid triads are
  periodic (spring); sustained descent needs handoff-before-return; the
  enemy's only refuge is PARKING - completing the swap at the pendulum's
  turning point, an unstable equilibrium where the return rate starts at
  zero, and dwelling there (near-separatrix tuning allows logarithmically
  long parking). The chain: (1) parking is an unstable-equilibrium dwell,
  requiring fine phase tuning per rung. (2) THE UN-PARKING STEP: forward
  extraction of energy fraction f by the next triad moves the daughters'
  amplitudes by O(f); triad frequencies are amplitude-linear; so triad
  one's parked phase drifts by Delta-phi >= c f - the relay-drift lock
  applied to the handoff itself: TAKING THE ENERGY OUT IS WHAT WAKES THE
  RETURN. The parking cannot survive the extraction it exists to protect.
  (3) Un-parked return rate >= c' g1 a sin(Delta-phi) >= c'' g1 a f for an
  O(1) fraction of the extraction window. (4) Integrating over the
  extraction window Delta-t ~ f/(g2 a): returned fraction r0 ~ f^2 / rho
  with rho = g2/g1 the coupling ratio, which on a geometric ladder is
  bounded (couplings scale with wavenumber: rho <= ~2). For f = 1/2,
  rho = 2: r0 ~ several percent, crude - POSITIVE and AMPLITUDE-FREE,
  since every step is a coupling-ratio or phase statement with amplitude
  cancelling. Scope: proven-shaped for the single-path chain; handoff
  through many parallel triads re-enters the coherent-focusing gate
  (already part of the composition ledger); developed-background handoff
  is governed by the amplitude-free Manley-Rowe ceilings. Open: (I)
  rigorous write-up at chain level - the triad solutions are Jacobi
  elliptic, so each step is verifiable in closed form; (II) certified
  constants (the dwell/twist floor family, as forecast); (III) PDE lift of
  handoff-before-return by the L1 discipline. No closure claimed; payer 2
  now has a proof chain, not just a mechanism.
---

# The return-race lower bound: the spring cannot be robbed quietly

## 1. The enemy's refuge: parking

The inviscid triad is periodic; a completed swap sits at a turning point -
an unstable equilibrium where the return rate is momentarily zero. With
near-separatrix phase tuning, the dwell at the turning point can be made
logarithmically long: the enemy parks the return while the next triad
extracts. Parking is the ONLY refuge: away from the turning point the
return runs at rate g1 a and the race is lost immediately.

## 2. The un-parking theorem (relay-drift, third application)

Extraction is not a spectator. The next triad's removal of energy fraction
f changes the daughters' amplitudes by O(f); triad frequencies are
amplitude-linear (the twist, same coefficient as the coupling); so the
parked phase drifts:

  Delta-phi >= c f.

The handoff itself un-parks the return. The refuge is self-defeating: the
more the enemy extracts, the harder its own spring pushes back. This is
the relay-drift lock's third appearance - first tangency exclusion, then
waste-pair suppression, now parking destruction - each time the same
structural fact: you cannot move energy without moving phases.

## 3. The bound

Un-parked return rate >= c'' g1 a f over an O(1) fraction of the
extraction window Delta-t ~ f/(g2 a). Returned fraction:

  r0 ~ (g1/g2) f^2 = f^2 / rho,  rho = coupling ratio <= ~2 on a
  geometric ladder (couplings scale with wavenumber).

Amplitude-free: every factor is a ratio of couplings or a phase increment.
For f = 1/2: r0 of order several percent, crude. Positive is what theorem
2 needs; the size is certification work.

## 4. Scope and routing

Single-path chain: bounded here. Parallel multi-triad handoff: coherent
version is M-fold focusing (already gated by the composition ledger);
incoherent version adds rates sub-coherently and inherits the same bound
up to multiplicity constants (flagged for the write-up). Developed
background: the amplitude-free Manley-Rowe ceilings govern, and the ladder
is at best neutrally financed before this tax.

## 5. Open

(I) Chain-level rigorous write-up - triad solutions are Jacobi elliptic;
every step above is verifiable in closed form; this is exposition-grade
with real labor. (II) Certified constants: the dwell/twist floor family,
now load-bearing for theorem 2's payer 2. (III) PDE lift of
handoff-before-return via the L1 discipline (kinematic identity, oriented
admission, closedness). With (I)-(III), payer 2 stands, and with Gate A's
payer 1, the uniform floor c0 needs only crossover uniformity.
