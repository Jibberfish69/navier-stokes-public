---
theorem_id: forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706
status: strict-reduction-producer-clock-pressure-direction-tracking-floor-killed
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.FastDirectionTracking.NO-PRODUCER-CLOCK-FLOOR
  - ShearCell.RetuningWork = |K|D^5
  - ExactMatrix.LocalizationAllocationConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-coupling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
completion_truth: >-
  Strict reduction and coefficient-variation estimate, not a dense-crowd
  theorem and not a confinement-constant decision. The exact shear-cell display
  supplies any trace-free pressure Hessian K at cost |K|D^5. This note checks
  the next possible payer: perhaps changing the direction of K on the producer
  clock forces an order-one tracking cost. Use a fixed finite bank of shear
  cells whose pressure Hessians span Sym_0(3), avoiding any rotating-frame
  singularity. If |dot K| is at most the producer-clock size s|K|, the
  coefficient variation in that fixed bank has total variation at most
  C s|K|. A coefficient change dc in one shear cell costs |dc|D^5, so over one
  producer clock the total tracking work is at most C|K|D^5. With
  |K|~s^2 beta^(4/5), this is beta^(4/5)E_prod, the existing pressure-source
  row rather than a new order-one floor. Remaining pressure-row burdens:
  the Reynolds threshold bridge for producer curvature, Gate-8 no-recount
  allocation/compensator, supercritical fast-motion forcing at
  omega/s >= beta^(-4/5), or an actual summability-valid dynamic bath
  construction/exclusion.
---

# Overlap bath: shear-cell fast-direction tracking obstruction

## 1. Kill question

The exact shear-cell display supplies any traceless pressure Hessian
\[
  K(t)\in\operatorname{Sym}_0(3)
  \tag{SFT.1}
\]
at a station with
\[
  u_h(0,t)=0,
  \qquad
  \nabla u_h(0,t)=0,
  \tag{SFT.2}
\]
and energy scale
\[
  E_h(t)\lesssim |K(t)|D^5.
  \tag{SFT.3}
\]

The time-persistence note kills the constant-direction fragility floor. The
producer-coupling note kills the constant-affine cross-Hessian floor. The next
possible payer is direction tracking: perhaps \(K(t)\) has to turn on the
producer clock, and retuning the shear-cell direction costs an order-one
fraction of the producer.

The checked answer is negative at producer-clock speed.

## 2. Fixed shear-cell bank

Avoid choosing a time-dependent zero-diagonal frame. Pick a finite set of
shear-cell profiles \(\phi_m\), \(1\le m\le M\), each of the form used in the
exact display, such that
\[
  u_{\phi_m}(0)=0,
  \qquad
  \nabla u_{\phi_m}(0)=0,
  \tag{SFT.4}
\]
and whose pressure Hessians
\[
  M_m:=\nabla^2p_{\phi_m}(0)
  \tag{SFT.5}
\]
span the five-dimensional space \(\operatorname{Sym}_0(3)\).

Since the span is finite-dimensional, fix a linear right inverse
\[
  K=\sum_{m=1}^M c_m(K)M_m
  \tag{SFT.6}
\]
with
\[
  \sum_m |c_m(K)|\le C|K|,
  \qquad
  \sum_m |\dot c_m(K(t))|\le C|\dot K(t)|.
  \tag{SFT.7}
\]

Thus direction changes of \(K\) are just coefficient changes in a fixed bank.
No rotating-frame singularity is being hidden in the estimate.

## 3. Cost of changing one coefficient

A single shear cell with pressure-Hessian coefficient \(c\) can be represented
with reciprocal shear amplitudes
\[
  U_+(t)=D|c(t)|^{1/2},
  \qquad
  U_-(t)=D\,\operatorname{sgn}(c(t))|c(t)|^{1/2}.
  \tag{SFT.8}
\]

