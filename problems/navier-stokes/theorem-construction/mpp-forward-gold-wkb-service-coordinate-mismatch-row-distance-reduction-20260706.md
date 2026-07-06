---
theorem_id: forward-gold-wkb-service-coordinate-mismatch-row-distance-reduction-20260706
status: exact-reduction-service-coordinate-mismatch-is-row-distance-or-near-uniform-bath
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB legal anti-equidistribution
target_object:
  - ServiceCoordinateMismatch.ROW-DISTANCE-PAYER
  - DensityLevelAntiEquidistribution.NECESSARY
  - NonlinearSamePacketLaw.GAP-OR-CONSTRUCTION
  - NearUniformWKBPressureBath.CONSTRUCTION-EXCLUSION
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-volume-preserving-not-density-gap-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-certificate-rows-do-not-force-density-anti-equidistribution-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-high-rank-linear-certificates-collapse-to-mismatch-payer-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-nonlinear-same-packet-law-gap-or-construction-dichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
completion_truth: >-
  Exact reduction only. After bare material ancestry is removed as a density-gap
  source, a fixed service-coordinate mismatch can force anti-equidistribution
  only by the standard row-distance inequality. For a normalized positive WKB
  density f and service readout m, the constraint int m f d omega = a gives
  delta=a-int m d omega = int (m-bar m)(f-1)d omega, hence
  ||f-1||_2 >= |delta|/||m-bar m||_2 when the denominator is finite and nonzero.
  For multiple or high-rank service coordinates this is exactly the finite
  Gram / Hilbert row-distance formula already filed. If delta=0, or the
  mismatch distance tends to zero, the service row is uniform-compatible and
  leaves the near-uniform bath alive. Therefore "service-coordinate mismatch"
  is not a fifth global same-packet mechanism: it is an explicit row-distance
  payer, an unbounded-row/residual product branch, or construction/exclusion of
  the near-uniform same-fluid WKB bath. This proves no positive row-distance
  floor for the actual WKB bath, no construction/exclusion, no confinement
  constant, and no MPP closure.
---

# Service-coordinate mismatch is row distance

## 1. Object

The material-ancestry volume-preservation note removed one tempting source of
the WKB density gap:
\[
  \hbox{same-fluid incompressible ancestry alone}
  \not\Longrightarrow
  \|f-1\|_{L^2_\omega}\ge c .
  \tag{SCM.1}
\]

It left a sharper possibility: the material history might matter through a
non-volume service coordinate.

This note identifies that branch exactly. A fixed service-coordinate mismatch
is a row-distance payer. If there is no mismatch, it does not supply
anti-equidistribution.

## 2. Scalar service row

Let \((X,\omega)\) be the normalized WKB label cloud and let
\[
  f\ge0,
  \qquad
  \int_X f\,d\omega=1
  \tag{SCM.2}
\]
be the population density. Let
\[
  m:X\to\mathbb R
  \tag{SCM.3}
\]
be a bounded or square-integrable service coordinate: for instance active
Beltrami scale drift, pressure-service contraction, bank-coordinate service, or
another stabilized scalar row.

Suppose the service row prescribes
\[
  \int_X m f\,d\omega=a.
  \tag{SCM.4}
\]

The uniform bath has service
\[
  \bar m:=\int_X m\,d\omega .
  \tag{SCM.5}
\]

Set
\[
  \delta:=a-\bar m .
  \tag{SCM.6}
\]

Since \(\int(f-1)d\omega=0\),
\[
  \delta
  =
  \int_X (m-\bar m)(f-1)\,d\omega .
  \tag{SCM.7}
\]

Therefore Cauchy-Schwarz gives
\[
  |\delta|
  \le
  \|m-\bar m\|_{L^2_\omega}\,
  \|f-1\|_{L^2_\omega}.
  \tag{SCM.8}
\]

If \(0<\|m-\bar m\|_{L^2_\omega}<\infty\), then
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|\delta|\over \|m-\bar m\|_{L^2_\omega}}.
  \tag{SCM.9}
\]

This is the whole scalar service-mismatch mechanism.

## 3. Exact split

