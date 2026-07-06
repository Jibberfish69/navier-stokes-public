---
theorem_id: forward-gold-wkb-selector-force-acceleration-impulse-identity-20260706
status: exact-branch-identity-acceleration-cancellation-is-endpoint-impulse-or-frame-variation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.AccelerationImpulseIdentity
  - SelectedAffineMoment.EndpointVariationBranch
  - HminusOneForceToTimeVariation.Currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-force-viscous-cancellation-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-superheat-no-free-acceleration-direct-test-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
completion_truth: >-
  Exact branch identity only. For a fixed localized affine test Psi_A equal to
  A(x-X) on the selected support, the selector floor proof gives
  M_A(T)=-<F_sel,Psi_A>, where F_sel=P div T. If the acceleration leg alone
  cancels the selector force in the projected balance, partial_t v+F_sel=0,
  then M_A(T)=d/dt <v,Psi_A>. Thus coherent selected affine service carried
  only by acceleration is endpoint velocity impulse. Bounded endpoint energy
  gives |int_I M_A dt| <= C |A|D^(5/2)(||v(b)||_2+||v(a)||_2). Rectified
  service without endpoint displacement must come from sign cancellation or a
  moving affine test/frame term. This prices no nonlinear transport branch, no
  moving-frame custody term, no legal defect carriage, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# Selector-force acceleration impulse identity

## 1. Question

The selector floor gives
\[
  F_{\rm sel}:=\mathbb P\,\operatorname{div}T,
  \qquad
  \|F_{\rm sel}\|_{\dot H^{-1}}
  \ge
  c\,{|M_A(T)|\over |A|D^{3/2}} ,
  \tag{SAI.1}
\]
where
\[
  M_A(T)=\int T:A\,dx .
  \tag{SAI.2}
\]

The viscous follow-up prices the branch where \(F_{\rm sel}\) is supplied by
\(\nu\mathbb P\Delta v\). This note tests the acceleration branch:
\[
  \partial_t v+F_{\rm sel}=0
  \quad\hbox{in the projected balance}.
  \tag{SAI.3}
\]

This branch does not create a dissipation floor. It creates an impulse identity.

## 2. Fixed affine test

Use the same localized affine test as in the selector floor:
\[
  \operatorname{div}\Psi_A=0,
  \qquad
  \Psi_A(x)=A(x-X)\quad\hbox{on }B_D(X),
  \tag{SAI.4}
\]
with
\[
  \|\nabla\Psi_A\|_2\le C|A|D^{3/2},
  \qquad
  \|\Psi_A\|_2\le C|A|D^{5/2}.
  \tag{SAI.5}
\]

The selector-floor duality gives
\[
  M_A(T)
  =
  -\langle F_{\rm sel},\Psi_A\rangle .
  \tag{SAI.6}
\]

Under the acceleration-only balance (SAI.3),
\[
  M_A(T)
  =
  \langle\partial_t v,\Psi_A\rangle
  =
  {d\over dt}\langle v,\Psi_A\rangle .
  \tag{SAI.7}
\]

Thus the selected affine moment is exactly the time derivative of a localized
velocity impulse coordinate.

## 3. Endpoint room

Integrating (SAI.7) on \(I=[a,b]\),
\[
  \int_a^b M_A(T(t))\,dt
  =
  \langle v(b),\Psi_A\rangle-\langle v(a),\Psi_A\rangle .
  \tag{SAI.8}
\]

By (SAI.5),
\[
  \left|\int_a^b M_A(T(t))\,dt\right|
  \le
  C|A|D^{5/2}
  \left(
    \|v(b)\|_2+\|v(a)\|_2
  \right).
  \tag{SAI.9}
\]

So sign-coherent acceleration-only service is not a stationary bath. It spends
endpoint velocity impulse room.

The rectified version is the \(H^{-1}\) time-variation floor:
\[
  |M_A(T(t))|
  \le
  \|\partial_t v(t)\|_{\dot H^{-1}}\,
  \|\nabla\Psi_A\|_2,
  \tag{SAI.10}
\]
hence
\[
  \int_I\|\partial_t v(t)\|_{\dot H^{-1}}\,dt
  \ge
  c\,{1\over |A|D^{3/2}}
  \int_I |M_A(T(t))|\,dt .
  \tag{SAI.11}
\]

This is time variation, not viscosity. It is a different currency.

## 4. Moving coordinate term

If the selected affine coordinate moves, so that \(\Psi=\Psi(t)\), then
(SAI.7) becomes
\[
  M_A(T)
  =
  {d\over dt}\langle v,\Psi(t)\rangle
  -
  \langle v,\partial_t\Psi(t)\rangle .
  \tag{SAI.12}
\]

The first term is endpoint impulse. The second term is selector/frame motion.
Thus adaptive re-posing is not invisible in the acceleration branch: it leaves
the fixed-coordinate identity and enters the moving-frame custody term.

This note does not price \(\partial_t\Psi\). It only records where that payment
must live.

## 5. Relation to the local affine obstruction

The local affine dynamic obstruction remains true. A local affine strain history
can have its acceleration absorbed by a local pressure Hessian. That kills any
purely local jet proof of an acceleration tax.

The present identity is different. It applies after a nonzero selected stress
has produced a projected selector force. Once that force is assigned to
\(\partial_t v\), the localized affine duality forces the velocity impulse
coordinate to move.

So local pressure can absorb local affine acceleration, but a nonzero projected
selector force assigned to acceleration cannot be held stationary in the fixed
dual coordinate.

## 6. Branch split

After the viscous and acceleration checks, the selected-force exits are:
\[
\begin{array}{ll}
F_{\rm sel}=\nu\mathbb P\Delta v
  &\Rightarrow \text{viscous dissipation floor},\\[1mm]
\partial_t v+F_{\rm sel}=0
  &\Rightarrow \text{endpoint impulse or }H^{-1}\text{ time variation},\\[1mm]
F_{\rm sel}\text{ cancelled by }\mathbb P(v\cdot\nabla v)
  &\Rightarrow \text{nonlinear transport / tower-defect branch},\\[1mm]
F_{\rm sel}\text{ legally carried as a defect}
  &\Rightarrow \text{certificate / custody / same-law tower branch},\\[1mm]
F_{\rm sel}\text{ not legally carried}
  &\Rightarrow \text{actual-law / ancestry / cover / tower failure}.
\end{array}
\tag{SAI.13}
\]

## 7. Four-sentence result

For the fixed localized affine test used in the selector floor,
\[
  M_A(T)=-\langle F_{\rm sel},\Psi_A\rangle .
\]
If acceleration alone cancels the selector force, \(\partial_t v+F_{\rm sel}=0\),
then
\[
  M_A(T)={d\over dt}\langle v,\Psi_A\rangle .
\]
So coherent acceleration-only service is endpoint velocity impulse, bounded by
the endpoint energy room in (SAI.9), while rectified service requires
\(H^{-1}\) time variation as in (SAI.11). Moving the affine coordinate adds the
explicit frame term \(-\langle v,\partial_t\Psi\rangle\), which remains a
custody branch rather than a closed confinement constant.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
