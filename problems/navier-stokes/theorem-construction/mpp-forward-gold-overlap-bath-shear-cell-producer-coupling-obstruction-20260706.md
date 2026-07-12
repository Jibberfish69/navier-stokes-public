---
theorem_id: forward-gold-overlap-bath-shear-cell-producer-coupling-obstruction-20260706
status: strict-reduction-instantaneous-producer-coupling-cross-hessian-floor-killed
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.ProducerCouplingCrossHessian.NO-AT-STATION
  - ShearCell.ProducerJet.UNCHANGED-TO-FIRST-ORDER
  - ExactMatrix.LocalizationAllocationConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706.md
completion_truth: >-
  Strict reduction and exact local/periodic-cell obstruction, not a dense-crowd
  theorem and not a confinement-constant decision. The pressure cell is now
  coupled to a constant producing affine jet Bx at the station. Because the
  shear cell has u_h(0)=0 and grad u_h(0)=0, it does not change the producer's
  local strain, vorticity, or production at the station. The pressure-Poisson
  cross source between the constant producer gradient B and the shear-cell
  gradient is a sum of single-coordinate sine modes. Those modes solve to sine
  pressures whose Hessian at the station is zero. Thus the pressure Hessian
  supplied by the shear cell is additive at the station to leading periodic-cell
  order, with no instantaneous order-one cross-Hessian coupling tax. Follow-up
  fast-direction tracking obstruction kills the producer-clock tracking floor:
  retuning the supplied Hessian direction costs |K|D^5, the existing q=4/5
  pressure row. Follow-up producer-curvature subscale obstruction kills generic
  producer curvature as an order-one floor when a high-Re subcell fits below
  the curvature radius. Follow-up subcell Reynolds threshold obstruction types
  that fit condition as Re_R=sR^2/nu>>beta^(-4/5). Follow-up
  affine-transport pressure-bank obstruction prices affine same-fluid custody at
  beta^(4/5). Follow-up non-affine transport threshold obstruction prices
  residual spatial variation at density (delta_D/s)beta^(4/5). Remaining:
  supercritical non-affine/broadband same-fluid transport, the Reynolds-edge
  bridge, Gate-8 no-recount allocation/compensator, and a real dynamic bath
  construction or exclusion.
---

# Overlap bath: shear-cell producer-coupling obstruction

## 1. Kill question

The exact shear-cell display supplies any traceless pressure Hessian \(K\) at a
station \(x=0\) while
\[
  u_h(0)=0,
  \qquad
  \nabla u_h(0)=0.
  \tag{SCC.1}
\]

The time-persistence note says constant-direction pressure service is not
destroyed on one producer clock. The next possible floor is producer coupling:
perhaps putting the pressure cell inside a producing affine packet creates an
order-one cross pressure Hessian or directly perturbs the producing jet.

The kill condition is an unavoidable cross-Hessian of the same size as the
supplied pressure service at the production station.

The checked result is negative at the instantaneous periodic-cell level.

## 2. Couple to a constant producer jet

Let the producer be locally affine:
\[
  u_p(x)=Bx,
  \qquad
  \operatorname{tr}B=0,
  \tag{SCC.2}
\]
with \(B\) constant on the pressure-source cell. Let \(u_h\) be the shear-cell
field from the exact display, written in an orthonormal frame \(a_i\):
\[
  u_h(x)
  =
  \sum_{i\ne j} U_{ij}\bigl(\cos(y_j/D)-1\bigr)a_i,
  \qquad
  y_i=a_i\cdot x .
  \tag{SCC.3}
\]

Then (SCC.1) gives
\[
  \nabla(u_p+u_h)(0)=B.
  \tag{SCC.4}
\]

So the strain, vorticity, and instantaneous vortex-stretching production of the
producer at the station are unchanged by the pressure cell at first jet level.

## 3. Cross pressure source

