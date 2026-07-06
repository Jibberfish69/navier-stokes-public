---
theorem_id: forward-gold-wkb-finite-certificate-rows-do-not-force-density-anti-equidistribution-20260706
status: exact-obstruction-finite-bounded-certificate-compatibility-does-not-force-density-separation
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - DensityLevelAntiEquidistribution.NECESSARY
  - FiniteCertificateRows.NO-DENSITY-SEPARATION-BY-COMPATIBILITY
  - FixedMomentMismatch.PAYER-OR-EXPLICIT-ROW
  - CrossCellWKBGramGap.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-raw-cz-bm-growth-is-density-separation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-common-identity-not-gram-gap-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-not-bounded-cell-count-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-certificate-product-assembly-theorem-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-certificate-diagonal-compatibility-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-high-rank-linear-certificates-collapse-to-mismatch-payer-20260706.md
completion_truth: >-
  Exact obstruction to one source of legal density anti-equidistribution. A
  finite number of uniformly bounded linear certificate rows, when used only as
  compatibility / closed-graph constraints and when the uniform density
  satisfies them, cannot force an L^2-density separation from the uniform cloud:
  the uniform density itself is legal, and small positive perturbations in the
  finite-codimension kernel remain arbitrarily close to uniform. If the finite
  rows prescribe a moment vector at fixed distance from the uniform moment
  vector, then they can force separation, but the lower bound is exactly the
  explicit fixed moment mismatch \(\delta\), quantified by the finite Gram
  matrix of the row functions. That is a named row/payer, not a consequence of
  finite certificate compatibility, chart count, common identity, or closedness.
  Therefore density-level anti-equidistribution for the WKB crowd must come
  from an explicit fixed/nonzero row-distance payer, a nonlinear/global
  same-packet law, or construction/exclusion of the bath. The high-rank linear
  follow-up shows that rank does not change this split: uniform-compatible
  linear families still admit the uniform density, and nonuniform families pay
  by row-distance. This proves no such row, no nonlinear/global law, no WKB
  construction/exclusion, no confinement constant, and no MPP closure.
---

# Finite certificate rows do not force density anti-equidistribution

## 1. Kill question

The raw-CZ normalization note reduced the raw pressure residual branch to
density-level anti-equidistribution:
\[
  \|f-1\|_{L^2_\omega}^2\gtrsim1.
  \tag{FCR.1}
\]

The kill question here is whether finitely many law / ancestry / cover / tower
certificate rows can force (FCR.1) merely because they are legal and common to
one packet.

The answer is no. Finite bounded compatibility rows do not force density
separation from the uniform cloud unless they impose an explicit fixed moment
mismatch.

## 2. Finite-row model

Let \(M\) equal cells have weights
\[
  \omega_b={1\over M}.
  \tag{FCR.2}
\]

Write a normalized positive cloud as a density
\[
  a_b=\omega_b f_b,
  \qquad
  f_b\ge0,
  \qquad
  \sum_b\omega_b f_b=1.
  \tag{FCR.3}
\]

Let finitely many bounded certificate rows be represented by functions
\[
  \phi_1,\ldots,\phi_K,
  \qquad
  \|\phi_k\|_{L^2_\omega}\le C_\phi.
  \tag{FCR.4}
\]

The row map is
\[
  L(f)=
  \left(
    \sum_b\omega_b\phi_1(b)f_b,\ldots,
    \sum_b\omega_b\phi_K(b)f_b
  \right).
  \tag{FCR.5}
\]

This model covers finite bounded linear readouts of law, ancestry, cover,
tower, or diagonal certificate compatibility. It does not cover an infinite
family of rows, nonlinear same-packet restrictions, or a row whose norm grows
with \(M\).

## 3. Compatibility rows with uniform admissible

Assume the uniform density is compatible:
\[
  L(1)=m.
  \tag{FCR.6}
\]

Then \(f=1\) is a legal density for the finite-row constraints, so
\[
  \|f-1\|_{L^2_\omega}=0.
  \tag{FCR.7}
\]

Density anti-equidistribution is impossible.