Its velocity scale is
\[
  |u_c|\sim |c|^{1/2}D,
  \tag{SFT.9}
\]
and its energy scale is
\[
  E_c\sim |c|D^5.
  \tag{SFT.10}
\]

When \(c(t)\) changes,
\[
  |\partial_tu_c|\sim {|\dot c|\over |c|^{1/2}}D
  \tag{SFT.11}
\]
away from \(c=0\). Therefore the retuning power scale is
\[
  P_c
  :=
  \int |u_c|\,|\partial_tu_c|
  \lesssim
  |\dot c|D^5.
  \tag{SFT.12}
\]

At crossings \(c=0\), read (SFT.12) as the total-variation bound obtained by
approximating the crossing smoothly; changing the coefficient from \(c_0\) to
\(c_1\) costs \(\lesssim |c_1-c_0|D^5\).

## 4. Producer-clock direction tracking

Assume the exact matrix demands pressure Hessians with size
\[
  |K(t)|\sim H
  \tag{SFT.13}
\]
and direction changes no faster than the producer clock:
\[
  |\dot K(t)|\lesssim sH.
  \tag{SFT.14}
\]

Using (SFT.7) and (SFT.12),
\[
  P_{\rm track}
  \lesssim
  D^5\sum_m|\dot c_m|
  \lesssim
  sHD^5.
  \tag{SFT.15}
\]

Over one producer clock \(s^{-1}\),
\[
  W_{\rm track}
  \lesssim
  HD^5.
  \tag{SFT.16}
\]

This is exactly the existing pressure-source energy row. It is not a new
order-one tracking floor.

## 5. Overlap substitution

For producer-clock pressure-Hessian retuning in the overlap bath,
\[
  H\sim |\dot A|\sim s^2\beta^{4/5}.
  \tag{SFT.17}
\]

At the same scale,
\[
  E_{\rm prod}\sim s^2D^5.
  \tag{SFT.18}
\]

Therefore
\[
  W_{\rm track}
  \lesssim
  HD^5
  \sim
  \beta^{4/5}E_{\rm prod}.
  \tag{SFT.19}
\]

So producer-clock direction tracking costs the same \(q=4/5\) pressure row
already found in the pressure-source scaling note.

## 6. What this kills

This kills the producer-clock fast-direction tracking floor for the exact
shear-cell pressure source. Changing which traceless Hessian is supplied costs
the total variation of the supplied Hessian coefficients in a fixed finite
shear-bank, and that variation is only \(|K|D^5\) over one producer clock.

Thus the pressure row cannot be rescued by saying the matrix direction has to
turn on the producer clock.

## 7. What remains

This is not a dynamic bath construction and not a dense-crowd theorem.

The remaining pressure-row burdens are:

- the Reynolds threshold \(\operatorname{Re}_R=sR^2/\nu\gg\beta^{-4/5}\), or
  a bridge from threshold failure to record-ladder payment or producer
  suppression;
- Gate-8 no-recount allocation of the pressure service into record-ladder
  currency, or a compensator/residue;
- supercritical fast-motion forcing, if the exact matrix demands
  \(|\dot K|/|K|\gtrsim s\beta^{-4/5}\);
- or a full summability-valid dynamic bath construction or exclusion.

## 8. Four-sentence result

A pressure Hessian whose direction changes on the producer clock can be tracked
by a fixed finite bank of exact shear cells. In that bank,
\[
  K=\sum_m c_mK_m,
  \qquad
  \sum_m|\dot c_m|\lesssim|\dot K|,
\]
and changing one coefficient costs \(|dc|D^5\). Hence
\[
  W_{\rm track}\lesssim |K|D^5
  \sim \beta^{4/5}E_{\rm prod}
\]
over one producer clock. Producer-clock direction tracking is the existing
pressure row, not an order-one floor; the remaining pressure branch is the
Reynolds-edge bridge, Gate-8 no-recount allocation/compensator,
supercritical fast motion, or construction/exclusion.
