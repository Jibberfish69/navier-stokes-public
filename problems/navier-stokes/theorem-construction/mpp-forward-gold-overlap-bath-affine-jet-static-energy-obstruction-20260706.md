---
theorem_id: forward-gold-overlap-bath-affine-jet-static-energy-obstruction-20260706
status: strict-reduction-overlap-bath-static-energy-floor-killed-dynamic-matrix-remains
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - OverlapBath.StaticEnergyFloor.NO
  - AffineJet.LocalRealizability.APPLIES-TO-OVERLAP-BATH
  - ExactMatrix.DynamicSustainedBath.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-fresh-holder-architecture-gate-overlap-survivor-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-local-affine-material-jet-insufficiency-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-localized-affine-global-matching-scaling-audit-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-one-holder-amplitude-floor-bath-ratio-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-dense-crowd-two-channel-regate-20260705.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
completion_truth: >-
  Strict reduction and checked obstruction, not a crowd theorem and not a
  confinement-constant decision. The overlap-bath survivor cannot be killed by
  a static finite-energy or local-geometric floor. Older installed affine-jet
  notes already prove the needed mechanism: any trace-free first strain jet is
  locally compatible with incompressible NS after the pressure Hessian is chosen,
  and the jet can be globally matched by a compact/divergence-free localized
  affine packet. Scaling gives the exact cost: a prescribed gradient G on a
  ball of radius d has a divergence-free compactly supported realization with
  energy at scale C G^2 d^5. Applying the BD2/OAF overlap-bath demand
  G=s beta^{4/5} gives E_bath/E_prod ~ beta^{8/5}, so the local fixed floor is
  false at the exact affine-jet level, not only as heuristic scaling. By
  disjoint copies, any event-index series with sum G_n^2 d_n^5 finite has a
  static finite-energy divergence-free realization of all prescribed overlap
  jets. This is not a Navier-Stokes evolution and not a record construction.
  It says the remaining overlap-bath decision is purely dynamic: the exact joint
  transfer matrix must prove that such jets cannot be sustained along the same
  flow while preserving production, or else exhibit a summability-valid dynamic
  bath schedule. No dense-cell clearance, no composition theorem, and no MPP
  closure are claimed. Follow-up local-affine dynamic obstruction further says
  this dynamic branch is not a pointwise affine tracking tax: every smooth
  symmetric trace-free A(t) is locally Navier-Stokes-admissible after choosing
  the pressure Hessian. Second follow-up says generic time-dependent
  cutoff/Hodge retuning is also cheap by scaling. Third follow-up says
  pressure-Hessian source retuning costs beta^(4/5)E_prod, more than the collar
  row but still below an order-one floor. Thus the remaining dynamic decision
  is exact unforced/global/material.
---

# Overlap bath: affine-jet static energy obstruction

## 1. Physical object

The overlap bath is a smooth or broadband holder that shares the producer's
region. Its leading effect on the producer is a first Taylor jet:
\[
  u_h(x)=A(x-x_0)+O(|x-x_0|^2),
  \qquad \operatorname{tr}A=0.
  \tag{OBA.1}
\]

This is the part the spatial fresh-holder enumeration cannot price. There is
no vorticity-free standoff ball, and there is no localized bottom tier between
the producer and the holder.

## 2. Installed affine-jet facts

The local affine material-jet note proves that for any smooth symmetric
trace-free \(A(t)\), the local field
\[
  u(t,x)=A(t)x
  \tag{OBA.2}
\]
is an exact local incompressible Navier-Stokes packet once the pressure Hessian
is chosen:
\[
  p(t,x)=-\frac12 x\cdot(\dot A(t)+A(t)^2)x.
  \tag{OBA.3}
\]

So the local NS equations do not forbid the overlap jet.