Even if exact uniformity is removed by a harmless open condition, the finite
rows still cannot create a gap. The kernel
\[
  \ker L\cap\left\{g:\sum_b\omega_bg_b=0\right\}
  \tag{FCR.8}
\]
has dimension at least \(M-K-1\). For \(M>K+1\), choose nonzero \(g\) in this
kernel with \(\|g\|_{L^\infty}\le1\). Then for every \(0<\varepsilon<1\),
\[
  f_\varepsilon=1+\varepsilon g
  \tag{FCR.9}
\]
is positive, normalized, and satisfies
\[
  L(f_\varepsilon)=L(1)=m,
  \qquad
  \|f_\varepsilon-1\|_{L^2_\omega}
  =
  \varepsilon\|g\|_{L^2_\omega}.
  \tag{FCR.10}
\]

Letting \(\varepsilon\downarrow0\) defeats every count-free density separation.

## 4. Moment mismatch is an explicit row

Suppose instead the finite rows prescribe
\[
  L(f)=m,
  \qquad
  \delta:=m-L(1)\ne0.
  \tag{FCR.11}
\]

Then
\[
  L(f-1)=\delta.
  \tag{FCR.12}
\]

By Cauchy-Schwarz,
\[
  |\delta|
  \le
  \|L\|\,\|f-1\|_{L^2_\omega}.
  \tag{FCR.13}
\]

Equivalently,
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|\delta|\over \|L\|}.
  \tag{FCR.14}
\]

In sharp finite-row form, let
\[
  \mathcal G_{ij}:=\langle \phi_i,\phi_j\rangle_{L^2_\omega}.
  \tag{FCR.15}
\]
Then the least possible density distance required by the rows is
\[
  \inf_{L(f-1)=\delta}\|f-1\|_{L^2_\omega}^2
  =
  \delta^T\mathcal G^\dagger\delta.
  \tag{FCR.16}
\]

Thus a fixed separation can come from finite rows only when they prescribe a
fixed moment mismatch. That mismatch is the payer. It is not a free
consequence of finite certificate compatibility.

## 5. Consequence for the WKB crowd branch

The finite certificate rows split into two cases:
\[
\begin{array}{ll}
\text{uniform-compatible finite rows}
  &\Rightarrow \text{no density anti-equidistribution},\\[1mm]
\text{fixed moment mismatch}
  &\Rightarrow \text{explicit row/payer quantified by }\delta^T\mathcal G^\dagger\delta.
\end{array}
\tag{FCR.17}
\]

Therefore the legal separation needed after the raw-CZ normalization cannot be
obtained from the words "law / ancestry / cover / tower certificates" alone.
It must come from one of:
\[
\begin{array}{ll}
\text{fixed nonuniform moment row}
  &\text{a real row with order-one mismatch},\\[1mm]
\text{high-rank or infinite linear family}
  &\text{explicit row-distance payer or no gap},\\[1mm]
\text{nonlinear/global same-packet law}
  &\text{a true dynamic admissibility restriction},\\[1mm]
\text{construction/exclusion}
  &\text{build or rule out the near-uniform bath}.
\end{array}
\tag{FCR.18}
\]

## 6. Physical meaning

The physical object is still one same-fluid WKB pressure bath. Finite
certificates are legal readouts of that bath: pressure-law consistency,
material ancestry, carrier cover, and same-law tower identity.

If those readouts only say that every cell belongs to the same closed legal
packet surface, they do not prevent the bath from distributing its positive
service nearly uniformly over many cells. To prevent that distribution, the
fluid must supply a real nonuniformity: a row-distance mismatch that the
uniform bath fails, a nonlinear same-packet law, or a construction/exclusion
theorem. A high-rank linear family is only another row-distance mismatch unless
it leaves the uniform bath legal, in which case it pays nothing.

## 7. Four-sentence result

A finite number of bounded certificate rows cannot force density-level
anti-equidistribution when the uniform density satisfies those rows. The
uniform density is legal, and small positive perturbations in the finite-row
kernel remain arbitrarily close to uniform. If finite rows do force separation,
they do so by an explicit fixed moment mismatch
\[
  \delta^T\mathcal G^\dagger\delta,
\]
which is a named row/payer. Thus the WKB crowd branch still needs a fixed
nonzero row-distance payer, a nonlinear/global same-packet law, or
construction/exclusion of the bath; high-rank linear rows do not create a
separate mechanism.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
