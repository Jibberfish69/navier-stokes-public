---
theorem_id: forward-gold-record-self-financing-dyadic-countermodel-alignment-tax-reduction-20260704
status: checked-obstruction-and-strict-reduction-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / bathtub flux gate / BFG.4 resolution
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - BFG.4 (record self-financing)
  - WLF.60
  - RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A
authorship: >-
  Claude (Fable), 2026-07-04, continuing the bathtub flux-gate attempt;
  reconciled with the parallel Codex note
  mpp-forward-gold-bathtub-momentum-stress-ledger-half-tail-test-20260704.md,
  whose first-use same-parent stress-current correction is the same object as
  the gate coordinate here.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bathtub-momentum-flux-gate-producer-attempt-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bathtub-momentum-stress-ledger-half-tail-test-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adaptive-angle-lock-no-free-selector-rotation-20260704.md
completion_truth: >-
  This note resolves BFG.4 negatively at the energy-tax level and converts it
  into a strict reduction. A crude dyadic relay model shows viscous taxation
  alone cannot supply the strict subunit margin: lossless down-scale relay of
  energy doubles critical mass per rung automatically, the viscous tax per
  rung scales like nu over the square root of band-critical mass, and known
  blowing-up dyadic models instantiate exactly this self-financing relay.
  Therefore the subunit margin, if it exists for true NS, must be sourced from
  the SIGNED part of the flux gate - stress-strain misalignment produced by
  same-packet transport (sweeping decorrelation) and pressure rotation - not
  from viscous magnitude accounting. This lands the producer burden exactly on
  the installed angle-lock / paid-rotation face and identifies which structure
  class the payment must come from. No closure is claimed.
---

# Record self-financing: dyadic countermodel and the alignment-tax reduction

## 1. The BFG.4 question

The flux-gate note asked: is the window dissipation a record forcibly
generates the same object as the gate-strain the next admission requires,
with viscosity taxing the relay at a strict subunit rate?

## 2. The relay recursion

Work in band-critical coordinates. Let \(e_k\) be the energy in dyadic band
\(k\) and \(h_k := 2^k e_k\) its critical (\(\dot H^{1/2}\)-level) mass. By
Bernstein, band increments obey \(\delta u_k \sim 2^{k}\sqrt{h_k}\), the eddy
transfer time is \(\tau_k \sim 2^{-2k} h_k^{-1/2}\), and the viscous decay
time is \(t_\nu \sim (\nu 2^{2k})^{-1}\). The dissipated fraction per relay
step is therefore

\[
\mathrm{tax}_k \;\sim\; \frac{\tau_k}{t_\nu} \;\sim\; \frac{\nu}{\sqrt{h_k}},
\tag{RSF.1}
\]

and lossless transfer of energy down one rung doubles critical mass
(\(e_{k+1}=e_k \Rightarrow h_{k+1}=2h_k\)), so the relay recursion is

\[
h_{k+1} \;\approx\; 2\,h_k\Bigl(1 - \tfrac{c\,\nu}{\sqrt{h_k}}\Bigr).
\tag{RSF.2}
\]

Two immediate consequences. First, the cascade is a critical-mass amplifier:
records (doublings of the signed height) are automatic in any sustained
relay, with no new energy required — this is supercriticality in one line.
Second, once \(h_k \gg \nu^2\) the tax vanishes relative to the doubling, the
recursion runs away, and the total relay time \(\sum_k \tau_k\) is summable:
finite-time blowup inside the model. Below the threshold \(h \lesssim \nu^2\)
no band ever wins the race — recovering the small-critical-data regime as the
fixed point of `(RSF.2)`, consistent with the standard estimate (`WPT.9`)
closing exactly there.

## 3. The countermodel verdict

The recursion `(RSF.2)` is not hypothetical: dyadic/shell models of NS
(Katz–Pavlović class; Tao's cheap NS; the averaged systems) realize it and
provably blow up. In those models the record is perfectly self-financing:
each record produces exactly the strain the next admission needs, alignment
is perfect by construction, and the viscous tax alone never reaches the
strict subunit margin once critical mass clears the threshold.

Therefore:

\[
\boxed{\text{BFG.4 is FALSE at the energy-tax level: viscosity alone cannot
supply } \theta<\tfrac12 .}
\tag{RSF.3}
\]

Any Gold producer proof that uses only magnitude accounting (energies, taxes,
budgets, Carleson packing of unsigned quantities) is refuted by these models
regardless of how the bookkeeping is arranged. This strengthens the Tao
survival audit from the structural level to the quantitative level.

## 4. The strict reduction: the tax must be an alignment tax

What true NS has that every blowing-up relay model lacks is the SIGNED part
of the gate: \(\Pi_\ell = -\tau_\ell : \nabla u_\ell\) is a contraction of
tensors that transport continually rotates. In the models, stress and strain
are aligned by construction (scalar coefficients, fixed interaction
geometry). In the fluid, three same-packet mechanisms rotate stress against
strain between admission and re-export:

1. sweeping — larger eddies advect child structures across the parent strain
   field, decorrelating the contraction;
2. pressure rotation — the nonlocal, divergence-free pressure Hessian rotates
   the strain eigenframe (geometric depletion in the
   Constantin–Fefferman direction);
3. incompressible recombination — the zero-time-marginal pressure-Hodge
   coupling forces paired opposite lobes whose contributions to the signed
   flux compete.

The surviving producer question is therefore not "is the relay taxed" but:

\[
\textbf{does same-packet transport force a quantitative misalignment
(backscatter) fraction per rung, uniformly along any record ladder?}
\tag{RSF.4}
\]

This is exactly the installed angle-lock / paid-rotation face
(`RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A` and the
finite-rotation producer collapse): the enemy needs a uniform pre-readout
angle lock between stress and strain at every rung; the proof needs to price
that lock. `(RSF.3)` shows the price cannot be paid in energy currency;
`(RSF.4)` says it must be paid in angle currency — a rotation-rate lower
bound sourced from sweeping and pressure, which are the two structures
averaging destroys.

## 5. Classification

Checked obstruction: `(RSF.3)` — record self-financing holds in blowing-up
dyadic models, so viscous magnitude accounting cannot produce the strict
subunit margin for true NS.

Strict reduction: the Gold producer burden is relocated onto `(RSF.4)`, the
quantitative misalignment/backscatter law under same-packet transport. The
angle-lock face is no longer one coordinate among several: at the energy-tax
level it is the only surviving source of the subunit margin.

Support: the relay recursion `(RSF.2)` as a calibration model — any proposed
producer must fail in it (it has no rotation) and must use rotation-bearing
structure to succeed in NS.

Open: `(RSF.4)` itself. The candidate toolset is the same-packet sweeping
decorrelation rate and the pressure-Hessian rotation of the strain
eigenframe, both of which live in the transported parent frame and are
destroyed by averaging.
