---
theorem_id: forward-gold-c0-self-consistent-atom-five-door-persistence-exhaustion-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / aligned atom pentachotomy / ownership-times-history double ledger
status: proof-architecture; door-4 sign spine new; residues A and B open; NO closure claimed
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-aligned-critical-record-atom-transverse-hodge-coercivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-coupling-reduces-to-angular-sphere-positivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-axisymmetric-swirl-fixed-endpoint-coefficient-audit-20260708.md
completion_truth: >-
  This note is a proof ARCHITECTURE for
  NoAlignedIncompressibleCriticalRecordAtomExceptEscapes.A restated on the
  self-consistent velocity atom (pressure Hessian sourced by the same
  participating packet, not a posed tensor pair). It assembles the exhaustion
  "persist only by pass / collar / endpoint-kernel / service-loss / route-out"
  from installed ledger pieces plus one new sign spine (Section 6): the
  record's own slaved pressure reads back as an aligned adverse quadrupole
  (oblate high-Q core; depolarization ordering), and the vorticity needed to
  flip that sign is either crushed by the record itself or breaks uniaxial
  alignment into the billed torsion channel. The two open residues are exactly
  the existing frontier theorems: (A) CausalStoppedSpinTwoSelectorAdmission.A
  on the rotating-phase branch, (B)
  FixedAlignedParentQuadrupoleEndpointExcludedByMaterialTimeLiouville.A
  (including axisymmetric swirl) on the fixed-phase branch. Nothing here
  closes c_0; the pentachotomy relocates the whole question lawfully onto
  those two doors plus paid bills.
---

# Self-Consistent Atom: Five-Door Persistence Exhaustion

## 1. Physical claim (before any symbols)

One incompressible viscous fluid. One packet holds the strain record at an
instant: crushed along one axis, stretched along the two others. For that
packet to persist as the record holder, three things must hold together in
material time: it must keep its amplitude, it must keep its pressure response
locked diagonal in its own strain frame (otherwise the transverse brake
engages), and the pressure response of the required anisotropic quadrupole
shape and size must actually be forced by the same fluid — pressure is slaved,
instantaneous, non-local, with no free sign.

The whole proof is one sentence: **the alignment the atom needs is itself an
anisotropic service, and anisotropic service is never free in this class — it
is owned by same-fluid amplitude somewhere, and the exhaustive list of lawful
owners and lawful histories is exactly the five doors.** Ownership of the
quadrupole source (space) forks into self / collar / parent / nothing-lawful.
Maintenance of the alignment (time) forks into torsion-billed / fixed-phase /
rotating-phase. Every combination lands in pass, collar, endpoint-kernel,
service-loss, or route-out.

## 2. Lemma 0 — the worst case is an atom, not a pair

Physical: the pressure has no will. A pair \((S,H)\) posed aligned by hand is
not a fluid event; only a velocity field whose OWN Riesz image aligns is a
candidate. The exact shear-cell display realized the aligned pair locally with
a divergence-free bank of zero gradient at the station — that bank is detached
amplitude, and Gate 1 forbids reading it for free.

Formal: the atom is a solution of the coupled condition

```math
S=a\,\mathrm{diag}(1,1,-2),\qquad
\Pi_\perp^S\,\nabla^2(-\Delta)^{-1}\big(\partial_i u_j\,\partial_j u_i\big)=0,
```

with the source carried by the same retained packet. Every realization whose
Hessian source is not retained same-field content routes out or is billed:
this is installed as ParentHarmonicUniaxialBankPaysOrRoutesOut.A plus
RetainedPressureHessianCZTailAdmission.A. Consequence for proof strategy: the
pair has free components; the atom does not. Alignment on the atom is a
codimension condition on \(u\) holding along a material trajectory —
persistence is infinitely many conditions (material-time jets), and each
differentiation either produces a visible billed term or forces symmetry.
That is the engine of the history ledger (Section 5).

## 3. Lemma 1 — engine/brake identity on the uniaxial branch

Physical: the record's growth engine is its own self-stretch, which exists
only in this anisotropic geometry; with the frame locked, the only things that
can move the amplitude are the aligned part of the pressure quadrupole and
viscosity.

