---
theorem_id: forward-gold-wkb-residual-gram-positivity-is-anti-equidistribution-20260706
status: strict-reduction-bounded-residual-gram-positivity-to-anti-equidistribution
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - ResidualGramPositivity.BOUNDED
  - AdmissibleConeAntiEquidistribution.NECESSARY
  - UnboundedResidualPayer.OrConstructionExclusion
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-gram-gap-anti-equidistribution-necessary-condition-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
completion_truth: >-
  Strict reduction only. Once an actually backed rank-one uniform-mode payer has
  been separated, any bounded zero-mode residual Gram form is unable to give a
  count-free lower bound on near-uniform legal positive clouds. For normalized
  weights a=u+h, sum h_b=0, H u=0, and ||H|| <= C_H, one has
  a^T H a = h^T H h and |a^T H a| <= C_H ||a-u||_2^2. Therefore a residual
  lower bound a^T H a >= c forces ||a-u||_2^2 >= c/C_H: exactly the
  legal-cone anti-equidistribution burden already named. A bounded residual
  with row-drift but zero constant term still vanishes on near-uniform clouds,
  with a linear O(||a-u||_2) bound, so it also requires legal separation.
  A residual strong enough to charge near-uniform clouds despite
  ||a-u||_2 -> 0 must have unbounded operator/row strength; that is a new
  high-frequency or certificate payer requiring same-fluid backing, not a free
  pressure-kernel Gram gap. This proves no anti-equidistribution theorem, no
  unbounded residual payer, no WKB construction/exclusion, no confinement
  constant, and no MPP closure.
---

# Residual Gram positivity is anti-equidistribution

## 1. Kill question

The positive uniform-mode note split a cross-cell Gram form into a rank-one
all-to-all payer and a residual:
\[
  G_F=R_F+H_F.
  \tag{RG.1}
\]

The rank-one part has already been priced. In the pressure-service overlap
bath, an order-one version is the fixed-density compensator row.

The kill question here is whether the residual phrase "residual positivity" is
a third independent way out of the uniform-cloud obstruction.

For bounded residuals, the answer is no. Residual positivity only turns into a
count-free floor after the legal cone has already been separated from the
uniform cloud.

## 2. Zero-mode residual algebra

Work on one identity fiber with \(M\) effective cells. Set
\[
  e=(1,\ldots,1),
  \qquad
  u={1\over M}e,
  \qquad
  A(a)=e^Ta.
  \tag{RG.2}
\]

Normalize positive clouds by
\[
  a_b\ge0,
  \qquad
  A(a)=1.
  \tag{RG.3}
\]

Write
\[
  h=a-u,
  \qquad
  e^Th=0.
  \tag{RG.4}
\]

Let \(H\) be the residual quadratic form after the uniform all-to-all payer has
been removed, and assume the residual is a true zero-mode form:
\[
  Hu=0,
  \qquad
  u^TH=0,
  \qquad
  \|H\|_{\ell^2\to\ell^2}\le C_H.
  \tag{RG.5}
\]

Then
\[
  a^THa
  =
  (u+h)^TH(u+h)
  =
  h^THh,
  \tag{RG.6}
\]
and hence
\[
  |a^THa|
  \le
  C_H\|h\|_2^2
  =
  C_H\|a-u\|_2^2.
  \tag{RG.7}
\]

Thus every legal near-uniform sequence
\[
  \|a^{(M)}-u_M\|_2\to0
  \tag{RG.8}
\]
forces
\[
  (a^{(M)})^TH_Ma^{(M)}\to0.
  \tag{RG.9}
\]

So bounded zero-mode residual positivity cannot defeat the near-uniform
countermodel.

## 3. What a residual lower bound really says

Suppose the residual is claimed to satisfy
\[
  a^THa\ge c>0
  \tag{RG.10}
\]
on every normalized legal positive cloud.

Combining (RG.7) and (RG.10) gives
\[
  \|a-u\|_2^2\ge {c\over C_H}.
  \tag{RG.11}
\]

