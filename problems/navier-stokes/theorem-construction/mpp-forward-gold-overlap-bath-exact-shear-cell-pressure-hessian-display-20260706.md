---
theorem_id: forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706
status: strict-reduction-mean-zero-pressure-source-sign-obstruction-killed-one-cell-display
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureSource.MeanZeroConstraint.NO-STATIC-FLOOR
  - PressureSource.ExactShearCell.NONZERO-TRACEFREE-HESSIAN
  - ExactMatrix.MultiDirectionSuperposition.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-affine-dynamic-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-pressure-hessian-to-strain-eigenvalue-clock-placement-20260625.md
completion_truth: >-
  Strict reduction and exact display, not a dense-crowd theorem and not a
  confinement-constant decision. The previous pressure-source scaling note
  correctly found the beta^(4/5) pressure row, but its loose "signed source
  packet" wording hides an exact Hodge constraint: for a periodic divergence-free
  velocity field, integral partial_i u_j partial_j u_i is zero. This note checks
  that the mean-zero constraint itself is not the missing order-one floor. An
  explicit divergence-free shear cell has zero velocity gradient at the station
  while its pressure Hessian there is a nonzero traceless off-diagonal matrix of
  size U^2/D^2, with kinetic energy scale U^2D^3 = (U^2/D^2)D^5. Thus exact
  mean-zero pressure sourcing can supply nonzero retuning curvature at the same
  HD^5 scale. What remains is the full multi-direction exact matrix:
  superposition/cross-term control, localization/collar matching, coupling to
  the producing packet, time persistence, and record-ladder allocation.
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

## 3. Scaling

Let
\[
  H={U^2\over D^2}.
  \tag{ESC.11}
\]

The kinetic energy on one \(D\)-cell satisfies
\[
  E_{\rm cell}
  \sim
  U^2D^3
  =
  HD^5.
  \tag{ESC.12}
\]

This is exactly the pressure-source scaling from the previous note. The exact
mean-zero source law changes the geometry of the source: the elementary object
is a mean-zero shear pattern, not an independent signed monopole. It does not
change the exponent.

For overlap retuning,
\[
  H\sim|\dot A|\sim s^2\beta^{4/5},
  \tag{ESC.13}
\]
so the pressure-service row remains
\[
  E_{\rm cell}
  \sim
  \beta^{4/5}E_{\rm prod}.
  \tag{ESC.14}
\]

## 4. What this decides

The exact source-mean constraint is not the missing confinement constant.
There is an explicit unforced divergence-free initial datum whose pressure
source is mean-zero and whose pressure Hessian gives a nonzero traceless
retuning direction at the station at cost \(HD^5\).

This also corrects the language of the pressure-source scaling note. The source
service should be read as a mean-zero quadrupole/shear-cell row, not as isolated
signed source mass.

## 5. What remains

This display does not decide the exact overlap-bath matrix.

The remaining burdens are:

- multi-direction superposition without uncontrolled cross terms;
- localization of the periodic shear cell into the producing field with the
  collar estimates already priced;
- coupling the pressure cell to a nonzero producing packet without losing the
  desired retuning row;
- time persistence of the retuning service under unforced Navier-Stokes
  evolution;
- same-packet allocation of the pressure service into record-ladder currency.

## 6. Four-sentence result

The pressure source is not a free signed scalar packet: for a true
divergence-free periodic velocity field its spatial mean is exactly zero. But
that exact Hodge constraint does not restore a fixed floor, because the shear
cell \(u=U(\cos(x_2/D)-1)e_1+U(\cos(x_1/D)-1)e_2\) has \(\nabla u(0)=0\) and
\[
  \nabla^2p(0)
  =
  {U^2\over D^2}(e_1\otimes e_2+e_2\otimes e_1).
\]
Its energy is \(U^2D^3=HD^5\), so the overlap pressure row remains
\(\beta^{4/5}E_{\rm prod}\). The exact-matrix branch is now narrowed to
multi-direction superposition, localization, producer coupling, time
persistence, and allocation, not the mean-zero pressure-source constraint.
