---
theorem_id: forward-gold-far-holder-harmonic-interior-supply-price-lemma-20260706
status: identity-tier-lemma-far-holder-supply-priced-by-standoff-powers-fdb-killer-one-discharged-for-far-branch-codex-gate-requested
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / finite-depth bath (FDB killer 1, far branch)
target_object:
  - FarHolder.HarmonicSupplyPrice
  - FiniteDepthBath.BetaLowerBound.FAR-BRANCH
  - CheapHolding.OctaveAdjacentConfinement
authorship: >-
  Derivation: Claude (Fable), 2026-07-06. Physical story Thomas Birnie
  (participation: to supply strain at a distance is to be a large
  structure paying a large structure's bill; there is no whispering
  across scales).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-depth-bath-energy-only-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rigorous-quartic-far-strain-lemma-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bracing-first-verdict-regress-nondecay-reduction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-steady-or-tracking-dichotomy-20260705.md
completion_truth: >-
  Identity-tier supply-side lemma with exact constants; not a crowd
  theorem, not a confinement-constant decision. Setup: decompose
  u = u_p + u_h by vorticity support (Biot-Savart linearity), with the
  holder vorticity vanishing on the ball B_R about the producer
  (standoff R). Then u_h is componentwise HARMONIC on B_R, because
  div u_h = 0 and curl u_h = 0 there give Delta u_h = -curl(omega_h) = 0.
  Consequences by harmonic interior estimates, all constants exact:
  (L1, first-gradient channel) if the holder must supply strain
  |Du_h(0)| >= G1, then int_{B_R}|u_h|^2 >= (pi/96) G1^2 R^5.
  (L2, second-gradient channel) if the holder must supply differential
  strain |D^2 u_h(0)| >= G2 (the B1 skew-brace demand), then
  int_{B_R}|u_h|^2 >= (pi/442368) G2^2 R^7. Attribution is exact at
  enstrophy level (disjoint vorticity supports kill the cross term:
  int Du_p : Du_h = int omega_p . omega_h = 0) and lower-bounded at
  energy level by Cauchy-Schwarz. CONSEQUENCE FOR FDB: the model
  H_n = W_n beta_n^q with cheapness as beta_n -> 0 is INVALID at large
  standoff-to-scale; with the filed demand G2 = Gamma beta/(pi d^3),
  the far-holder cost RATIO grows like beta^2 (R/d)^7, so any fresh
  finite-depth schedule with R_n/d_n -> infinity diverges a fortiori
  on the differential channel and, at fixed demanded strain, like
  (R/d)^5 on the coherent channel. The FDB.6 escape direction is
  CLOSED for far holders: cheap holding is CONFINED to bounded
  standoff-to-scale (octave-adjacent) configurations, exactly where
  the near-field taxes (pair floor, K3 TV, four-tube back-reaction)
  and the BD3 up-scale summability criterion govern. Caveats: exact
  vanishing of holder vorticity on B_R is filament/compact-support
  tier; smooth tails need the exterior-integral method of the quartic
  far-strain lemma (not done here); the DEMAND values are imported
  conditionally from the filed cells (B1, kill-angle); no claim that
  every producing configuration demands the differential channel -
  that is the extremizer/kill-angle row. Codex gate requested on the
  harmonicity identity, the constant chain, and the attribution step.
  No no-eviction crowd, confinement constant, composition theorem, or
  MPP closure is claimed.
---

# Far holder: harmonic interior supply price

## 1. Kill condition

The finite-depth note (FDB) shows energy-only accounting cannot kill
fresh far holders: the schedule FDB.6 makes geometric record demand
summable if the one-tier ratio beta^q persists as beta -> 0. The
question here: does it persist? Kill condition for this lemma: a
holder configuration keeping its vorticity at standoff R from the
producer, supplying the demanded gradient at the producer, with
energy ratio bounded as R/d -> infinity. If the chain below breaks,
the break is that object and exit-(ii) work begins there.

## 2. Standoff harmonicity (the identity)

Decompose by vorticity support:
\[
  u = u_p + u_h,
  \qquad
  \operatorname{curl} u_h = \omega_h,
  \qquad
  \omega_h \equiv 0 \ \text{on} \ B_R(0).
  \tag{FH.1}
\]

For a divergence-free field, curl curl = grad div minus Laplacian
gives
\[
  \Delta u_h = -\operatorname{curl}\omega_h = 0
  \quad\text{on } B_R.
  \tag{FH.2}
\]

The supplied field is componentwise harmonic on the standoff ball.
Every derivative of u_h is then also harmonic on B_R.

## 3. L1: coherent (first-gradient) channel, exact constants

Demand: |Du_h(0)| >= G1. Mean value on B_{R/2}(0) plus Jensen:
\[
  G_1^2 \le |Du_h(0)|^2
  \le \frac{1}{|B_{R/2}|}\int_{B_{R/2}}|Du_h|^2
  \ \Rightarrow\
  \int_{B_{R/2}}|Du_h|^2 \ge \frac{\pi R^3}{6}G_1^2.
  \tag{FH.3}
\]