There are only four scalar outcomes:
\[
\begin{array}{ll}
\delta\ne0,\ \|m-\bar m\|_2=O(1)
  &\Rightarrow \text{explicit row-distance payer},\\[1mm]
\delta=0
  &\Rightarrow \text{uniform bath satisfies the service row},\\[1mm]
\delta\to0\text{ at the terminal scale}
  &\Rightarrow \text{no count-free density gap from this row},\\[1mm]
\|m-\bar m\|_2\to\infty
  &\Rightarrow \text{unbounded row / residual product branch}.
\end{array}
\tag{SCM.10}
\]

So a service coordinate can force anti-equidistribution only when the uniform
bath misses the demanded service by a fixed amount in a row of controlled norm.
That fixed miss is the payer.

## 4. Multiple rows

For a vector of service coordinates
\[
  L(f)
  =
  \left(\int \phi_i f\,d\omega\right)_i,
  \tag{SCM.11}
\]
and prescribed mismatch
\[
  L(f-1)=\delta,
  \tag{SCM.12}
\]
the least density distance is the finite Gram formula:
\[
  \inf_{L(f-1)=\delta}\|f-1\|_{L^2_\omega}^2
  =
  \delta^T\mathcal G^\dagger\delta,
  \qquad
  \mathcal G_{ij}=\langle\phi_i,\phi_j\rangle_{L^2_\omega}.
  \tag{SCM.13}
\]

For high-rank or infinite Hilbert service families, the same statement is
\[
  d_M^2
  =
  \left\langle
    \delta_M,(L_ML_M^*)^\dagger\delta_M
  \right\rangle .
  \tag{SCM.14}
\]

Thus service-coordinate mismatch is already contained in the finite-row and
high-rank row-distance reductions. It is not a new global mechanism.

## 5. Beltrami active-service reading

For material Beltrami carriers,
\[
  S:Q_n=D_t\log\lambda .
  \tag{SCM.15}
\]

If the legal cloud is uniform in a family whose mean carrier-scale drift already
equals the demanded active service, then
\[
  \delta=0
  \tag{SCM.16}
\]
for that service row and no density separation follows.

If the demanded service differs from the uniform mean, then (SCM.9) gives the
exact price:
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|a-\int D_t\log\lambda\,d\omega|
    \over
    \|D_t\log\lambda-\int D_t\log\lambda\,d\omega\|_{L^2_\omega}}.
  \tag{SCM.17}
\]

That price is useful when it has a scale-uniform positive lower bound. Without
that lower bound, the service row is uniform-compatible or weakens into the
same residual/product problem already recorded for unbounded rows.

## 6. Consequence for the dense WKB crowd

The phrase left by the material-ancestry note,
\[
  \hbox{service-coordinate mismatch},
  \tag{SCM.18}
\]
has now been typed:

\[
\begin{array}{ll}
\text{fixed mismatch with controlled row norm}
  &\text{explicit density anti-equidistribution payer},\\[1mm]
\text{uniform-compatible service row}
  &\text{near-uniform bath still legal for this coordinate},\\[1mm]
\text{vanishing mismatch or growing row norm}
  &\text{no count-free gap unless the product law is paid},\\[1mm]
\text{no positive legal solution}
  &\text{construction/exclusion or failed admission}.
\end{array}
\tag{SCM.19}
\]

So the remaining nonlinear/global same-packet branch is narrower: after all
explicit row mismatches are pulled out and priced, what remains is a positive
forbidden ball around the uniform bath, or actual construction/exclusion of the
near-uniform same-fluid WKB bath.

## 7. Four-sentence result

A service-coordinate mismatch forces density anti-equidistribution only by
ordinary row distance. In the scalar case the lower bound is
\[
  \|f-1\|_{L^2_\omega}
  \ge
  {|a-\int m\,d\omega|\over\|m-\int m\,d\omega\|_{L^2_\omega}} .
\]
For many service coordinates this is exactly the Gram or Hilbert row-distance
formula. Therefore the service-coordinate branch is an explicit payer if the
uniform bath misses the demanded service, and otherwise it leaves the
near-uniform bath for construction/exclusion.

## 8. State

This note proves the row-distance reduction for fixed service-coordinate
mismatch.

It proves no positive lower bound for the actual WKB service row, no unbounded
row product estimate, no nonlinear forbidden-ball theorem, no construction or
exclusion of the near-uniform same-fluid WKB bath, no confinement constant, and
no MPP closure.