The localized affine global-matching audit supplies the compact realization.
For fixed trace-free \(A\) and radius \(d\), there is a smooth compactly
supported divergence-free field equal to \(A(x-x_0)\) on \(B_d(x_0)\), obtained
by cutting off the affine field and correcting the collar divergence by a
Hodge/Bogovskii field. Its energy has the scaling
\[
  \int |u|^2 \lesssim |A|^2 d^5.
  \tag{OBA.4}
\]

Equivalently, prescribing gradient size \(G=|A|\) on the producer ball costs
only
\[
  E_{\rm jet}\lesssim G^2d^5.
  \tag{OBA.5}
\]

## 3. Consequence for the overlap bath

The filed overlap-bath demand has the form
\[
  G=s\beta^{4/5}.
  \tag{OBA.6}
\]

The producer record-currency energy at the same scale is
\[
  E_{\rm prod}\sim s^2d^5.
  \tag{OBA.7}
\]

By (OBA.5),
\[
  E_{\rm bath}\lesssim s^2\beta^{8/5}d^5,
  \qquad
  \frac{E_{\rm bath}}{E_{\rm prod}}\lesssim\beta^{8/5}.
  \tag{OBA.8}
\]

This is the OAF cheap-bath ratio, now backed by the installed affine-jet
matching construction. The overlap bath is not merely a scaling story; it is a
static finite-energy divergence-free jet construction.

## 4. Countable static packing

Take disjoint balls \(B_{d_n}(x_n)\) and prescribed overlap jets \(A_n\). The
same construction gives fields \(u_n\) with disjoint supports and
\[
  \int |u_n|^2\lesssim |A_n|^2d_n^5.
  \tag{OBA.9}
\]

If
\[
  \sum_n |A_n|^2d_n^5<\infty,
  \tag{OBA.10}
\]
then
\[
  u=\sum_n u_n
  \tag{OBA.11}
\]
is a finite-energy divergence-free static field carrying all those prescribed
overlap jets.

This is not a same-packet record ladder and not an NS evolution. It blocks one
kind of proof only: no static finite-energy or local divergence-free
compatibility argument can kill the overlap-bath branch.

## 5. What remains

The overlap-bath branch is dynamic. The exact matrix has to decide whether the
field can keep supplying these jets while the producer keeps producing.

The local-affine dynamic follow-up narrows what "dynamic" means here. It is not
a pointwise material-jet obstruction: arbitrary smooth symmetric trace-free
histories \(A(t)\) are locally admissible after the pressure Hessian absorbs
\(\dot A+A^2\). The time-dependent collar follow-up also rules out generic
cutoff/Hodge retuning as the floor: the retuning work scales like
\(G|\dot A|D^5\), hence one producer-clock retune at \(G=s\beta^{4/5}\) costs
only \(\beta^{8/5}E_{\rm prod}\). The dynamic decision must therefore come
from exact unforced evolution, nonlocal pressure/Hodge structure, allocation,
or construction.

There are two possible mathematical outcomes:

1. the joint transfer matrix forces non-shallowing accumulated cost, tracking,
   or allocation into the Gate-8/high-Re rows;
2. the matrix admits a dynamic schedule satisfying the bath-recursion
   summability criterion while preserving production.

The first outcome supports the confinement floor after composition gates. The
second is an exit-II construction target.

## 6. Four-sentence result

An overlapping smooth bath can realize any trace-free first strain jet on the
producer ball by a compactly supported divergence-free affine packet. The
energy cost of a jet of size \(G\) on scale \(d\) is \(O(G^2d^5)\), so the
filed overlap demand \(G=s\beta^{4/5}\) has the cheap ratio
\[
  E_{\rm bath}/E_{\rm prod}\lesssim\beta^{8/5}.
\]
Thus static finite energy, local divergence-free matching, local dynamic
affine equations, and generic time-dependent collar scaling cannot kill the
overlap bath. The remaining question is exact and global: whether the joint
matrix lets such jets persist along the producing flow or forces paid matching,
tracking, and allocation.