Caccioppoli for harmonic components (cutoff phi = 1 on B_{R/2},
supported in B_R, |grad phi| <= 2/R; the standard one-line absorb
gives constant 16 exactly):
\[
  \int_{B_{R/2}}|Du_h|^2 \le \frac{16}{R^2}\int_{B_R}|u_h|^2.
  \tag{FH.4}
\]

Combining:
\[
  \int_{B_R}|u_h|^2 \ \ge\ \frac{\pi}{96}\,G_1^2\,R^5.
  \tag{FH.5}
\]

## 4. L2: differential (second-gradient) channel, exact constants

Demand: |D^2 u_h(0)| >= G2. Harmonic gradient estimate in dimension
three, |Dw(0)| <= (3/r) sup_{B_r}|w|, applied to w = Du_h with
r = R/8:
\[
  G_2 \le |D^2u_h(0)| \le \frac{24}{R}\sup_{\bar B_{R/8}}|Du_h|
  \ \Rightarrow\
  \exists\, x^*\in \bar B_{R/8}:\
  |Du_h(x^*)| \ge \frac{R\,G_2}{24}.
  \tag{FH.6}
\]

Mean value at x* over B_{R/4}(x*) (contained in B_{3R/8}, hence in
B_{R/2}) plus Jensen:
\[
  \int_{B_{R/2}}|Du_h|^2
  \ \ge\
  |B_{R/4}|\left(\frac{RG_2}{24}\right)^2
  =
  \frac{\pi R^3}{48}\cdot\frac{R^2G_2^2}{576}
  =
  \frac{\pi\,G_2^2\,R^5}{27648}.
  \tag{FH.7}
\]

Caccioppoli (FH.4) again:
\[
  \int_{B_R}|u_h|^2
  \ \ge\
  \frac{R^2}{16}\cdot\frac{\pi G_2^2 R^5}{27648}
  =
  \frac{\pi\,G_2^2\,R^7}{442368}.
  \tag{FH.8}
\]

Ugly constant, exact fraction, right power: the SEVENTH power of the
standoff on the differential channel.

## 5. Attribution (whose energy is it)

Enstrophy level, exact: for decaying divergence-free fields,
\[
  \int \nabla u_p : \nabla u_h = \int \omega_p\cdot\omega_h = 0
  \tag{FH.9}
\]
by disjoint supports, so gradient energy splits with no cross term.
Energy level: Cauchy-Schwarz gives
\(\|u\| \ge \|u_h\| - \|u_p\|\), so in the divergent regime the total
energy inherits the u_h lower bound. No double-counting.

## 6. What this decides

With the filed differential demand G2 = Gamma beta / (pi d^3) (B1),
the far-holder energy floor (FH.8) against producer energy of order
Gamma^2 d gives a cost ratio growing like
\[
  \beta^2\left(\frac{R}{d}\right)^7.
  \tag{FH.10}
\]

So the FDB model's cheap direction reverses at large standoff: the
exponent of the scale ratio flips sign. Any fresh-holder schedule
with R_n/d_n -> infinity has DIVERGENT cost on the differential
channel, and at fixed demanded strain the coherent channel pays the
fifth power (FH.5). FDB killer (1) is discharged for the far branch
at the one-holder tier.

What survives: bounded standoff-to-scale holders - the octave-
adjacent band. There the pair floor, K3 TV, four-tube back-reaction,
and the BD3 up-scale summability criterion already govern. The crowd
cannot whisper across scales; it can only crowd close, where it is
taxed, or chain octave-by-octave, where the summability criterion
and the shallowing law hold the gate.

## 7. Caveats (typed, alive)

1. Exact standoff vanishing of omega_h is filament/compact-support
   tier; smooth tails need the exterior-integral extension by the
   quartic far-strain lemma's method. Owed, not claimed.
2. Demand values are imported conditionally from B1/kill-angle;
   whether EVERY producing configuration demands the differential
   channel is the extremizer/kill-angle row, not this note.
3. This prices the far FRESH holder. Reuse/tracking of one bath and
   same-packet Gate-8 allocation are the composition lane's rows.
4. The record-currency (critical-height) attribution is not the L^2
   attribution; lifting FH.5/FH.8 into the H^{1/2} ledger is a named
   open step for the composition row.

## 8. Four-sentence result

A holder whose vorticity keeps distance R from the producer supplies
a field that is harmonic on the standoff ball, because
Delta u_h = -curl(omega_h) = 0 there. Harmonic interior estimates
with exact constants then price its supply: delivering strain G1 at
the producer costs at least (pi/96) G1^2 R^5 of energy, and
delivering differential strain G2 costs at least
(pi/442368) G2^2 R^7. So holding from far away gets polynomially
MORE expensive with standoff, not cheaper, and the finite-depth
bath's cheap schedule is closed on the far branch; cheap holding is
confined to octave-adjacent range where the near-field taxes and the
summability criterion govern. The lemma is supply-side and exact;
the demand side stays conditional on the filed pair-cell values.