Formal: on the uniaxial branch the deviatoric part of \(-S^2\) is \(+aS\)
(Vieillefosse sense: \(S^2 = a^2\,\mathrm{diag}(1,1,4)\), deviatoric
\(-a^2\,\mathrm{diag}(1,1,-2)\)). So

```math
D_tS = -S^2-\Omega^2-H+\nu\Delta S
\quad\Longrightarrow\quad
D_t a = a^2 + \big[\text{aligned }\Omega^2\text{ and }H\text{ terms}\big] + \nu(\ldots),
```

and under \(H_\perp^S=0\) the pressure enters the amplitude ledger ONLY
through its aligned deviatoric component. Viscosity is marginal under exact
scaling (repo filter: sign not rate) — it polices the class, it is not the
lever. So the persistence contest is: self-stretch engine versus the SIGN of
the self-consistent aligned quadrupole. That sign is Section 6.

## 4. Lemma 2 — ownership trichotomy of the quadrupole source (installed)

Physical: an order-one anisotropic quadrupole at the record point must be
owned by same-fluid amplitude at comparable scale; the far field is
geometrically too dim through the Riesz kernel.

Formal: child-normalized far-parent decay \((r/R)^4\)
(RetainedPressureHessianCZTailAdmission.A) plus
ComparableScalePressureBankIsAtomCollarParentOrField.A. Branches:

- parent owns at comparable scale and the record service was never the
  child's → **pass** (tower relay; route-b territory), or the borrowed piece
  is interior-harmonic \(p_K=\tfrac12 x\cdot Kx\) with parent-owned
  \(|K|R^2\) boundary data → **endpoint-kernel**;
- a comparable-scale annulus owns it → the annulus is anisotropic (scalar
  radial shells carry no trace-free quadrupole — null controls), hence
  participating, hence retained and billed → **collar**; the finite-energy
  turn-off forces the bill to be real (the free exponent-+2 harmonic collar
  cannot extend within finite energy);
- the atom's own core owns it → Section 6 → **service-loss**;
- nothing lawful owns it (detached bank, amputated pressure, unreachable
  snapshot, infinite-energy collar) → **route-out**.

## 5. Lemma 3 — history trichotomy of the alignment (installed algebra; residue A)

Physical: alignment is not a state, it is a maintained relation between two
transported frames. Maintaining it costs torsion payment unless symmetry does
it for free.

Formal: differentiate \(\Pi_\perp^S H=0\) along \(D_t\). The commutator
\(([S^2,H])_{ij}=(\lambda_i^2-\lambda_j^2)H_{ij}\) makes any frame mismatch
visible and signed once pressure eigenvalues are distinct on the transverse
plane. Branches:

- distinct transverse pressure eigenvalues → torsion visible → charged by the
  Schur motion/payment lemma (FiniteDimensionalSchurMotionPayment.A) →
  **collar/service-loss currency**;
- degenerate transverse pressure (\(h_1=h_2\ne h_3\), locally torsion-silent)
  → the spin-2 phase is the only freedom:
  fixed phase → **endpoint-kernel** (axisymmetric-with-swirl included;
  residue B below); rotating phase → orientation coherence billed through the
  route metric, with the anticipatory-selection escape closed physically by
  forward causality and formally by the stopped nonanticipatory selector —
  residue A: CausalStoppedSpinTwoSelectorAdmission.A. Failure of admission on
  this branch is not survival; it is **route-out** (no finite-energy,
  viscosity-compatible, reachable rotating-wave tower has been admitted).

## 6. Lemma 4 — the self-service sign spine (NEW)

This is the door the self-consistency upgrade opens. Suppose the atom's own
core sources the quadrupole. Read the sign the slaved pressure forces —
sign only, no rates, no numerics.

**(a) The record's own pressure reads back as a brake.** The record core is
strain-dominated: \(Q=|S|^2-\tfrac12|\omega|^2>0\) there, so \(\Delta p=-Q<0\)
at the core — a high-pressure blob. The packet's material shape is the record
shape: oblate, short axis along the crush direction \(e_3\). For a positive
oblate source, interior potential curvature is strongest along the short axis
(depolarization ordering \(N_{\rm short}>N_{\rm long}\), classical ellipsoid
potential theory — a sign fact, not an estimate). So
\(H_{33}<H_{11}=H_{22}<0\): the deviatoric Hessian is
\(\varepsilon\,\mathrm{diag}(1,1,-2)\) with \(\varepsilon>0\) — aligned, and
oriented WITH the strain. In the transport identity it enters as \(-H\):
the atom's own slaved quadrupole drains the record at first order. Aligned
does not mean harmless: the self-consistent aligned response has the adverse
sign. Le Chatelier for slaved pressure: the configuration's own response
opposes the configuration.

