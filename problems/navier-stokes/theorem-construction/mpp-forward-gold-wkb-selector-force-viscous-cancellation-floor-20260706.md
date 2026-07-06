---
theorem_id: forward-gold-wkb-selector-force-viscous-cancellation-floor-20260706
status: exact-branch-floor-viscous-cancellation-of-selector-hminusone-force
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - SelectorBoundaryCommutator.ViscousCancellationFloor
  - SelectedAffineMoment.ViscousPaymentBranch
  - HminusOneForceToDissipation.Currency
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-selector-commutator-hminusone-floor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-null-stress-selection-commutator-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
completion_truth: >-
  Exact branch conversion only. If the selector force F_sel=P div T is supplied
  or cancelled by the viscous leg of the same solenoidal velocity field, so that
  F_sel=nu P Delta v in the H^{-1} balance, then
  ||F_sel||_{\dot H^{-1}}<=nu ||grad v||_2 and the instantaneous dissipation
  obeys nu||grad v||_2^2>=||F_sel||_{\dot H^{-1}}^2/nu. Combined with the
  selector commutator floor, viscosity-only cancellation of selected affine
  service costs c |M_A(T)|^2/(nu |A|^2 D^3). This does not price cancellation
  by acceleration, nonlinear transport, pressure-defect carriage, certified
  same-law tower terms, or construction/exclusion of the overlap bath. It proves
  no full custody theorem, no crowd-cell theorem, no confinement constant, and
  no MPP closure.
---

# Selector-force viscous cancellation floor

## 1. Question

The selector floor gives a force bill:
\[
  F_{\rm sel}:=\mathbb P\,\operatorname{div}T,
  \qquad
  \|F_{\rm sel}\|_{\dot H^{-1}}
  \ge
  c\,{|M_A(T)|\over |A|D^{3/2}} .
  \tag{SVC.1}
\]

Here \(T=\chi R\) is the selected stress supported in a ball of radius \(D\),
\[
  M_A(T):=\int T:A\,dx,
  \qquad A\in{\rm Sym}_0(3).
  \tag{SVC.2}
\]

The remaining issue is whether this force bill can be paid in the actual
same-fluid law without becoming an order-one custody cost.

This note prices one branch only: the branch where the selector force is
cancelled by viscosity.

## 2. Viscous conversion

Let \(v\) be the solenoidal velocity contribution whose viscous leg supplies
the selector force in the projected balance:
\[
  F_{\rm sel}=\nu\,\mathbb P\Delta v
  \quad\hbox{in }\dot H^{-1}.
  \tag{SVC.3}
\]

Since \(\mathbb P\) is \(L^2\)-orthogonal on Fourier side,
\[
  \|\mathbb P\Delta v\|_{\dot H^{-1}}
  \le
  \|\Delta v\|_{\dot H^{-1}}
  =
  \|\nabla v\|_2 .
  \tag{SVC.4}
\]

Thus
\[
  \|F_{\rm sel}\|_{\dot H^{-1}}
  \le
  \nu\|\nabla v\|_2 .
  \tag{SVC.5}
\]

Equivalently,
\[
  \|\nabla v\|_2
  \ge
  {1\over\nu}\|F_{\rm sel}\|_{\dot H^{-1}},
  \qquad
  \nu\|\nabla v\|_2^2
  \ge
  {1\over\nu}\|F_{\rm sel}\|_{\dot H^{-1}}^2 .
  \tag{SVC.6}
\]

So viscosity can hide the selector force only by paying the usual enstrophy
dissipation.

## 3. Combined floor

Substituting (SVC.1) into (SVC.6) gives the branch floor
\[
  \nu\|\nabla v\|_2^2
  \ge
  {c\over\nu}\,
  {|M_A(T)|^2\over |A|^2D^3}.
  \tag{SVC.7}
\]

On a time interval \(I\), the same argument gives
\[
  \int_I\nu\|\nabla v(t)\|_2^2\,dt
  \ge
  {1\over\nu}\int_I
  \|F_{\rm sel}(t)\|_{\dot H^{-1}}^2\,dt .
  \tag{SVC.8}
\]

For a measurable family of selected stresses supported at scale \(D(t)\),
\[
  \int_I\nu\|\nabla v(t)\|_2^2\,dt
  \ge
  {c\over\nu}\int_I
  {|M_A(T(t))|^2\over |A(t)|^2D(t)^3}\,dt .
  \tag{SVC.9}
\]

This is the exact \(H^{-1}\)-to-dissipation conversion for the viscous-only
carrier.

## 4. Branch split

The selector branch is now typed as follows:
\[
\begin{array}{ll}
M_A(T)=0
  &\Rightarrow \text{no selected affine service in this coordinate},\\[1mm]
M_A(T)\ne0,\ F_{\rm sel}=0
  &\Rightarrow \text{forbidden by the selector floor},\\[1mm]
F_{\rm sel}=\nu\mathbb P\Delta v
  &\Rightarrow \text{viscous dissipation floor }(SVC.7),\\[1mm]
F_{\rm sel}\text{ cancelled by }\partial_t v
  &\Rightarrow \text{time-variation / endpoint branch},\\[1mm]
F_{\rm sel}\text{ cancelled by }\mathbb P(v\cdot\nabla v)
  &\Rightarrow \text{nonlinear transport / tower-defect branch},\\[1mm]
F_{\rm sel}\text{ legally carried as a defect}
  &\Rightarrow \text{certificate / custody / same-law tower branch},\\[1mm]
F_{\rm sel}\text{ not legally carried}
  &\Rightarrow \text{actual-law / ancestry / cover / tower failure}.
\end{array}
\tag{SVC.10}
\]

Only the third line is priced here.

## 5. Four-sentence result

The selector commutator floor says nonzero selected affine service produces a
nonzero \(\dot H^{-1}\) Leray force. If that force is supplied or cancelled by
the viscous leg of the same solenoidal field, then
\[
  \nu\|\nabla v\|_2^2
  \ge
  {1\over\nu}\|F_{\rm sel}\|_{\dot H^{-1}}^2
  \ge
  {c\over\nu}{|M_A(T)|^2\over |A|^2D^3}.
\]
Thus the viscosity-only escape is not free: it converts the selector force
bill into ordinary dissipation at exactly the \(H^{-1}\) scale. Acceleration,
nonlinear transport, certified defect carriage, and construction/exclusion of
the bath remain open.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
