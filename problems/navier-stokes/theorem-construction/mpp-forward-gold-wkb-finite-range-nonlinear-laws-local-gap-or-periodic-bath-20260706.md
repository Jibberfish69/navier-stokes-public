---
theorem_id: forward-gold-wkb-finite-range-nonlinear-laws-local-gap-or-periodic-bath-20260706
status: strict-reduction-finite-range-nonlinear-laws-are-local-gap-or-periodic-near-uniform-bath
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - DensityLevelAntiEquidistribution.NECESSARY
  - FiniteRangeNonlinearLaw.LOCAL-GAP-OR-PERIODIC-BATH
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
  - NonlinearSamePacketLaw.GAP-OR-CONSTRUCTION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-nonlinear-same-packet-law-gap-or-construction-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-uniform-local-cloud-gram-countermodel-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-certificate-rows-do-not-force-density-anti-equidistribution-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-high-rank-linear-certificates-collapse-to-mismatch-payer-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706.md
completion_truth: >-
  Strict reduction only. A finite-range, translation-invariant nonlinear
  legality law is not a third hidden source of the WKB density gap. If the law
  admits periodic legal blocks whose density is arbitrarily close to uniform,
  then periodically tiling those blocks gives legal clouds with
  \(f_M\to1\), retained selected moment, and vanishing bounded zero-mode
  Gram/residual charges. If the law does not admit such near-uniform periodic
  blocks, the gap is exactly a positive finite-dimensional local block
  distance from the uniform block, i.e. an explicit local anti-uniformity
  payer/certificate to prove from the real same-fluid PDE law. Therefore the
  remaining nonlinear/global same-packet branch is sharpened: it must be a
  proved positive local block gap, a genuinely nonlocal/global same-fluid law,
  or construction/exclusion of the near-uniform WKB pressure bath. This proves
  no such local block gap, no nonlocal law, no construction/exclusion, no
  confinement constant, and no MPP closure.
---

# Finite-range nonlinear laws: local gap or periodic bath

## 1. Kill question

The nonlinear same-packet note reduced the dense WKB crowd branch to
\[
  \liminf_M \operatorname{dist}_{L^2_\omega}(1,\mathcal C_M)>0
  \tag{FRN.1}
\]
or construction/exclusion of near-uniform legal baths.

The kill question here is whether a finite-range nonlinear legality predicate
can supply a third kind of payer: neither an explicit row/mismatch nor a truly
global same-fluid exclusion.

It cannot. A finite-range nonlinear law either has a positive local
anti-uniform block distance, or periodic near-uniform legal blocks defeat the
gap.

## 2. Finite-range local model

Work on periodic cell grids \(\Lambda_M\) with normalized density
\[
  f_b\ge0,\qquad {1\over |\Lambda_M|}\sum_{b\in\Lambda_M} f_b=1.
  \tag{FRN.2}
\]

A finite-range nonlinear law of range \(R\) is a translation-invariant
condition on the \(R\)-neighborhood block
\[
  B_Rf(b):=(f_{b+z})_{|z|\le R}.
  \tag{FRN.3}
\]
For example,
\[
  B_Rf(b)\in K_R
  \qquad(b\in\Lambda_M),
  \tag{FRN.4}
\]
where \(K_R\) is the finite-dimensional local legal block set. This model
covers bounded local nonlinear law / ancestry / cover / tower compatibility
tests. It does not cover material ancestry over unboundedly many cells, a
long-range pressure/Hodge constraint, a moving selector/custody law, or an
actual construction/exclusion theorem for the WKB bath.

The right local distance is not an informal "nonlinearity" label. It is
\[
  d_R^{\rm per}:=
  \inf_p \|p-1\|_{L^2({\rm per})},
  \tag{FRN.5}
\]
where \(p\) ranges over periodic finite-cell patterns satisfying the local
range-\(R\) law and normalized to mean one.

## 3. Periodic near-uniform branch

