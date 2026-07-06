---
theorem_id: forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706
status: strict-reduction-beltrami-branch-requires-many-cell-wkb-or-cutoff-defect-payment
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / overlap bath exact matrix
target_object:
  - BeltramiPocket.LocalizationDefect.SPLIT
  - FewCellPocket.CUTOFF-DEFECT-OR-NEW-CANCELLATION
  - ManyCellWKBBranch.REMAINS
  - LocalPressureHessianMomentMatching.POSSIBLE
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-fine-sparse-beltrami-self-drift-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-supercritical-residual-scale-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-reynolds-edge-refresh-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-codex-overlap-bath-survivor-front-classification-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-schwartz-template-bank-cross-term-correction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-angular-pressure-moment-row-distance-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-small-moment-finite-angular-cloud-square-charge-20260706.md
completion_truth: >-
  Strict reduction only. The Beltrami self-drift obstruction kills the shortcut
  that fast fine-scale turnover automatically evicts the persistent high-Re
  residual. This note asks what compact localization does to that neutralizer.
  For a Beltrami carrier of wavelength ell inside an envelope of diameter L,
  the Beltrami defect is O(A/L) while the carrier gradient is O(A/ell).
  The projected self-drift left by cutoff/Hodge localization therefore has rate
  O((A/ell)(ell/L)). At the supercritical threshold A/ell~s beta^(-4/5),
  Beltrami neutrality can remain below order-one producer-clock drift only in
  the many-cell regime ell/L <= C beta^(4/5), equivalently
  L/ell >= c beta^(-4/5). In support-fraction variables L=psi D and
  phi~psi^3, this is phi >= c theta^3 beta^(-12/5). Few-cell or too-sparse
  pockets do not inherit the exact Beltrami cancellation; they must pay a
  cutoff-defect drift or prove a new cancellation. The local pressure-Hessian
  moment-matching algebra is not the obstruction: separated or WKB-averaged
  Beltrami cells generate the cone of trace-free Hessians with nonnegative
  cell weights. This is a cell-level mixture statement, not the false
  co-centered additive rotated-bank identity corrected in the Schwartz
  template cross-term note. The same calculation gives the exact total-weight
  cone: for \(K\in{\rm Sym}_0(3)\), the least positive Beltrami cell weight
  needed to realize \(K\) is \(W_{\min}=3\lambda_{\max}(K)\), and the associated
  covariance cone is precisely \(C\ge0,\ \lambda_{\max}(C)\le
  \operatorname{tr}C/2\). Thus arbitrary PSD Reynolds ballast is too wide for
  same-helicity Beltrami covariance, but beta-small pressure moments remain
  inside the cone with small anisotropic weight. Thus the surviving no-payer
  branch is narrowed to a many-cell WKB Beltrami bath with same-fluid coupling
  and localization/Hodge errors controlled, or to a new cutoff-defect
  cancellation theorem. This note proves no construction, no exclusion of the
  many-cell branch, no Gate-8 allocation, no dense-crowd theorem, and no MPP
  closure.
---

# Beltrami localization cell-count split

## 1. Kill question

The previous Beltrami note shows that fast fine-scale turnover does not by
itself evict a persistent high-Re residual. Exact Beltrami fields satisfy
\[
  \mathbb P((b\cdot\nabla)b)=0.
  \tag{BLCS.1}
\]

The next kill question is whether compact localization immediately restores an
order-one self-drift payer.

The checked answer is split. Localization destroys exact Beltrami cancellation
unless the pocket contains many wavelengths. If the pocket has many wavelengths,
localization is not an automatic payer; it becomes a WKB same-fluid bath
construction problem.

## 2. Localized Beltrami ansatz

Let the carrier wavelength be
\[
  \ell=\theta D,
  \qquad
  \lambda=\ell^{-1},
  \tag{BLCS.2}
\]
and let the localization envelope have diameter
\[
  L=\psi D.
  \tag{BLCS.3}
\]

The support fraction is
\[
  \phi\sim\psi^3
  \tag{BLCS.4}
\]
for one connected pocket. Take a carrier amplitude \(A\), so the residual
gradient size is
\[
  \delta_D\sim {A\over\ell}.
  \tag{BLCS.5}
\]

The model localized field is
\[
  u_b=A\,\chi(x/L)b(\lambda x)
  \tag{BLCS.6}
\]
with the usual divergence-free Hodge correction of relative size
\[
  {1\over \lambda L}={\ell\over L}.
  \tag{BLCS.7}
\]

## 3. Beltrami defect scale

For the unlocalized carrier,
\[
  \nabla\times b(\lambda x)=\lambda b(\lambda x).
  \tag{BLCS.8}
\]

