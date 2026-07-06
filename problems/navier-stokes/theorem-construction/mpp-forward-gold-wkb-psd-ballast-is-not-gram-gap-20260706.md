---
theorem_id: forward-gold-wkb-psd-ballast-is-not-gram-gap-20260706
status: exact-countermodel-psd-trace-ballast-alone-does-not-supply-cross-cell-gram-gap
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB cross-cell Gram gap
target_object:
  - CrossCellWKBGramGap.A
  - PSDCovarianceBallastGramGap.False
  - WKBReynoldsDefectVanishesOrCertified.A
  - AtomicWKBUnboundedCountCloudBranch
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-kernel-zero-mode-gram-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-no-vanishing-horn-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-covariance-ballast-field-readout-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-cover-landing-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706.md
completion_truth: >-
  Exact obstruction to a proposed supplier only. PSD covariance positivity and
  positive trace ballast do not imply the cross-cell Gram gap. A uniform cloud
  of isotropic PSD Reynolds defects \(R_b=(2a_b/3)I\), \(a_b=1/M\), has
  normalized positive unresolved kinetic energy \(\sum_b\mu_b=1\), is
  pressure-gauge/Leray-null in the velocity-force coordinate, and has zero
  trace-free anisotropic component \(A_b=0\). Hence every selected
  trace-free pressure/Hessian Gram charge fed only by the anisotropic part is
  zero, while any diagonal trace-square reserve is \(\sum_b\mu_b^2=1/M\to0\).
  The already filed ballast notes remain valid: nonvanishing admitted terminal
  trace is Field-visible, vanishing trace kills PSD anisotropy, and lost cover,
  ancestry, or tower carriage is Pack/Part-side certificate failure. This note
  only blocks the shortcut that PSD/trace ballast itself is
  `CrossCellWKBGramGap.A`; it proves no admissible-cone gap, no WKB
  construction/exclusion theorem, no crowd-cell decision, no confinement
  constant, and no MPP closure.
---

# PSD ballast is not a cross-cell Gram gap

## 1. Object

The pressure-kernel zero-mode note killed the kernel-only route to
\[
  \inf_{\substack{a\in\mathcal C_j\\ \sum_b a_b=1}}
  a^TG_ja\ge c>0 .
  \tag{PBG.1}
\]

This note tests the next tempting shortcut: use PSD Reynolds covariance
positivity and positive trace ballast as the missing positivity.

That shortcut fails. The ballast is real unresolved kinetic energy, but it is a
scalar trace ledger and a certificate/Field consumer. It is not, by itself, a
positive all-to-all interaction form on the selected WKB cloud.

## 2. Isotropic PSD ballast countermodel

Take \(M\) WKB cells with positive weights
\[
  a_b={1\over M},
  \qquad
  \sum_{b=1}^M a_b=1.
  \tag{PBG.2}
\]
In cell \(b\), put an isotropic Reynolds covariance defect
\[
  R_b={2a_b\over3}I.
  \tag{PBG.3}
\]
Then
\[
  R_b\ge0,\qquad
  \mu_b:={1\over2}\operatorname{tr}R_b=a_b,
  \qquad
  \sum_b\mu_b=1.
  \tag{PBG.4}
\]

So the cloud has normalized positive PSD ballast energy.

It is also Leray-null in the velocity-force coordinate. If the cells are
represented by scalar cutoffs, the aggregate isotropic part has the form
\[
  R_{\rm iso}=\rho I,
  \tag{PBG.5}
\]
and
\[
  \operatorname{div}R_{\rm iso}=\nabla\rho .
  \tag{PBG.6}
\]
That force is pressure gauge.

But the trace-free anisotropic component is identically zero:
\[
  A_b:=R_b-{1\over3}(\operatorname{tr}R_b)I=0.
  \tag{PBG.7}
\]
Therefore any selected pressure-Hessian or trace-free Gram charge fed by
\(A_b\) is zero:
\[
  Q_{\rm tf}(a)=0.
  \tag{PBG.8}
\]

If one instead tries to use the trace energy as a diagonal square reserve, the
old fragmentation calculation returns:
\[
  \sum_b\mu_b^2
  =
  \sum_b{1\over M^2}
  =
  {1\over M}
  \longrightarrow0.
  \tag{PBG.9}
\]

Thus PSD positivity plus positive trace ballast does not imply a count-free
cross-cell Gram gap.

## 3. Balanced anisotropy does not repair the shortcut

Even adding local anisotropy does not make positivity into a gap. Let
\[
  A_i=m\left(e_i\otimes e_i-{1\over3}I\right),
  \qquad i=1,2,3.
  \tag{PBG.10}
\]
Then each \(A_i\) is trace-free and
\[
  \sum_{i=1}^3 A_i=0.
  \tag{PBG.11}
\]
Choosing \(\tau\ge m\) gives
\[
  R_i={\tau\over3}I+A_i\ge0.
  \tag{PBG.12}
\]

So PSD covariance permits positive trace ballast with a balanced trace-free
orientation cloud. Positivity gives the upper constraint
\[
  |A|\le 2\sqrt{2\over3}\,\mu_R,
  \tag{PBG.13}
\]
not a lower constraint forcing a nonzero selected trace-free moment or a
positive cross-cell quadratic form.

## 4. What the ballast notes still prove

The existing ballast branch remains exactly useful:
\[
\begin{array}{ll}
\hbox{nonvanishing admitted terminal trace ballast}
  &\Rightarrow \hbox{Field-visible high-Sobolev readout},\\[1mm]
\hbox{vanishing trace ballast}
  &\Rightarrow \hbox{vanishing PSD trace-free anisotropy},\\[1mm]
\hbox{lost cover, ancestry, or tower carriage}
  &\Rightarrow \hbox{Pack/Part-side certificate failure},\\[1mm]
\hbox{non-PSD signed stress}
  &\Rightarrow \hbox{explicit signed certificate with trace-variation floor}.
\end{array}
\tag{PBG.14}
\]

Those are consumer and routing statements after the Reynolds-defect branch has
entered the certificate surface. They do not supply (PBG.1).

So the remaining cross-cell gap still has to come from one of the structures
named in the Gram-gap criterion: admissible-cone restrictions that forbid the
near-null cloud, same-packet identity, legal certificate constraints,
non-translation-invariant geometry, or actual dynamic WKB construction or
exclusion.

## 5. Four-sentence result

PSD covariance positivity prices anisotropy by positive trace, but it does not
make trace ballast into a cross-cell Gram gap. A uniform isotropic PSD ballast
cloud has normalized positive energy, is pressure-gauge in the velocity-force
coordinate, and has zero trace-free anisotropic charge. Its trace-square
reserve also fragments as \(1/M\). Therefore `CrossCellWKBGramGap.A` cannot be
proved from PSD positivity or positive trace ballast alone.

## 6. State

This note proves only the ballast-only Gram-gap obstruction.

It proves no admissible-cone theorem, no legal certificate theorem, no WKB
profile admission theorem, no WKB construction/exclusion theorem, no crowd-cell
decision, no confinement constant, and no MPP closure.
