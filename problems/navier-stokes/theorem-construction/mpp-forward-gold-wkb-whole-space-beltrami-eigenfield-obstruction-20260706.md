---
theorem_id: forward-gold-wkb-whole-space-beltrami-eigenfield-obstruction-20260706
status: exact-branch-kill-nonzero-finite-energy-whole-space-beltrami-eigenfield-impossible
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB bath construction-exclusion
target_object:
  - WholeSpaceBeltramiEigenfield.L2Obstruction
  - ConstantShellBeltramiBath.ModelOnly
  - SameFluidWKBBath.LocalizationOrBroadbandFork
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-constant-beltrami-bath-model-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-free-periodic-beltrami-not-evasion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-envelope-stress-defect-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-localization-cell-count-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-beltrami-material-phase-service-identity-20260706.md
completion_truth: >-
  Exact branch kill only. A whole-space L2 vector field satisfying
  curl U=lambda U with one nonzero constant eigenvalue must vanish: after
  Fourier transform, (-Delta U=lambda^2 U) forces the transform to be supported
  on the sphere |xi|=|lambda|, a measure-zero set, hence the L2 transform is
  zero. Thus the exact Beltrami neutralizer cannot be turned into a finite
  energy R3 same-fluid bath by replacing the periodic cell with a nonperiodic
  L2 curl eigenfield. Nonzero exact cells remain periodic/box or generalized
  shell objects, and finite-energy survivors must localize or broaden the
  shell, which re-enters the envelope stress, cutoff/Hodge, material-phase,
  Reynolds-certificate, refresh/custody, or construction/exclusion rows. This
  proves no WKB bath exclusion, no WKB bath construction, no crowd theorem, no
  confinement constant, and no MPP closure.
---

# Whole-space Beltrami eigenfield obstruction

## 1. Question

The constant Beltrami bath note leaves the correct model-cell baseline:
same-helicity shell cells have projected self-interaction zero. The free
periodic follow-up then says the periodic cell is not a finite-energy
whole-space evasion.

There is one exact variant between those two statements:

\[
  \text{Can a nonperiodic finite-energy field on }\mathbb R^3
  \text{ be the exact Beltrami neutralizer?}
  \tag{WBE.1}
\]

The answer is no. In \(L^2(\mathbb R^3)\), the only constant-eigenvalue
Beltrami field is zero.

## 2. Fourier obstruction

Let
\[
  U\in L^2(\mathbb R^3;\mathbb R^3),
  \qquad
  \nabla\times U=\lambda U
  \tag{WBE.2}
\]
in the distributional sense, with fixed \(\lambda\ne0\).

Taking divergence gives
\[
  \nabla\cdot U=0.
  \tag{WBE.3}
\]
Applying curl once more gives
\[
  \nabla\times\nabla\times U
  =
  \lambda\nabla\times U
  =
  \lambda^2U.
  \tag{WBE.4}
\]
Since \(\nabla\cdot U=0\),
\[
  -\Delta U=\lambda^2U.
  \tag{WBE.5}
\]

Fourier transforming,
\[
  (|\xi|^2-\lambda^2)\widehat U(\xi)=0.
  \tag{WBE.6}
\]
Thus \(\widehat U\) is supported on
\[
  \Sigma_\lambda:=\{\xi:|\xi|=|\lambda|\}.
  \tag{WBE.7}
\]
But \(\Sigma_\lambda\) has Lebesgue measure zero, while
\(\widehat U\in L^2(\mathbb R^3)\). Hence
\[
  \widehat U=0,
  \qquad
  U=0.
  \tag{WBE.8}
\]

So the exact whole-space finite-energy Beltrami eigenfield branch is empty.

## 3. What exact Beltrami cells can be

The nonzero exact neutralizer still exists in the model settings already
filed.

On a torus or periodic cell, shell modes live on a discrete frequency sphere,
so nonzero Beltrami eigenfields exist. That is the constant-cell object:
\[
  (W\cdot\nabla)W=\nabla {|W|^2\over2},
  \qquad
  \mathbb P\nabla\cdot(W\otimes W)=0.
  \tag{WBE.9}
\]
As a whole-space periodic field, it has infinite energy and zero
cell-periodic net stretching production in the free-cell reading.

As a generalized whole-space shell object, the Fourier support sits on
\(\Sigma_\lambda\). That is not an \(L^2\) velocity field. It is a distributional
or model-cell carrier, not a finite-energy Navier-Stokes counterexample.

As a finite-energy shell packet, the support must have positive radial
thickness or spatial localization. Then (WBE.6) is no longer exact, and the
Beltrami cancellation is no longer an exact whole-field identity. The branch
has become a WKB defect problem.

## 4. Routing of the surviving variants

The obstruction gives the exact fork:

\[
\begin{array}{ll}
\text{periodic exact cell}
  &\Rightarrow \text{model cell / infinite whole-space energy},\\[1mm]
\text{whole-space }L^2\text{ exact eigenfield}
  &\Rightarrow U=0,\\[1mm]
\text{localized finite-energy packet}
  &\Rightarrow \text{cutoff/Hodge and envelope-stress rows},\\[1mm]
\text{broadband finite-energy packet}
  &\Rightarrow \text{non-exact Beltrami defect / WKB construction surface}.
\end{array}
\tag{WBE.10}
\]

Thus the construction/exclusion target cannot use an exact nonzero
\(L^2(\mathbb R^3)\) Beltrami eigenfield. It must use a localized or broadband
same-fluid WKB bath, where the already named mechanisms are the live ones:
envelope stress, material phase drift, fixed-viscosity persistence,
Reynolds-certificate legality, refresh/reassembly/custody, and witness
admission.

## 5. Four-sentence result

A nonzero constant-eigenvalue Beltrami field cannot live in
\(L^2(\mathbb R^3)\). Fourier support would have to lie on the sphere
\(|\xi|=|\lambda|\), which has measure zero, so the \(L^2\) transform vanishes.
The exact Beltrami neutralizer is therefore either a periodic/model-cell object
or a non-\(L^2\) shell object, not a finite-energy whole-space evasion. Any
finite-energy survivor must localize or broaden the shell, returning to the
WKB envelope, material-phase, Reynolds-certificate, refresh/custody, or
construction/exclusion branches.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
