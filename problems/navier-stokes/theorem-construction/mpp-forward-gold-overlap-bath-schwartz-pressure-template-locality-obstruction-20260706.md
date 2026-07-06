---
theorem_id: forward-gold-overlap-bath-schwartz-pressure-template-locality-obstruction-20260706
status: strict-reduction-boundary-locality-pressure-template-has-q-four-fifths-cost
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.FiniteEnergyTemplate.LOCALITY-NO-FLOOR
  - PressureHodgeMatching.SchwartzTemplate.NONZERO
  - DynamicBathConstruction.REMAINS
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-local-supercritical-motion-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-time-dependent-collar-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
completion_truth: >-
  Strict reduction and finite-energy template obstruction, not a dynamic bath
  construction, not a dense-crowd theorem, and not a confinement-constant
  decision. The exact periodic shear-cell display killed the mean-zero Hodge
  objection on a periodic cell, but left open whether finite-energy
  localization or boundary/locality side terms force an order-one pressure
  payer. This note gives an explicit Schwartz divergence-free template whose
  velocity and velocity gradient vanish at the producer while its pressure
  source generates a nonzero trace-free pressure Hessian there. The exact
  computation gives (106/1155) diag(-1,-1,2). Rotations and nonnegative
  amplitude weights span every trace-free Hessian, and the scaling
  u_{D,K}=D |K|^(1/2) v(x/D) gives energy O(|K|D^5) and Hessian K. Hence
  finite-energy pressure/Hodge localization has the same q=4/5 pressure-service
  row; it does not force supercritical motion or an order-one locality tax by
  itself. Compact support follows by cutting off the stream function at a fixed
  large radius and using continuity, with only a fixed constant loss. What
  remains is not static pressure/Hodge matching but true dynamic admissibility:
  same-fluid transport of the service bank, Reynolds-edge failure,
  fixed-density compensator/residue, or construction/exclusion.
---

# Overlap bath: Schwartz pressure-template locality obstruction

## 1. Kill question

The exact shear-cell display gives a periodic pressure source that supplies any
trace-free Hessian at cost
\[
  E_{\rm ph}\lesssim |K|D^5.
  \tag{SPT.1}
\]

The local supercritical-motion note then shows that local affine pressure
algebra does not force
\[
  \omega/s\gtrsim\beta^{-4/5}.
  \tag{SPT.2}
\]

The remaining locality question is whether finite-energy pressure/Hodge
matching, boundary terms, or localization of the pressure source necessarily
adds an order-one payer.

The checked answer is no at the static template level.

## 2. A finite-energy divergence-free template

Set
\[
  \psi(x)=x_1x_2x_3e^{-|x|^2/2},
  \qquad
  v=(\partial_2\psi,-\partial_1\psi,0).
  \tag{SPT.3}
\]

Then
\[
  \nabla\cdot v=0,
  \qquad
  v(0)=0,
  \qquad
  \nabla v(0)=0.
  \tag{SPT.4}
\]

The pressure source
\[
  f_v:=\partial_i v_j\,\partial_j v_i
  \tag{SPT.5}
\]
is the Schwartz function
\[
  f_v
  =
  2x_3^2e^{-|x|^2}
  \Bigl(
    1-2x_1^2-2x_2^2+x_1^4+x_2^4
    -5x_1^2x_2^2+x_1^2x_2^4+x_1^4x_2^2
  \Bigr).
  \tag{SPT.6}
\]

Let
\[
  p_v=(-\Delta)^{-1}f_v
  \tag{SPT.7}
\]
on \(\mathbb R^3\), with the decaying Newtonian potential. Since \(f_v\) is
Schwartz and has the divergence-form mean-zero property, this is a legal
finite-energy velocity source for pressure.

## 3. Exact pressure Hessian

Use
\[
  \partial_{ab}{1\over4\pi |x|}
  =
  {3x_ax_b-\delta_{ab}|x|^2\over4\pi |x|^5}.
  \tag{SPT.8}
\]

For even exponents, the sphere moments are
\[
  {1\over4\pi}
  \int_{S^2}
  n_1^{2a}n_2^{2b}n_3^{2c}\,d\sigma
  =
  {(2a-1)!!(2b-1)!!(2c-1)!!
   \over
   (2(a+b+c)+1)!!},
  \tag{SPT.9}
\]
and the radial integrals are
\[
  \int_0^\infty r^{m-1}e^{-r^2}\,dr
  =
  {1\over2}\Gamma(m/2).
  \tag{SPT.10}
\]

Applying (SPT.8)-(SPT.10) to (SPT.6) gives
\[
  \nabla^2p_v(0)
  =
  {106\over1155}
  \begin{pmatrix}
    -1&0&0\\
    0&-1&0\\
    0&0&2
  \end{pmatrix}.
  \tag{SPT.11}
\]

Thus a finite-energy divergence-free velocity field whose local velocity
gradient vanishes at the producer still supplies a nonzero trace-free pressure
Hessian at the producer.

## 4. Spanning every trace-free Hessian

Write
\[
  Q(n):=3n\otimes n-I.
  \tag{SPT.12}
\]