If
\[
  d_R^{\rm per}=0,
  \tag{FRN.6}
\]
then for every \(\varepsilon>0\) there is a periodic legal seed \(p^\varepsilon\)
with
\[
  \|p^\varepsilon-1\|_{L^2({\rm per})}<\varepsilon.
  \tag{FRN.7}
\]

Tile \(p^\varepsilon\) across a larger periodic grid. Because the law is
finite-range and translation invariant, every local block in the tiled grid is
one of the legal seed blocks. Thus the tiled density \(f_M^\varepsilon\) is
legal for the finite-range law and
\[
  \|f_M^\varepsilon-1\|_{L^2_\omega}
  =
  \|p^\varepsilon-1\|_{L^2({\rm per})}
  <\varepsilon.
  \tag{FRN.8}
\]

Taking \(\varepsilon\downarrow0\) along a tail gives legal near-uniform
densities. The selected positive moment remains normalized by (FRN.2), while
every bounded density-coordinate zero-mode residual \(H_M\) obeys
\[
  |(f_M^\varepsilon-1)^TH_M(f_M^\varepsilon-1)|
  \le
  C\|f_M^\varepsilon-1\|_{L^2_\omega}^2.
  \tag{FRN.9}
\]
Diagonal and finite-range square charges still fragment exactly as in the
near-uniform local-cloud countermodel.

Therefore the finite-range nonlinear law has not paid (FRN.1).

## 4. Local anti-uniform branch

If instead
\[
  d_R^{\rm per}\ge c_R>0,
  \tag{FRN.10}
\]
then the finite-range law does force a density gap, but the payer is now named:
the uniform block lies a positive finite-dimensional distance from the legal
periodic block set.

That is not hidden same-packet compatibility. It is an explicit local
anti-uniformity theorem:
\[
  \operatorname{dist}(1,K_R^{\rm per})\ge c_R.
  \tag{FRN.11}
\]

To use it for Navier-Stokes, one must prove that the actual same-fluid PDE
legality imposes this local block exclusion on every retained WKB crowd
profile. If the proof only says "finite-range nonlinear law" or "local
compatibility," then it has not supplied the constant.

## 5. Relation to the previous row notes

Finite linear rows split into uniform-compatible rows or explicit moment
mismatch. High-rank linear rows split into uniform-compatible rows or explicit
Hilbert row-distance. Finite-range nonlinear rows split in the same spirit:
\[
\begin{array}{ll}
d_R^{\rm per}=0
  &\Rightarrow \text{periodic near-uniform legal bath},\\[1mm]
d_R^{\rm per}\ge c_R
  &\Rightarrow \text{explicit local block-distance payer}.
\end{array}
\tag{FRN.12}
\]

Thus finite range by itself is not the nonlinear/global object sought by the
dense crowd branch. The remaining positive forbidden ball must come from a
proved local anti-uniform block distance, or from a law that genuinely sees
the whole same-fluid packet rather than bounded neighborhoods.

## 6. Physical meaning

A finite-range local law only asks each bounded neighborhood to look legal. If
a nearly uniform legal neighborhood can be repeated, the one-fluid bath can
spread service evenly in this model and all bounded zero-mode charges remain
small.

To stop that spreading, the real fluid law must either forbid the nearly
uniform neighborhood itself or use a global coupling that the local tiling
model omits: unbounded material ancestry, long-range pressure/Hodge coupling,
Reynolds-edge persistence, custody/reassembly, compensator routing, or direct
construction/exclusion.

## 7. Four-sentence result

A finite-range nonlinear WKB legality law has a simple dichotomy. If it admits
periodic legal blocks arbitrarily close to uniform, tiling those blocks gives
legal near-uniform baths and the bounded Gram/residual charges still vanish. If
it does not, the missing payer is exactly a positive local block-distance from
the uniform block, which must be proved as a real PDE local anti-uniformity
law. Therefore the dense-crowd nonlinear branch is now local block gap,
genuinely nonlocal same-fluid law, or construction/exclusion of the WKB bath.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
