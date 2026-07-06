---
theorem_id: forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706
status: exact-closed-graph-profile-witness-admission-criterion-nonclosed-legality-countermodel
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB profile admission
target_object:
  - MicrolocalDefectProfileAdmission.A
  - DiffuseWKBProfileAdmission.A
  - WKBProfileWitnessLegalityClosedGraph.A
  - LimitOfClassTerminalArtifact
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-retained-pulse-same-witness-admission-recheck-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-sparse-same-witness-carrier-custody-reduction-20260621.md
  - problems/navier-stokes/theorem-construction/mcp-partfieldbeforepackstrengthattempt-a-partfieldbeforepackstrength-a-241943042e.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
completion_truth: >-
  Exact criterion and countermodel only. Let X be the compact WKB phase-label
  space and let L be the subset of labels satisfying the five same-solution
  witness-legality predicates: same datum/viscosity, actual Navier-Stokes
  pressure law, material ancestry or licensed original participation,
  finite/readout-compatible carrier cover at measure level, and same-law tower.
  If L is closed in X, and the prelimit WKB cloud measures are supported on L
  with mu_j -> mu weak-* and scalar moment passage already paid, then
  supp(mu) is contained in L. Therefore the profile is a lawful measure-level
  same-solution terminal witness for the WKB consumer. If L is not closed, legal
  labels ell_j in L can converge to ell_* not in L; then delta_ell_j -> delta_ell_*
  gives a positive profile outside the legal witness class. This is
  limit-of-class / original-participation / carrier-or-tower failure, not
  admitted retained supply. The note proves no closedness of the actual
  Navier-Stokes WKB legality predicates, no WKB construction/exclusion, no
  confinement constant, and no MPP closure.
---

# WKB profile witness closed-graph admission criterion

## 1. Object

The moment-continuity criterion paid one scalar clause: a tight WKB profile
carries the retained pressure-service moment when the service readout is
continuous or uniformly stabilized.

The remaining profile-admission question is witness legality. The profile has
to remain the same realized Navier-Stokes branch, not a support-only weak
object.

The same-solution profile must preserve:

1. same original datum and fixed viscosity;
2. actual Navier-Stokes velocity-pressure law behind the profile;
3. material ancestry or licensed original participation;
4. finite/readout-compatible carrier cover at the measure level;
5. differentiated same-law tower through the chosen depth.

This note gives the exact compactness criterion for those clauses.

## 2. Legal-label set

Let \(X\) be the compact WKB phase-label space after the previously paid
tightness, angular quadrature, and scalar moment-continuity reductions. A label
\(\ell\in X\) encodes the terminal packet/profile coordinates needed to read the
WKB pressure-service moment.

Let
\[
  \mathcal L\subset X
  \tag{WLA.1}
\]
be the set of labels satisfying the five witness-legality predicates listed
above.

The prelimit WKB cloud measures are
\[
  \mu_j\in\mathcal M_+(X),
  \qquad
  \operatorname{supp}\mu_j\subset\mathcal L,
  \tag{WLA.2}
\]
because every prelimit label is assumed to come from an actual same-solution
WKB packet or licensed measure-level packet family.

Assume
\[
  \mu_j\stackrel{*}{\rightharpoonup}\mu
  \quad\text{in }\mathcal M_+(X),
  \qquad
  \mu(X)>0.
  \tag{WLA.3}
\]

The scalar pressure-service moment is already handled by the moment-continuity
criterion. Here we ask only whether the limiting measure stays legal.

## 3. Closed legality admits the profile

Assume
\[
  \mathcal L\ \text{is closed in }X.
  \tag{WLA.4}
\]

Then \(X\setminus\mathcal L\) is open. For any compact
\[
  K\subset X\setminus\mathcal L,
  \tag{WLA.5}
\]
choose \(\varphi\in C(X)\) with \(0\le\varphi\le1\), \(\varphi=1\) on \(K\),
and \(\operatorname{supp}\varphi\subset X\setminus\mathcal L\). Since
\(\operatorname{supp}\mu_j\subset\mathcal L\),
\[
  \int_X\varphi\,d\mu_j=0.
  \tag{WLA.6}
\]
Passing to the limit gives
\[
  \int_X\varphi\,d\mu=0,
  \tag{WLA.7}
\]
so \(\mu(K)=0\). Inner regularity gives
\[
  \mu(X\setminus\mathcal L)=0.
  \tag{WLA.8}
\]

