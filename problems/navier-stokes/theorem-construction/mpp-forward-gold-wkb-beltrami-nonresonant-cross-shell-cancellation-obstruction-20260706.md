---
theorem_id: forward-gold-wkb-beltrami-nonresonant-cross-shell-cancellation-obstruction-20260706
status: exact-nonresonant-cross-shell-beltrami-cancellation-obstruction
later_supersession: >-
  Same-two-shell finite resonant same-helicity Beltrami cancellation is closed
  by
  mpp-forward-gold-wkb-beltrami-finite-max-alignment-obstruction-20260706.
  The radius-free finite claim was scope-corrected by
  mpp-forward-gold-wkb-beltrami-max-alignment-radius-scope-correction-20260706.
  Multiradius resonant graphs and infinite/dense WKB support remain outside
  this same-two-shell algebraic exclusion.
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - BroadbandBeltramiBath.CrossShellCancellationCertificate
  - SignedPairDissociatedBeltramiCloud.NOT-NEUTRAL
  - ResonantFrequencyCrowd.REMAINING-CANCELLATION-DOOR
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-beltrami-bandwidth-mismatch-turnover-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-beltrami-bath-model-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-whole-space-beltrami-eigenfield-obstruction-20260706.md
completion_truth: >-
  Exact finite-mode nonresonant obstruction only. For two noncollinear helical
  Beltrami Fourier modes on different curl eigenvalue shells, the
  eigenvalue-mismatch term at the signed output frequency has nonzero Leray
  projection. In coordinates k=K e_1 and
  l=L(cos theta e_1+sin theta e_2), same-helicity polarizations give
  h_k x h_l=(1/2)(i sigma(1-cos theta)e_1-i sigma sin theta e_2
  +sin theta e_3), while k+l lies in the e_1,e_2 plane; hence the projected
  output is nonzero whenever sin theta is nonzero. Therefore a signed-pair
  dissociated broadband Beltrami cloud cannot cancel cross-shell turnover
  frequency by frequency. Any exact cross-shell cancellation certificate must
  use additive resonances: multiple active signed pairs landing on the same
  output frequency, or a degenerate same-shell/collinear branch. This proves no
  quantitative lower bound for resonant crowds, no exclusion of a
  cancellation-engineered WKB bath, no same-fluid custody theorem, no
  confinement constant, and no MPP closure.
---

# Nonresonant Beltrami cross-shell outputs cannot cancel

## 1. Question

The bandwidth-mismatch note proved that a Beltrami sum
\[
  u=\sum_a u_a,
  \qquad
  \nabla\times u_a=\lambda_a u_a,
  \tag{NRB.1}
\]
has projected nonlinear mismatch
\[
  \mathbb P((u\cdot\nabla)u)
  =
  -\mathbb P\sum_{a<b}(\lambda_b-\lambda_a)u_a\times u_b .
  \tag{NRB.2}
\]

The open algebraic escape was cancellation among the cross-shell terms. This
note checks the nonresonant finite-mode case:
\[
  \text{Can an isolated cross-shell output frequency cancel by itself?}
  \tag{NRB.3}
\]

The answer is no.

## 2. Two-mode helical output

By rotation, take
\[
  k=K e_1,
  \qquad
  l=L(\cos\theta\,e_1+\sin\theta\,e_2),
  \qquad
  \sin\theta\ne0.
  \tag{NRB.4}
\]

For one helicity sign \(\sigma=\pm1\), use normalized polarizations
\[
  h_k={1\over\sqrt2}(e_2+i\sigma e_3),
  \tag{NRB.5}
\]
and
\[
  h_l={1\over\sqrt2}(-\sin\theta\,e_1+\cos\theta\,e_2+i\sigma e_3).
  \tag{NRB.6}
\]

Then
\[
  i k\times h_k=\sigma K h_k,
  \qquad
  i l\times h_l=\sigma L h_l.
  \tag{NRB.7}
\]

The cross product is
\[
  h_k\times h_l
  =
  {1\over2}\left(
    i\sigma(1-\cos\theta)e_1
    -i\sigma\sin\theta\,e_2
    +\sin\theta\,e_3
  \right).
  \tag{NRB.8}
\]

The output wavevector
\[
  m=k+l
  =
  (K+L\cos\theta)e_1+L\sin\theta\,e_2
  \tag{NRB.9}
\]
lies in the \(e_1,e_2\)-plane. The vector \(h_k\times h_l\) has an
\(e_3\)-component equal to \(\sin\theta/2\). Hence
\[
  \mathbb P_m(h_k\times h_l)\ne0
  \qquad
  \text{whenever } \sin\theta\ne0 .
  \tag{NRB.10}
\]

If the modes lie on different curl eigenvalue shells, \(K\ne L\), then the
mismatch coefficient \(\sigma(L-K)\) is nonzero. Thus the projected nonlinear
output at \(m\) is nonzero.

The same computation applies to signed outputs \(k-l\), \(-k+l\), and
\(-k-l\) in a real field after replacing a mode by its conjugate. Noncollinear
signed pairs still have a normal component not parallel to the signed output
wavevector.

## 3. Dissociated finite clouds

Call a finite Beltrami Fourier cloud signed-pair dissociated when every active
nonzero signed sum
\[
  \varepsilon k+\eta l,
  \qquad
  \varepsilon,\eta\in\{\pm1\},
  \tag{NRB.11}
\]
coming from a cross-shell noncollinear pair is produced by exactly one
unordered active signed pair.

At such an isolated output frequency, no other pair contributes to the same
Fourier coefficient. By Section 2, that coefficient has nonzero Leray
projection whenever both amplitudes are nonzero and the shells differ.

Therefore exact projected neutrality of a signed-pair dissociated broadband
Beltrami cloud forces every active cross-shell pair to be degenerate:
\[
  \text{same shell, collinear, or zero amplitude.}
  \tag{NRB.12}
\]

A genuinely broadband and directionally spread dissociated cloud is not an
exact neutralizer.

## 4. Consequence for the cancellation certificate

The cross-shell cancellation certificate cannot be local to one pair. Isolated
cross-shell outputs ring by themselves. Exact cancellation must use at least
one of the following:
\[
\begin{array}{ll}
\text{same curl eigenvalue} &\Rightarrow \text{the one-shell model cell},\\[1mm]
\text{collinear pairs} &\Rightarrow \text{one-dimensional/degenerate angular branch},\\[1mm]
\text{additive resonances} &\Rightarrow
  \text{multiple signed pairs landing on the same output frequency}.
\end{array}
  \tag{NRB.13}
\]

So radial broadening cannot hide inside a generic broadband cloud. The only
remaining exact-cancellation door is a resonant frequency crowd whose pair
outputs collide and cancel as a coupled Fourier system.

## 5. Four-sentence result

Two noncollinear same-helicity Beltrami Fourier modes on different curl
eigenvalue shells produce a nonzero projected output at their signed sum
frequency. In coordinates, \(h_k\times h_l\) has a normal component
\(\sin\theta/2\), while the output wavevector lies in the \(k,l\)-plane, so
the Leray projection cannot vanish. Hence a signed-pair dissociated broadband
Beltrami cloud cannot cancel the eigenvalue-gap turnover frequency by
frequency. Cross-shell cancellation, if it exists, must be a resonant crowd
effect, not a generic broadband one.

## 6. State

This decides only the nonresonant finite-mode cancellation subcase.

It proves no quantitative lower bound for resonant frequency crowds, no
exclusion of a cancellation-engineered WKB bath, no same-fluid material
custody theorem, no dense-crowd theorem, no confinement constant, and no MPP
closure.
