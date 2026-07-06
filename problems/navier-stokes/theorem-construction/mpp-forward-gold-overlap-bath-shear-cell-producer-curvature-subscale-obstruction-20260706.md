---
theorem_id: forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706
status: strict-reduction-producer-curvature-floor-killed-under-subcell-room
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.ProducerCurvatureCrossHessian.SUBCELL-DICHOTOMY
  - CurvatureCoupling.Scale = s(D/R)sqrt(H)
  - ExactMatrix.ViscousSubcellAllocationConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-coupling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
completion_truth: >-
  Strict reduction and scale dichotomy, not a dense-crowd theorem and not a
  confinement-constant decision. The constant-affine coupling note showed that
  a constant producer gradient creates no cross pressure Hessian at the
  station. This note checks the next term: producer curvature across the
  pressure cell. If the producer gradient B varies on curvature radius R, then
  the linear variation of B across a shear cell of scale D creates a cross
  pressure Hessian of size at most s(D/R)sqrt(H), where H is the self-supplied
  shear-cell Hessian size and s is the producer strain. For the overlap
  pressure demand H~s^2 beta^(4/5), this cross term is no larger than H once
  D/R <= c beta^(2/5). Thus producer curvature itself does not force an
  order-one floor: a pressure subcell below the curvature radius keeps the row
  at the existing q=4/5 pressure cost. The exact remaining branch is the
  subcell-room condition nu/(sD^2)<<1 together with D/R<=c beta^(2/5), plus
  same-packet allocation or an actual dynamic bath construction/exclusion. If
  no such D exists, the payer is the viscous/high-Re subcell edge, not a new
  curvature cross-Hessian constant. Follow-up fast-motion threshold obstruction
  sharpens the tracking branch: an order-one tracking floor requires
  omega/s >= beta^(-4/5), not merely faster-than-producer motion.
---

# Overlap bath: shear-cell producer-curvature subscale obstruction

## 1. Kill question

The producer-coupling note checked a constant producing affine jet
\[
  u_p(y)=By
  \tag{PCS.1}
\]
against the exact shear-cell pressure source. The cross pressure source was a
sum of single-coordinate sine modes, and those modes had zero pressure Hessian
at the station.

The next possible payer is producer curvature. Let the producing gradient vary
across the pressure cell:
\[
  B(y)=B_0+\sum_\ell B^{(\ell)}y_\ell+O(s|y|^2/R^2),
  \qquad |B_0|\sim s,\qquad |B^{(\ell)}|\lesssim {s\over R}.
  \tag{PCS.2}
\]

Here \(R\) is the producer curvature radius. The kill condition is an
unavoidable cross-Hessian of order \(s^2\), or an unavoidable escalation of the
pressure row to an order-one fraction of the producer.

The checked result is a dichotomy: curvature produces a real cross term, but a
subcell below the curvature radius makes it no larger than the already filed
pressure row. If that subcell is not available, the obstruction is the viscous
subcell edge.

## 2. Linear curvature cross source

Use one shear component from the exact display:
\[
  u_h(y)=U_{ij}\bigl(\cos(y_j/D)-1\bigr)e_i,
  \qquad i\ne j.
  \tag{PCS.3}
\]

Then
\[
  C_{ji}:=\partial_j u_{h,i}
  =
  -{U_{ij}\over D}\sin(y_j/D).
  \tag{PCS.4}
\]

The producer/shear cross source is
\[
  f_{ph}
  =
  2B_{ij}(y)C_{ji}.
  \tag{PCS.5}
\]

The constant part \(B_0\) gives the single-sine term already checked in the
producer-coupling note. It has zero Hessian at the station. The linear
curvature part is
\[
  f_{\rm curv}
  =
  -{2U_{ij}\over D}
  \sum_\ell B_{ij}^{(\ell)}\,y_\ell\sin(y_j/D).
  \tag{PCS.6}
\]

For \(\ell\ne j\),
\[
  -\Delta\bigl(D^2y_\ell\sin(y_j/D)\bigr)
  =
  y_\ell\sin(y_j/D),
  \tag{PCS.7}
\]
and
\[
  \partial_{\ell j}\bigl(D^2y_\ell\sin(y_j/D)\bigr)\big|_{0}
  =
  D.
  \tag{PCS.8}
\]

Thus the linear curvature source creates a station Hessian at scale
\[
  |K_{\rm curv}|
  \lesssim
  |\nabla B|\,U.
  \tag{PCS.9}
\]

