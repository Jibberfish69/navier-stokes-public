---
theorem_id: forward-gold-filament-pair-strategy-space-confinement-reduction-20260705
status: thin-filament-leading-order-strategy-space-reduction-no-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold / transversality / strategy-space confinement / filament geometry
target_object:
  - FilamentPairStrategySpaceConfinement.A
  - TubeMisalignmentDiscount.A
  - TiltProductionEvictionCoactivation.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-production-extremizer-pressure-hessian-frame-rotation-test-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transversality-relay-drift-lock-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retention-constant-certification-spec-20260705.md
completion_truth: >-
  This note records the tube-pair correction to PER.10. In the thin-filament,
  local-induction model, the straight parallel pair has production and axis
  eviction co-vanishing in closed form. A symmetric tilted pair turns on axis
  tilting and axial stretching at the same order in the tilt parameter, with an
  order-one geometry ratio independent of circulation, separation, and small
  tilt; the exact z-resolved factor is still open. The surprise is that the
  tube pose sits near the zero eigenvector of the partner strain, not the top
  eigenvector. Thus the tube mechanism does not primarily rotate a built
  pointwise-optimal pose; it prevents that pose from being built by the same
  interaction geometry that creates production. This is a tube-class
  strategy-space confinement statement, not a retention constant, not a
  sheet-class check, and not MPP closure.
---

# Filament-pair strategy-space confinement reduction

## 1. Referent

The previous pressure-Hessian test aimed at the pointwise production extremizer:
vorticity aligned with the top strain eigenvector. The tube calculation changes
the target. For tube-type coherent structures, the equation's interaction
geometry appears to deny that pose before it can become a time-sustained enemy.

The corrected tube statement is:

\[
\text{the optimal pose never gets built by the tube interaction geometry.}
\tag{FPC.1}
\]

This does not replace the pressure-Hessian note. It adds a stronger
strategy-space restriction for tube assemblies: the admissible producing tube
poses sit inside weak-alignment geometry rather than at the naive static
supremum.

## 2. Straight pair: production and eviction co-vanish

Take two thin straight parallel filaments with circulation \(\Gamma\), separation
\(d\), and local tube axis \(e_z\). At one filament's centerline, the partner
filament induces a pure strain of magnitude

\[
s=\frac{\Gamma}{2\pi d^2}.
\tag{FPC.2}
\]

In the local basis where the two transverse axes are the separation and its
quarter-turn, the leading gradient has the form

\[
\nabla u_{\rm partner}
=
\begin{pmatrix}
0 & -s & 0\\
-s & 0 & 0\\
0 & 0 & 0
\end{pmatrix}.
\tag{FPC.3}
\]

The principal strain axes are the two forty-five-degree transverse directions
and the tube axis has eigenvalue zero. Therefore

\[
e_z\cdot S_{\rm partner}e_z=0,
\qquad
(I-e_z\otimes e_z)(\nabla u_{\rm partner})e_z=0.
\tag{FPC.4}
\]

The straight pair is the columnar branch of the symmetry dichotomy in closed
form: axial stretching production is zero and axis tilting eviction is zero.
The protected pose is immune because it does not produce.

## 3. Tilted pair: production and eviction turn on together

Now tilt the two filaments symmetrically by a small angle \(\alpha\), so they
meet locally like an X. At the closest point, let \(a_1\) be tube 1's vorticity
axis and \(S_2\) the partner strain. The axis-tilting channel is the transverse
part of the partner gradient applied to \(a_1\):

\[
\left|(I-a_1\otimes a_1)(\nabla u_2)a_1\right|
=
s\sin\alpha + O(s\alpha^2).
\tag{FPC.5}
\]

Thus eviction turns on at order \(s\alpha\). The axial stretching channel also
turns on at order \(s\alpha\), but with a complementary spatial profile along
the tube:

\[
a_1\cdot S_2 a_1
=
s\alpha\,\Phi(z/d)+O(s\alpha^2),
\qquad
\Phi(0)=0,\qquad \Phi(-\zeta)=-\Phi(\zeta).
\tag{FPC.6}
\]

So the symmetric point has maximal tilting and zero axial stretching, while
off-center regions carry the odd stretching profile. The order statement is the
useful result here:

\[
\frac{\text{tilting rate}}{\text{axial stretching rate}}
=
\text{pure geometry factor of order one},
\tag{FPC.7}
\]

with no dependence on \(\Gamma\), \(d\), or small \(\alpha\) after normalization.
The exact factor is not certified in this note; it requires the z-resolved
skew-line Biot-Savart display.

## 4. The surprise: tubes miss the top eigenvector

For the straight partner strain in \((\mathrm{FPC}.3)\), the eigenvectors are the
two forty-five-degree transverse directions and the tube axis \(e_z\) with
eigenvalue zero. The filament vorticity points along \(e_z\). Therefore the
tube pose is aligned with the zero eigenvector of the partner strain, not with
the most extensive eigenvector.

This retypes the continuum target. The static pointwise extremizer asks for
vorticity along the top strain eigenvector. The tube interaction that generates
the strain also fixes the geometry that keeps the tube vorticity out of that
top eigendirection.

This matches the angle-pincer evidence already recorded in the repo: real
turbulence preferentially aligns vorticity with the intermediate strain
eigenvector, not the most extensive one. Here the two-tube model gives a
leading-order mechanism for that refusal of maximal alignment.

## 5. Correction to PER.10

PER.10 asked whether a built pointwise-optimal pose is rotated by its own
production channel. The tube calculation says that is not the right first target
for tube assemblies. The tube-class correction is:

\[
\text{tube production does not hold the static supremum pose;}
\qquad
\text{tube interaction geometry confines it below that pose.}
\tag{FPC.8}
\]

Equivalently, the candidate constant should be read as a strategy-space
restriction before it is read as a dwell-time eviction constant:

\[
\mathcal P_{\rm tube}(u)
\le
(1-\delta_{\rm geom})\,\mathcal P_{\rm static}(u),
\qquad
\delta_{\rm geom}>0,
\tag{FPC.9}
\]

on the tube-type producing family after the thin-filament normalization and
after excluding the zero-production columnar branch. This is only the intended
shape. The note does not prove the uniform \(\delta_{\rm geom}\).

## 6. Caveats

This is a thin-filament, leading-order, local-induction calculation. It assumes
core radius small relative to separation and does not include core deformation,
viscous diffusion inside the core, reconnection-scale effects, or finite-energy
global closure. It is a tube-class statement only. Sheet-type producing
structures need their own calculation.

## 7. Queue

1. Compute the exact z-resolved skew-line field and certify the geometry factor
   in \((\mathrm{FPC}.7)\).
2. Run the same co-activation test on a strained sheet or sheet-fold structure.
3. State the family-level split: every producing coherent structure class pays
   either a tilt/eviction tax or a misalignment discount.

The live constant target becomes: prove that the equation's own interaction
geometry keeps the enemy's sustained producing strategies strictly inside the
naive static supremum.
