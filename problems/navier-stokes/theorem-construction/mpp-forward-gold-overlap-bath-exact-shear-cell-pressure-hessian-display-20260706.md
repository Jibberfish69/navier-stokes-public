---
theorem_id: forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706
status: strict-reduction-mean-zero-pressure-source-sign-obstruction-killed-one-cell-display
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.MeanZeroConstraint.NO-STATIC-FLOOR
  - PressureSource.ExactShearCell.NONZERO-TRACEFREE-HESSIAN
  - PressureSource.ArbitraryTracefreeHessian.PERIODIC-CELL-DISPLAY
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-time-persistence-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-coupling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-fast-direction-tracking-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-same-packet-raw-allocation-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-supercritical-motion-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-schwartz-pressure-template-locality-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
completion_truth: >-
  Strict reduction and exact display, not a dense-crowd theorem and not a
  confinement-constant decision. The previous pressure-source scaling note
  correctly found the beta^(4/5) pressure row, but its loose "signed source
  packet" wording hides an exact Hodge constraint: for a periodic divergence-free
  velocity field, integral partial_i u_j partial_j u_i is zero. This note checks
  that the mean-zero constraint itself is not the missing order-one floor. An
  explicit divergence-free shear cell has zero velocity gradient at the station
  while its pressure Hessian there is a nonzero traceless off-diagonal matrix of
  size U^2/D^2, with kinetic energy scale U^2D^3 = (U^2/D^2)D^5. The display
  extends to any prescribed trace-free Hessian K: choose a zero-diagonal
  orthonormal frame for K and set reciprocal shear amplitudes so
  U_ij U_ji/D^2=K_ij. Thus exact mean-zero pressure sourcing can supply
  arbitrary trace-free retuning curvature at the same |K|D^5 scale on a
  periodic cell. Follow-up time-persistence obstruction shows
  constant-direction pressure service drifts only at relative rate
  sqrt(|K|)+nu/D^2, so over one producer clock the drift is
  beta^(2/5)+nu/(sD^2). Follow-up producer-coupling obstruction checks that a
  constant producing affine jet creates no cross pressure Hessian at the
  station. Follow-up fast-direction tracking obstruction checks that
  producer-clock retuning of K's direction costs |K|D^5, the existing q=4/5
  pressure row. Follow-up producer-curvature subscale obstruction checks that
  the first nonconstant producer term creates cross Hessian
  s(D/R)sqrt(|K|), which stays inside the q=4/5 row when
  D/R<=beta^(2/5), leaving the viscous subcell-room condition. Follow-up
  subcell Reynolds threshold obstruction types that room as
  Re_R=sR^2/nu>>beta^(-4/5), and says threshold failure is not automatically a
  constant. Follow-up same-packet raw allocation obstruction says raw same-field
  charging of the pressure-service energy remains beta^(4/5) of local producer currency;
  record-ladder charging must mean Gate-8 no-recount allocation or a
  compensator/residue. Follow-up Gate-8 tax-density obstruction says no-recount
  allocation cannot amplify the q=4/5 density into a fixed tax. Follow-up local
  supercritical-motion obstruction says the local exact pressure matrix cannot
  force omega/s>=beta^(-4/5). Follow-up Schwartz pressure-template locality
  obstruction gives a finite-energy divergence-free service bank, zero to first
  order at the producer, that supplies every trace-free Hessian at the same
  |K|D^5 cost. Follow-up affine-transport pressure-bank obstruction prices the
  first dynamic custody layer: affine producer transport, projection, and
  Hessian tracking cost only |K|D^5 over one producer clock. Follow-up
  non-affine transport threshold obstruction prices the affine-subtracted
  residual at density (delta_D/s) beta^(4/5); an order-one payer needs
  delta_D/s>=c beta^(-4/5). What remains is supercritical broadband residual,
  Reynolds-edge failure, a fixed-density compensator/residue, or
  construction/exclusion.
---

# Overlap bath: exact shear-cell pressure-Hessian display

## 1. Kill question

