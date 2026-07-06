---
theorem_id: forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706
status: exact-finite-cover-certificate-compactness-criterion-cover-loss-pack-side
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - WKBCertificateCompactness.A
  - WKBFiniteCoverCertificateCompactness.A
  - WKBFiniteCoverDefectVanishesOrPackFailure.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/r3-cm-contrapositive-sobolev-hs-energy-20260528.md
completion_truth: >-
  Exact criterion and countermodels for the finite/readout-compatible cover
  certificate. If the WKB profile measures lift to a uniformly bounded finite
  chart assignment over a compact chart-parameter space, with closed membership,
  closed readout-compatibility, and closed finite-overlap constraints, then
  weak-* limits retain a finite/readout-compatible cover certificate. If the
  profile is obtained only after projecting away the cover certificate, cover
  legality can fail by radius collapse, unbounded chart count, escaping chart
  parameters, or overlap/readout-compatibility loss. Such failure is Pack-side
  carrier/cover loss, not retained WKB supply and not a new pressure-service
  branch. This proves no uniform finite-cover theorem for actual Navier-Stokes
  WKB packets, no profile admission theorem, no WKB construction/exclusion, no
  confinement constant, and no MPP closure.
---

# WKB finite-cover certificate compactness fork

## 1. Object

The certificate-compactness reduction left four legality coordinates:

1. actual velocity-pressure law;
2. material ancestry or licensed original participation;
3. finite/readout-compatible cover;
4. differentiated same-law tower.

The first two coordinates have defect forks: Reynolds defect for the law, and
transport defect for material ancestry. This note gives the compactness test
for the third coordinate.

A WKB profile is not a retained terminal witness merely because a positive
pressure-service moment survives as a measure. It must still be placeable on a
finite, readout-compatible carrier cover with bounded overlap and the required
local chart data.

## 2. Cover certificate space

Let \(X\) be the compact observable WKB phase-label space. Fix an integer
\[
  M<\infty
  \tag{FCC.1}
\]
and a compact chart-parameter space \(P\). A cover certificate consists of:

1. chart parameters \(p=(p_1,\ldots,p_M)\in P^M\);
2. an assignment of profile mass to chart labels \(a\in\{1,\ldots,M\}\);
3. closed membership relations
   \[
     x\in U(p_a);
     \tag{FCC.2}
   \]
4. closed readout-compatibility relations for the selected WKB readout in each
   chart;
5. a closed finite-overlap constraint, with overlap at most \(\Omega\).

The clean way to store the certificate is not only as a cover of \(X\), but as
a lifted measure
\[
  \tilde\mu_j\in\mathcal M_+\bigl(X\times\{1,\ldots,M\}\times P^M\bigr),
  \qquad
  \pi_\#\tilde\mu_j=\mu_j ,
  \tag{FCC.3}
\]
where \(\pi\) forgets the chart assignment and parameters.

Let
\[
  \mathcal C\subset X\times\{1,\ldots,M\}\times P^M
  \tag{FCC.4}
\]
be the closed set of legal cover assignments: membership, readout compatibility,
and finite-overlap are all satisfied.

## 3. Closed finite cover passes to the profile

Assume
\[
  \operatorname{supp}\tilde\mu_j\subset\mathcal C,
  \qquad
  \tilde\mu_j\stackrel{*}{\rightharpoonup}\tilde\mu .
  \tag{FCC.5}
\]

Since the lifted space is compact and \(\mathcal C\) is closed,
\[
  \operatorname{supp}\tilde\mu\subset\mathcal C
  \tag{FCC.6}
\]
by the same closed-support argument used in the closed-graph profile note.

Let
\[
  \mu=\pi_\#\tilde\mu .
  \tag{FCC.7}
\]
Then \(\mu\) is not just an observable WKB profile. It is the projection of a
profile with a legal finite-cover certificate: at most \(M\) charts, legal
membership, readout compatibility, and finite overlap.

Thus:
\[
\boxed{
\begin{gathered}
\hbox{uniform finite chart bound}+
\hbox{compact chart parameters}+
\hbox{closed cover/readout/overlap graph}\\
\Longrightarrow
\hbox{finite/readout-compatible cover persists in the WKB profile}.
\end{gathered}}
\tag{FCC.8}
\]

## 4. Projection without cover certificates is not enough

If the cover data is omitted, the observable profile may converge while the
cover certificate fails.

### Radius collapse

Let \(X=[0,1]\) and let the legal chart radius be \(r\in(0,1]\). Take
\[
  \mu_j=\delta_0,
  \qquad
  r_j={1\over j}.
  \tag{FCC.9}
\]
Each prelimit observable measure has a legal chart, but the chart parameter has
no legal limit in \((0,1]\). After compactifying to \(r=0\), the limiting chart
is not a positive carrier chart. The observable profile \(\delta_0\) has not
moved; the cover certificate has collapsed.

### Unbounded chart count

Let \(X=\mathbb N\cup\{\infty\}\) be the one-point compactification and let
legal charts be singletons \(\{n\}\), \(n\in\mathbb N\). Define
\[
  \mu_N={1\over N}\sum_{n=1}^N\delta_n .
  \tag{FCC.10}
\]
Then
\[
  \mu_N\stackrel{*}{\rightharpoonup}\delta_\infty .
  \tag{FCC.11}
\]
Each \(\mu_N\) has a finite legal cover, but the number of charts is \(N\). With
no uniform finite bound and no legal chart at \(\infty\), the limiting
observable profile has no finite legal cover certificate.

These are model certificate failures, not constructions of Navier-Stokes
blow-up branches.

## 5. Proof-program landing

Finite/readout-compatible cover is the Pack-side carrier geometry. If the WKB
profile cannot be lifted to a finite cover certificate, the witness has lost
localized carrier service before it reaches the Part or Field rows.

The routing is:
\[
\begin{array}{ll}
\text{finite cover certificate persists}
  &\Rightarrow \text{Pack-side cover clause survives},\\[2mm]
\text{cover radius collapses / count escapes / overlap or readout graph fails}
  &\Rightarrow \text{Pack-side carrier-cover failure}.
\end{array}
\tag{FCC.12}
\]

So cover loss is not retained pressure-service supply. It is a Pack face
failure of the terminal WKB witness.

## 6. Reduced burden

The cover coordinate in `WKBCertificateCompactness.A` is now:

```text
WKBFiniteCoverCertificateCompactness.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the selected WKB profile
measures either lift to uniformly bounded finite readout-compatible covers with
compact chart parameters and closed overlap/readout constraints, or the cover
certificate fails. Failure is Pack-side carrier/cover loss.

This is smaller than profile admission. It is the Pack-coordinate test inside
certificate compactness.

## 7. Four-sentence result

Finite/readout-compatible cover is not preserved by observable WKB profile
compactness alone. It is preserved when the profile measures lift to a compact
closed finite-cover certificate with a uniform chart bound, closed membership,
closed readout compatibility, and closed overlap. Projecting away that data can
lose the cover through radius collapse, unbounded chart count, escaping chart
parameters, or overlap/readout incompatibility. Such loss is Pack-side
carrier-cover failure, not admitted retained WKB supply.

## 8. State

This note proves the finite-cover certificate compactness criterion and the
radius-collapse / unbounded-count countermodels. It proves no uniform
finite-cover theorem for actual Navier-Stokes WKB packets, no profile admission
theorem, no WKB construction/exclusion theorem, no confinement constant, and no
MPP closure.