Write
\[
  C=\nabla u_h.
  \tag{SCC.5}
\]

The pressure source for \(u_p+u_h\) is
\[
  f=\partial_i(u_p+u_h)_j\,\partial_j(u_p+u_h)_i.
  \tag{SCC.6}
\]

It splits into
\[
  f=f_{pp}+f_{ph}+f_{hh},
  \tag{SCC.7}
\]
where
\[
  f_{ph}
  =
  B_{ij}C_{ji}+C_{ij}B_{ji}
  =
  2B_{ij}C_{ji}.
  \tag{SCC.8}
\]

For the shear cell,
\[
  C_{ji}
  =
  -{U_{ij}\over D}\sin(y_j/D).
  \tag{SCC.9}
\]

Therefore
\[
  f_{ph}
  =
  -{2\over D}\sum_{i\ne j}B_{ij}U_{ij}\sin(y_j/D).
  \tag{SCC.10}
\]

This is a sum of single-coordinate sine modes.

## 4. Single sine modes have zero Hessian at the station

For a single mode
\[
  -\Delta p=\sin(y_j/D),
  \tag{SCC.11}
\]
the periodic pressure is
\[
  p=D^2\sin(y_j/D),
  \tag{SCC.12}
\]
up to an irrelevant additive constant.

Every second derivative of \(p\) vanishes at \(y=0\):
\[
  \nabla^2p(0)=0.
  \tag{SCC.13}
\]

Hence
\[
  \nabla^2p_{ph}(0)=0.
  \tag{SCC.14}
\]

The producer-cell cross source can create a pressure gradient at the station,
but it does not create a pressure Hessian there. The gradient accelerates the
center; it does not rotate or strain the producing frame at first jet level.

## 5. Additivity of the Hessian row

The total pressure Hessian at the station is therefore
\[
  \nabla^2p(0)
  =
  \nabla^2p_{pp}(0)+\nabla^2p_{hh}(0)
  \tag{SCC.15}
\]
at this periodic affine-producer level.

The shear-cell Hessian \(\nabla^2p_{hh}(0)\) is exactly the prescribed
trace-free matrix \(K\) from the shear-cell display, and \(B\) is the original
producer gradient. Thus the pressure source service couples additively to a
constant producing jet at the station.

There is no instantaneous order-one cross-Hessian tax.

## 6. What this kills

This kills the local periodic-cell producer-coupling floor. The pressure cell
can be placed on top of a constant producing affine jet without changing the
producer's first jet at the station and without creating a cross pressure
Hessian there.

So the pressure row is not killed by the first producer-coupling check.

## 7. What remains

This is not a dynamic bath construction and not a full coupling theorem.

The remaining pressure-row burdens are:

- localization and collar effects when the periodic cell is embedded in the
  actual producing field, now sharpened to the Reynolds threshold
  \(\operatorname{Re}_R=sR^2/\nu\gg\beta^{-4/5}\) or a bridge from threshold
  failure to record-ladder payment;
- Gate-8 no-recount allocation of the pressure service into record-ladder
  currency, or a compensator/residue;
- supercritical non-affine/broadband same-fluid transport, including any
  fast-motion or spatial residual forcing demanded by the exact matrix after
  affine custody is priced;
- or a full summability-valid bath construction or exclusion.

## 8. Four-sentence result

A constant producing affine jet does not destroy the shear-cell pressure row at
the station. Since the shear cell has \(u_h(0)=0\) and \(\nabla u_h(0)=0\), the
producer's local strain, vorticity, and production are unchanged there. The
cross pressure source \(B:C+C:B\) is a sum of single sine modes, and those modes
have zero pressure Hessian at the origin. Thus the shear-cell Hessian service is
additive at same-time periodic-cell level; the live pressure branch is now
supercritical non-affine/broadband same-fluid transport, the Reynolds-edge
bridge, Gate-8 no-recount allocation/compensator, or construction.
