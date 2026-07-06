---
theorem_id: forward-gold-wkb-certificate-product-assembly-theorem-20260706
status: conditional-assembly-wkbcertificatecompactness-from-four-certificate-rows
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - WKBCertificateCompactness.A
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBTransportDefectVanishesOrCertified.A
  - WKBFiniteCoverCertificateCompactness.A
  - WKBTowerDefectVanishesOrCertified.A
  - MicrolocalDefectProfileAdmission.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
completion_truth: >-
  Conditional assembly theorem only. This note proves that
  WKBCertificateCompactness.A has no remaining independent topological content
  once the four certificate rows are supplied. If the actual-law
  Reynolds-defect row, the material-ancestry transport-defect row, the finite
  cover row, and the differentiated same-law tower row each give compact
  certificate spaces with closed legal graphs and certified prelimit lifts, then
  their product is compact, the intersection graph is closed, the prelimit WKB
  measures lift to that graph, and the closed-graph profile criterion admits the
  limiting WKB profile after scalar moment passage. If any row fails, the first
  failed certificate is not retained WKB supply: cover failure is Pack-side,
  actual-law / ancestry / tower failure is Part-side, and a retained legal tower
  with high Sobolev readout routes to the Field consumer. This note does not
  prove any of the four certificate rows for actual Navier-Stokes WKB packets,
  does not prove profile construction or exclusion, does not decide the
  confinement constant, and does not close the MPP.
---

# WKB certificate compactness assembles from four rows

## 1. Object

The closed-graph admission criterion says that a WKB profile is legally
supported when the prelimit WKB cloud measures lift to a compact closed graph
of same-solution certificates.

The certificate-compactness reduction identified four certificate coordinates:

1. actual velocity-pressure law;
2. material ancestry or licensed original participation;
3. finite/readout-compatible cover;
4. differentiated same-law tower.

The four coordinate notes now give the exact row-level tests:

\[
\begin{array}{ll}
C_{\rm law}
  &\text{Reynolds defect vanishes modulo pressure gauge, or is certified},\\[1mm]
C_{\rm anc}
  &\text{transport defect vanishes in the required graph/current sense, or is certified},\\[1mm]
C_{\rm cov}
  &\text{uniform finite cover with compact chart parameters and closed constraints},\\[1mm]
C_{\rm tower}
  &\text{derivative graph and differentiated flux defects vanish, or are certified}.
\end{array}
\tag{ASS.1}
\]

This note proves that these four rows assemble into
`WKBCertificateCompactness.A`. It does not prove the four rows themselves.

## 2. Product certificate space

Let \(X_{\rm obs}\) be the compact observable WKB label space. Assume the four
certificate rows provide compact spaces
\[
  C_{\rm law},\qquad C_{\rm anc},\qquad C_{\rm cov},\qquad C_{\rm tower}.
  \tag{ASS.2}
\]

Set
\[
  C
  :=
  C_{\rm law}\times C_{\rm anc}\times C_{\rm cov}\times C_{\rm tower},
  \qquad
  Y:=X_{\rm obs}\times C .
  \tag{ASS.3}
\]
Then \(Y\) is compact.

For each coordinate, let
\[
  \mathcal G_i\subset Y
  \tag{ASS.4}
\]
be the pullback of the closed legal graph for that coordinate. Here \(i\) runs
over law, ancestry, cover, and tower. The full legal certificate graph is
\[
  \mathcal G
  :=
  \mathcal G_{\rm law}
  \cap
  \mathcal G_{\rm anc}
  \cap
  \mathcal G_{\rm cov}
  \cap
  \mathcal G_{\rm tower}.
  \tag{ASS.5}
\]
Since finite intersections of closed sets are closed,
\[
  \mathcal G\subset Y
  \quad\hbox{is closed}.
  \tag{ASS.6}
\]

## 3. Certified lifts pass to the profile

Assume the prelimit WKB cloud measures lift to the assembled certificate graph:
\[
  \tilde\mu_j\in\mathcal M_+(Y),
  \qquad
  \operatorname{supp}\tilde\mu_j\subset\mathcal G,
  \qquad
  \pi_\#\tilde\mu_j=\mu_j.
  \tag{ASS.7}
\]

