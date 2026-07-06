---
theorem_id: forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706
status: exact-pressure-law-closedness-criterion-reynolds-defect-zero-or-certified
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - WKBCertificateCompactness.A
  - WKBActualPressureLawClosedness.A
  - WKBReynoldsDefectVanishesOrCertified.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-field-admission-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
completion_truth: >-
  Exact fork for the actual velocity-pressure law certificate. If smooth
  same-viscosity Navier-Stokes branches u_j,p_j converge weakly and
  u_j tensor u_j converges to u tensor u plus a Reynolds defect R, then the
  limit satisfies Navier-Stokes-Reynolds with forcing -div R. The ordinary
  Navier-Stokes velocity-pressure law is recovered only when the Leray-projected
  divergence of R vanishes and the pressure-service coordinate remains
  compatible with the absorbed pressure gauge; strong local L2 convergence is
  one sufficient condition. A WKB/microlocal profile with nonzero quadratic
  defect is therefore not an admitted same-solution velocity-pressure profile
  merely because its scalar pressure-service moment passed to the limit. It must
  either prove defect-vanishing / gauge compatibility, carry R as a legal
  certificate, or route to actual-pressure-law / tower certificate loss. The
  localized anisotropic obstruction sharpens the zero-defect horn: for
  R=chi Q with Q constant non-scalar and chi nonzero compactly supported,
  P div R is nonzero. Thus a single localized Beltrami/WKB anisotropic defect
  cannot be pressure gauge. The Reynolds-null characterization then makes the
  remaining cancellation branch exact: P div R=0 iff R=qI+S with div S=0,
  with q absorbed into pressure and S carried, if at all, as a null-stress
  certificate. This proves no theorem forcing actual Navier-Stokes WKB packets
  into the null class, no legal carriage theorem for nonzero null stresses, no
  profile admission theorem, no WKB construction/exclusion, no confinement
  constant, and no MPP closure.
---

# WKB pressure-law certificate: Reynolds-defect closure fork

## 1. Object

The certificate-compactness reduction split WKB profile admission from scalar
moment passage. The profile is legally admitted only after the label space
carries compact closed certificates for:

1. the actual same-viscosity velocity-pressure law;
2. material ancestry or licensed original participation;
3. finite/readout-compatible cover;
4. the differentiated same-law tower.

This note tests the first certificate. The actual velocity-pressure law is
linear in \(u,p\) except for the product \(u\otimes u\). That product is exactly
where WKB profile compactness can lose the law.

## 2. Weak limit of the NS law

Let \(Q\) be a spacetime cylinder and let \((u_j,p_j)\) be smooth
Navier-Stokes fields with fixed viscosity \(\nu\):
\[
  \partial_t u_j+\operatorname{div}(u_j\otimes u_j)+\nabla p_j
  -\nu\Delta u_j=0,
  \qquad
  \operatorname{div}u_j=0 .
  \tag{RDC.1}
\]

Assume, in distributions on \(Q\), that
\[
  u_j\rightharpoonup u,
  \qquad
  p_j\rightharpoonup p,
  \qquad
  u_j\otimes u_j\rightharpoonup M .
  \tag{RDC.2}
\]

Define the quadratic defect
\[
  R:=M-u\otimes u .
  \tag{RDC.3}
\]

Passing (RDC.1) to the limit gives
\[
  \partial_t u+\operatorname{div}(u\otimes u)+\nabla p-\nu\Delta u
  =
  -\operatorname{div}R,
  \qquad
  \operatorname{div}u=0 .
  \tag{RDC.4}
\]

So weak WKB compactness closes the linear part of the equation, but the
nonlinear law closes only through the Reynolds defect.

## 3. Exact pressure-law closure condition

Let \(\mathbb P\) be the Leray projector. Applying \(\mathbb P\) to (RDC.4)
removes pressure gradients:
\[
  \mathbb P\left(
  \partial_t u+\operatorname{div}(u\otimes u)-\nu\Delta u
  \right)
  =
  -\mathbb P\,\operatorname{div}R .
  \tag{RDC.5}
\]

Thus the ordinary Navier-Stokes velocity law is recovered precisely when
\[
  \mathbb P\,\operatorname{div}R=0,
  \tag{RDC.6}
\]
with the pressure coordinate adjusted consistently. A sufficient condition is
strong local convergence:
\[
  u_j\to u\quad\hbox{in }L^2_{\rm loc}(Q)
  \quad\Longrightarrow\quad
  R=0 .
  \tag{RDC.7}
\]

Without (RDC.6), the limiting certified object is not a Navier-Stokes
velocity-pressure branch. It is a Navier-Stokes-Reynolds branch with stress
\(R\).

If \(\operatorname{div}R=\nabla q\), the force can be absorbed into pressure as
\(p+q\), but then the pressure-Hessian / pressure-service coordinate must also
be adjusted by \(q\). A scalar service moment cannot be kept from the old
pressure coordinate while the law certificate uses the absorbed one. That
compatibility is part of the actual-law certificate.

## 4. WKB meaning