After multiplying by the envelope,
\[
  \nabla\times u_b-\lambda u_b
  =
  A\,\nabla\chi(x/L)\times b(\lambda x)
  +\hbox{Hodge correction terms}.
  \tag{BLCS.9}
\]

Thus
\[
  \left|\nabla\times u_b-\lambda u_b\right|
  \lesssim {A\over L}.
  \tag{BLCS.10}
\]

Using
\[
  (u_b\cdot\nabla)u_b
  =
  \nabla {|u_b|^2\over2}
  -
  u_b\times(\nabla\times u_b),
  \tag{BLCS.11}
\]
the projected nonlinear self-drift is controlled by the Beltrami defect:
\[
  \mathbb P((u_b\cdot\nabla)u_b)
  =
  -\mathbb P\left(u_b\times(\nabla\times u_b-\lambda u_b)\right).
  \tag{BLCS.12}
\]

Its acceleration scale is therefore
\[
  {A^2\over L}.
  \tag{BLCS.13}
\]

Relative to velocity amplitude \(A\), the residual drift rate is
\[
  r_{\rm loc}\sim {A\over L}
  =
  {\delta_D\ell\over L}.
  \tag{BLCS.14}
\]

## 4. Producer-clock consequence

At the supercritical transport threshold,
\[
  \delta_D\sim s\beta^{-4/5}.
  \tag{BLCS.15}
\]

So the localization drift over one producer clock has size
\[
  {r_{\rm loc}\over s}
  \sim
  \beta^{-4/5}{\ell\over L}.
  \tag{BLCS.16}
\]

To keep Beltrami localization below an order-one producer-clock drift, a
no-payer construction must satisfy
\[
  {\ell\over L}\lesssim \beta^{4/5}.
  \tag{BLCS.17}
\]

Equivalently,
\[
  {L\over\ell}\gtrsim \beta^{-4/5}.
  \tag{BLCS.18}
\]

Thus the pocket must contain at least
\[
  \left({L\over\ell}\right)^3
  \gtrsim
  \beta^{-12/5}
  \tag{BLCS.19}
\]
Beltrami cells.

In \((\phi,\theta)\) variables, (BLCS.17) is
\[
  {\theta\over\phi^{1/3}}\lesssim\beta^{4/5},
  \tag{BLCS.20}
\]
or
\[
  \phi\gtrsim \theta^3\beta^{-12/5}.
  \tag{BLCS.21}
\]

So a fine/sparse pocket that is too localized does not inherit the exact
Beltrami neutralization. It either pays through cutoff/Hodge self-drift or
proves a new cancellation for the cutoff-defect term (BLCS.12).

## 5. Compatibility with q-row hiding

The q-row hiding condition from the scale split is
\[
  \phi\theta^2\lesssim\beta^{12/5}.
  \tag{BLCS.22}
\]

Combining (BLCS.21) and (BLCS.22) gives a consistency condition for a
localized Beltrami no-payer branch:
\[
  \theta^3\beta^{-12/5}
  \lesssim
  \phi
  \lesssim
  \beta^{12/5}\theta^{-2}.
  \tag{BLCS.23}
\]

This interval is nonempty only if
\[
  \theta\lesssim\beta^{24/25}.
  \tag{BLCS.24}
\]

The coherent q-row cutoff \(\theta\lesssim\beta^{6/5}\) lies inside this
condition, so the branch is not killed. It is narrowed: a no-payer Beltrami
pocket has to be both fine enough and large enough in cell count.

## 6. Local pressure-Hessian moment matching

Moment matching is not the local algebraic obstruction.

The previous Beltrami example gives, after removing the irrelevant scalar trace,
the trace-free Hessian shape
\[
  Q_n={1\over3}I-n\otimes n
  \tag{BLCS.25}
\]
for some unit axis \(n\), after rotation and amplitude scaling.

Let \(K\) be any trace-free symmetric matrix. Choose \(W\) so large that
\[
  M:={W\over3}I-K
  \tag{BLCS.26}
\]
is positive semidefinite. Since \(\operatorname{tr}K=0\), one has
\[
  \operatorname{tr}M=W.
  \tag{BLCS.27}
\]

Write the spectral decomposition
\[
  M=\sum_i w_i n_i\otimes n_i,
  \qquad
  w_i\ge0,
  \qquad
  \sum_i w_i=W.
  \tag{BLCS.28}
\]

Then
\[
  K
  =
  \sum_i w_i\left({1\over3}I-n_i\otimes n_i\right).
  \tag{BLCS.29}
\]

Thus separated or WKB-averaged Beltrami pressure-Hessian cells, with
nonnegative cell weights, span every trace-free pressure Hessian at the local
algebra level.

