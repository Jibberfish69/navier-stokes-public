---
theorem_id: forward-gold-wkb-transport-defect-current-variation-floor-20260706
status: exact-current-variation-floor-for-transport-defect-carriage
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / material ancestry certificate
target_object:
  - WKBTransportDefectVanishesOrCertified.A
  - WKBMaterialAncestryClosedness.A
  - TransportCurrentVariation.NO-DENSITY-GAP-BY-ITSELF
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-ballast-energy-ancestry-tower-landing-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-transport-current-variation-not-density-gap-20260706.md
completion_truth: >-
  Exact variation floor for the material-ancestry transport-defect alternative.
  Let rho be the positive packet/ancestry mass and let A=J-u rho be the hidden
  current defect. A same-packet relative-velocity certificate requires A to be
  absolutely continuous with respect to rho: A=w rho. Then |A|=|w| rho as
  measures, so the exact action/variation cost is int |w| d rho = |A|(Q).
  If A has a singular part relative to rho, that singular part is not carried by
  the named packet mass; it requires additional legal ancestry mass/current or
  is Part-side original-participation failure. Therefore the transport-defect
  branch is only: vanishing current defect; nonvanishing current variation
  carried as legal same-packet relative motion; added legal ancestry mass for a
  singular current; or material-history certificate failure. This proves no
  transport-defect vanishing theorem for actual Navier-Stokes WKB packets, no
  legal carriage theorem for nonzero current defects, no profile admission
  theorem, no WKB construction/exclusion theorem, no confinement constant, and
  no MPP closure.
---

# Transport defect has a current-variation floor

## 1. Object

The material-ancestry fork says that a limiting WKB profile keeps same-fluid
history only when the selected paths, flow maps, or ancestry currents pass the
transport relation, or when the hidden transport defect is legally carried:
\[
  A:=J-u\rho .
  \tag{TCV.1}
\]

The scalar density equation can miss this defect when \(\operatorname{div}A=0\).
Path-level ancestry cannot. This note prices the legal-carriage option.

## 2. Same-packet current representation

Let \(\rho\) be the positive packet/ancestry mass on a spacetime region \(Q\),
and let \(A\) be a vector-valued Radon measure. A same-packet relative-motion
certificate means that the defect current is carried by the same packet mass:
\[
  A=w\,\rho
  \tag{TCV.2}
\]
for a Borel relative velocity \(w\in L^1(\rho)\).

Then the total variation measure is exactly
\[
  |A|=|w|\,\rho .
  \tag{TCV.3}
\]
Consequently, for every nonnegative test weight \(\psi\),
\[
  \int\psi\,d|A|
  =
  \int\psi\,|w|\,d\rho .
  \tag{TCV.4}
\]
In particular,
\[
  |A|(Q)=\int_Q |w|\,d\rho .
  \tag{TCV.5}
\]

So a nonzero same-packet transport defect has nonzero relative-motion action.
There is no branch where a nonzero hidden current is carried by zero
same-packet current variation.

## 3. Singular part is not same-packet carriage

For a general vector measure \(A\), decompose relative to \(\rho\):
\[
  A=w\,\rho+A^\perp,\qquad A^\perp\perp\rho .
  \tag{TCV.6}
\]
Then
\[
  |A|=|w|\,\rho+|A^\perp|.
  \tag{TCV.7}
\]

The singular part \(A^\perp\) is not carried by the named packet mass \(\rho\).
To keep it as same-solution material history, the certificate must add a legal
ancestry mass/current that carries \(A^\perp\). Without that added legal
carrier, \(A^\perp\ne0\) is original-participation failure.

Thus the current defect has two possible legal forms:

```text
absolutely continuous part: same packet mass moves with relative velocity w;
singular part: additional legal ancestry carrier is supplied.
```

Both carry total variation. Neither is free scalar-density cancellation.

## 4. Hidden solenoidal current

The weak WKB ancestry fork observes that the scalar continuity equation only
sees
\[
  \partial_t\rho+\operatorname{div}(u\rho+A)=0 .
  \tag{TCV.8}
\]
If \(\operatorname{div}A=0\), the same scalar density also solves
\[
  \partial_t\rho+\operatorname{div}(u\rho)=0 .
  \tag{TCV.9}
\]

This does not erase \(A\) as a material-history certificate. A nonzero
solenoidal current still has
\[
  |A|(Q)>0 .
  \tag{TCV.10}
\]
It records circulation of the packet ancestry through the certificate graph
that is invisible to the scalar density readout.

## 5. Ballast-energy current

For the positive Reynolds ballast branch, the same statement applies with
\[
  \rho_R=\mu_R,\qquad A_R=J_R-u\rho_R .
  \tag{TCV.11}
\]
If
\[
  A_R=w_R\rho_R,
  \tag{TCV.12}
\]
then
\[
  |A_R|=|w_R|\rho_R .
  \tag{TCV.13}
\]
If \(A_R\) has a singular part relative to \(\rho_R\), that part is not carried
by the positive ballast mass and must be supplied as additional legal ancestry
or becomes material-history failure.

## 6. Terminal bank consequence

On a normalized terminal \(D_j\)-bank define
\[
  V_j:=\phi_jD_j^3|A_j|(Q_j).
  \tag{TCV.14}
\]
Then:

1. \(V_j\to0\) means the retained transport-current defect vanishes in the
   normalized current-variation sense;
2. \(\limsup_jV_j>0\) gives a terminal subtail with nonzero relative-motion
   action or nonzero added ancestry-carrier variation;
3. absence of a same-packet or added-carrier representation is Part-side
   material-history failure.

This is not a Field consumer by itself. It is the exact price of carrying the
material-history defect rather than losing same-fluid ancestry.

The transport-current variation follow-up records the matching negative fact:
this current/action price is not a density anti-equidistribution theorem.
Uniform WKB density can carry nonzero divergence-free relative current, so
current variation is a separate payer/certificate currency unless an additional
service row ties the current to density.

## 7. Corrected transport branch

The material-ancestry row is now:

```text
transport defect A vanishes
  -> ancestry passes this coordinate;
A is absolutely continuous with respect to the same packet mass rho
  -> A=w rho and the certificate carries exact action |A|=|w|rho;
A has a singular part
  -> the singular current needs added legal ancestry mass/current;
no legal carrier for A
  -> Part-side original-participation failure.
```

So hidden current can be invisible to the scalar density equation, but it
cannot be invisible to the material-history certificate.

## 8. Four-sentence result

The transport defect \(A=J-u\rho\) is a current, not a scalar bookkeeping
remainder. If it is carried by the same packet mass, then \(A=w\rho\) and
\(|A|=|w|\rho\). If it has a singular part relative to the packet mass, that
part needs its own legal ancestry carrier. Thus a nonzero transport defect is
either paid as current variation or it is Part-side loss of same-fluid history.

## 9. State

This note proves the exact current-variation floor for legal transport-defect
carriage.

It proves no actual Navier-Stokes WKB flow-map compactness theorem, no
transport-defect vanishing theorem, no legal carriage theorem for nonzero
current defects, no profile admission theorem, no WKB construction/exclusion
theorem, no crowd-cell decision, no confinement constant, and no MPP closure.
