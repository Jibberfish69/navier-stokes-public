---
theorem_id: forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706
status: strict-reduction-constant-direction-pressure-source-time-persistence-floor-killed
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.ConstantDirectionPersistence.NO-ORDER-ONE-FLOOR
  - ShearCell.SelfEvolutionClock = sqrt(H)
  - ExactMatrix.FastDirectionTracking.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706.md
completion_truth: >-
  Strict reduction and scaling obstruction, not a dense-crowd theorem and not a
  confinement-constant decision. The exact shear-cell display supplies any
  trace-free pressure Hessian K with velocity-gradient scale a=sqrt(|K|), energy
  |K|D^5, and zero local gradient at the station. This note checks the next
  possible payer: perhaps an unforced pressure-source cell cannot persist for
  one producer clock. The answer is negative for constant-direction service.
  By Navier-Stokes scaling, the cell's nonlinear self-evolution changes its
  gradient at rate a^2 and changes its pressure Hessian at rate a|K|, so the
  relative Hessian-change clock is a=sqrt(|K|), plus the viscous clock nu/D^2.
  In the overlap row |K|~s^2 beta^(4/5), hence a~s beta^(2/5). Over one producer
  clock s^{-1}, the relative unforced drift is beta^(2/5)+nu/(sD^2), below an
  order-one floor in the high-Re beta<<1 regime. Thus constant-direction
  pressure service can persist cheaply; what remains is fast direction tracking
  if the exact matrix forces it, localization, producer coupling, same-packet
  allocation, or a full dynamic bath construction.
---

# Overlap bath: shear-cell time-persistence obstruction

## 1. Kill question

The exact shear-cell note shows that a periodic divergence-free pressure-source
cell can supply any trace-free Hessian
\[
  K=\nabla^2p(0)\in\operatorname{Sym}_0(3)
  \tag{SCT.1}
\]
with energy
\[
  E_{\rm cell}\lesssim |K|D^5.
  \tag{SCT.2}
\]

The next possible floor is time persistence. A static pressure source is not a
Navier-Stokes trajectory. Perhaps the unforced flow immediately destroys the
supplied Hessian on the producer clock, forcing an order-one maintenance cost.

The kill condition for this pass is an order-one relative drift of \(K\) during
one producer e-fold.

The checked result is negative for constant-direction pressure service.

## 2. Scale of the exact shear cell

Let
\[
  a:=|\nabla u|\sim |K|^{1/2},
  \tag{SCT.3}
\]

In the displayed shear cell from the previous note, \(a=U/D\). Thus
\[
  |u|\sim aD.
  \tag{SCT.4}
\]

The pressure Hessian supplied by the cell has size
\[
  |K|\sim a^2.
  \tag{SCT.5}
\]

The kinetic energy scale is therefore
\[
  E_{\rm cell}\sim a^2D^5=|K|D^5.
  \tag{SCT.6}
\]

## 3. Unforced self-evolution clock

For Navier-Stokes,
\[
  \partial_tu=-(u\cdot\nabla)u-\nabla p+\nu\Delta u.
  \tag{SCT.7}
\]

Taking one gradient gives the scaling
\[
  |\partial_t\nabla u|
  \lesssim
  a^2+\nu {a\over D^2}.
  \tag{SCT.8}
\]

The pressure Hessian \(K\) is quadratic in \(\nabla u\) through
\[
  -\Delta p=\partial_i u_j\,\partial_j u_i.
  \tag{SCT.9}
\]

Thus its unforced time derivative has scale
\[
  |\partial_t K|
  \lesssim
  a|K|+{\nu\over D^2}|K|.
  \tag{SCT.10}
\]

Equivalently,
\[
  {|\partial_tK|\over |K|}
  \lesssim
  a+{\nu\over D^2}.
  \tag{SCT.11}
\]

This is the exact scaling point: the pressure-source cell is not changing on
the producer strain clock \(s\); it changes on its own gradient clock \(a\).

## 4. Overlap substitution

For the pressure row,
\[
  |K|\sim |\dot A|\sim s^2\beta^{4/5}.
  \tag{SCT.12}
\]

Therefore
\[
  a\sim |K|^{1/2}\sim s\beta^{2/5}.
  \tag{SCT.13}
\]

Over one producer clock \(s^{-1}\),
\[
  {\Delta K\over K}
  \lesssim
  \beta^{2/5}+{\nu\over sD^2}.
  \tag{SCT.14}
\]

In the high-Re overlap regime,
\[
  {\nu\over sD^2}\ll1,
  \tag{SCT.15}
\]
and for \(\beta\ll1\) the nonlinear drift is also \(o(1)\).

Thus a constant-direction pressure source persists through a producer e-fold
without order-one retuning.

## 5. What this kills

This kills the generic time-persistence floor for the exact shear-cell pressure
row. The unforced cell is not instantly destroyed at the producer clock; its
relative pressure-Hessian drift over that time is only
\[
  \beta^{2/5}+{\nu\over sD^2}.
  \tag{SCT.16}
\]

So constant-direction pressure service remains a cheap row of the overlap bath.

## 6. What remains

This does not construct the exact overlap bath.

The remaining pressure-row burdens are now:

- fast direction tracking, if the exact matrix forces the pressure Hessian
  direction to change on the producer clock;
- localization of the shear cell into the producing field;
- coupling the pressure cell to a nonzero producing packet without destroying
  production or importing a paid eviction channel;
- same-packet allocation of the pressure service into record-ladder currency;
- or a full summability-valid dynamic bath construction.

## 7. Four-sentence result

The exact shear-cell pressure source is slow, not fragile. If it supplies
\(|K|\sim s^2\beta^{4/5}\), its own gradient scale is only
\[
  a\sim |K|^{1/2}\sim s\beta^{2/5}.
\]
Navier-Stokes self-evolution changes the supplied Hessian at relative rate
\[
  a+{\nu\over D^2},
\]
so over one producer clock the relative drift is
\(\beta^{2/5}+\nu/(sD^2)\). Constant-direction pressure service therefore
does not restore an order-one floor; the live pressure branch is fast direction
tracking, localization, producer coupling, allocation, or construction.