The pressure-source scaling note used signed source packets for
\[
  f=\partial_i u_j\,\partial_j u_i.
  \tag{ESC.1}
\]

That picture has to pass one exact Hodge constraint. For a smooth periodic
divergence-free field,
\[
  \int_{\mathbb T^3}\partial_i u_j\,\partial_j u_i\,dx=0.
  \tag{ESC.2}
\]

Indeed,
\[
  \int \partial_i u_j\,\partial_j u_i
  =
  -\int u_j\,\partial_j\partial_i u_i
  =
  0.
  \tag{ESC.3}
\]

So a true pressure source is not a free signed monopole. The kill question is
whether this exact zero-mean constraint restores an order-one pressure floor.

The checked answer is no.

## 2. Exact divergence-free shear cell

Work on a periodic cell of side \(2\pi D\). Define
\[
  u(x)
  =
  U\bigl(\cos(x_2/D)-1\bigr)e_1
  +
  U\bigl(\cos(x_1/D)-1\bigr)e_2.
  \tag{ESC.4}
\]

Then
\[
  \nabla\cdot u=0,
  \qquad
  u(0)=0,
  \qquad
  \nabla u(0)=0.
  \tag{ESC.5}
\]

The only nonzero gradient entries are
\[
  \partial_2u_1=-{U\over D}\sin(x_2/D),
  \qquad
  \partial_1u_2=-{U\over D}\sin(x_1/D).
  \tag{ESC.6}
\]

Therefore the pressure source is
\[
  f
  =
  \partial_i u_j\,\partial_j u_i
  =
  {2U^2\over D^2}\sin(x_1/D)\sin(x_2/D).
  \tag{ESC.7}
\]

It has exact zero mean.

Using
\[
  2\sin a\sin b=\cos(a-b)-\cos(a+b),
  \tag{ESC.8}
\]
the pressure solving \(-\Delta p=f\) is
\[
  p(x)
  =
  {U^2\over2}
  \left[
    \cos\bigl((x_1-x_2)/D\bigr)
    -
    \cos\bigl((x_1+x_2)/D\bigr)
  \right].
  \tag{ESC.9}
\]

At the station \(x=0\),
\[
  \nabla^2p(0)
  =
  {U^2\over D^2}
  \begin{pmatrix}
    0&1&0\\
    1&0&0\\
    0&0&0
  \end{pmatrix}.
  \tag{ESC.10}
\]

Thus the cell supplies a nonzero traceless pressure Hessian while the local
velocity gradient at the station is zero.

## 3. Arbitrary traceless Hessian on one periodic cell

The one displayed direction is not a representation-level restriction. Let
\[
  K\in\operatorname{Sym}_0(3).
  \tag{ESC.11}
\]

Use the standard zero-diagonal lemma for trace-free symmetric matrices: there
is an orthonormal frame \(a_1,a_2,a_3\) such that
\[
  \langle Ka_i,a_i\rangle=0,
  \qquad i=1,2,3.
  \tag{ESC.12}
\]

For completeness: the quadratic form \(v\mapsto\langle Kv,v\rangle\) has a
zero on the unit sphere because \(K\) is trace-free. Pick that zero direction
as \(a_3\). The restriction of \(K\) to \(a_3^\perp\) also has trace zero, so
in its two-dimensional eigenbasis a \(45^\circ\) rotation gives two orthogonal
directions \(a_1,a_2\) with zero diagonal entries.

Write \(y_i=a_i\cdot x\). Define
\[
  u(x)
  =
  \sum_{i\ne j} U_{ij}\bigl(\cos(y_j/D)-1\bigr)a_i,
  \qquad U_{ii}=0.
  \tag{ESC.13}
\]

This field is divergence-free, has \(u(0)=0\), and has \(\nabla u(0)=0\),
because each \(i\)-component is independent of \(y_i\) and each derivative
contains \(\sin(y_j/D)\).

The pressure source is
\[
  f
  =
  {2\over D^2}\sum_{i<j}U_{ij}U_{ji}
  \sin(y_i/D)\sin(y_j/D).
  \tag{ESC.14}
\]

