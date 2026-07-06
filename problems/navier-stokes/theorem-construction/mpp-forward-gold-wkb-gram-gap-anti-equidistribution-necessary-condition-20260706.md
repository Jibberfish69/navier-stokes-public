---
theorem_id: forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706
status: strict-reduction-cross-cell-gram-gap-requires-anti-equidistribution-or-positive-uniform-mode
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - AdmissibleConeAntiEquidistribution.NECESSARY
  - NearUniformLegalCloud.Countermodel
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-psd-ballast-is-not-gram-gap-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-not-bounded-cell-count-obstruction-20260706.md
completion_truth: >-
  Strict reduction and exact obstruction only. For a normalized positive WKB
  cloud \(A(a)=\sum_b a_b=1\), let \(u_M=(1/M,\ldots,1/M)\). If the
  cross-cell pressure/certificate Gram matrix has zero row sums and bounded
  operator norm, then \(a^TGa=(a-u_M)^TG(a-u_M)\le \|G\|\,\|a-u_M\|_2^2\).
  Bounded diagonal self-cell corrections add only
  \(O(1/M+\|a-u_M\|_2^2)\). Therefore any admissible cone containing
  near-uniform legal positive clouds has zero Gram infimum, and
  CrossCellWKBGramGap.A fails on that cone. A surviving Gram-gap proof must
  supply either a genuine positive uniform-mode charge not present in the
  mean-zero pressure kernel, or a quantitative anti-equidistribution theorem
  separating every legal positive cloud from the uniform zero mode. This proves
  no such anti-equidistribution law, no admissible-cone gap, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
  Follow-up near-uniform local-cloud countermodel shows that local
  translation-invariant WKB legality cannot be the source of the needed
  anti-equidistribution: periodic replication of one locally legal service
  cell keeps total selected moment one while every diagonal or mean-zero/local
  Gram charge vanishes like 1/M. Therefore the hidden theorem must be genuinely
  global same-packet legality, positive uniform-mode geometry, or
  construction/exclusion. Follow-up common-identity obstruction shows that
  common packet identity alone is still not that hidden theorem: uniform filling
  across many identity values, or inside one large identity fiber, keeps the
  same fragmentation unless identity supplies bounded count, positive
  uniform-mode charge, legal anti-equidistribution, or construction/exclusion.
  The finite-cover follow-up shows that finite chart count is not the bounded
  count alternative: one legal chart can contain N equal effective cells inside
  one common identity fiber with square charge 1/N.
---

# WKB Gram gap: anti-equidistribution is necessary

## 1. Kill question

The cross-cell criterion says the remaining square rescue is
\[
  \inf_{\substack{a\in\mathcal C_M\\ \sum_b a_b=1}}
  a^TG_Ma\ge c>0.
  \tag{AE.1}
\]

The pressure-kernel zero-mode note killed the raw kernel-only version by the
uniform positive cloud. The live ambiguity is whether the word "admissible" can
save the gap without a new theorem.

The checked answer is no. If the admissible cone still contains legal
near-uniform positive clouds, the Gram gap is impossible. The surviving
theorem must prove anti-equidistribution, or it must add a positive
uniform-mode charge absent from the mean-zero pressure kernel.

## 2. Linear algebra

Let
\[
  u_M=\left({1\over M},\ldots,{1\over M}\right),
  \qquad
  A(a)=\sum_{b=1}^M a_b.
  \tag{AE.2}
\]

Assume
\[
  A(a)=1,
  \qquad
  G_Mu_M=0,
  \qquad
  u_M^TG_M=0,
  \tag{AE.3}
\]
and
\[
  \|G_M\|_{\ell^2\to\ell^2}\le C_G.
  \tag{AE.4}
\]

Then
\[
  a^TG_Ma
  =
  (a-u_M)^TG_M(a-u_M),
  \tag{AE.5}
\]
and therefore
\[
  |a^TG_Ma|
  \le
  C_G\|a-u_M\|_2^2.
  \tag{AE.6}
\]

So any legal sequence \(a^{(M)}\in\mathcal C_M\), \(A(a^{(M)})=1\), with
\[
  \|a^{(M)}-u_M\|_2\to0
  \tag{AE.7}
\]
forces
\[
  (a^{(M)})^TG_Ma^{(M)}\to0.
  \tag{AE.8}
\]

This kills the gap on any admissible cone that permits near-uniform clouds.

## 3. Diagonal and local corrections

Let \(D_M\) be a diagonal or uniformly local self-cell correction with
\[
  \|D_M\|_{\ell^2\to\ell^2}\le C_D.
  \tag{AE.9}
\]

For normalized positive \(a\),
\[
  \sum_b a_b^2
  =
  \|u_M\|_2^2+\|a-u_M\|_2^2
  =
  {1\over M}+\|a-u_M\|_2^2.
  \tag{AE.10}
\]

