---
theorem_id: forward-gold-kill-angle-sheet-hunt-self-cell-sweep-20260705
status: skew-sector-production-death-exact-sheet-hunt-negative-self-cell-k3-finite-ode-obstructed
created: 2026-07-05
problem: navier-stokes
route: forward-gold / transversality / confinement constant / cells sweep
authorship: >-
  Derivation: Claude (Fable), 2026-07-05, this session. Physical story
  Thomas Birnie. Continues the two-tube exact-ratio note (same date).
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-two-tube-exact-tilt-stretch-eviction-ratio-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-production-extremizer-pressure-hessian-frame-rotation-test-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md
completion_truth: >-
  Three cell results toward the confinement constant, each typed. (K1,
  exact) The two-tube deviation space splits into an in-plane tilt sector
  and a skew sector; the PURE-SKEW pair has identically zero mutual
  stretching at leading filament order - the skew sector is
  production-dead. (K2, exact at first order) The mutual eviction rotates
  the two axes in opposite out-of-plane senses: it pumps the
  configuration toward the production-dead skew sector at FIRST order in
  the deviation while production runs at higher order - eviction steers
  the pair off its own producing set. (K3, corrected by same-day
  follow-up) The proposed four-variable exact-kernel ODE is not an
  invariant reduction: the exact induced velocity profile bends an
  initially straight producing pair immediately, so K3 must be either
  filament-curve evolution or a projected model with curvature-leakage
  control. Same-day follow-up pays the local instantaneous leakage
  floor: at the production station the scale-normalized normal leakage
  rate is exactly 2*sigma_max. Sidecar, certification-typed: importing
  the classical
  Crow e-folding as lifetime gives per-encounter integrated stretch at
  most (3*sqrt(3)/8) * beta^2 * ln(1/beta), maximized in closed form at
  beta = exp(-1/2) with value 3*sqrt(3)/(16e); whether this certifies
  below ln 2 (single-encounter doubling exclusion) is a chapter-10
  comparison, quarantined. (S1, sheet hunt, negative for the
  counterexample) A free vortex sheet of jump delta-u is Kelvin-Helmholtz
  unstable with exact classical rate k*delta-u/2 at wavenumber k; at the
  sheet's own thickness the self-destruction rate exceeds any
  mutual-strain production rate by the ratio separation-to-thickness -
  sheets pay MORE eviction per production than tubes at leading order.
  Closed-circular-line sheets are axisymmetric no-swirl: the regular
  class. Strain-held flat sheets are externally financed (dichotomy
  branch 2). The sheet cell exits to the tube cell by roll-up on its own
  instability clock. Kill condition NOT triggered. (L1, self-cell,
  exact at leading order) Local-induction motion is binormal and
  conserves filament length: zero self-production at LIA order;
  self-stretching enters only via far-segment interaction, which is the
  two-tube kernel applied to the structure's own distant segments - the
  self-cell reduces to the pair cell at leading order and inherits its
  floor. REMAINING OPEN, unchanged and named: the crowd cell
  (W1-adjacent), the continuum custody cost of re-assembly, the octave
  composition into the record ladder. No retention constant for the full
  family, no MPP closure claimed.
---

# Kill-angle partials, sheet hunt, self-cell reduction

## 1. K1: the skew sector is production-dead (exact)

Deviation vector delta = t1 + t2 (deviation from anti-parallel),
separation axis e (common perpendicular). Decompose delta into the
component perpendicular to e (in-plane tilt, the X of the previous
note) and along e (skew). Direct kernel evaluation for the pure-skew
pair (delta parallel to e): both invariant factors of the stretching
vanish -

\[
\hat t_1\cdot(\hat t_2\times\rho)=0,
\qquad
\hat t_1\cdot(\hat t_2\times P\hat t_1)=0
\quad\Longrightarrow\quad
\sigma\equiv0
\]

at leading filament order. Production lives ONLY on the in-plane tilt.

## 2. K2: eviction pumps toward the dead sector (exact at first order)

From the two-tube note, tube 1's out-of-plane rotation at the closest
point is -Gamma*beta/(2*pi*d^2) toward -y; the same computation with
labels swapped gives tube 2 the OPPOSITE sense (+y): the pair skews.
At first order the in-plane tilt is unchanged and the separation axis
rotates: the eviction moves the configuration toward the
production-dead skew sector at first order in the deviation, while
production is higher order. The producing set is dynamically repelling
under the pair's own mutual induction.

## 3. K3: the kill integral (finite ODE obstructed)

Same-day follow-up
`mpp-forward-gold-k3-exact-kernel-finite-ode-obstruction-20260705.md`
checks the exact kernel and corrects this target. The four variables
\((d,\text{in-plane tilt},\text{skew},\text{closest-point drift})\)
are not an invariant exact reduction: the arclength derivative of the
induced velocity is not constant, and the second arclength derivative is
generically nonzero for producing \(\beta\ne0\). K3 is therefore a
filament-curve evolution problem, or a projected four-variable model
with an explicit curvature-leakage estimate. Sidecar
(certification-typed): with the classical Crow e-folding rate as the
lifetime clock, integrated stretch per encounter is at most

\[
\frac{3\sqrt3}{8}\,\beta^2\ln\frac1\beta
\;\le\;
\frac{3\sqrt3}{16e}
\qquad
\left(\text{max at }\beta=e^{-1/2}\right),
\]

and the doubling comparison (against ln 2) is a chapter-10 item.

Same-day follow-up
`mpp-forward-gold-k3-curvature-leakage-floor-at-production-peak-20260705.md`
shows that the residual is not weak: at the station where production is
maximal,
\[
B_d=2\sigma_{\max}.
\]
The open issue is transporting this local curve-leakage floor through
the evolving filament lifetime.

## 4. S1: the sheet hunt (negative for the counterexample)

Free flat sheet, vorticity jump delta-u: Kelvin-Helmholtz rate is
exactly k*delta-u/2 (classical). At the sheet's own thickness scale
the self-destruction rate beats any mutual-strain production rate by
the separation-to-thickness ratio: the sheet cell's
eviction-to-production ratio is LARGER than the tube cell's at leading
order. Curved-line variants: closed circular lines = axisymmetric
no-swirl = regular class (dichotomy branch 3); strain-held sheets =
externally financed (branch 2); generic sheets roll up into tubes on
the instability clock (cell exits to the tube cell). No evasion found.

## 5. L1: the self-cell reduces to the pair cell (exact at LIA order)

Local-induction motion is along the binormal and conserves length:
a filament does not stretch itself at LIA order. Self-stretching is
far-segment interaction - the same kernel as the pair, applied to the
structure's own distant segments. The self-cell inherits the pair
floor at leading order.

## 6. Ledger after this sweep

Measured/proved at leading order: pair floor 8*sqrt(3)/9 (max form);
pointwise ratio cot(2*alpha); skew sector dead; eviction pumps toward
it; sheets pay more than tubes; self-cell subsumed. Named and open:
kill integral (K3 curve evolution / projected model with residual);
crowd cell; continuum custody (no-free-reassembly); octave composition.
Quarantined comparisons:
Crow-lifetime stretch cap vs ln 2. Kill condition standing: a
producing class evading both the pointwise ratio and the max floor;
the crowd cell is the remaining hunting ground.
