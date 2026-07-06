---
theorem_id: forward-gold-wkb-cross-cell-gram-gap-criterion-20260706
status: exact-criterion-cross-cell-square-coercivity-is-gram-gap-or-near-null-fragmentation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / unbounded-count WKB cloud
target_object:
  - PDEUncertaintyCrossCellSquareCoercivity.A
  - CrossCellWKBGramGap.A
  - AtomicWKBUnboundedCountCloudBranch
  - AtomicWKBFragmentationDefect.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-wkb-cloud-square-coercivity-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-many-cell-wkb-quantization-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-psd-ballast-is-not-gram-gap-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
completion_truth: >-
  Exact criterion and countermodel only. The earlier unbounded-cloud direct
  test killed the same-cell square reserve \(\sum_b A_{j,b}^2\). This note
  types the remaining cross-cell rescue. Any cross-cell square coercivity claim
  has the form \(Q_j(a)=a^TG_ja\ge c(\sum_b a_b)^2\) on the admissible
  positive WKB cloud cone, after the selected scalar moment has been
  normalized. Such a claim is exactly a uniform positive Gram gap:
  \(\inf_{\sum a_b=1,\ a\in\mathcal C_j}a^TG_ja\ge c\). If that infimum tends
  to zero, near-minimizing clouds retain total selected moment while the
  cross-cell square charge tends to zero, so the proposed cross-cell theorem
  fails by near-null fragmentation. Orthogonality, diagonal square sums, finite
  range, unsigned packet counting, or the raw mean-zero pressure kernel do not
  supply this gap. The pressure-kernel zero-mode follow-up proves that a
  translation-invariant mean-zero pressure/Calderon-Zygmund kernel has the
  uniform positive cloud in its zero mode: the kernel-only quadratic charge is
  zero, with bounded diagonal corrections vanishing like 1/M. Only an actual
  Navier-Stokes interaction/uncertainty Gram gap tied to admissible-cone
  restrictions, same-packet identity, and legal certificates can remain. The
  PSD-ballast follow-up also blocks the ballast-only shortcut: isotropic PSD
  Reynolds trace ballast can carry normalized positive unresolved kinetic
  energy while its trace-free pressure/Hessian charge is zero, and a diagonal
  trace-square reserve still fragments like 1/M. The anti-equidistribution
  follow-up proves the hidden necessary condition: for a mean-zero cross-cell
  form with bounded local corrections, any admissible cone containing
  near-uniform legal positive clouds has zero Gram infimum. A surviving gap
  must supply either a genuine positive uniform-mode charge or a quantitative
  theorem that legal same-packet WKB clouds cannot approach the uniform zero
  mode. The near-uniform local-cloud follow-up shows that local
  translation-invariant WKB legality and local moment matching cannot supply
  that anti-equidistribution theorem: periodic replication preserves selected
  moment while diagonal and mean-zero/local Gram charges vanish like 1/M. Thus
  any surviving gap must be genuinely global same-packet/certificate geometry,
  a positive uniform-mode charge, or construction/exclusion. This
  proves no such PDE gap, no WKB construction or exclusion, no confinement
  constant, and no MPP closure.
---

# WKB cross-cell square coercivity: Gram-gap criterion

## 1. Object

The unbounded-count WKB cloud already has positive total selected moment:
\[
  A_j(a):=\sum_{b=1}^{M_j}a_b\ge c_0>0,
  \qquad
  a_b\ge0,
  \tag{CG.1}
\]
with \(M_j\to\infty\). The direct same-cell square reserve is false, because
uniform fragmentation makes
\[
  \sum_ba_b^2\to0
  \tag{CG.2}
\]
while preserving \(A_j(a)\).