**(b) The vorticity trap.** The only way the core flips its pressure sign is
\(|\omega|^2>2|S|^2\) at the record point (low-pressure core). But vorticity
along the crush axis is crushed by the record itself (stretching rate
\(\lambda_3=-2a\)); vorticity in the stretched plane survives, but planar
\(\omega\) makes \(\Omega^2\) break \(\lambda_1=\lambda_2\) and the uniaxial
pressure degeneracy \(h_1=h_2\) — torsion becomes visible and Lemma 3 bills
it. To keep vorticity alive it must sit on a stretching axis, i.e. a prolate
tube with strain of type \(\mathrm{diag}(-1,-1,2)\) — a different shape from
the record. The packet cannot simultaneously be the pancake that holds the
strain record and the tube that sources the helpful sign. Choosing the tube
means the strain record has moved to the surrounding annulus — the
stretched-vortex profile branch, which is the **collar** door with the
annulus retained and billed.

**(c) T-parity coherence.** Under time reversal \(S\) flips and \(H\) does
not (quadratic source), so the brake/feed relation between the record and its
own slaved quadrupole is T-odd: forward, the record's pressure brakes it;
in the reversed movie the same magnitudes feed the decaying record. This is
a lag-type sign, invisible to any \(|\cdot|\)-magnitude currency — consistent
with the T-parity filter and the scale-covariance filter (a sign survives
exact scaling; a rate does not).

**(d) What remains formal here.** The local reading gives the sign; it does
not by itself give the uniform retained-currency lower bound. The remaining
content of this door is exactly the installed target ATH.5 / angular-sphere
positivity: after collars and banks are removed or billed, the retained
transverse/aligned response is bounded below in the same \(c_0\) currency.
The local sign shuts the LOCAL escape only; by (a)-(b), overturning it
requires imported comparable-scale anisotropy, which is owned — Lemma 2 —
and the burden relocates to the non-local doors. This is deliberately NOT a
local-closure claim (that class is pruned in this repo); the local sign is
the pump that forces the tower, not the theorem.

## 7. Lemma 5 — class closure (route-out)

Anything left is not a fluid event: pressure amputated (restricted-Euler
ghost), infinite-energy collar (free exponent-+2 extended forever),
snapshot unreachable by material history, exact self-similar ghost. These are
class exits by definition of the object (finite energy, viscous, reachable,
slaved pressure), not dangers.

## 8. Assembly and dictionary

Persistence of the self-consistent aligned record atom ⇒ Lemma 2 forks the
source ownership, Lemma 3 forks the frame history, Lemma 4 signs the
self-branch, Lemmas 0/5 police the class:

```math
\text{persist}\;\Longrightarrow\;
\text{pass}\;\vee\;\text{collar}\;\vee\;\text{endpoint-kernel}
\;\vee\;\text{service-loss}\;\vee\;\text{route-out}.
```

Dictionary to ATH.6: pass ↔ pass; collar ↔ collar/exit paid; endpoint-kernel
↔ parent-owned affine endpoint kernel; service-loss ↔ the complement of
service-zero (the branch where persistence is only bought by the signed
drain — that drain IS \(c_0\) on this branch); route-out ↔ class policing
(implicit in ATH's admissibility, explicit here).

What \(c_0>0\) still needs after the pentachotomy: the two frontier residues,
unchanged — (A) CausalStoppedSpinTwoSelectorAdmission.A on the rotating
branch, (B) FixedAlignedParentQuadrupoleEndpointExcludedByMaterialTimeLiouville.A
(including AxisymmetricSwirlFixedEndpointExcludedByMaterialTimeLiouville.A)
on the fixed-phase branch, plus the same-currency lower bound of Section 6(d).
This note relocates nothing dishonestly and closes nothing: it fixes the
proof architecture and contributes the door-4 sign spine.
