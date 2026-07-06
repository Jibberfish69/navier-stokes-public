---
theorem_id: forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706
status: strict-reduction-nonaffine-transport-needs-supercritical-spatial-residual
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - PressureService.NonAffineTransport.NO-ORDER-ONE-UNLESS-SUPERCRITICAL
  - SpatialResidual.Threshold = beta^(-4/5)
  - BroadbandTransport.RECLASSIFIED-AS-CASCADE-OR-CONSTRUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-affine-transport-pressure-bank-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fast-motion-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-shear-cell-producer-curvature-subscale-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-gate8-tax-density-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
completion_truth: >-
  Strict reduction and spatial-threshold obstruction, not a dynamic bath
  construction, not a dense-crowd theorem, and not a confinement-constant
  decision. The affine-transport note priced the affine part of same-fluid
  custody. This note subtracts that affine frame and prices the non-affine
  residual by its gradient variation across the pressure bank. If
  delta_D=sup_{B_D}|grad u_p-B| and eta_D=delta_D/s, then residual transport,
  projection, and induced Hessian tracking over one producer clock cost at most
  eta_D |K|D^5. In the overlap pressure row |K|~s^2 beta^(4/5), this is
  eta_D beta^(4/5)E_prod. Therefore an order-one payer requires
  eta_D>=c beta^(-4/5), exactly the spatial analogue of the temporal
  fast-motion threshold. Smooth non-affine curvature with D below its variation
  radius has eta_D=O(D/R) and is cheap; to meet the threshold the velocity field
  must contain broadband variation on scales smaller than the bank,
  equivalently a supercritical spatial residual. That surviving branch is not a
  generic custody tax: it is a Reynolds-edge/producer-suppression branch, a
  smaller-scale crowd/cascade construction branch, or the existing
  fixed-density compensator/residue problem. Follow-up supercritical residual
  scale split prices an active length ell=theta D on volume fraction phi:
  E_res/E_prod ~ phi eta^2 theta^2. At eta~beta^(-4/5), coherent moderate
  residuals with phi theta^2 >= c beta^(8/5) are order-one payers; q=4/5
  hiding requires phi theta^2 <= C beta^(12/5), hence a fine/sparse cascade
  and a strengthened Reynolds edge.
---

# Overlap bath: non-affine transport threshold obstruction

## 1. Kill question

The affine-transport note prices same-fluid custody when the pressure bank is
carried by a bounded incompressible affine producer frame. The remaining phrase
is non-affine or broadband transport.

The kill question is whether ordinary non-affine motion of the realized fluid
restores an order-one pressure-service payer.

The checked answer is no. It becomes order one only at the same reciprocal beta
threshold as the fast temporal tracking row.

## 2. Subtract the affine frame

On the pressure-bank scale \(D\), write the producer velocity near the carried
station \(X(t)\) as
\[
  u_p(t,X+y)=B(t)y+r(t,y),
  \qquad \operatorname{tr}B=0,
  \tag{NAT.1}
\]
with
\[
  r(t,0)=0,
  \qquad
  \nabla r(t,0)=0.
  \tag{NAT.2}
\]

The affine part \(B(t)y\) is already priced. Define the residual gradient
variation on the bank by
\[
  \delta_D(t):=
  \sup_{|y|\lesssim D}|\nabla r(t,y)|,
  \qquad
  \eta_D(t):={\delta_D(t)\over s}.
  \tag{NAT.3}
\]

By the mean-value bound,
\[
  |r(t,y)|\lesssim \delta_DD
  \qquad (|y|\lesssim D).
  \tag{NAT.4}
\]

## 3. Residual transport work

Let \(v_b\) be the finite pressure-service bank. Its energy is
\[
  E_{\rm bank}\sim |K|D^5.
  \tag{NAT.5}
\]

The residual velocity enters the bank equation through transport, stretching,
and the incompressibility projection:
\[
  r\cdot\nabla v_b,
  \qquad
  (\nabla r)v_b,
  \qquad
  \text{Leray/pressure correction}.
  \tag{NAT.6}
\]

Because \(|r|\lesssim\delta_DD\) and \(|\nabla v_b|\sim |v_b|/D\), each term
has operator size at most \(\delta_D\) on the bank. Thus the residual work
power satisfies
\[
  P_{\rm na}
  \lesssim
  \delta_D E_{\rm bank}
  \lesssim
  \delta_D |K|D^5.
  \tag{NAT.7}
\]