The template supplies
\[
  cQ(e_3),
  \qquad
  c={106\over1155}.
  \tag{SPT.12a}
\]
Rotating the template supplies \(cQ(n)\) for any unit vector \(n\).

Let \(K\in\operatorname{Sym}_0(3)\), and diagonalize it:
\[
  K=\sum_{i=1}^3\lambda_i e_i\otimes e_i,
  \qquad
  \lambda_1+\lambda_2+\lambda_3=0.
  \tag{SPT.13}
\]

Choose
\[
  A=-\min_i\lambda_i,
  \qquad
  \alpha_i={\lambda_i+A\over3}\ge0.
  \tag{SPT.14}
\]

Then
\[
  K=\sum_{i=1}^3\alpha_i Q(e_i).
  \tag{SPT.15}
\]

So three rotated copies of the same template, with nonnegative amplitude
weights \(\alpha_i/c\), supply any prescribed trace-free Hessian. The total
weight obeys
\[
  \sum_i{\alpha_i\over c}\lesssim |K|.
  \tag{SPT.16}
\]

## 5. Scaling

If the target Hessian size is \(H\) at scale \(D\), use the scaled template
\[
  v_{D,H}(x)=D H^{1/2}v(x/D).
  \tag{SPT.17}
\]

Then
\[
  \nabla v_{D,H}(x)=H^{1/2}(\nabla v)(x/D),
  \qquad
  f_{D,H}(x)=H f_v(x/D),
  \tag{SPT.18}
\]
and the pressure Hessian at the producer is
\[
  \nabla^2p_{D,H}(0)=H\nabla^2p_v(0).
  \tag{SPT.19}
\]

The kinetic energy scales as
\[
  \int_{\mathbb R^3}|v_{D,H}|^2\,dx
  =
  HD^5\int_{\mathbb R^3}|v|^2\,dx.
  \tag{SPT.20}
\]

After the finite rotated bank from Section 4,
\[
  E_{\rm ph}\lesssim |K|D^5.
  \tag{SPT.21}
\]

For the overlap pressure row
\[
  |K|\sim s^2\beta^{4/5},
  \tag{SPT.22}
\]
this gives
\[
  E_{\rm ph}\lesssim \beta^{4/5}E_{\rm prod}(D).
  \tag{SPT.23}
\]

## 6. Compact support

The template is Schwartz rather than compactly supported. This is already
finite-energy. If a compact-support template is demanded, choose a smooth
radial cutoff \(\chi_L=1\) on \(|x|\le L\), set
\[
  \psi_L=\chi_L\psi,
  \qquad
  v_L=(\partial_2\psi_L,-\partial_1\psi_L,0).
  \tag{SPT.24}
\]

Then \(v_L\) is exactly divergence-free and compactly supported. As
\(L\to\infty\),
\[
  v_L\to v
  \tag{SPT.25}
\]
in every weighted Schwartz norm needed in (SPT.8). Hence
\[
  \nabla^2(-\Delta)^{-1}
  \bigl(\partial_i(v_L)_j\partial_j(v_L)_i\bigr)(0)
  \to
  \nabla^2p_v(0).
  \tag{SPT.26}
\]

For one fixed large \(L\), the compact template remains nonzero and has the
same scaling (SPT.21), with only a fixed constant loss.

## 7. What this kills

This kills the static boundary/locality shortcut:
\[
  \text{finite-energy pressure/Hodge localization}
  \Rightarrow
  \text{order-one pressure-service payer}.
  \tag{SPT.27}
\]

There is a finite-energy divergence-free pressure-service bank, zero to first
order at the producer, that supplies any trace-free pressure Hessian at the same
\(|K|D^5\) cost as the periodic shear-cell display.

Thus boundary/locality cannot be the missing constant by scaling or static
Hodge matching alone.

## 8. What remains

This is not a dynamic bath construction and not a dense-crowd theorem. It
does not prove that one realized Navier-Stokes field can keep this service bank
attached through the record ladder.

The remaining pressure-row burdens are now dynamic:

- same-fluid transport and persistence of the pressure-service bank;
- Reynolds-edge failure, where the needed service scale falls below the viscous
  clock;
- fixed-density compensator/residue if one demands an order-one retained tax;
- or construction/exclusion of a summability-valid dynamic pressure bath.

## 9. Four-sentence result

Finite-energy pressure/Hodge localization does not restore the confinement
floor by itself. The explicit divergence-free template
\[
  v=(\partial_2,-\partial_1,0)\bigl(x_1x_2x_3e^{-|x|^2/2}\bigr)
\]
has \(v(0)=0\), \(\nabla v(0)=0\), and generates pressure Hessian
\[
  {106\over1155}\operatorname{diag}(-1,-1,2)
\]
at the origin. Rotations and nonnegative amplitude weights supply every
trace-free Hessian, and scaling gives cost \(\lesssim |K|D^5\), hence
\(\beta^{4/5}E_{\rm prod}\) for the overlap row. The remaining pressure branch
is dynamic admissibility, Reynolds-edge failure, fixed-density compensator, or
construction/exclusion, not static finite-energy localization.
