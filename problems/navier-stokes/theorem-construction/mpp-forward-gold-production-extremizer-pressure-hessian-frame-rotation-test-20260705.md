---
theorem_id: forward-gold-production-extremizer-pressure-hessian-frame-rotation-test-20260705
status: pointwise-negative-symmetry-dichotomy-reduction-no-proof
created: 2026-07-05
problem: navier-stokes
route: forward-gold / transversality / production-extremizer instability
target_object:
  - ProductionExtremizerPressureHessianFrameRotationTest.A
  - ProductionExtremizerPoseTaxFirstVariation.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-transversality-relay-drift-lock-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-dwell-time-twist-shear-attack-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-adaptive-angle-lock-no-free-selector-rotation-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retention-constant-certification-spec-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-dynamic-low-high-eigenpacket-no-freeze-direct-attempt-20260610.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-rsf4-angle-pincer-coherence-backscatter-dichotomy-20260704.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-strain-pressure-cancellation-global-local-audit-20260622.md
external_inputs_to_verify:
  - Lu-Doering instantaneous enstrophy-production optimizers
  - Kang-Yun-Protas finite-time enstrophy-amplification optimizers
completion_truth: >-
  This note corrects the proposed continuum shadow test for the already-proved
  relay-drift lock. The naive pointwise lift is false: at a point where
  vorticity is aligned with the top strain eigenvector, the local strain-square
  and vorticity-square terms commute with the strain frame, and the vorticity
  direction is preserved by D_t omega = S omega. Thus the local coupling rings
  no eigenframe-eviction bell. Vieillefosse/restricted-Euler behavior confirms
  the warning: once the nonlocal anisotropic pressure Hessian is replaced by
  the local isotropic closure, aligned states can self-amplify. The surviving
  continuum statement is the symmetry dichotomy: poses immune to pressure-Hessian
  frame rotation either have zero/regularized production or are externally
  financed; fully three-dimensional producing poses must forfeit immunity
  through the nonlocal pressure-Hessian/eigenframe channel. Open: prove a
  uniform ratio of off-diagonal pressure curvature to production on the compact
  unit-Reynolds fully-3D producing family. No retention constant or MPP closure
  is claimed.
---

# Production-extremizer pressure-Hessian frame-rotation test

## 1. Referent

The pose is the parked, aligned, rigid cascade profile: delivery is locally
maximal, channel motion is minimized, and the enemy is trying to sit at the
turning point long enough for the static supremum to become a time-averaged
trajectory.

In the normal-form relay notes this is the parked return-race profile. In the
continuum test it is an explicit Navier-Stokes field that maximizes instantaneous
production per unit dissipation, or an explicit finite-time enstrophy-amplifying
extremal, after the normalization chosen for the retention constant.

## 2. Proved model mechanism

The relay-drift lock proves the model mechanism: in the triad phase equations,
relay transfer and phase/frequency drift use the same interaction coefficient.
An active relay changes amplitudes; amplitude change moves the twist balance;
therefore the alignment constraint has nonzero second Lie derivative. The model
statement is:

\[
\text{active relay} \quad\Longrightarrow\quad
\text{normal escape from the aligned pose}.
\tag{PER.1}
\]

This is the line-2 tax at normal-form level. It is not yet the continuum
retention theorem.

## 3. Pointwise lift check: negative

Let

\[
S=\frac12(\nabla u+\nabla u^T),\qquad
\Omega=\frac12(\nabla u-\nabla u^T),\qquad
D_t=\partial_t+u\cdot\nabla .
\tag{PER.2}
\]

The exact strain equation is

\[
D_tS+S^2+\Omega^2+\nabla^2p=\nu\Delta S.
\tag{PER.3}
\]

For a simple eigenvalue \(\lambda_i\) with eigenvector \(e_i\), the eigenframe
rotation is driven by the off-diagonal entries in the \(S\)-eigenbasis:

\[
\langle D_te_i,e_j\rangle
=
\frac{\langle (D_tS)e_i,e_j\rangle}{\lambda_i-\lambda_j},
\qquad i\ne j.
\tag{PER.4}
\]