Over one producer clock \(s^{-1}\),
\[
  W_{\rm na}
  \lesssim
  {\delta_D\over s}|K|D^5
  =
  \eta_D|K|D^5.
  \tag{NAT.8}
\]

The induced Hessian tracking has the same scale: the residual frame changes the
bank's supplied tensor at relative rate \(O(\delta_D)\), so the fixed-bank
tracking estimate gives
\[
  W_{\rm track,na}
  \lesssim
  \eta_D |K|D^5.
  \tag{NAT.9}
\]

## 4. Overlap substitution

In the overlap pressure row,
\[
  |K|\sim s^2\beta^{4/5},
  \qquad
  E_{\rm prod}(D)\sim s^2D^5.
  \tag{NAT.10}
\]

Therefore
\[
  {W_{\rm na}+W_{\rm track,na}\over E_{\rm prod}(D)}
  \lesssim
  \eta_D\beta^{4/5}.
  \tag{NAT.11}
\]

A fixed order-one payer requires
\[
  \eta_D
  =
  {\delta_D\over s}
  \gtrsim
  \beta^{-4/5}.
  \tag{NAT.12}
\]

This is the spatial version of the fast-motion threshold.

## 5. Smooth curvature reading

If the producer gradient varies on a smooth curvature radius \(R\), then
\[
  \delta_D\lesssim s{D\over R},
  \qquad
  \eta_D\lesssim {D\over R}.
  \tag{NAT.13}
\]

For a genuine subcell \(D\lesssim R\), (NAT.11) stays inside the existing
vanishing pressure row. To make non-affine transport order one, one would need
\[
  {D\over R}\gtrsim \beta^{-4/5}.
  \tag{NAT.14}
\]

Since \(\beta\ll1\), this means the pressure bank contains many variation
lengths of the producer field. That is not smooth curvature custody; it is a
broadband field overlapping the bank.

The earlier curvature note has a stricter service-shape condition
\[
  {D\over R}\lesssim\beta^{2/5}
  \tag{NAT.15}
\]
for keeping the curvature cross Hessian inside \(H\). This note records a
different fact: even when that service witness has to be corrected, spatial
non-affine transport itself does not become an order-one payer until the much
larger threshold (NAT.12).

## 6. What this kills

This kills the shortcut
\[
  \text{non-affine same-fluid custody}
  \Rightarrow
  \text{order-one pressure payer}.
  \tag{NAT.16}
\]

After the affine frame is subtracted, ordinary residual variation costs only
\[
  \eta_D|K|D^5.
  \tag{NAT.17}
\]

With \(\eta_D=O(1)\), that is still
\[
  \beta^{4/5}E_{\rm prod}.
  \tag{NAT.18}
\]

## 7. What remains

This is not a construction of the overlap bath and not an exclusion of a
broadband crowd.

The remaining non-affine/broadband branch is now typed:

- supercritical spatial residual, now split by active scale and support:
  coherent moderate residual pays order-one energy, while q=4/5 hiding needs
  \(\phi(\ell/D)^2\lesssim\beta^{12/5}\);
- Reynolds-edge or producer-suppression bridge for such residuals at scale
  \(D\);
- fine/sparse smaller-scale crowd/cascade construction, if the residual is a
  real high-Reynolds broadband field rather than a tax;
- fixed-density compensator/residue, if an order-one retained tax is demanded;
- or construction/exclusion of a summability-valid dynamic pressure bath.

## 8. Four-sentence result

Subtract the affine producer frame and measure the remaining gradient variation
across the pressure bank by \(\delta_D\). Residual transport, projection, and
Hessian tracking cost
\[
  W_{\rm na}\lesssim(\delta_D/s)|K|D^5,
\]
so in the overlap row the tax density is only
\[
  (\delta_D/s)\beta^{4/5}.
\]
An order-one payer therefore requires the supercritical spatial threshold
\(\delta_D/s\gtrsim\beta^{-4/5}\). Ordinary smooth non-affine custody is still
cheap; the surviving broadband branch is a Reynolds-edge/cascade/construction
problem, not a generic pressure-bank transport tax.
