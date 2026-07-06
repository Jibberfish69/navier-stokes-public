---
theorem_id: forward-gold-wkb-certificate-product-lift-gluing-theorem-20260706
status: exact-product-lift-gluing-theorem-cross-compatibility-defect-is-the-only-extra-coordinate
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / legal certificate compactness
target_object:
  - CertifiedPrelimitWKBProductLift.A
  - WKBCertificateCompactness.A
  - MicrolocalDefectProfileAdmission.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-certificate-product-assembly-theorem-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-same-law-tower-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
completion_truth: >-
  Exact measure-theoretic gluing theorem and exact compatibility countermodel.
  If the four WKB certificate rows lift the same observable profile measure and
  no further cross-row constraint is required, then a simultaneous product lift
  exists automatically by disintegrating each row lift over the common
  observable marginal and taking the conditional product. Therefore
  CertifiedPrelimitWKBProductLift.A is not an independent fifth topological row
  in the no-cross-constraint case. If the real same-fluid certificate requires
  an additional closed cross-compatibility relation among law, ancestry, cover,
  and tower coordinates, rowwise lifts alone are insufficient; a two-point
  countermodel shows compatible marginals can have no admissible joint lift.
  The remaining actual Navier-Stokes WKB burden is the cross-compatibility
  theorem for the same prelimit packets/clouds, or else a typed Pack/Part row
  failure. This note proves no row-level defect vanishing theorem, no
  cross-compatibility theorem for actual Navier-Stokes WKB packets, no profile
  construction/exclusion, no confinement constant, and no MPP closure.
---

# WKB certificate product lift: gluing theorem and compatibility defect

## 1. Object

The product-assembly note left:

```text
CertifiedPrelimitWKBProductLift.A
```

as the statement that the same prelimit WKB packets/clouds carry the law,
ancestry, cover, and tower certificates simultaneously.

This note separates the pure measure-theoretic product question from the real
same-fluid compatibility question. A product lift is automatic once the four
row lifts have the same observable marginal and no cross-row constraint is
being imposed. The only extra coordinate is compatibility among the row
certificates when they are required to describe the same underlying packet, not
four unrelated witnesses.

## 2. Row lifts

Let \(X\) be the compact observable WKB label space. Let
\[
  C_1,\ldots,C_m
  \tag{GLU.1}
\]
be compact certificate spaces, standing for law, ancestry, cover, and tower.
Let
\[
  \nu_i\in\mathcal M_+(X\times C_i),
  \qquad
  (\pi_X)_\#\nu_i=\mu
  \tag{GLU.2}
\]
be row certificate lifts of the same observable profile measure \(\mu\).

Assume each row is supported on its legal closed graph:
\[
  \operatorname{supp}\nu_i\subset\mathcal G_i\subset X\times C_i.
  \tag{GLU.3}
\]

## 3. Product lift without cross constraints

Disintegrate each row lift over the common marginal:
\[
  \nu_i(dx,dc_i)=\mu(dx)\,\kappa_i(x,dc_i).
  \tag{GLU.4}
\]

Define the joint lift on
\[
  X\times C_1\times\cdots\times C_m
  \tag{GLU.5}
\]
by
\[
  \nu(dx,dc_1,\ldots,dc_m)
  :=
  \mu(dx)\,
  \kappa_1(x,dc_1)\cdots\kappa_m(x,dc_m).
  \tag{GLU.6}
\]

Then
\[
  (\pi_{X,C_i})_\#\nu=\nu_i
  \tag{GLU.7}
\]
for every \(i\). Also, since \(\kappa_i(x,\mathcal G_{i,x})=1\) for
\(\mu\)-a.e. \(x\), the joint lift is supported on
\[
  \bigcap_i \pi_{X,C_i}^{-1}\mathcal G_i.
  \tag{GLU.8}
\]

Therefore:
\[
\boxed{
\begin{gathered}
\text{row lifts over the same observable marginal}
+\text{no cross-row compatibility constraint}\\
\Longrightarrow
\text{simultaneous product lift exists automatically}.
\end{gathered}}
\tag{GLU.9}
\]

The product lift is not an additional compactness theorem in this case.

## 4. Cross-compatibility is a real extra condition

The same-fluid WKB certificate may require more than rowwise legality. The
certificate coordinates may need to satisfy a closed compatibility relation
\[
  \mathcal H\subset X\times C_1\times\cdots\times C_m
  \tag{GLU.10}
\]
saying that the law, ancestry, cover, and tower data describe the same
prelimit packet/cloud, with the same carrier assignment and the same
velocity-pressure history.

Rowwise lifts do not imply an \(\mathcal H\)-supported coupling.

Take \(X=\{\ast\}\) and \(C_1=C_2=\{0,1\}\). Let both row graphs be all of
\(X\times C_i\). Set
\[
  \nu_1=\delta_{(\ast,0)},
  \qquad
  \nu_2=\delta_{(\ast,1)} .
  \tag{GLU.11}
\]
Both row lifts are legal and have the same observable marginal \(\delta_\ast\).

Now impose the closed compatibility relation
\[
  \mathcal H
  =
  \{(\ast,0,0),(\ast,1,1)\}.
  \tag{GLU.12}
\]
This relation says the two certificates must carry the same hidden identity.
No \(\mathcal H\)-supported joint measure has marginals \(\nu_1\) and \(\nu_2\).

Thus the extra burden is not product compactness. It is cross-row
compatibility for the same physical packet.

## 5. WKB certificate routing

For the WKB admission chain, the residual statement becomes:

```text
WKBCrossCertificateCompatibility.A
```

Statement shape:

For the actual same-solution WKB terminal branch, the row certificates for the
actual law, material ancestry, finite/readout-compatible cover, and
differentiated same-law tower either admit a joint lift supported on the closed
same-packet compatibility relation, or the first incompatible coordinate routes
to its typed face.

The routing is:
\[
\begin{array}{ll}
\text{cover compatibility fails}
  &\Rightarrow \text{Pack-side carrier-cover failure},\\[1mm]
\text{law / ancestry / tower compatibility fails}
  &\Rightarrow \text{Part-side actual-law, participation, or tower failure},\\[1mm]
\text{all compatible and high Sobolev readout persists}
  &\Rightarrow \text{Field-side Sobolev consumer}.
\end{array}
\tag{GLU.13}
\]

## 6. Four-sentence result

Simultaneous product lift is automatic once the four row certificate lifts have
the same observable WKB marginal and no cross-row constraint is imposed. The
proof is disintegration over the common marginal followed by conditional
product. What remains is cross-certificate compatibility: the law, ancestry,
cover, and tower data must describe the same packet/cloud, not four unrelated
certifiers. Rowwise legality alone does not force that compatibility, as shown
by the two-point hidden-identity countermodel.

## 7. State

This note proves the product-lift gluing theorem and the cross-compatibility
countermodel.

It proves no row-level defect vanishing theorem for actual Navier-Stokes WKB
packets, no cross-compatibility theorem for actual same-fluid WKB packets, no
profile construction/exclusion theorem, no confinement constant, and no MPP
closure.
