---
theorem_id: forward-gold-wkb-finite-cover-not-bounded-cell-count-obstruction-20260706
status: exact-obstruction-finite-cover-does-not-bound-effective-wkb-cell-count
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - WKBFiniteCoverCertificateCompactness.A
  - SameIdentityFiberBoundedEffectiveCount.NO-FROM-FINITE-COVER
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-packet-identity-factorization-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
completion_truth: >-
  Exact obstruction to one possible identity-side Gram-gap source. A uniform
  finite/readout-compatible cover bounds chart multiplicity, not the number of
  effective WKB service cells or atoms inside one chart or one common identity
  fiber. The one-chart model has one compact legal chart, one common identity
  value, total selected moment one, and N equal positive WKB cells inside that
  same legal fiber. It keeps the finite-cover certificate with chart count one
  while max cell mass and diagonal/local square charge vanish like 1/N; any
  mean-zero uniform-mode cross form remains zero on the equal-weight cloud.
  Therefore the bounded-effective-count alternative in the common-identity
  obstruction is not supplied by the finite-cover certificate itself. It would
  have to be an extra microlocal quantization/extraction theorem, a positive
  identity-fiber uniform-mode charge, legal anti-equidistribution, or
  construction/exclusion. The positive uniform-mode option is separately
  priced as a rank-one all-to-all payer and, in the pressure-service overlap
  bath, as the fixed-density compensator branch. This proves no such extra
  theorem, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# Finite cover is not bounded WKB cell count

## 1. Kill question

The common-identity obstruction left one possible way for identity to help the
Gram gap:
\[
  \#\{b:\iota_b=\iota\}\le M_0
  \tag{FCN.1}
\]
for every retained common identity fiber.

The cover row looks nearby because it also has a finite integer: a uniformly
bounded number of carrier charts. This note tests whether the finite-cover
certificate gives (FCN.1).

It does not. Chart count and effective WKB cell count are different objects.

## 2. Exact one-chart model

Let the observable label space be
\[
  X=[0,1].
  \tag{FCN.2}
\]
Take one legal chart
\[
  U=X,
  \qquad
  M_{\rm chart}=1,
  \tag{FCN.3}
\]
with compact chart parameter space reduced to one point. Let the common packet
identity space also have one point:
\[
  I=\{\iota_\ast\}.
  \tag{FCN.4}
\]
Every cell in the model has the same cover identity and the same common packet
identity.

For \(N\ge1\), put \(N\) effective WKB service cells in that one chart:
\[
  \nu_N={1\over N}\sum_{b=1}^N\delta_{b/N}.
  \tag{FCN.5}
\]
Lift the measure to the cover/identity certificate by attaching the same chart
and identity to every atom:
\[
  \widetilde\nu_N
  =
  {1\over N}\sum_{b=1}^N
  \delta_{(b/N,\;1,\;\iota_\ast)}.
  \tag{FCN.6}
\]

The lifted measures are supported on the legal finite-cover graph for every
N. The chart count is exactly one. The identity fiber is exactly one. The
selected moment is normalized:
\[
  \nu_N(X)=1.
  \tag{FCN.7}
\]

But the effective cell count in that same fiber is \(N\), and the largest cell
mass is
\[
  \max_b {1\over N}\to0.
  \tag{FCN.8}
\]

Thus finite cover does not imply bounded effective cell count.

## 3. The square charge still fragments

The equal-weight cloud has diagonal square charge
\[
  \sum_{b=1}^N\left({1\over N}\right)^2
  =
  {1\over N}
  \to0.
  \tag{FCN.9}
\]
Any bounded local or diagonal correction is therefore \(O(1/N)\).

If the cross-cell form is a mean-zero uniform-mode form on this fiber, the
equal-weight cloud remains in its zero mode:
\[
  u_N^TG_Nu_N=0,
  \qquad
  u_N=\left({1\over N},\ldots,{1\over N}\right),
  \tag{FCN.10}
\]
up to the same bounded local \(O(1/N)\) corrections.

The finite cover certificate has not changed that calculation. It says the
mass is carried by a legal chart. It does not say the mass has only finitely
many effective WKB service cells, and it does not create an all-to-all positive
interaction among cells inside the chart.

## 4. Weak-* limit keeps the cover

The same example also shows that the finite-cover row can be perfectly stable
while the square payer disappears. The measures satisfy
\[
  \nu_N\stackrel{*}{\rightharpoonup}dx
  \quad\hbox{on }[0,1],
  \tag{FCN.11}
\]
and the lifted measures converge to the same diffuse profile with the same
one-chart certificate.

So this is not cover failure. It is a legal cover with diffuse or arbitrarily
finely fragmented service inside it.

## 5. Consequence

The implication
\[
  \text{uniform finite cover}
  \Longrightarrow
  \text{bounded effective WKB cell count per identity fiber}
  \tag{FCN.12}
\]
is false.

The bounded-count route can survive only as an additional microlocal theorem:
inside a legal retained identity fiber, the actual Navier-Stokes WKB service
must reduce to at most \(M_0\) effective cells, or one cell must carry a fixed
fraction of the selected moment. That is a quantization/extraction theorem. It
is not the finite-cover certificate.

Thus the identity-side Gram branch is now:
\[
\begin{array}{ll}
\text{positive identity-fiber uniform-mode charge}
  &\Rightarrow \text{rank-one payer / priced compensator branch},\\[1mm]
\text{legal anti-equidistribution}
  &\Rightarrow \text{possible admissible-cone Gram gap},\\[1mm]
\text{microlocal bounded effective count}
  &\Rightarrow \text{finite-menu / atom extraction branch},\\[1mm]
\text{near-uniform legal large fiber}
  &\Rightarrow \text{Gram gap false; profile or construction/exclusion}.
\end{array}
\tag{FCN.13}
\]

The finite-cover row remains essential for Pack-side admission. It is not a
cross-cell square payer.

## 6. Four-sentence result

A finite/readout-compatible cover bounds the number of carrier charts, not the
number of effective WKB service cells inside one chart. One legal chart and one
common identity fiber can contain \(N\) equal positive cells with total selected
moment one. The finite-cover certificate survives with chart count one, while
diagonal/local square charge is \(1/N\) and the mean-zero uniform-mode cross
charge is still zero. Therefore bounded effective count per identity fiber is
an extra microlocal quantization theorem, not a consequence of finite cover.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
