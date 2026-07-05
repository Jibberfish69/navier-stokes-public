---
theorem_id: forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704
status: strict-reduction-with-timescale-parity-audit-not-proof
created: 2026-07-04
problem: navier-stokes
route: forward-gold signed-height / RSF.4 direct attack / angle pincer
logical_landing_node: SignedCriticalHeightSignPersistenceOrPeakBound.A
target_object:
  - RSF.4 (per-rung misalignment law)
  - RetainedRecordEdgeProjectorSelectorAngleLockOrPaidRotation.A
  - AnglePincer.A (introduced here)
authorship: >-
  Claude (Fable), 2026-07-04. Continuation of the bathtub flux-gate line;
  physical principle remains Thomas Birnie's packet-custody story.
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-record-self-financing-dyadic-countermodel-alignment-tax-reduction-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adaptive-angle-lock-no-free-selector-rotation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-tfe2748-strict-storage-compactness-rigidity-attack-20260701.md
completion_truth: >-
  This note does not prove RSF.4. It establishes three things. (1) Timescale
  parity: stress-strain rotation and down-scale transfer both run at the eddy
  turnover rate, so no scaling argument can win RSF.4; the subunit margin is a
  constant-level rigidity question. (2) The rotation mechanism is real and
  classically anchored: the nonlocal pressure Hessian is the strain-eigenframe
  rotator, and the local models that drop it (restricted Euler / Vieillefosse,
  dyadic relays) blow up. (3) The producer question becomes a two-sided pincer,
  AnglePincer.A: coherent angle fields feed Constantin-Fefferman-type geometric
  depletion (pass branch), incoherent angle fields force sign-fluctuating
  contraction and hence a backscatter fraction (tax branch). The open
  quantitative core is whether the two thresholds meet with no gap; the
  aligned-limit profile living in any gap is exactly a normalized rigidity
  target of the TFE2748A.20 compactness option, and simultaneously a
  CM-testable terminal record for Silver.
---

# RSF.4 direct attack: the angle pincer

## 1. Timescale parity (honest audit first)

The rotation of child stress against parent strain and the down-scale
transfer of energy both run at the same clock. At band \(k\) with critical
mass \(h_k\), the transfer time is \(\tau_k \sim 2^{-2k}h_k^{-1/2}\), and the
strain rate that sweeps, tilts, and re-orients child structures is
\(S_k \sim \delta u_k/\ell_k \sim 2^{2k}\sqrt{h_k} \sim \tau_k^{-1}\).

\[
\text{rotation rate} \sim \text{transfer rate} .
\tag{AP.1}
\]

So there is no free scaling win for either side: RSF.4 cannot be settled by
dimensional analysis. The subunit margin, if it exists, is a uniform
constant-level statement — a rigidity/compactness question. This is the
honest reason the wall has resisted magnitude methods: the fight was always
at constant level, in angle variables the magnitude methods cannot see.

## 2. The rotation mechanism is real and classically anchored

The strain tensor's material evolution contains the nonlocal pressure
Hessian, and the pressure Hessian rotates the strain eigenframe. The local
truncations that discard its nonlocal anisotropy — restricted Euler
(Vieillefosse), and the dyadic relays of the previous note — blow up in
finite time with perfect self-financing alignment. DNS turbulence shows the
opposite geometry: vorticity aligns preferentially with the intermediate
strain eigenvector, not the most extensive one — the real dynamics visibly
refuse maximal alignment. (Support evidence, not proof.) The mechanism the
blowing-up models lack and the fluid has is precisely the rotation channel:
nonlocal, pressure-borne, transport-coupled — the destroyed-by-averaging
class again, now at the level of the strain eigenframe.

## 3. AnglePincer.A

Let the angle field at rung \(k\) be the alignment of the subscale stress
\(\tau_k\) against the resolved strain \(\nabla u_k\) on the same packet
window (the sign and magnitude of the normalized contraction in the gate
identity). The pincer:

**Coherent branch.** If the angle fields are spatially/temporally coherent
along the record ladder (order in the geometry), then
Constantin–Fefferman-type geometric depletion applies: coherent direction
fields deplete the nonlinearity and give regularity on that window. Order is
punished by depletion. This is the pass branch, and it has classical
anchors (Constantin–Fefferman; the beta-coherence refinements).

**Incoherent branch.** If the angle fields are incoherent at small scales,
the gate contraction fluctuates in sign within the window; sign-fluctuation
of the contraction IS backscatter, and a quantitative incoherence modulus
forces a quantitative backscatter fraction — the per-rung misalignment tax
that pays the subunit margin in `(RSF.2)`. Disorder is taxed at the gate.

\[
\boxed{\text{order} \Rightarrow \text{depletion (pass)};\qquad
\text{disorder} \Rightarrow \text{backscatter (tax)}.}
\tag{AP.2}
\]

The enemy must be simultaneously ordered enough to keep the flux aligned and
disordered enough to evade depletion — at every rung of an infinite ladder,
in a shrinking window, forever.

## 4. The open quantitative core, stated exactly

The two branches have thresholds: depletion theorems require a specific
coherence modulus; the backscatter bound requires a specific incoherence
modulus. RSF.4 is proved if and only if the thresholds meet:

\[
\textbf{AnglePincer.A: every angle configuration satisfies the hypothesis of
the depletion branch or of the backscatter branch — no gap.}
\tag{AP.3}
\]

If a gap exists, the normalized bad sequence of the strict-storage attack
(`TFE2748B.3`) concentrates in it, and the limit is an *aligned cascade
profile*: a true-NS limit object with exactly aligned stress-strain at all
rungs and zero backscatter. The rigidity route of `TFE2748A.20` then demands:
prove that exact alignment plus the divergence-free nonlocal pressure
coupling forces degeneracy (self-similar profiles being separately excluded
by the known rigidity theorems). Failing that, the profile itself is a
concrete terminal record — same datum, same fluid, same terminal role — and
enters Silver's CM test as a witness candidate. Either lane consumes it.

## 5. Classification

Checked support: `(AP.1)` timescale parity — no scaling proof of RSF.4
exists; constant-level rigidity is the honest arena.

Strict reduction: the angle-lock face is reformulated as the two-sided
pincer `(AP.2)`–`(AP.3)` with classical anchors on both jaws; the producer
burden is the no-gap statement, and any gap-dwelling configuration is
compactness-normalizable into a single profile object consumed by rigidity
(Gold) or CM entry (Silver).

Open: `(AP.3)`. The concrete next work is to write the two moduli in the
same angle variable on the same packet window — the depletion threshold from
the coherence side and the backscatter threshold from the incoherence side —
and compute whether they overlap. That is a finite, well-posed calculation
on one window, not an open-ended search.
