---
theorem_id: forward-gold-overlap-bath-supercritical-residual-scale-split-20260706
status: strict-reduction-supercritical-residual-must-be-coherent-payer-or-fine-sparse-cascade
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - SupercriticalResidual.ScaleSplit
  - CoherentModerateResidual.ORDER-ONE-PAYER
  - FineSparseResidual.CASCADE-OR-REYNOLDS-EDGE
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-nonaffine-transport-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-subcell-reynolds-threshold-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-bath-recursion-summability-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
completion_truth: >-
  Strict reduction and scale split, not a broadband construction, not a
  Reynolds-edge bridge, not a dense-crowd theorem, and not a confinement
  decision. The non-affine transport threshold note says an order-one
  transport payer requires eta=delta_D/s >= c beta^(-4/5). This note asks what
  such a supercritical residual costs if it is realized by active length
  ell=theta D on volume fraction phi of the pressure bank. The residual kinetic
  energy on the bank is E_res ~ phi delta_D^2 ell^2 D^3, hence
  E_res/E_prod(D) ~ phi eta^2 theta^2. At the threshold eta=beta^(-4/5), a
  coherent moderate residual with phi theta^2 >= c beta^(8/5) already carries
  order-one producer-scale energy. To remain within the q=4/5 pressure row it
  must satisfy phi theta^2 <= C beta^(12/5); in the coherent phi~1 case this
  forces ell/D <= C beta^(6/5). Thus a nonpaying supercritical residual is not
  a generic broadband field: it is either very fine, very sparse, or both. Its
  own Reynolds number is Re_res=delta_D ell^2/nu=eta Re_D theta^2; at the
  threshold, high-Re actuation needs Re_D theta^2 >> beta^(4/5), and q=4/5
  coherent hiding at theta<=beta^(6/5) needs at least Re_D >> beta^(-8/5).
  If the same residual must persist for one producer clock, the stronger
  condition is Re_D theta^2 >> 1, hence Re_D >> beta^(-12/5) at the coherent
  q-row cutoff. Therefore the surviving branch is narrowed to fine/sparse
  high-Re cascade construction, strengthened Reynolds edge, fixed-density
  compensator/residue, or exclusion.
---

# Overlap bath: supercritical residual scale split

## 1. Kill question

The non-affine transport threshold note leaves a typed branch:
\[
  {\delta_D\over s}\gtrsim\beta^{-4/5}.
  \tag{SRS.1}
\]

That says ordinary non-affine custody is cheap, and only a supercritical
spatial residual can be an order-one transport payer.

The kill question here is whether such a residual can still be a cheap,
generic broadband field on the pressure-bank scale.

The checked answer is no. A coherent moderate-scale residual already pays; a
cheap residual has to hide in fine scale, sparse support, or both.

## 2. Active length and support fraction

Let the pressure bank occupy scale \(D\), producer strain be \(s\), and
\[
  \eta:={\delta_D\over s}.
  \tag{SRS.2}
\]

Assume the affine-subtracted residual is realized by active length
\[
  \ell=\theta D,
  \qquad 0<\theta\le1,
  \tag{SRS.3}
\]
on volume fraction \(\phi\in(0,1]\) of the bank.

At gradient size \(\delta_D\), the residual velocity amplitude on that length
is
\[
  U_{\rm res}\sim\delta_D\ell.
  \tag{SRS.4}
\]

Therefore its kinetic energy inside the bank is
\[
  E_{\rm res}
  \sim
  \phi D^3\,\delta_D^2\ell^2.
  \tag{SRS.5}
\]

The producer currency at the bank scale is
\[
  E_{\rm prod}(D)\sim s^2D^5.
  \tag{SRS.6}
\]

Thus
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\,\eta^2\theta^2.
  \tag{SRS.7}
\]

This is the scale split.

## 3. Consequence at the supercritical threshold

At the threshold
\[
  \eta\sim\beta^{-4/5},
  \tag{SRS.8}
\]
the residual energy ratio becomes
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \sim
  \phi\,\theta^2\,\beta^{-8/5}.
  \tag{SRS.9}
\]

So a fixed order-one energy payer is already present whenever
\[
  \phi\theta^2\gtrsim\beta^{8/5}.
  \tag{SRS.10}
\]

In the coherent case \(\phi\sim1\), this is
\[
  {\ell\over D}\gtrsim\beta^{4/5}.
  \tag{SRS.11}
\]

Therefore a supercritical residual at moderate coherent scale cannot be the
cheap overlap-bath evasion. It already supplies a producer-scale energy payer.

## 4. What it takes to stay in the q=4/5 pressure row