The \(\ell=j\) terms and the quadratic remainder in (PCS.2) obey the same
elliptic scaling bound, with the quadratic remainder gaining another factor
\(D/R\).

## 3. Compare to the self-supplied pressure row

For a shear-cell pressure Hessian of size
\[
  H:=|K_h|,
  \tag{PCS.10}
\]
the exact display has
\[
  U\sim D\sqrt H.
  \tag{PCS.11}
\]

Using \(|\nabla B|\lesssim s/R\), (PCS.9) becomes
\[
  |K_{\rm curv}|
  \lesssim
  s{D\over R}\sqrt H.
  \tag{PCS.12}
\]

For the overlap pressure row,
\[
  H\sim s^2\beta^{4/5},
  \qquad
  \sqrt H\sim s\beta^{2/5}.
  \tag{PCS.13}
\]

Therefore
\[
  |K_{\rm curv}|
  \lesssim
  s^2\,\beta^{2/5}{D\over R}.
  \tag{PCS.14}
\]

To keep curvature inside the existing pressure row, require
\[
  {D\over R}\lesssim \beta^{2/5}.
  \tag{PCS.15}
\]

Then
\[
  |K_{\rm curv}|\lesssim s^2\beta^{4/5}\sim H.
  \tag{PCS.16}
\]

The producer-curvature cross term is then a same-size correction to the
already supplied pressure Hessian, not an order-one payer.

## 4. Subcell room versus viscous edge

The pressure cell also has to persist on the producer clock. The
time-persistence note gives the viscous factor
\[
  {\nu\over sD^2}.
  \tag{PCS.17}
\]

So the curvature branch reduces to the existence of a subcell scale \(D\) with
\[
  {\nu\over sD^2}\ll1,
  \qquad
  {D\over R}\lesssim\beta^{2/5}.
  \tag{PCS.18}
\]

Equivalently, the producer-curvature row is harmless when there is scale room
between the viscous length and the curvature-controlled pressure subcell:
\[
  \left({\nu\over s}\right)^{1/2}
  \ll
  D
  \lesssim
  R\beta^{2/5}.
  \tag{PCS.19}
\]

If no such \(D\) exists, the obstruction is not an abstract curvature
cross-Hessian constant. It is the high-Re/subcell edge
\[
  {sR^2\over\nu}\lesssim \beta^{-4/5}.
  \tag{PCS.20}
\]

That is a viscous-localization condition and belongs with the already named
high-Re payer rows.

## 5. Energy comparison

On the pressure subcell, the existing pressure cost is
\[
  E_h\lesssim HD^5.
  \tag{PCS.21}
\]

Against the producer currency at the same scale,
\[
  E_{\rm prod}(D)\sim s^2D^5,
  \tag{PCS.22}
\]
the ratio is still
\[
  {E_h\over E_{\rm prod}(D)}
  \lesssim
  \beta^{4/5}.
  \tag{PCS.23}
\]

Against a whole producer packet of radius \(R\), the ratio is smaller by
\((D/R)^5\). The subcell choice therefore does not create a hidden energy
floor.

## 6. What this kills

This kills producer curvature as a generic order-one pressure-row floor in the
high-Re subcell regime. The first nonconstant producer term does create a real
cross Hessian, but its size is controlled by
\[
  s{D\over R}\sqrt H.
  \tag{PCS.24}
\]

Choosing \(D/R\lesssim\beta^{2/5}\) keeps that cross term inside the existing
\(q=4/5\) pressure service.

## 7. What remains

This is not a dynamic bath construction and not a dense-crowd theorem.

The remaining pressure-row burdens are:

- proving the subcell room condition (PCS.18) along the actual high-Re record
  ladder, or charging its failure to the viscous/high-Re edge;
- same-packet allocation of pressure-service work into record-ladder currency;
- supercritical fast-motion forcing, if the exact matrix demands
  \(|\dot K|/|K|\gtrsim s\beta^{-4/5}\);
- or a full summability-valid dynamic bath construction or exclusion.

## 8. Four-sentence result

Producer curvature does create a cross pressure Hessian, but its scale is
\[
  |K_{\rm curv}|\lesssim s(D/R)\sqrt H.
\]
For the overlap row \(H\sim s^2\beta^{4/5}\), this stays at or below \(H\)
when the pressure cell sits at scale \(D\lesssim R\beta^{2/5}\). The only extra
condition is that this subcell remain above the viscous clock,
\(\nu/(sD^2)\ll1\). Thus curvature does not restore an order-one floor; it
reduces the pressure branch to subcell-room/high-Re admissibility, allocation,
supercritical fast motion, or construction/exclusion.