At the pointwise production-optimal pose, \(\omega\) is aligned with the top
strain eigenvector. In the strain eigenbasis, \(S^2\) is diagonal. Also

\[
\Omega^2=\frac14(\omega\otimes\omega-|\omega|^2I)
\tag{PER.5}
\]

is diagonal at exact alignment. The vorticity equation gives

\[
D_t\omega=S\omega+\nu\Delta\omega,
\tag{PER.6}
\]

so the inviscid local stretching part preserves the vorticity direction at exact
alignment. Therefore the local coupling produces no off-diagonal strain-frame
rotation:

\[
\bigl[(I-P_{\rm top})D_tP_{\rm top}\bigr]_{\rm local}=0.
\tag{PER.7}
\]

The only possible first-order eigenframe eviction at this pose comes from the
off-diagonal nonlocal pressure Hessian, viscosity, or localized/collar
commutators.

## 4. Restricted-Euler warning

This negative check is the continuum reason the restricted-Euler/Vieillefosse
closure is dangerous. When the nonlocal anisotropic pressure Hessian is replaced
by its local isotropic average, the pressure-Hessian rotator disappears and the
aligned strain-vorticity dynamics can self-amplify. Thus the same-coefficient
relay-drift lock does not lift as a pointwise local identity. Any future surface
that cites the triad lock as a local continuum frame-rotation law should be
blocked.

## 5. Symmetry dichotomy

The surviving continuum shadow is not local same-coefficient drift. It is the
symmetry dichotomy:

1. Two-dimensional and columnar classes can keep the pressure Hessian
   co-diagonal by symmetry, but vortex stretching production is zero.
2. Externally strained tube poses can be held steady, but the pose is financed
   by imposed boundary strain rather than by a finite-energy unforced field.
3. Axisymmetric no-swirl and related rigid classes are geometrically slaved and
   regular; production there is trapped in a regularity prison rather than an
   MPP enemy lane.
4. Fully three-dimensional producing configurations need curvature,
   interaction, and nonlocal pressure response; those same features generically
   break the co-diagonal pressure-Hessian symmetry that protected the pose.

Compressed statement:

\[
\text{poses immune to frame rotation cannot produce MPP-grade relay;}
\qquad
\text{fully producing poses forfeit immunity through nonlocal pressure curvature}.
\tag{PER.8}
\]

This is the honest continuum shadow of the relay-drift lock.

## 6. Corrected certification target

Choose one explicit production-optimal Navier-Stokes field \(u_\ast\) from the
external extremizer literature, normalized to the unit-Reynolds collar scale.
Let \(P_\ast\) be the top production-frame projector and define the off-diagonal
pressure-curvature tax

\[
\mathcal T_{\rm ph}(u_\ast)
:=
\left\|(I-P_\ast)(\nabla^2p_\ast)P_\ast\right\|_{\rm prod}.
\tag{PER.9}
\]

The one-pose test is now:

\[
\mathcal T_{\rm ph}(u_\ast)>0
\tag{PER.10}
\]

and the family-level target is the constant statement

\[
\mathcal T_{\rm ph}(u)
\ge c\,\mathcal P_{\rm prod}(u),
\qquad c>0,
\tag{PER.11}
\]

on the compact unit-Reynolds fully-three-dimensional producing family, after
removing the zero-production, regular-symmetry, externally financed, legal,
collar, and paid-exit branches.

This is still not the retention theorem. It is the pressure-Hessian twist floor
that the retention theorem would need.

## 7. Open inputs

1. Select and verify the exact external extremizer formula or numerical field.
2. Normalize it to the unit-Reynolds collar family used by the retention
   constant.
3. Compute \(\nabla^2p_\ast\), \(D_tS_\ast\), and \(D_tP_\ast\) from the real
   Navier-Stokes vector field.
4. Separate local diagonal self-amplification from nonlocal off-diagonal
   pressure curvature.
5. Decide \((\mathrm{PER}.10)\) for one explicit extremizer.
6. Only after that, attempt the uniform ratio \((\mathrm{PER}.11)\).

The live object has moved from a pointwise local transfer-drift identity to a
nonlocal pressure-Hessian twist-floor problem.