The exact total weight needed for this span is also visible in the same display.
If
\[
  K=\sum_{i=1}^3 k_i e_i\otimes e_i,\qquad \sum_i k_i=0,
  \tag{BLCS.30}
\]
then a realization with total Beltrami weight \(W\) has weights
\[
  w_i={W\over3}-k_i .
  \tag{BLCS.31}
\]
Therefore nonnegativity is equivalent to
\[
  W\ge 3\lambda_{\max}(K),
  \tag{BLCS.32}
\]
and the least possible total anisotropic weight is
\[
  W_{\min}=3\lambda_{\max}(K)
  \tag{BLCS.33}
\]
for nonzero trace-free \(K\), with the zero case giving \(W_{\min}=0\).

The covariance version gives the exact Beltrami cone. A unit-weight circular
Beltrami cell in direction \(n\) has averaged covariance, up to the fixed
normalization,
\[
  C_n={1\over2}(I-n\otimes n),
  \tag{BLCS.34}
\]
so a positive angular mixture has
\[
  C={W\over2}I-{1\over2}M,\qquad
  M=\int n\otimes n\,d\mu(n),\qquad \operatorname{tr}M=W .
  \tag{BLCS.35}
\]
Writing the eigenvalues of \(C\) as \(c_i\), this is equivalent to
\[
  C\ge0,\qquad \lambda_{\max}(C)\le {1\over2}\operatorname{tr}C .
  \tag{BLCS.36}
\]
Conversely, if a PSD matrix \(C\) satisfies (BLCS.36) and
\(W=\operatorname{tr}C\), then \(m_i=W-2c_i\ge0\) and
\(\sum_i m_i=W\), so the spectral mixture
\[
  \sum_i m_i\,{1\over2}(I-e_i\otimes e_i)
  \tag{BLCS.37}
\]
realizes \(C\).

Thus a rank-one PSD covariance is not a same-helicity Beltrami covariance: its
top eigenvalue equals its trace, violating (BLCS.36). This does not help against
the beta-small overlap bath, because its needed trace-free pressure moment has
\(|K|=O(\beta^{4/5})\) and can be carried by \(W=O(\beta^{4/5})\) anisotropic
weight plus neutral isotropic mass, exactly as in the finite angular cloud row.

This is not the additive co-centered superposition claim that failed for the
Schwartz template bank. Here the weights are cell/mixture weights after the
local Beltrami pressure-Hessian shape has already been formed. If several
templates are placed at the same station before taking the quadratic pressure
source, the cross terms must be included; the corrected co-centered bank map is
the one in the Schwartz cross-term note.

## 7. What this kills

This kills two shortcuts.

First:
\[
  \text{compact localized Beltrami pocket}
  \Rightarrow
  \text{exact Beltrami neutrality for free}.
  \tag{BLCS.38}
\]
The cutoff defect costs unless the pocket contains at least
\(\beta^{-12/5}\) carrier cells or a new cancellation is proved.

Second:
\[
  \text{moment matching}
  \Rightarrow
  \text{local algebraic obstruction}.
  \tag{BLCS.39}
\]
At the local periodic level, trace-free Hessian moment matching is possible.
The exact covariance cone only blocks over-wide PSD covariance shortcuts such as
rank-one Reynolds ballast; it does not block the small near-isotropic Beltrami
pressure moments used by the surviving overlap bath.

## 8. What remains

The persistent high-Re branch is now typed more narrowly:

- few-cell or too-sparse Beltrami pockets: cutoff/Hodge defect payer, or a new
  defect-cancellation theorem;
- many-cell WKB Beltrami bath: still live, requiring finite-energy
  localization, same-fluid coupling to the producer, transport of the envelope,
  pressure-Hessian moment matching through the actual kernel, and Gate-8 or
  compensator routing;
- construction/exclusion of that many-cell same-fluid bath.

This is not a construction and not an exclusion. It prevents the branch from
staying hidden behind the words "localized Beltrami pocket."

## 9. Four-sentence result

Beltrami cancellation survives localization only in a many-cell regime. If a
carrier of wavelength \(\ell\) is localized in a pocket of size \(L\), the
cutoff Beltrami defect leaves projected drift at rate
\(\delta_D\ell/L\); at \(\delta_D/s\sim\beta^{-4/5}\), avoiding order-one drift
requires \(L/\ell\gtrsim\beta^{-4/5}\), hence at least
\(\beta^{-12/5}\) carrier cells. Local trace-free pressure-Hessian moment
matching is possible by rotated Beltrami cells, so the local algebra does not
kill the branch. The surviving object is a many-cell WKB Beltrami bath with
same-fluid coupling and routing still unproved, or a new cancellation of the
cutoff-defect term.
