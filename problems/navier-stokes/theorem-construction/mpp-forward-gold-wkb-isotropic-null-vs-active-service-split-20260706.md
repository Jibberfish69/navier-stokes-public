---
theorem_id: forward-gold-wkb-isotropic-null-vs-active-service-split-20260706
status: strict-reduction-isotropic-pressure-gauge-carries-no-active-service
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB envelope stress
target_object:
  - WKBEnvelopeStress.NULL-OR-CERTIFIED
  - IsotropicPressureGauge.NO-ACTIVE-SERVICE
  - AnisotropicEnvelopeStress.NULL-CERTIFIED-OR-FAILURE
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-envelope-stress-defect-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-uniform-mode-charge-compensator-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-psd-ballast-is-not-gram-gap-20260706.md
completion_truth: >-
  Strict reduction only. The envelope stress R_env=A^2 C_b has an exact scalar
  / trace-free split C_b=cI+K. The scalar part A^2 cI is Leray-null because its
  divergence is a gradient, but it has zero contraction with incompressible
  strain and therefore carries no active trace-free pressure-service row. The
  active service, if any, is entirely in the trace-free part A^2 K. That branch
  cannot hide as scalar pressure gauge: a single compact localized non-scalar
  shape has nonzero Leray force, while a multi-cell aggregate must land in the
  exact null class qI+S with div S=0, be legally carried with PSD trace ballast
  or signed-stress variation, or route to actual-law / ancestry / cover / tower
  failure. This proves no WKB construction or exclusion, no W1 repair, no
  confinement constant, and no MPP closure.
---

# Isotropic null branch is not active service

## 1. Object

The WKB envelope-stress note leaves the macroscopic covariance
\[
  R_{\rm env}=A^2 C_b,
  \qquad
  C_b=\langle b\otimes b\rangle .
  \tag{INA.1}
\]

That stress has two different roles that must not be merged:

\[
  \text{velocity-law pressure gauge}
  \qquad\hbox{and}\qquad
  \text{active trace-free pressure service.}
  \tag{INA.2}
\]

This note separates them.

## 2. Scalar / trace-free split

Write
\[
  C_b=cI+K,
  \qquad
  \operatorname{tr}K=0.
  \tag{INA.3}
\]

Then
\[
  R_{\rm env}
  =
  R_{\rm iso}+R_{\rm aniso},
  \qquad
  R_{\rm iso}:=cA^2I,
  \qquad
  R_{\rm aniso}:=A^2K .
  \tag{INA.4}
\]

The two terms belong to different proof coordinates.

## 3. Isotropic branch

The scalar branch has
\[
  \operatorname{div}R_{\rm iso}
  =
  \nabla(cA^2).
  \tag{INA.5}
\]

Therefore
\[
  \mathbb P\,\operatorname{div}R_{\rm iso}=0.
  \tag{INA.6}
\]

It is pressure gauge for the velocity law.

But for an incompressible producer strain
\[
  S_{\rm str}=S_{\rm str}^T,
  \qquad
  \operatorname{tr}S_{\rm str}=0,
  \tag{INA.7}
\]
the same scalar branch gives
\[
  S_{\rm str}:R_{\rm iso}
  =
  cA^2\operatorname{tr}S_{\rm str}
  =
  0.
  \tag{INA.8}
\]

So the isotropic branch is exactly null in the velocity-force coordinate and
exactly zero in the trace-free active-service coordinate. It can carry
unresolved kinetic trace ballast if it comes from PSD covariance, but it cannot
pay a selected trace-free W1 / same-shape pressure-service row.

This is the shortcut blocked by the PSD-ballast and uniform-mode notes: positive
scalar covariance energy is a ballast/readout or compensator-routing object,
not a cross-cell trace-free Gram gap and not active service.

## 4. Active branch

Only the trace-free part can interact with the active strain projection:
\[
  S_{\rm str}:R_{\rm env}
  =
  S_{\rm str}:R_{\rm aniso}
  =
  A^2\,S_{\rm str}:K .
  \tag{INA.9}
\]