Hence the corrected form satisfies
\[
  |a^T(G_M+D_M)a|
  \le
  C_G\|a-u_M\|_2^2
  +
  C_D\left({1\over M}+\|a-u_M\|_2^2\right).
  \tag{AE.11}
\]

Near-uniform legal clouds still make the corrected charge vanish:
\[
  \|a^{(M)}-u_M\|_2\to0
  \quad\Longrightarrow\quad
  (a^{(M)})^T(G_M+D_M)a^{(M)}\to0.
  \tag{AE.12}
\]

Thus bounded diagonal, finite-range, or local self-cell corrections do not
repair the zero-mode obstruction.

## 4. Necessary condition

A positive gap for a mean-zero cross-cell form with bounded local corrections
requires one of two structures.

First, a positive uniform-mode charge:
\[
  u_M^TG_Mu_M\ge c>0.
  \tag{AE.13}
\]
This is not supplied by a mean-zero pressure / Calderon-Zygmund kernel.

Second, a legal-cone anti-equidistribution theorem. From (AE.11), any gap
\[
  a^T(G_M+D_M)a\ge c
  \tag{AE.14}
\]
implies the quantitative separation
\[
  \|a-u_M\|_2^2
  \ge
  {c-C_D/M\over C_G+C_D}
  \tag{AE.15}
\]
for every normalized legal positive cloud \(a\in\mathcal C_M\), once
\(M\) is large enough.

So `CrossCellWKBGramGap.A` is not just "use interactions." In the
mean-zero pressure-kernel regime it contains the hidden theorem
\[
  \text{legal WKB clouds cannot approach the uniform zero mode.}
  \tag{AE.16}
\]

The local replication follow-up blocks the weakest reading of this theorem.
Local translation-invariant WKB legality permits translating one locally legal
service cell to an \(M\)-point periodic cloud with equal weights. That cloud is
near-uniform by construction, keeps total selected moment one, and has
vanishing diagonal and mean-zero/local cross charge. Thus the required
anti-equidistribution cannot follow from local cell legality or local moment
matching alone.

The common-identity follow-up blocks a second weak reading. The fact that all
certificate rows name one packet identity is a compatibility condition, not an
\(\ell^2\) separation. If the legal cloud has many identity values, uniform
filling across them is near-uniform; if it has one large identity fiber,
uniform filling inside that fiber is still near-uniform. Identity helps only
after an added quantitative law bounds the effective count, gives the identity
fiber a positive uniform-mode charge, or forbids near-uniform legal weights.
The finite-cover certificate is not that effective-count law; it bounds carrier
charts, not WKB service cells inside a chart or identity fiber.

## 5. Physical meaning

The same-fluid WKB cloud has already retained positive total service. Uniform
fragmentation means that service is spread over many legal cells so evenly that
no individual packet, diagonal square, or mean-zero pressure interaction sees a
count-free charge.

Therefore the only way the cross-cell route can pay is for the actual
Navier-Stokes legality surface to forbid such equidistributed service. That
would have to come from same-packet identity, material ancestry, pressure-law
legality, tower legality, finite-cover compatibility plus an added nonlocal
restriction, or dynamic construction facts. It is not a consequence of
positivity, cell count, chart count, or the pressure kernel alone.

## 6. Consequence for the crowd branch

The cross-cell WKB branch is now:
\[
\begin{array}{ll}
\text{positive uniform-mode charge}
  &\Rightarrow \text{new non-pressure-kernel all-to-all payer},\\[1mm]
\text{anti-equidistribution of legal clouds}
  &\Rightarrow \text{possible admissible-cone Gram gap},\\[1mm]
\text{near-uniform legal clouds}
  &\Rightarrow \text{Gram gap false; route to profile admission or construction/exclusion}.
\end{array}
\tag{AE.17}
\]

This is a smaller burden than the previous Gram-gap label. It says exactly what
the admissible-cone theorem must prevent.

## 7. Four-sentence result

For a mean-zero cross-cell form, the uniform positive cloud is a zero mode. If
legal WKB clouds can approach that uniform cloud in \(\ell^2\), then every
bounded pressure-kernel/local-correction Gram charge tends to zero. Therefore a
true `CrossCellWKBGramGap.A` must either introduce a genuine positive
uniform-mode charge or prove that legal same-packet WKB clouds are
quantitatively anti-equidistributed. Local translation-invariant WKB legality
does not prove that separation, because periodic replication gives a
near-uniform local countermodel; common packet identity also does not prove it
without bounded count, positive identity-fiber charge, or a legal separation
law. The remaining theorem must use a genuine global certificate mechanism or
construction/exclusion.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
