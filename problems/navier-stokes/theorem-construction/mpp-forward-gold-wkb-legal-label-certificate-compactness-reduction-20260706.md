---
theorem_id: forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706
status: strict-reduction-legal-label-closedness-to-certificate-compactness-or-face-failure
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission
target_object:
  - WKBProfileWitnessLegalityClosedGraph.A
  - MicrolocalDefectProfileAdmission.A
  - LimitOfClassTerminalArtifact.A
  - WKBCertificateCompactness.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mcp-partfieldbeforepackstrengthattempt-a-partfieldbeforepackstrength-a-241943042e.md
completion_truth: >-
  Strict reduction only. The closed-graph profile-admission criterion is now
  reduced to a certificate-compactness theorem. If the WKB label space is
  enlarged to include the actual same-solution legality certificates--same
  datum/viscosity and distributional Navier-Stokes law, material ancestry or
  licensed original participation, finite/readout-compatible cover data, and
  the differentiated same-law tower through depth N--and if those certificate
  coordinates are compact with closed constraint relations, then the legal
  subset is closed and the filed closed-graph criterion admits the profile.
  If a limiting profile is obtained only after projecting away a noncompact or
  nonclosed certificate coordinate, legal prelimit labels may converge to an
  illegal label. The first lost certificate is not retained supply: finite-cover
  loss is Pack-side, material ancestry / pressure-law / tower loss is Part-side,
  and a retained legal tower with high Sobolev readout routes to the Field
  consumer. This note does not prove certificate compactness for Navier-Stokes
  WKB packets, does not prove profile admission, does not prove WKB
  construction/exclusion, does not decide the confinement constant, and does not
  close the MPP.
---

# WKB legal-label closedness is certificate compactness

## 1. Object

The closed-graph profile-admission note proves:
\[
  \mathcal L\subset X\ \hbox{closed},\qquad
  \operatorname{supp}\mu_j\subset\mathcal L,\qquad
  \mu_j\stackrel{*}{\rightharpoonup}\mu
  \quad\Longrightarrow\quad
  \operatorname{supp}\mu\subset\mathcal L .
\]

Here \(X\) is the compact WKB phase-label space and \(\mathcal L\) is the set
of labels satisfying the same-solution witness predicates. That note also gives
the exact nonclosed countermodel.

This note asks what has to be carried in the label topology for
\(\mathcal L\) to be closed.

## 2. Certificate label space

Separate the observable WKB label from its legality certificates. Let
\[
  X_{\rm obs}
\]
be the compact observable phase-label space: material/center/envelope/time,
relative scale, bank, angular moment, weight, rung, and scalar service data.

Let
\[
  C
  =
  C_{\rm law}\times C_{\rm anc}\times C_{\rm cov}\times C_{\rm tower}
\]
be a certificate space, where:

1. \(C_{\rm law}\) records same datum, fixed viscosity, and the actual
   distributional Navier-Stokes velocity-pressure law behind the label;
2. \(C_{\rm anc}\) records material ancestry or licensed original
   participation;
3. \(C_{\rm cov}\) records finite/readout-compatible carrier cover data at the
   measure level;
4. \(C_{\rm tower}\) records the differentiated same-law tower through the
   chosen depth \(N\).

Set
\[
  Y:=X_{\rm obs}\times C.
\]

Let
\[
  \mathcal G\subset Y
\]
be the graph of legal certified WKB labels: \((x,c)\in\mathcal G\) means that
the observable label \(x\) has certificate \(c\) satisfying the four certificate
relations above.

## 3. Closed certificate graph admits the profile

Assume:

1. \(Y\) is compact;
2. \(\mathcal G\) is closed in \(Y\);
3. the prelimit WKB cloud measures lift to certified measures
   \[
     \tilde\mu_j\in\mathcal M_+(Y),
     \qquad
     \operatorname{supp}\tilde\mu_j\subset\mathcal G;
   \]
4. after passing to a subtail,
   \[
     \tilde\mu_j\stackrel{*}{\rightharpoonup}\tilde\mu .
   \]