Thus any same-shape pressure-service use of the WKB bath must use
\[
  R_{\rm aniso}=A^2K .
  \tag{INA.10}
\]

This branch does not inherit the scalar gauge escape. If \(K\) is a fixed
nonzero trace-free non-scalar matrix and \(A^2\) is nonzero and compactly
localized, the localized anisotropic obstruction gives
\[
  \mathbb P\,\operatorname{div}(A^2K)\ne0.
  \tag{INA.11}
\]

For a many-cell bath, cancellation is possible only in the exact
Reynolds-null class:
\[
  R_{\rm env}=qI+S_0,
  \qquad
  \operatorname{div}S_0=0.
  \tag{INA.12}
\]

Here the scalar part \(qI\) is pressure gauge. The tensor \(S_0\) remains a
certificate/readout for the profile rows.

If \(R_{\rm env}\) is an actual Reynolds covariance, then \(R_{\rm env}\ge0\).
A nonzero trace-free component requires positive trace ballast:
\[
  R_{\rm env}={\tau\over3}I+A,
  \qquad
  A\ne0,
  \qquad
  R_{\rm env}\ge0
  \quad\Longrightarrow\quad
  \tau\ge\sqrt{3\over2}\,|A|_F.
  \tag{INA.13}
\]

That trace is unresolved kinetic energy,
\[
  \mu_R={1\over2}\operatorname{tr}R_{\rm env}.
  \tag{INA.14}
\]

Pressure absorption can remove the velocity-force contribution. It cannot turn
the active trace-free tensor into scalar gauge, and it cannot delete the trace
ballast from the witness profile.

## 5. Material Beltrami reading

For the Beltrami service shape
\[
  Q_n={1\over3}I-n\otimes n,
  \tag{INA.15}
\]
the material phase identity gives
\[
  S_{\rm str}:Q_n=D_t\log\lambda .
  \tag{INA.16}
\]

So carrier-neutral Beltrami cells have \(S_{\rm str}:Q_n=0\). They may
contribute to an orthogonal/eigenframe row, but they do not pay active scalar
same-shape service.

Conversely, a positive active Beltrami mixture with \(S_{\rm str}:K\ne0\)
is a carrier-scale drift / refresh / custody / construction-exclusion branch,
not a scalar pressure-gauge branch.

## 6. Reduced burden

The WKB envelope-stress branch now has the following split:

\[
\begin{array}{ll}
\text{pure scalar covariance }R_{\rm iso}
  &\text{pressure gauge, active-service zero, ballast/readout only,}\\[1mm]
\text{trace-free active covariance }R_{\rm aniso}
  &\text{Leray-null aggregation, legal certificate carriage, or failure,}\\[1mm]
\text{carrier-neutral Beltrami service}
  &\text{orthogonal/eigenpath row, not same-shape active service,}\\[1mm]
\text{active Beltrami service}
  &\text{carrier drift / refresh / custody / construction-exclusion.}
\end{array}
\tag{INA.17}
\]

Thus the WKB bath cannot use one scalar branch to do both jobs. It cannot hide
as pressure gauge and simultaneously pay active trace-free service.

## 7. Four-sentence result

The envelope covariance splits as \(C_b=cI+K\), with \(K\) trace-free. The
isotropic part \(cA^2I\) is Leray-null because its divergence is a gradient,
but it contracts to zero against incompressible strain, so it supplies no
active trace-free service. The service-bearing part is \(A^2K\), and that part
must pass the exact Leray-null / certificate / failure split rather than hide as
scalar pressure. This is a strict WKB-branch reduction, not a construction,
exclusion, W1 repair, confinement constant, or MPP closure.

## 8. State

This note proves only the scalar-null / active-service separation for the WKB
envelope stress.

It proves no theorem forcing actual Navier-Stokes WKB covariance into the
Leray-null class, no legal carriage theorem for the trace-free stress and its
trace ballast, no same-solution WKB witness admission theorem, no
construction/exclusion theorem for the active bath, no confinement constant,
and no MPP closure.