To stay no larger than the existing pressure-service row,
\[
  {E_{\rm res}\over E_{\rm prod}(D)}
  \lesssim
  \beta^{4/5},
  \tag{SRS.12}
\]
one needs, using (SRS.9),
\[
  \phi\theta^2
  \lesssim
  \beta^{12/5}.
  \tag{SRS.13}
\]

In the coherent case \(\phi\sim1\), this forces
\[
  {\ell\over D}\lesssim\beta^{6/5}.
  \tag{SRS.14}
\]

Thus a supercritical residual that remains as cheap as the pressure row has to
be much finer than the pressure bank, or sparse enough that
\(\phi\theta^2\) falls below \(\beta^{12/5}\).

The intermediate region
\[
  \beta^{12/5}\lesssim \phi\theta^2\lesssim\beta^{8/5}
  \tag{SRS.15}
\]
does not give a fixed constant, but it is no longer the \(q=4/5\) pressure row.
It is a stronger vanishing row that must be entered into the bath-recursion
criterion with its own exponent.

## 5. Reynolds thresholds for hiding

The residual's own Reynolds number on scale \(\ell\) is
\[
  \operatorname{Re}_{\rm res}
  :=
  {\delta_D\ell^2\over\nu}
  =
  \eta\,\operatorname{Re}_D\,\theta^2,
  \qquad
  \operatorname{Re}_D:={sD^2\over\nu}.
  \tag{SRS.16}
\]

At the supercritical threshold \(\eta\sim\beta^{-4/5}\),
\[
  \operatorname{Re}_{\rm res}
  \sim
  \operatorname{Re}_D\,\theta^2\beta^{-4/5}.
  \tag{SRS.17}
\]

For the residual to act before viscosity erases it on its own clock, one needs
\[
  \operatorname{Re}_D\theta^2\gg\beta^{4/5}.
  \tag{SRS.18}
\]

At the coherent \(q=4/5\) hiding cutoff \(\theta\lesssim\beta^{6/5}\), this
requires at least
\[
  \operatorname{Re}_D\gg\beta^{-8/5}.
  \tag{SRS.19}
\]

If the same residual structure must persist for a full producer clock, the
condition is stronger:
\[
  {s\ell^2\over\nu}
  =
  \operatorname{Re}_D\theta^2
  \gg1.
  \tag{SRS.20}
\]

At \(\theta\lesssim\beta^{6/5}\), this becomes
\[
  \operatorname{Re}_D\gg\beta^{-12/5}.
  \tag{SRS.21}
\]

So the cheap supercritical residual is not merely "broadband." It is a
fine/sparse high-Reynolds cascade demand, or it falls into a strengthened
Reynolds edge.

## 6. What this kills

This kills the shortcut
\[
  \text{supercritical spatial residual}
  \Rightarrow
  \text{cheap generic broadband survivor}.
  \tag{SRS.22}
\]

A supercritical residual at coherent length
\[
  \ell\gtrsim D\beta^{4/5}
  \tag{SRS.23}
\]
already pays order-one energy. To stay at the pressure row in coherent support,
it must retreat to
\[
  \ell\lesssim D\beta^{6/5},
  \tag{SRS.24}
\]
and then it faces the stronger Reynolds thresholds above.

## 7. What remains

This is not a construction and not an exclusion. It leaves a finite fork:

- coherent moderate-scale supercritical residual: order-one payer;
- intermediate scale/support: stronger-than-\(q=4/5\) vanishing row for the
  bath-recursion ledger;
- fine or sparse \(q=4/5\) hiding: high-Re cascade branch with
  \(\operatorname{Re}_{\rm res}\gg1\), and with producer-clock persistence
  requiring the stronger \(\operatorname{Re}_D\theta^2\gg1\);
- Reynolds-edge failure if those high-Re conditions are not met;
- construction/exclusion of such a fine/sparse dynamic pressure bath.

## 8. Four-sentence result

A supercritical residual has to be paid by its active scale. If it has gradient
\(\delta_D\), active length \(\ell=\theta D\), and support fraction \(\phi\),
then
\[
  {E_{\rm res}\over E_{\rm prod}(D)}\sim\phi(\delta_D/s)^2\theta^2.
\]
At the threshold \(\delta_D/s\sim\beta^{-4/5}\), coherent residuals with
\(\ell\gtrsim D\beta^{4/5}\) already pay order-one energy, while staying inside
the \(q=4/5\) pressure row forces \(\phi\theta^2\lesssim\beta^{12/5}\). Thus
the surviving no-payer branch is no longer generic broadband: it is a
fine/sparse high-Reynolds cascade or a Reynolds-edge failure.
