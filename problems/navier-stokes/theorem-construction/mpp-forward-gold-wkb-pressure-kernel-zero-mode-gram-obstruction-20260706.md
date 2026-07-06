---
theorem_id: forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706
status: exact-countermodel-pressure-kernel-only-gram-gap-killed-by-uniform-zero-mode-cloud
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - PressureKernelOnlyGramGap.False
  - AtomicWKBUnboundedCountCloudBranch
  - PDEUncertaintyCrossCellSquareCoercivity.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-wkb-cloud-square-coercivity-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-pressure-source-scaling-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-exact-shear-cell-pressure-hessian-display-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
completion_truth: >-
  Exact kernel-only countermodel. If the proposed cross-cell Gram form is only
  the translation-invariant mean-zero pressure / Calderon-Zygmund interaction
  kernel, then the normalized uniform positive cloud lies in the zero Fourier
  mode and has zero quadratic charge; in finite periodic quadrature the charge
  is zero when the row sums are zero and tends to zero when the row sums are
  only asymptotically zero, while any bounded diagonal self-cell term vanishes
  like 1/M. Thus a raw pressure-kernel interaction cannot by itself supply
  CrossCellWKBGramGap.A. The surviving Gram-gap theorem must use actual
  Navier-Stokes admissible-cone restrictions, same-packet identity, legal
  certificate constraints, non-translation-invariant geometry, or else route to
  profile admission / typed escape / construction-exclusion. This proves no
  actual admissible-cone near-null WKB construction, no failure of every
  possible PDE uncertainty Gram gap, no profile admission theorem, no WKB
  construction/exclusion theorem, no crowd-cell theorem, no confinement
  constant, and no MPP closure.
---

# Pressure-kernel zero mode blocks a kernel-only Gram gap

## 1. Object

The cross-cell Gram-gap note reduced the remaining square rescue to
\[
  \inf_{\substack{a\in\mathcal C_j\\ \sum_b a_b=1}}
  a^TG_ja\ge c>0 .
  \tag{ZMG.1}
\]

Here \(a_b\ge0\) are the selected positive WKB cloud weights, and \(G_j\) is
the actual cross-cell quadratic form. This note tests one possible source for
that gap: the pressure kernel by itself.

The physical question is whether the pressure/Hodge interaction kernel can turn
many small positive WKB cells into a count-free square charge, without using
additional same-packet legality or admissible-cone restrictions.

The answer is no.

## 2. Translation-invariant mean-zero model

Let \(X=\mathbb T^d\) and let \(K\) be an integrable even kernel with zero mean:
\[
  \int_X K(x)\,dx=0.
  \tag{ZMG.2}
\]
Define the kernel-only Gram form
\[
  Q(\rho)=\int_X\int_X K(x-y)\,d\rho(x)\,d\rho(y).
  \tag{ZMG.3}
\]

Take the uniform positive probability measure
\[
  d\rho_0(x)=dx .
  \tag{ZMG.4}
\]
Then
\[
  Q(\rho_0)
  =
  \int_X\left(\int_X K(x-y)\,dy\right)dx
  =
  \int_X\left(\int_X K(z)\,dz\right)dx
  =
  0 .
  \tag{ZMG.5}
\]

So a mean-zero translation-invariant kernel cannot have a positive lower bound
on all positive probability clouds.

This is exactly the pressure-kernel danger. The Hessian kernel is a
Calderon-Zygmund kernel with angular mean zero. For a trace-free test matrix
or pressure-service component \(E\in{\rm Sym}_0(3)\), the angular kernel has
the schematic form
\[
  k_E(n)=E:(3n\otimes n-I),
  \qquad n\in S^2,
  \tag{ZMG.6}
\]
and
\[
  \int_{S^2}k_E(n)\,d\sigma(n)=0
  \tag{ZMG.7}
\]
because
\[
  \int_{S^2} n\otimes n\,d\sigma(n)
  ={1\over3}I.
  \tag{ZMG.8}
\]

Uniform angular or spatial filling therefore sits in the zero mode of the raw
pressure interaction.

## 3. Finite cloud version

Let \(x_1,\ldots,x_M\) be a periodic quadrature cloud for \(X\). Define
\[
  G_{bb'}=K(x_b-x_{b'}),\qquad b\ne b',
  \tag{ZMG.9}
\]
with diagonal set to zero for the cross-cell part. Assume the row sums vanish:
\[
  \sum_{b'=1}^M G_{bb'}=0 .
  \tag{ZMG.10}
\]

For the normalized uniform positive cloud
\[
  a_b={1\over M},
  \tag{ZMG.11}
\]
one has
\[
  a^TGa
  =
  {1\over M^2}
  \sum_{b,b'}G_{bb'}
  =
  0.
  \tag{ZMG.12}
\]

If row sums vanish only asymptotically,
\[
  \max_b\left|{1\over M}\sum_{b'=1}^M G_{bb'}\right|\to0,
  \tag{ZMG.13}
\]
then the same uniform cloud gives
\[
  a^TGa\to0.
  \tag{ZMG.14}
\]

If a bounded diagonal/self-cell correction \(D_b\) is retained, then
\[
  \sum_b D_ba_b^2
  \le
  {\|D\|_\infty\over M}\to0 .
  \tag{ZMG.15}
\]
This is the same fragmentation mechanism as the same-cell square failure, now
with the mean-zero cross-kernel added.

## 4. Consequence for `CrossCellWKBGramGap.A`

The raw pressure kernel supplies no count-free positivity on the positive
cloud cone. It has a zero mode, and the uniform positive cloud sits exactly
there.

Therefore `CrossCellWKBGramGap.A` cannot be proved from:

```text
Calderon-Zygmund pressure kernel
+ positive packet weights
+ many cells
```

alone.

Any true gap must use one of the structures omitted from the kernel-only
model:

1. the admissible WKB cone forbids uniform zero-mode filling;
2. same-packet identity ties the cells by a non-translation-invariant
   constraint;
3. law, ancestry, cover, or tower certificates add a positive row not present
   in the pressure kernel;
4. the cloud is legally admitted as a profile and consumed by the
   no-supplier trichotomy;
5. an actual dynamic WKB bath is constructed or excluded.

So the pressure kernel can participate in a future Gram gap, but it is not the
gap by itself.

## 5. Four-sentence result

A mean-zero translation-invariant pressure kernel has a zero mode. The uniform
positive cloud has total selected moment one and zero kernel-only quadratic
charge, with bounded diagonal corrections vanishing like \(1/M\). Therefore a
raw pressure-kernel cross-cell form cannot supply the uniform positive Gram
gap needed by `CrossCellWKBGramGap.A`. Any surviving gap must come from actual
Navier-Stokes admissibility, same-packet/legal certificate structure, profile
admission, or construction/exclusion.

## 6. State

This note proves the kernel-only Gram-gap obstruction.

It proves no admissible-cone near-null WKB construction for actual
Navier-Stokes packets, no failure of every possible PDE uncertainty Gram gap,
no row-level certificate theorem, no profile admission theorem, no WKB
construction or exclusion theorem, no crowd-cell theorem, no confinement
constant, and no MPP closure.