Thus
\[
  \operatorname{supp}\mu\subset\mathcal L
  \quad\text{up to }\mu\text{-null sets}.
  \tag{WLA.9}
\]

Therefore the tight WKB profile remains inside the same-solution witness class.
Combined with scalar moment passage,
\[
  \int F\,d\mu\ge c_0,
  \tag{WLA.10}
\]
the measure-valued profile is an admitted terminal WKB witness ledger at the
profile level.

This proves the closed-graph branch:
\[
  \boxed{
  \mathcal L\text{ closed}
  + \operatorname{supp}\mu_j\subset\mathcal L
  + \mu_j\stackrel{*}{\rightharpoonup}\mu
  \Longrightarrow
  \mu\text{ is legally supported}.
  }
  \tag{WLA.11}
\]

## 4. Nonclosed legality countermodel

If \(\mathcal L\) is not closed, the conclusion is false.

Choose
\[
  \ell_j\in\mathcal L,
  \qquad
  \ell_j\to\ell_\ast\in\overline{\mathcal L}\setminus\mathcal L.
  \tag{WLA.12}
\]
Let
\[
  \mu_j=\delta_{\ell_j}.
  \tag{WLA.13}
\]
Then
\[
  \operatorname{supp}\mu_j\subset\mathcal L,
  \qquad
  \mu_j\stackrel{*}{\rightharpoonup}\delta_{\ell_\ast}.
  \tag{WLA.14}
\]

If the scalar service readout \(F\) is continuous and \(F(\ell_\ast)>0\), then
the limiting profile even carries positive service:
\[
  \int F\,d\delta_{\ell_\ast}=F(\ell_\ast)>0.
  \tag{WLA.15}
\]
But
\[
  \ell_\ast\notin\mathcal L.
  \tag{WLA.16}
\]

So the limit is not a legal same-solution WKB witness. It is a
limit-of-class terminal artifact. The first legality predicate that fails gives
the typed failure:

- no coherent carrier / finite cover: Pack-side profile failure;
- lost material ancestry, actual pressure law, original participation, or
  same-law tower: Part-side participation failure;
- retained legal tower plus high Sobolev readout: Field-side consumer.

The countermodel is exact. Compactness of legal prelimit packets does not by
itself admit the terminal profile unless the legal-label graph is closed.

## 5. Profile admission split

The profile-admission branch now has three independent clauses:
\[
\begin{array}{ll}
\text{moment passage}
  &\text{continuous or uniformly stabilized service readout},\\[1mm]
\text{witness legality}
  &\text{closed legal-label graph in the compact WKB topology},\\[1mm]
\text{consumer}
  &\text{Sobolev / Field face after same-solution admission}.
\end{array}
\tag{WLA.17}
\]

The first clause is paid by the moment-continuity criterion. The second clause
is paid by this note only under the closed-graph hypothesis. The third clause is
the already installed Sobolev consumer once the profile is admitted.

Thus
\[
  \boxed{
  \text{continuous service}
  + \text{closed witness-legality graph}
  \Longrightarrow
  \text{profile-level WKB witness admission}.
  }
  \tag{WLA.18}
\]

If either hypothesis fails, the branch is not retained supply. It is moving
service selector escape or limit-of-class / original-participation / carrier /
tower failure.

## 6. Four-sentence result

A WKB profile is admitted as a same-solution witness only when the legality
predicates form a closed subset of the compact phase-label space. Closedness
lets weak-* limits of legal prelimit packet measures remain legally supported,
so the profile carries both the retained scalar moment and the same-solution
witness structure. If legality is not closed, legal packet labels can converge
to an illegal terminal label, producing a positive profile that is outside the
witness class. That failure is a typed limit-of-class artifact: carrier/cover
loss, original-participation loss, actual-pressure-law loss, or tower loss.

## 7. State

This note proves the closed-graph profile-admission criterion and the
nonclosed-legality countermodel.

Follow-up:
`mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md`
identifies the exact closedness input. The legal-label set is closed once the
WKB label space is enlarged to include compact same-solution legality
certificates for the actual law, ancestry/original participation,
finite/readout-compatible cover, and same-law tower, with closed certificate
relations. Projecting away a noncompact certificate coordinate can produce the
nonclosed countermodel in Section 4; the first lost certificate routes to Pack,
Part, or Field rather than retained supply.

It proves no closedness theorem for the actual Navier-Stokes WKB legality
predicates, no `ActualWKBCarrierExtraction.A`, no WKB construction/exclusion, no
confinement constant, and no MPP closure.
