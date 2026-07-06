---
theorem_id: forward-gold-wkb-envelope-stress-defect-split-20260706
status: strict-reduction-wkb-modulation-leaves-macroscopic-reynolds-stress
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
  - WKBModulationCertificateBurden.ACTUAL-NS
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBEnvelopeStress.NULL-OR-CERTIFIED
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-beltrami-bath-model-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
completion_truth: >-
  Strict reduction only. Once the constant Beltrami shell cell is localized
  or modulated, high frequency can remove the oscillatory part but it does not
  remove the averaged envelope stress. A packet of the form
  A(x,t)b(lambda x) with zero mean carrier b has weak quadratic limit
  A^2 <b tensor b>. Therefore an actual Navier-Stokes WKB bath must satisfy a
  macroscopic Reynolds-stress gate: the envelope covariance must have
  zero Leray-projected divergence with compatible pressure service, be carried
  as a legal certificate, or route to actual-law / ancestry / cover / tower
  failure. This note proves no such nullity, no legal carriage theorem, no
  WKB construction or exclusion, no W1 repair, no F4/F5 pass, and no MPP
  closure.
---

# WKB modulation leaves an envelope Reynolds stress

## 1. Object

The constant Beltrami bath note separates the model-cell algebra from the
actual Navier-Stokes bath. This note identifies the first actual-NS gate after
that separation.

A high-frequency Beltrami carrier can be locally neutral, but once it is
localized or modulated the weak quadratic limit contains an averaged covariance
stress. That stress is macroscopic. It does not disappear as the carrier
frequency tends to infinity.

## 2. The model calculation

Let \(b\) be a smooth periodic, divergence-free, zero-mean Beltrami carrier:
\[
  \nabla_y\cdot b=0,
  \qquad
  \nabla_y\times b=b,
  \qquad
  \langle b\rangle=0.
  \tag{ESD.1}
\]

Let \(A=A(x,t)\) be a smooth envelope and set, at frequency \(\lambda\),
\[
  w_\lambda(x,t)=A(x,t)b(\lambda x).
  \tag{ESD.2}
\]

Add the standard Hodge corrector if needed to make the field exactly
divergence-free; its size is lower order in the WKB regime and does not change
the leading weak quadratic limit.

Then
\[
  w_\lambda\rightharpoonup0,
  \tag{ESD.3}
\]
while
\[
  w_\lambda\otimes w_\lambda
  \rightharpoonup
  A^2 C_b,
  \qquad
  C_b:=\langle b\otimes b\rangle.
  \tag{ESD.4}
\]

For a same-helicity shell or a positive angular mixture, \(C_b\) is a positive
semidefinite covariance matrix. Its scalar part can be absorbed into pressure,
but its anisotropic part is the pressure-service shape.

Thus the leading high-frequency passage is not
\[
  w_\lambda\otimes w_\lambda \to 0.
  \tag{ESD.5}
\]
It is
\[
  w_\lambda\otimes w_\lambda
  \to
  R_{\rm env}:=A^2C_b.
  \tag{ESD.6}
\]

The oscillations disappear; the envelope stress remains.

## 3. Actual-law gate

Insert such a packet into an actual fixed-viscosity Navier-Stokes sequence. In
the weak limit, the pressure-law certificate note gives
\[
  \partial_t u+\operatorname{div}(u\otimes u)+\nabla p-\nu\Delta u
  =
  -\operatorname{div}R_{\rm env}
  \tag{ESD.7}
\]
for the envelope stress, plus lower-order or routed terms.

The ordinary Navier-Stokes velocity law is recovered only when
\[
  \mathbb P\,\operatorname{div}R_{\rm env}=0
  \tag{ESD.8}
\]
with the pressure-service coordinate adjusted consistently, or when
\(R_{\rm env}\) is legally carried as a certificate.

So high frequency has done only one job: it has produced a clean macroscopic
stress to test. It has not solved the actual-law row.

## 4. Localized anisotropic single-shape case

For a single anisotropic Beltrami pressure shape,
\[
  C_b=cI+\alpha Q_n,
  \qquad
  Q_n={1\over3}I-n\otimes n,
  \qquad
  \alpha\ne0,
  \tag{ESD.9}
\]
the trace-free part of \(R_{\rm env}\) is
\[
  A^2\alpha Q_n.
  \tag{ESD.10}
\]

When \(A^2\) is compactly localized and nonzero, the localized anisotropic
obstruction applies:
\[
  \mathbb P\,\operatorname{div}(A^2Q_n)\ne0
  \tag{ESD.11}
\]
unless the shape is scalar or the localization is trivial in the sense already
excluded there.

Therefore a single localized active Beltrami shape is not an admitted
Navier-Stokes pressure service. It must be canceled by other stresses, carried
as a certificate, or routed to actual-law/tower failure.

## 5. Multi-cell cancellation branch

For a near-uniform many-cell bath, the envelope stress has the form
\[
  R_{\rm env}
  =
  \sum_a A_a^2 C_{b_a}.
  \tag{ESD.12}
\]

The Reynolds-null characterization says the cancellation branch is exact:
\[
  \mathbb P\,\operatorname{div}R_{\rm env}=0
  \quad\Longleftrightarrow\quad
  R_{\rm env}=qI+S,
  \qquad
  \operatorname{div}S=0.
  \tag{ESD.13}
\]

Thus "many-cell cancellation" is not an informal refuge. It means the
envelope covariance has landed in the Leray-null stress class, with the scalar
part absorbed into pressure and the divergence-free tensor part still present
as a certificate/readout for the other rows.

Because \(R_{\rm env}\) comes from velocity covariance, it is positive
semidefinite. Any nonzero trace-free null component therefore requires positive
trace ballast:
\[
  \mu_R={1\over2}\operatorname{tr}R_{\rm env}.
  \tag{ESD.14}
\]
That trace energy must lift to cover, ancestry, and tower certificates or
route to the corresponding Pack/Part face failure.

## 6. Reduced live burden

The actual WKB bath has now been reduced one step further. After the constant
Beltrami cell and oscillatory WKB passage are separated, the live actual-NS
modulation gate is:
\[
\begin{array}{l}
\text{either }R_{\rm env}=A^2C_b\text{ or }\sum_a A_a^2C_{b_a}
\text{ is Leray-null with compatible pressure service,}\\
\text{or }R_{\rm env}\text{ is legally carried as a same-solution
certificate through law, ancestry, cover, and tower,}\\
\text{or the first failed certificate is a Pack/Part-facing limit-of-class
failure.}
\end{array}
\tag{ESD.15}
\]

This is smaller than "construct or exclude the WKB bath." It is the
modulation/pressure-law subgate of that construction/exclusion problem.

## 7. Four-sentence result

Localizing a Beltrami WKB carrier does not make its nonlinear term vanish in
the weak limit; it produces the averaged envelope stress \(A^2\langle
b\otimes b\rangle\). The high-frequency oscillations disappear, but that
macroscopic Reynolds stress remains in the Navier-Stokes law. A single
localized anisotropic Beltrami shape has nonzero Leray force; a many-cell bath
must land in the exact null class \(qI+S\), carry the stress as a legal
certificate, or fail a law/ancestry/cover/tower row. This is a strict
modulation reduction, not a WKB construction or exclusion.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