A WKB profile is a quadratic high-frequency object. Its second moment is not
just a scalar pressure-service number; it is a tensor defect. In the weak limit,
that tensor is the \(R\) in (RDC.3), modulo lower-order packet corrections.

So the legal WKB profile branch cannot project away \(R\). It has only three
lawful options:

1. prove \(R=0\) or at least \(\mathbb P\operatorname{div}R=0\) with compatible
   pressure service;
2. carry \(R\) as an admitted same-solution certificate in the profile ledger;
3. classify loss of this certificate as actual-pressure-law / tower failure.

The third option is a limit-of-class artifact, not retained WKB supply.

## 5. Model nonclosedness

The abstract obstruction is visible in the standard oscillatory model. Let
\[
  u_j(x)=A(x)a\cos(jk\cdot x)
  \tag{RDC.8}
\]
with \(a\cdot k=0\), and add the usual \(O(j^{-1})\) correction if needed to
make the packet exactly divergence-free. Then
\[
  u_j\rightharpoonup 0,
  \qquad
  u_j\otimes u_j\rightharpoonup {1\over2}A(x)^2\,a\otimes a .
  \tag{RDC.9}
\]

The observable phase label can converge while the quadratic certificate does
not vanish. Unless
\[
  \mathbb P\,\operatorname{div}\left({1\over2}A^2a\otimes a\right)=0,
  \tag{RDC.10}
\]
the projected limit is not an ordinary Navier-Stokes law profile.

This is a model certificate-topology counterexample, not a construction of an
actual Navier-Stokes WKB blow-up branch.

The single localized anisotropic subcase is now exact. If
\[
  R=\chi Q,
  \qquad
  Q\in{\rm Sym}(3),\quad Q\notin\mathbb RI,
  \qquad
  0\ne\chi\in C_c^\infty(\mathbb R^3),
  \tag{RDC.11}
\]
then
\[
  \mathbb P\,\operatorname{div}R\ne0 .
  \tag{RDC.12}
\]
In the eigenbasis of \(Q=\operatorname{diag}(q_1,q_2,q_3)\),
\[
  \nabla\times(Q\nabla\chi)
  =
  \left(
    (q_3-q_2)\partial_{23}\chi,\,
    (q_1-q_3)\partial_{31}\chi,\,
    (q_2-q_1)\partial_{12}\chi
  \right).
  \tag{RDC.13}
\]
Curl-free compact support forces \(\chi=0\) unless \(Q\) is scalar. The
Beltrami shape \(Q_n=I/3-n\otimes n\) is non-scalar, so a single localized
Beltrami defect is not an absorbable pressure gauge. It needs multi-stress
cancellation, legal defect carriage, or actual-law/tower failure.

The multi-stress branch is now exact. For compactly supported smooth symmetric
\(R\),
\[
  \mathbb P\,\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  R=qI+S,\qquad \operatorname{div}S=0 .
  \tag{RDC.14}
\]
The scalar \(qI\) is absorbed into pressure. The divergence-free symmetric
stress \(S\) is invisible to the velocity law but remains a tensor defect that
must be legally carried by the profile certificate and tested by the other
rows. Thus multi-cell cancellation means membership in this Leray-null stress
class, not unrestricted cancellation.

## 6. Reduced burden

The actual-law coordinate in `WKBCertificateCompactness.A` is now:

```text
WKBReynoldsDefectVanishesOrCertified.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the quadratic microlocal
defect \(R\) associated with the profile either vanishes modulo pressure gauge
with compatible pressure-service coordinates, lies in the Leray-null class
\[
  R=qI+S,\qquad \operatorname{div}S=0,
\]
with \(q\) absorbed into pressure and \(S\) legally carried as a null-stress
certificate, or is otherwise carried as a legal same-solution Reynolds
certificate. If none of these holds, the profile fails the actual
velocity-pressure law certificate.

This is smaller than profile admission. It is the law-coordinate test inside
certificate compactness.

## 7. Four-sentence result

The actual Navier-Stokes law certificate is not closed under weak WKB profile
compactness by scalar moment passage alone. Passing the equations to the limit
produces a Reynolds defect \(R\); the ordinary velocity-pressure law survives
only when \(\mathbb P\operatorname{div}R=0\) and the pressure-service coordinate
is compatible. A nonzero WKB/microlocal quadratic defect is therefore not
admitted retained supply unless the defect is killed or legally carried. Failure
of that test is actual-pressure-law / tower certificate loss, hence
limit-of-class failure rather than a new pressure-service branch.

## 8. State

This note proves the Reynolds-defect closure fork for the actual law
certificate, the single-shape localized anisotropic Leray obstruction, and the
exact Leray-null stress characterization. It does not prove actual
Navier-Stokes WKB Reynolds defects lie in the null class, does not prove the
defect vanishes for Navier-Stokes WKB packets, does not prove that a nonzero
defect can be legally carried, does not prove `WKBCertificateCompactness.A`,
does not prove profile admission, does not prove WKB construction/exclusion,
does not decide the confinement constant, and does not close the MPP.
