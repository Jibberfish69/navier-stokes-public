---
theorem_id: forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706
status: exact-countermodel-local-translation-invariant-legality-does-not-give-gram-gap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - NearUniformLegalCloud.Countermodel.LOCAL
  - LocalTranslationInvariantLegality.NO-ANTI-EQUIDISTRIBUTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
completion_truth: >-
  Exact local countermodel to one possible proof route, not a full WKB
  construction, not a dense-crowd theorem, and not a confinement-constant
  decision. Start with one local WKB/Beltrami pressure-service cell whose
  selected scalar moment is positive and whose local legality predicates are
  translation invariant. Replicate it on an M-point periodic/quadrature cloud
  with weights a_b=1/M. The total selected moment stays one, the diagonal
  square charge is 1/M, and any mean-zero translation-invariant cross-cell Gram
  form has the uniform cloud in its zero mode, with bounded local corrections
  still O(1/M). Thus local periodic legality plus moment matching cannot imply
  the anti-equidistribution theorem needed for CrossCellWKBGramGap.A. A
  surviving gap must use a genuinely global same-packet restriction: common
  material identity, law/ancestry/cover/tower certificates, non-translation
  geometry, a positive uniform-mode charge, or actual construction/exclusion.
  This proves no actual same-solution near-uniform WKB bath and no MPP closure.
---

# WKB near-uniform local cloud: Gram-gap countermodel

## 1. Kill question

The anti-equidistribution note says that a mean-zero cross-cell Gram form can
only have a uniform gap when legal WKB clouds are kept away from the uniform
zero mode.

The kill question here is whether local WKB legality and local pressure-Hessian
moment matching themselves force that anti-equidistribution.

The checked answer is no. If legality is local and translation invariant, the
near-uniform cloud is explicitly legal in the model and the Gram gap vanishes.

## 2. One local service cell

Assume one local WKB/Beltrami cell has been admitted at the cell level. Write
its selected positive service moment as \(m_0>0\). Normalize the amplitude so
that a cell with weight \(a\ge0\) carries moment
\[
  A(a)=a.
  \tag{NUL.1}
\]

This is the cell-level situation left by the Beltrami moment-matching note:
local trace-free pressure-Hessian shapes are algebraically available with
nonnegative mixture weights. The present test does not assert that these cells
already form a global same-solution terminal witness.

## 3. Periodic replication

Place \(M\) translated copies of the same local cell at a periodic quadrature
cloud
\[
  x_1,\ldots,x_M\in\mathbb T^3,
  \tag{NUL.2}
\]
and assign weights
\[
  a_b={1\over M},
  \qquad 1\le b\le M.
  \tag{NUL.3}
\]

If the legality predicate is local and translation invariant, every translated
copy has the same local legality status as the original cell, and the replicated
cloud is legal in that local model.

The total selected moment is preserved:
\[
  \sum_{b=1}^M a_b=1.
  \tag{NUL.4}
\]

But the same-cell square reserve fragments:
\[
  \sum_{b=1}^M a_b^2={1\over M}\to0.
  \tag{NUL.5}
\]

## 4. Mean-zero cross-cell charge

Let the cross-cell form come from a mean-zero translation-invariant kernel:
\[
  G_{bb'}=K(x_b-x_{b'}),
  \qquad
  \sum_{b'=1}^M G_{bb'}=0.
  \tag{NUL.6}
\]

For the uniform cloud \(u_M=(1/M,\ldots,1/M)\),
\[
  u_M^TG u_M
  =
  {1\over M^2}\sum_{b,b'}G_{bb'}
  =
  0.
  \tag{NUL.7}
\]

If the quadrature only gives asymptotic row cancellation, then
\[
  \max_b\left|{1\over M}\sum_{b'=1}^M G_{bb'}\right|\to0
  \tag{NUL.8}
\]
and the same computation gives \(u_M^TG u_M\to0\).

Bounded local or diagonal corrections add at most
\[
  C\sum_ba_b^2={C\over M}\to0.
  \tag{NUL.9}
\]

Thus the replicated local cloud retains the selected moment but defeats every
mean-zero translation-invariant cross charge with bounded local corrections.

## 5. What this kills

This kills the implication
\[
  \text{local WKB legality}
  +
  \text{local moment matching}
  \Longrightarrow
  \text{anti-equidistribution of legal clouds}.
  \tag{NUL.10}
\]

Local legality is inherited by translation. Uniform replication is therefore
not excluded until the proof uses a structure that sees all cells as one
same-packet object rather than as independent translated witnesses.

So the admissible-cone Gram gap cannot be certified by:

1. local Beltrami moment matching;
2. local WKB cell legality;
3. positivity of the weights;
4. finite or bounded local self-cell corrections;
5. the raw mean-zero pressure/CZ kernel.

## 6. What remains

A surviving `CrossCellWKBGramGap.A` must use one of the nonlocal structures
omitted from the replicated local model:

- common material packet identity across the cloud;
- actual pressure-law, ancestry, cover, or tower certificate coupling;
- a non-translation-invariant geometry that creates a positive uniform-mode
  charge;
- a quantitative theorem that same-solution WKB clouds cannot be near-uniform;
- or actual construction/exclusion of the near-uniform WKB bath.

This does not construct a Navier-Stokes near-uniform bath. It only says that
the anti-equidistribution theorem cannot be a local-cell consequence.

## 7. Four-sentence result

Replicate one locally legal WKB pressure-service cell over an \(M\)-point
periodic cloud with equal weights \(1/M\). The total selected moment remains
one, while the diagonal square charge is \(1/M\). A mean-zero
translation-invariant cross kernel has that uniform cloud in its zero mode, and
bounded local corrections also vanish like \(1/M\). Therefore local WKB
legality plus moment matching cannot prove the Gram gap; the gap must come
from genuinely global same-packet legality, positive uniform-mode geometry, or
construction/exclusion.