The remaining square rescue must therefore use cross-cell interaction. In
finite packet coordinates it has the shape
\[
  Q_j(a):=\sum_{b,b'=1}^{M_j}G_j(b,b')a_ba_{b'}
  =
  a^TG_ja,
  \tag{CG.3}
\]
where \(G_j\) is the actual interaction Gram matrix produced by the field
coordinate being used: uncertainty cells, source-square transfer, pressure
kernel interaction, legal certificate overlap, or another same-packet
quadratic form.

The question is whether this can give a count-free lower bound:
\[
  Q_j(a)\ge c\,A_j(a)^2.
  \tag{CG.4}
\]

## 2. Exact criterion

Normalize the selected cloud moment:
\[
  A_j(a)=1.
  \tag{CG.5}
\]
Let \(\mathcal C_j\subset\mathbb R_+^{M_j}\) be the admissible positive cloud
cone after all same-solution, packet, WKB-window, and service-label constraints
have been imposed.

Then (CG.4) is equivalent to
\[
  \inf_{\substack{a\in\mathcal C_j\\ A_j(a)=1}}
  a^TG_ja
  \ge c.
  \tag{CG.6}
\]

So the cross-cell theorem is not a generic square principle. It is a uniform
positive lower bound for the actual Gram form on the normalized admissible
positive cone.

This is the exact remaining object:

```text
CrossCellWKBGramGap.A
```

Statement shape:

For every admissible unbounded-count WKB cloud with retained selected moment,
the actual Navier-Stokes cross-cell interaction/certificate Gram form has a
uniform positive lower bound on the normalized positive cloud cone.

## 3. Near-null countermodel

If the Gram gap is absent, then
\[
  \inf_{\substack{a\in\mathcal C_j\\ A_j(a)=1}}
  a^TG_ja\to0.
  \tag{CG.7}
\]
Choose \(a^{(j)}\in\mathcal C_j\) with
\[
  A_j(a^{(j)})=1,
  \qquad
  (a^{(j)})^TG_ja^{(j)}\to0.
  \tag{CG.8}
\]

These clouds retain the full selected WKB moment, but their proposed cross-cell
square charge vanishes. This is the cross-cell analogue of uniform
fragmentation. It is not invisible compactness; if the phase-label measures
are tight, the compactness split produces a WKB/microlocal profile. It does
kill the proposed square-coercivity proof unless the Gram gap itself is proved.

Thus:
\[
  \boxed{
  \text{cross-cell square coercivity}
  \Longleftrightarrow
  \text{uniform Gram gap on the admissible positive cloud cone}.
  }
  \tag{CG.9}
\]

Absent that gap, retained moment plus cross-cell wording does not force a
square reserve.

## 4. What orthogonality does and does not give

Orthogonality by itself points the wrong way. If the Gram form is diagonal,
\[
  G_j=I,
  \tag{CG.10}
\]
and the cloud is uniformly fragmented,
\[
  a_b={1\over M_j},
  \tag{CG.11}
\]
then
\[
  A_j(a)=1,
  \qquad
  Q_j(a)=\sum_b{1\over M_j^2}={1\over M_j}\to0.
  \tag{CG.12}
\]

The same decay holds for finite-range or uniformly bounded-row interaction
kernels against uniform fragmentation. Such kernels see many small packets as
many small orthogonal deposits.

The pressure kernel alone also points the wrong way. The pressure Hessian
kernel has angular mean zero. In the kernel-only translation-invariant model,
the uniform positive cloud is the zero Fourier mode, so
\[
  \int\!\!\int K(x-y)\,d\rho_0(x)d\rho_0(y)=0 .
  \tag{CG.12a}
\]
The finite cloud version has the same obstruction: if the pressure-kernel Gram
matrix has zero row sums, the uniform cloud \(a_b=1/M_j\) gives
\[
  a^TG_ja=0,
  \tag{CG.12b}
\]
and bounded diagonal self-cell corrections vanish like \(1/M_j\). Thus the raw
mean-zero Calderon-Zygmund kernel is not the all-to-all positive charge needed
for (CG.6).

Positive Reynolds covariance ballast is not the missing all-to-all charge
either. The isotropic PSD cloud
\[
  R_b={2a_b\over3}I,\qquad a_b={1\over M},
  \tag{CG.12c}
\]
has normalized unresolved kinetic energy
\[
  \sum_b {1\over2}\operatorname{tr}R_b=1,
  \tag{CG.12d}
\]
but its trace-free anisotropic component is zero in every cell. Hence every
selected trace-free pressure/Hessian Gram charge fed only by that component is
zero, while a diagonal trace-square reserve is again \(1/M\). Thus PSD
positivity and positive trace ballast are consumer/certificate currency, not a
standalone proof of (CG.6).

A cross-cell rescue needs a genuinely coherent positive interaction: the Gram
form must act like a positive all-to-all charge on the selected positive cone,
or the admissible cone must be restricted by a PDE uncertainty law that forbids
near-null fragmentation. That is extra Navier-Stokes structure, not a counting
fact and not a pressure-kernel-only fact.

## 5. Consequence for the unbounded WKB branch

The unbounded-count atomic cloud now has this split:
\[
\begin{array}{ll}
\text{uniform cross-cell Gram gap}
  &\Rightarrow \text{same-carrier square reserve / no-free-fragmentation},\\[1mm]
\text{near-null Gram sequence}
  &\Rightarrow \text{fragmented cloud with retained moment and no square charge},\\[1mm]
\text{tight near-null cloud}
  &\Rightarrow \text{WKB/microlocal profile admission branch},\\[1mm]
\text{nontight near-null cloud}
  &\Rightarrow \text{domain/label/rung escape}.
\end{array}
\tag{CG.13}
\]

So the live theorem cannot be phrased as "use cross-cell coercivity" without
the actual Gram gap. The missing input is now:
\[
  \text{CrossCellWKBGramGap.A beyond the raw pressure kernel}
  \quad\text{or}\quad
  \text{profile admission / construction-exclusion},
  \tag{CG.14}
\]
with PSD trace ballast kept as a routed energy/certificate branch rather than
as a Gram-gap supplier.

The anti-equidistribution follow-up sharpens the admissible-cone option. For a
mean-zero cross-cell form with \(G_ju_j=0\), \(u_j=(1/M_j,\ldots,1/M_j)\), and
\(\|G_j\|_{\ell^2\to\ell^2}\le C\),
\[
  a^TG_ja
  =
  (a-u_j)^TG_j(a-u_j)
  \le C\|a-u_j\|_2^2.
  \tag{CG.15}
\]
Bounded diagonal corrections add only
\[
  O\!\left(M_j^{-1}+\|a-u_j\|_2^2\right).
  \tag{CG.16}
\]
Thus if the legal cone contains near-uniform clouds, the Gram gap is false.
Any surviving proof must install either a positive uniform-mode charge or an
anti-equidistribution theorem for the legal WKB cone.

The near-uniform local-cloud follow-up blocks one possible source of that
anti-equidistribution. If one locally legal WKB service cell can be translated
over an \(M\)-point periodic/quadrature cloud and all copies keep the same local
legality status, then the equal-weight cloud \(a_b=1/M\) preserves total
selected moment, has diagonal square charge \(1/M\), and lies in the uniform
zero mode of every mean-zero translation-invariant cross kernel. Therefore
anti-equidistribution must come from global same-packet identity, law/ancestry/
cover/tower certificates, non-translation-invariant geometry, or
construction/exclusion; it is not a local-cell theorem.

## 6. Four-sentence result

The same-cell square reserve is already false for an unbounded WKB cloud, so
any square rescue must come from cross-cell interaction. Such a rescue is
exactly a uniform positive lower bound for the actual interaction Gram matrix
on the normalized admissible positive cloud cone. Orthogonality, finite-range
interaction, the raw mean-zero pressure kernel, PSD trace ballast, and local
translation-invariant WKB legality all admit uniform or isotropic positive
clouds with vanishing selected quadratic charge. Therefore the remaining
cross-cell branch is a real global Navier-Stokes admissibility / same-packet /
certificate Gram-gap theorem, or it falls back to profile admission, typed
escape, or construction/exclusion.

## 7. State

This note proves the exact criterion and the near-null countermodel.

It proves no `CrossCellWKBGramGap.A`, no PDE uncertainty-cell theorem, no
profile admission theorem, no WKB construction/exclusion theorem, no
confinement constant, and no MPP closure.