Solving \(-\Delta p=f\) mode by mode gives
\[
  \nabla^2p(0)
  =
  \sum_{i<j}{U_{ij}U_{ji}\over D^2}
  (a_i\otimes a_j+a_j\otimes a_i).
  \tag{ESC.15}
\]

Since \(K\) has zero diagonal in this frame, choose
\[
  U_{ij}=D|K_{ij}|^{1/2},
  \qquad
  U_{ji}=D\,\operatorname{sgn}(K_{ij})|K_{ij}|^{1/2}
  \tag{ESC.16}
\]
for each \(i<j\). Then
\[
  \nabla^2p(0)=K.
  \tag{ESC.17}
\]

So the exact periodic shear-cell display supplies every trace-free Hessian, not
only one off-diagonal direction.

## 4. Scaling

Let
\[
  H={U^2\over D^2}.
  \tag{ESC.18}
\]

The kinetic energy on one \(D\)-cell satisfies
\[
  E_{\rm cell}
  \sim
  U^2D^3
  =
  HD^5.
  \tag{ESC.19}
\]

In the arbitrary \(K\) construction,
\[
  E_{\rm cell}
  \lesssim
  D^3\sum_{i\ne j}U_{ij}^2
  \lesssim
  |K|D^5.
  \tag{ESC.20}
\]

This is exactly the pressure-source scaling from the previous note. The exact
mean-zero source law changes the geometry of the source: the elementary object
is a mean-zero shear pattern, not an independent signed monopole. It does not
change the exponent.

For overlap retuning,
\[
  H\sim|\dot A|\sim s^2\beta^{4/5},
  \tag{ESC.21}
\]
so the pressure-service row remains
\[
  E_{\rm cell}
  \sim
  \beta^{4/5}E_{\rm prod}.
  \tag{ESC.22}
\]

## 5. What this decides

The exact source-mean constraint is not the missing confinement constant.
There is an explicit unforced divergence-free initial datum whose pressure
source is mean-zero and whose pressure Hessian gives any prescribed traceless
retuning matrix at the station at cost \(HD^5\).

This also corrects the language of the pressure-source scaling note. The source
service should be read as a mean-zero quadrupole/shear-cell row, not as isolated
signed source mass.

## 6. What remains

This display does not decide the exact overlap-bath matrix.

The remaining burdens are:

- supercritical non-affine/broadband same-fluid transport and persistence of a
  finite-energy pressure-service bank, after affine custody is priced, with
  residual gradient ratio \(\delta_D/s\gtrsim\beta^{-4/5}\), or a bridge from
  Reynolds-threshold failure to record-ladder payment;
- Gate-8 no-recount allocation of the pressure service into record-ladder
  currency, or a compensator/residue;
- global supercritical fast-motion forcing/admissibility, if non-affine or
  broadband same-fluid transport over time demands
  \(|\dot K|/|K|\gtrsim s\beta^{-4/5}\).

## 7. Four-sentence result

The pressure source is not a free signed scalar packet: for a true
divergence-free periodic velocity field its spatial mean is exactly zero. But
that exact Hodge constraint does not restore a fixed floor, because the shear
cell \(u=U(\cos(x_2/D)-1)e_1+U(\cos(x_1/D)-1)e_2\) has \(\nabla u(0)=0\) and
\[
  \nabla^2p(0)
  =
  {U^2\over D^2}(e_1\otimes e_2+e_2\otimes e_1).
\]
The same construction supplies any trace-free Hessian after choosing a
zero-diagonal frame for that Hessian, with energy \(\lesssim HD^5\), so the
overlap pressure row remains \(\beta^{4/5}E_{\rm prod}\). After the
curvature-subcell and non-affine-threshold checks, the exact-matrix branch is
now narrowed to supercritical broadband residual, Reynolds-edge bridge, Gate-8
no-recount allocation/compensator, or construction, not the mean-zero
pressure-source constraint, same-time
multi-direction pressure-row algebra, constant-affine producer coupling,
producer-clock direction tracking, generic producer curvature, or static
finite-energy localization.