Then the closed-graph criterion applies in \(Y\), not merely in \(X_{\rm obs}\):
\[
  \operatorname{supp}\tilde\mu\subset\mathcal G .
\]

Let
\[
  \pi:Y\to X_{\rm obs}
\]
be the projection. The observable profile is
\[
  \mu=\pi_\#\tilde\mu .
\]

Because \(\tilde\mu\) is supported on \(\mathcal G\), the profile \(\mu\)
is not just an observable WKB profile. It is the projection of certified legal
same-solution labels. Combined with scalar moment passage, it is an admitted
measure-level terminal WKB witness ledger.

Thus:
\[
\boxed{
\begin{gathered}
\hbox{compact certificate space}+
\hbox{closed certificate graph}+
\hbox{certified prelimit lifts}\\
\Longrightarrow
\hbox{closed legal-label support for the WKB profile}.
\end{gathered}}
\]

This is the positive closedness route.

## 4. Projection without compact certificates is not enough

If the certificate coordinate is omitted, the projection can destroy closedness.
The abstract countermodel is exact.

Let
\[
  Y=[0,1]\times(0,1],
  \qquad
  \mathcal G=\{(0,1/n):n\ge1\}.
\]
Every point of \(\mathcal G\) is legal in \(Y\). Project to
\[
  X_{\rm obs}=[0,1],
  \qquad
  \pi(x,c)=x .
\]
Then every legal observable label is \(0\), but the certificate sequence
\[
  c_n=1/n
\]
has no legal limit inside \((0,1]\). The observable label is constant while the
certificate escapes.

Equivalently, compactify the certificate coordinate to \([0,1]\). Then
\[
  (0,1/n)\to(0,0),
\]
and the limit lies outside the legal graph. The observable profile has not
changed, but legality has failed.

This is the WKB danger in miniature: the pressure-service moment may have a
stable observable label while the material ancestry, cover, pressure-law, or
tower certificate degenerates.

## 5. First lost certificate is the face routing

The first certificate that fails determines the proof-program landing.

Finite/readout-compatible cover failure:
\[
  C_{\rm cov}\ \hbox{not compact or not closed}
  \quad\Rightarrow\quad
  \hbox{Pack-side profile failure}.
\]

Material ancestry, original participation, actual pressure law, or same-law
tower failure:
\[
  C_{\rm anc},\,C_{\rm law},\,C_{\rm tower}\ \hbox{not compact/closed}
  \quad\Rightarrow\quad
  \hbox{Part-side participation or tower failure}.
\]

If the legal certificates persist and the profile carries the nonvanishing WKB
Sobolev readout, then the already installed WKB/Sobolev consumer supplies the
Field-side route:
\[
  \hbox{legal profile}+\lambda_j\to\infty+\phi_jD_j^3|K_j|\ge c_0
  \quad\Rightarrow\quad
  \hbox{Field-side high-Sobolev failure}.
\]

So nonclosedness is not a new retained-supply branch. It is exactly a
limit-of-class artifact, typed by the first missing certificate.

## 6. Reduced burden

The closed-graph profile-admission row is now:

```text
WKBCertificateCompactness.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the legality certificates
admit a compact topology in which same datum/viscosity, actual
velocity-pressure law, material ancestry/original participation,
finite/readout-compatible cover, and differentiated same-law tower are closed
relations, and the prelimit WKB measures lift to that certified graph.

If this holds, the profile is admitted after scalar moment passage. If it
fails, the failure is a Pack/Part/Field typed limit-of-class artifact or a WKB
construction/exclusion problem.

## 7. State

This note proves the certificate-compactness criterion and the projection
countermodel.

It proves no `WKBCertificateCompactness.A` for actual Navier-Stokes WKB
packets, no `MicrolocalDefectProfileAdmission.A`, no
`DiffuseWKBProfileAdmission.A`, no general `ActualWKBCarrierExtraction.A`, no
WKB construction/exclusion theorem, no confinement constant, and no MPP
closure.
