---
theorem_id: forward-gold-dilute-crowd-monopole-vanishing-quartic-quiet-20260705
status: dilute-interference-excluded-at-leading-multipole-order-exact-identity-mechanism-codex-gate-requested
created: 2026-07-05
problem: navier-stokes
route: forward-gold / confinement constant goal / item 4a (dilute crowd)
authorship: >-
  Derivation: Claude (Fable), 2026-07-05. Physical story Thomas Birnie
  (participation: no private structures; here proved as no vorticity
  monopoles).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-goal-decide-the-confinement-constant-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
completion_truth: >-
  Item 4a (dilute crowd) is DECIDED AT LEADING MULTIPOLE ORDER, in
  favor of the floor, by an exact identity. THE MECHANISM: for any
  compactly supported divergence-free vorticity field in 3D, the total
  vorticity integral VANISHES IDENTICALLY - there are no vorticity
  monopoles. Hence every compact structure's far velocity field is
  dipolar or higher (impulse-driven, decay 1/L^3) and its far VELOCITY
  GRADIENT decays like 1/L^4. Consequence: a foreign structure of size
  d at distance L perturbs a pair's strain environment at relative
  order (d/L)^4. The sum over a uniform crowd converges ABSOLUTELY -
  no infrared divergence, nearest-neighbor dominated, N-INDEPENDENT -
  and, decisively, converges EVEN UNDER ADVERSARIAL COHERENT
  ORIENTATION of all foreign structures (integral of 1/L^4 over
  uniform density converges at large L; no log). So at leading
  multipole order there is NO dilute interference channel: the pair
  floor survives superposition with relative correction of order
  (d/L_nn)^4, nearest neighbor distance L_nn, uniformly in N. The
  physical story lands exactly: participation forbids vorticity
  monopoles, so crowds are quiet and no member can be helped from far
  away. NAMED RESIDUES: (i) intermediate density L_nn ~ few d - the
  true crowd, still the summit (item 4b); (ii) near-field encounters
  L ~ d are the encounters themselves, priced by items 1-3; (iii)
  higher multipoles decay faster (no hidden channel); (iv) the
  time-dependent tail is instantaneous Biot-Savart (incompressible, no
  radiation channel). Codex gate requested on the multipole counting
  and the adversarial-sum convergence. No closure of item 4 claimed:
  4a leading order only.
---

# Dilute crowd: monopole vanishing makes crowds quartically quiet

## 1. The exact identity

For compactly supported solenoidal vorticity in 3D, the integral of
omega over all space is identically zero. No vorticity monopoles
exist. (Each Cartesian component of omega is a divergence of a
compactly supported field.)

## 2. Consequence for far fields

Every compact structure radiates velocity at dipole order or higher:
far velocity ~ impulse / L^3; far velocity GRADIENT ~ 1/L^4. The
strain a foreign structure of size d and circulation Gamma imposes at
distance L is ~ Gamma d^2 / L^4, against the pair's own working
strain Gamma / d^2: relative interference (d/L)^4.

## 3. The crowd sum, including the adversarial case

Uniform density n of foreign structures: total relative interference
~ n * integral of (d^4/L^4) dV, which converges at large L with NO
orientation assumption - coherent adversarial alignment cannot
resurrect it (contrast a hypothetical 1/L^3 gradient, which would be
log-divergent under coherence). Nearest-neighbor dominated,
N-independent:

    relative correction to the pair floor ~ (d / L_nn)^4.

## 4. Status of item 4a

Dilute limit DECIDED at leading multipole order: the floor survives;
no interference channel exists; the constant degrades only by
(d/L_nn)^4. The remaining crowd burden is genuinely the dense case
(L_nn ~ few d), which is item 4b, the summit, untouched by this note.

## 5. Codex gate

(G-D-1) verify the multipole counting (monopole vanishing => gradient
1/L^4) with the impulse term made explicit; (G-D-2) verify the
adversarial-sum convergence claim and the (d/L_nn)^4 nearest-neighbor
form; (G-D-3) confirm residues (i)-(iv) exhaust the channel list at
this order.