By compactness of \(Y\), after passing to a subtail,
\[
  \tilde\mu_j\stackrel{*}{\rightharpoonup}\tilde\mu .
  \tag{ASS.8}
\]
Because \(\mathcal G\) is closed, the closed-support argument gives
\[
  \operatorname{supp}\tilde\mu\subset\mathcal G.
  \tag{ASS.9}
\]

Let
\[
  \mu=\pi_\#\tilde\mu.
  \tag{ASS.10}
\]
Then \(\mu\) is the observable projection of a legally certified
same-solution WKB profile.

Combining this with the scalar pressure-service moment passage gives:
\[
\boxed{
\begin{gathered}
\text{four compact closed certificate rows}
+\text{certified prelimit lifts}
+\text{scalar moment passage}\\
\Longrightarrow
\text{admitted same-solution WKB profile at measure level}.
\end{gathered}}
\tag{ASS.11}
\]

This is the assembled conditional form of `WKBCertificateCompactness.A`.

## 4. First failed row is the face routing

If the product lift fails, choose the first certificate coordinate that does
not supply a compact closed graph with certified prelimit lifts.

Cover failure gives the Pack-side landing:
\[
  C_{\rm cov}\ \hbox{fails}
  \quad\Longrightarrow\quad
  \hbox{Pack-side carrier-cover failure}.
  \tag{ASS.12}
\]

Actual-law failure gives Part-side law/tower loss:
\[
  C_{\rm law}\ \hbox{fails}
  \quad\Longrightarrow\quad
  \hbox{actual-pressure-law / tower certificate loss}.
  \tag{ASS.13}
\]

Material-ancestry failure gives Part-side same-fluid-history loss:
\[
  C_{\rm anc}\ \hbox{fails}
  \quad\Longrightarrow\quad
  \hbox{original-participation / same-fluid-history failure}.
  \tag{ASS.14}
\]

Differentiated-tower failure gives Part-side same-law tower loss:
\[
  C_{\rm tower}\ \hbox{fails}
  \quad\Longrightarrow\quad
  \hbox{differentiated same-law tower failure}.
  \tag{ASS.15}
\]

If all four certificates persist and the WKB profile carries the nonvanishing
high-Sobolev readout, the already installed Sobolev consumer supplies the Field
route:
\[
  \text{certified WKB profile}
  +\lambda_j\to\infty
  +\phi_jD_j^3|K_j|\ge c_0
  \quad\Longrightarrow\quad
  \text{Field-side Sobolev consumer}.
  \tag{ASS.16}
\]

Thus `WKBCertificateCompactness.A` is not a fifth hidden certificate. It is the
product compactness of the four certificate rows, plus the lift of the prelimit
measures to that product graph.

## 5. Residual list

After assembly, the remaining profile-admission burdens are exactly:

```text
WKBReynoldsDefectVanishesOrCertified.A
WKBTransportDefectVanishesOrCertified.A
WKBFiniteCoverCertificateCompactness.A
WKBTowerDefectVanishesOrCertified.A
CertifiedPrelimitWKBProductLift.A
```

The last line is not a new mechanism. It says that the same prelimit WKB
packets/clouds carry the four certificates simultaneously. If simultaneous
carriage fails, the first failed coordinate routes by (ASS.12)-(ASS.15).

## 6. Four-sentence result

`WKBCertificateCompactness.A` is now a product theorem, not an independent
frontier. If the law, ancestry, cover, and tower certificate rows each provide
compact closed graphs, and the prelimit WKB measures lift to their product,
then the limiting profile is legally certified by closedness of a finite
intersection in a compact product space. If a coordinate cannot be carried, the
first loss is a typed Pack or Part failure; if all coordinates persist with the
high-Sobolev readout, the installed Field consumer applies. The remaining work
is to prove or refute the four row-level certificates and simultaneous
prelimit product lift for actual Navier-Stokes WKB packets.

## 7. State

This note proves the conditional assembly of `WKBCertificateCompactness.A` from
the four certificate rows and certified product lifts.

It proves no row-level defect vanishing or legal carriage theorem for actual
Navier-Stokes WKB packets, no simultaneous product-lift theorem, no profile
construction/exclusion theorem, no confinement constant, and no MPP closure.
