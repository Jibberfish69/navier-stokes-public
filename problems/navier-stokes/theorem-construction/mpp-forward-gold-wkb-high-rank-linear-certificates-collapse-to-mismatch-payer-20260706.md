---
theorem_id: forward-gold-wkb-high-rank-linear-certificates-collapse-to-mismatch-payer-20260706
status: strict-reduction-high-rank-linear-certificate-branch-to-mismatch-payer-or-nonlinear-law
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - DensityLevelAntiEquidistribution.NECESSARY
  - HighRankLinearCertificates.NO-FREE-ANTI-EQUIDISTRIBUTION
  - InfiniteCertificateFamily.MISMATCH-PAYER-OR-NONLINEAR-LAW
  - RowMismatchDistance.PAYER
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-certificate-rows-do-not-force-density-anti-equidistribution-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-raw-cz-bm-growth-is-density-separation-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-certificate-diagonal-compatibility-reduction-20260706.md
completion_truth: >-
  Strict reduction only. Increasing the number of bounded linear certificate
  rows, even to a high-rank or infinite family, does not force density
  anti-equidistribution when the uniform density satisfies the rows: the
  uniform density is still a legal point, so the L^2 distance from uniform is
  zero. If the row family excludes the uniform density by prescribing a
  nonzero moment mismatch, then the separation is exactly the Hilbert-space
  distance from zero to the affine row constraint \(L_Mg=\delta_M\). In closed
  Hilbert range form this is
  \(\langle \delta_M,(L_ML_M^*)^\dagger\delta_M\rangle\); in finite-row
  coordinates it is the finite Gram formula already filed. Thus a high-rank or
  infinite linear family is not a third compatibility mechanism: it is either
  uniform-compatible and pays nothing, or it supplies an explicit mismatch /
  unbounded-row payer. The only remaining non-row source of density
  anti-equidistribution is a genuinely nonlinear/global same-packet law or a
  construction/exclusion of the WKB bath. This proves no such nonlinear law, no
  construction/exclusion, no confinement constant, and no MPP closure.
---

# High-rank linear certificate families collapse to mismatch payer

## 1. Kill question

The finite-certificate note left one apparent escape:
\[
  \text{high-rank or infinite certificate family}
  \quad\text{might force}\quad
  \|f-1\|_{L^2_\omega}^2\gtrsim1.
  \tag{HRC.1}
\]

This note tests the linear version of that escape. The answer is exact:
rank does not matter if the uniform density satisfies the rows.

## 2. Hilbert row model

Let
\[
  H_M:=\left\{g:\sum_b\omega_bg_b=0\right\}
  \tag{HRC.2}
\]
with norm \(\|g\|_{L^2_\omega}\). Write the density as
\[
  f=1+g.
  \tag{HRC.3}
\]

Let the certificate family be any bounded linear row map
\[
  L_M:H_M\to Y_M,
  \tag{HRC.4}
\]
where \(Y_M\) may have dimension growing with \(M\), or may be an infinite
Hilbert certificate space. A prescribed row value is
\[
  L_Mg=\delta_M.
  \tag{HRC.5}
\]

This covers high-rank linear law / ancestry / cover / tower readouts. It does
not cover nonlinear same-packet restrictions.

## 3. Uniform-compatible rows still have zero separation

Uniform-compatible means
\[
  \delta_M=0.
  \tag{HRC.6}
\]

Then \(g=0\), hence \(f=1\), is a positive normalized density satisfying every
row:
\[
  L_M0=0.
  \tag{HRC.7}
\]

Therefore
\[
  \inf_{\substack{f=1+g\ge0\\ L_Mg=0}}\|f-1\|_{L^2_\omega}
  =0.
  \tag{HRC.8}
\]

No amount of rank changes this. A high-rank closed graph may make the legal set
smaller, but if it contains the uniform density, it cannot separate all legal
densities away from the uniform density.

## 4. Nonzero mismatch is the payer

If
\[
  \delta_M\ne0,
  \tag{HRC.9}
\]
then the forced density separation is exactly
\[
  d_M^2
  :=
  \inf_{L_Mg=\delta_M}\|g\|_{L^2_\omega}^2.
  \tag{HRC.10}
\]

In Hilbert closed-range form,
\[
  d_M^2
  =
  \left\langle
    \delta_M,(L_ML_M^*)^\dagger\delta_M
  \right\rangle_{Y_M}.
  \tag{HRC.11}
\]

For finite rows \(L_Mg=(\langle \phi_i,g\rangle)_i\), this is the earlier
Gram formula
\[
  d_M^2=\delta_M^T\mathcal G_M^\dagger\delta_M,
  \qquad
  (\mathcal G_M)_{ij}=\langle\phi_i,\phi_j\rangle_{L^2_\omega}.
  \tag{HRC.12}
\]

A count-free density gap is exactly
\[
  \liminf_M d_M>0.
  \tag{HRC.13}
\]

That lower bound is the row/mismatch payer. If it holds because the row family
has growing operator strength, then the unbounded row strength is the payer. If
the affine constraint has no positive density realization, the branch has moved
to construction/exclusion rather than to a hidden compatibility proof.

## 5. Consequence for the WKB crowd branch

The linear certificate branch now has no separate high-rank refuge:
\[
\begin{array}{ll}
\delta_M=0
  &\Rightarrow \text{uniform density legal; no anti-equidistribution},\\[1mm]
\liminf d_M>0
  &\Rightarrow \text{explicit mismatch / row-energy payer},\\[1mm]
d_M\to0
  &\Rightarrow \text{no count-free density gap},\\[1mm]
\text{no positive solution}
  &\Rightarrow \text{construction/exclusion or failed admission}.
\end{array}
\tag{HRC.14}
\]

Thus "high-rank/infinite certificate family" only remains live after removing
the word "linear." The surviving non-row possibility is a genuinely
nonlinear/global same-packet law: a rule of the one fluid-object that forbids
near-uniform WKB baths even though every uniform-compatible linear readout
would allow them.

## 6. Physical meaning

The same-fluid pressure bath can spread service uniformly across many cells.
Linear certificate rows are measurements of that bath. More measurements do not
change the fact that the perfectly uniform bath passes every measurement that
it is prescribed to pass.

To stop the bath, a row must demand a nonuniform answer, and then that demand is
the payer. Otherwise the needed obstruction must be nonlinear and global: the
actual fluid-object cannot realize the near-uniform arrangement, not merely
that many linear readouts have been recorded.

## 7. Four-sentence result

High rank does not rescue linear certificate compatibility. If the uniform
density satisfies every row, it is still legal and the density gap is zero. If
the rows force a gap, the exact price is the row-distance
\[
  \inf_{L_Mg=\delta_M}\|g\|_{L^2_\omega}^2
  =
  \left\langle\delta_M,(L_ML_M^*)^\dagger\delta_M\right\rangle,
\]
or the finite Gram version of the same formula. Therefore the remaining
dense-crowd source is no longer "high rank" by itself; it is an explicit
mismatch / unbounded-row payer, a genuinely nonlinear/global same-packet law,
or construction/exclusion.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