That is exactly the anti-equidistribution theorem:
\[
  \text{legal WKB clouds cannot approach the uniform zero mode.}
  \tag{RG.12}
\]

If \(H\) is positive on \(e^\perp\), for instance
\[
  h^THh\ge \lambda\|h\|_2^2
  \quad(e^Th=0),
  \tag{RG.13}
\]
then \(H\) is a metric for measuring separation. It still does not create a
count-free lower bound until the legal cone supplies a count-free separation
from \(u\).

In short:
\[
\begin{array}{ll}
\text{residual coercive metric}
  &\text{converts anti-equidistribution into charge},\\[1mm]
\text{anti-equidistribution}
  &\text{supplies the count-free distance from the zero mode}.
\end{array}
\tag{RG.14}
\]

The independent theorem is the second line.

## 4. Row-drift residuals do not change the branch

The clean zero-mode statement assumes \(Hu=0\). If the rank-one constant has
been removed but the residual has bounded row drift, the same conclusion holds
with a weaker distance power.

Assume
\[
  u^THu=0,
  \qquad
  \|H\|_{\ell^2\to\ell^2}\le C_H.
  \tag{RG.15}
\]
Then
\[
  a^THa
  =
  2h^THu+h^THh,
  \tag{RG.16}
\]
so
\[
  |a^THa|
  \le
  2C_H\|a-u\|_2+C_H\|a-u\|_2^2.
  \tag{RG.17}
\]

Near-uniform legal clouds still make the residual charge vanish. A positive
count-free lower bound still forces a count-free legal separation from the
uniform cloud. Such a row-drift term is not a hidden Gram gap; if it is to be
charged as a signed same-fluid row, it needs its own backing and legality
certificate.

## 5. The unbounded residual fork

The only way a residual can charge clouds with
\[
  \|a^{(M)}-u_M\|_2\to0
  \tag{RG.18}
\]
is for the residual norm or row strength to grow at the reciprocal rate needed
to offset that distance.

That is not bounded residual positivity. It is a new payer:
\[
\begin{array}{ll}
\text{unbounded high-frequency residual}
  &\text{operator strength grows with the cell count},\\[1mm]
\text{certificate row-drift payer}
  &\text{signed row survives near the uniform cloud},\\[1mm]
\text{dynamic construction/exclusion}
  &\text{the near-uniform bath is built or ruled out}.
\end{array}
\tag{RG.19}
\]

Each item requires same-fluid backing. None follows from the raw mean-zero
pressure kernel, finite cover, common packet identity, or the rank-one payer
decomposition.

## 6. Crowd-branch ledger

After the uniform-mode payer is priced, the WKB cross-cell branch is:
\[
\begin{array}{ll}
\text{backed rank-one uniform mode}
  &\Rightarrow \text{fixed-density compensator / residue branch},\\[1mm]
\text{bounded zero-mode residual}
  &\Rightarrow \text{legal anti-equidistribution or near-uniform failure},\\[1mm]
\text{unbounded residual}
  &\Rightarrow \text{new payer / same-fluid certificate / construction-exclusion},\\[1mm]
\text{near-uniform legal bath}
  &\Rightarrow \text{Gram gap false}.
\end{array}
\tag{RG.20}
\]

So "residual positivity" is no longer an independent placeholder. Bounded
residual positivity is the anti-equidistribution burden; unbounded residual
positivity is a new payer branch.

## 7. Four-sentence result

After the backed rank-one uniform-mode payer is removed, a bounded zero-mode
residual Gram form satisfies \(a^THa=h^THh\) with \(h=a-u\), so its charge is
at most \(C\|a-u\|_2^2\). A count-free residual lower bound therefore forces
the legal WKB cone to stay a count-free distance from the uniform cloud, which
is exactly the anti-equidistribution theorem already named. Bounded row-drift
residuals also vanish on near-uniform clouds, only with a linear distance
bound. A residual that charges near-uniform clouds must be unbounded in cell
count or carry a new same-fluid certificate, so it is a new payer/construction
branch rather than a free residual Gram gap.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
