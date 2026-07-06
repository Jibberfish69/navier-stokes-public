---
theorem_id: forward-gold-wkb-local-cluster-representative-admission-split-20260706
status: exact-positive-cluster-admission-split-closed-graph-or-first-certificate-failure
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / crowd cell / WKB phase-label escape
target_object:
  - WKBPositiveClusterRepresentativeAdmission.A
  - WKBLocalClusterClosedGraphSplit.A
  - LimitOfClassTerminalArtifact
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-continuum-label-finite-net-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-metric-entropy-collapse-fragmentation-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-near-null-gram-profile-trichotomy-20260706.md
completion_truth: >-
  Exact local-cluster split only. The fixed-resolution continuum-label theorem
  left a positive service cluster and named possible legal-representative
  failure. This note prices that branch: if the restricted positive service
  measures have bounded total mass and the legal-label/certificate graph is
  closed on the cluster, a subsequence gives a nonzero legal local profile,
  which feeds the existing finite-menu, atomic, diffuse-profile, and no-supplier
  trichotomy surfaces. If the legal graph is not closed, legal prelimit labels
  can converge to an illegal positive cluster profile; this is a limit-of-class
  / first-failed-certificate landing, not retained WKB supply. If the service
  readout does not stabilize, the branch is moving selector; if the cluster
  profile is not compact/tight or has unbounded service mass, the branch exits
  to profile/tightness/high-factor or construction/exclusion work. This proves
  no closedness of the Navier-Stokes WKB legality predicates, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# Local WKB cluster representative admission split

## 1. Question

The fixed-resolution continuum-label note proved that compact WKB labels with
a common service modulus cannot keep all service spread over a continuum at one
resolution. One fixed cover cell carries positive retained service on an
infinite subtail.

The remaining phrase was "no legal local representative." This note checks what
that phrase can mean.

The answer is a split. A positive cluster with closed legality is an admitted
local profile, not a new supplier. A positive cluster with nonclosed legality is
the first failed certificate, not a retained supplier.

## 2. Positive cluster

Use the notation of the finite-net reduction. On an infinite terminal subtail,
one cover cell \(E\subset B\subset X\) satisfies
\[
  \int_E F_j\,d\mu_j\ge c_1>0.
  \tag{LCA.1}
\]

Let
\[
  \sigma_j := F_j\,{\bf 1}_E\,\mu_j.
  \tag{LCA.2}
\]

Then
\[
  \sigma_j(X)\ge c_1,
  \qquad
  \operatorname{supp}\sigma_j\subset \overline B .
  \tag{LCA.3}
\]

Assume the restricted service measures are bounded:
\[
  \sigma_j(X)\le C_1.
  \tag{LCA.4}
\]

Since \(\overline B\) is compact, a subsequence satisfies
\[
  \sigma_j\stackrel{*}{\rightharpoonup}\sigma,
  \qquad
  \sigma(X)\ge c_1.
  \tag{LCA.5}
\]

Thus a fixed positive cluster gives a nonzero local service profile whenever
the service measure is bounded and the cluster is tight.

## 3. Closed legality admits the cluster

Let
\[
  \mathcal L_B\subset\overline B
  \tag{LCA.6}
\]
be the legal-label set inside the cluster: labels whose certificates preserve
the same original datum and viscosity, the actual Navier-Stokes pressure law,
material ancestry or licensed original participation, finite/readout-compatible
carrier cover, and the same-law tower.

Each prelimit packet is legal:
\[
  \operatorname{supp}\sigma_j\subset\mathcal L_B.
  \tag{LCA.7}
\]

If
\[
  \mathcal L_B\text{ is closed in }\overline B,
  \tag{LCA.8}
\]
then the closed-graph admission criterion gives
\[
  \operatorname{supp}\sigma\subset\mathcal L_B
  \quad\text{up to }\sigma\text{-null sets}.
  \tag{LCA.9}
\]

So the cluster has produced a legal local profile. If \(\sigma\) has an atom,
the atomic reconstruction / prelimit quantization tests apply. If \(\sigma\) is
diffuse, the diffuse-profile admission branch applies. After same-solution
admission, the existing no-supplier trichotomy consumes the profile: Field if it
is a legal terminal consumer, and Pack/Part at the first failed certificate.

## 4. Nonclosed legality countermodel

If legality is not closed, a positive cluster may fail representative admission
exactly by losing a certificate at the limit.

Choose
\[
  \ell_j\in\mathcal L_B,
  \qquad
  \ell_j\to\ell_\ast\in\overline{\mathcal L_B}\setminus\mathcal L_B.
  \tag{LCA.10}
\]

Let \(c_1>0\) and set
\[
  \sigma_j=c_1\delta_{\ell_j}.
  \tag{LCA.11}
\]

Then
\[
  \operatorname{supp}\sigma_j\subset\mathcal L_B,
  \qquad
  \sigma_j\stackrel{*}{\rightharpoonup}c_1\delta_{\ell_\ast},
  \tag{LCA.12}
\]
but
\[
  \ell_\ast\notin\mathcal L_B.
  \tag{LCA.13}
\]

The limiting cluster is positive and illegal. This is a limit-of-class terminal
artifact. The first legality predicate that fails is the actual landing:

- carrier / finite-cover loss gives Pack-side profile failure;
- material ancestry, original participation, actual pressure law, or same-law
  tower loss gives Part-side participation failure;
- an admitted legal tower with high Sobolev terminal readout is Field-side
  consumer territory.

## 5. Exhaustion of the local-representative door

The positive-cluster branch now has only the following meanings:
\[
\begin{array}{rcl}
\text{bounded service + tight cluster + closed legality}
  &\Longrightarrow& \text{legal local profile},\\[1mm]
\text{bounded service + tight cluster + nonclosed legality}
  &\Longrightarrow& \text{first failed certificate},\\[1mm]
\text{unstabilized service readout}
  &\Longrightarrow& \text{moving-selector branch},\\[1mm]
\text{no compact bounded cluster profile}
  &\Longrightarrow& \text{profile/tightness/high-factor or construction/exclusion}.
\end{array}
\tag{LCA.14}
\]

Therefore "no legal local representative" is not a free WKB supplier. It is
either profile admission, a typed certificate failure, moving selector escape,
or a noncompact/unbounded branch already outside the fixed-resolution cluster
claim.

## 6. Four-sentence result

A fixed positive WKB label cluster cannot be used as a retained supplier merely
because no single obvious representative was selected. Bounded service on a
compact cluster has a nonzero weak-* local profile, and closed legality keeps
that profile inside the same-solution witness class. If legality is not closed,
legal prelimit packets can converge to an illegal positive terminal cluster,
which is the first failed certificate rather than admitted supply. Thus the
local-representative loophole routes to profile admission, Pack/Part/Field
certificate failure, moving-selector escape, or construction/exclusion.

## 7. State

This note kills the cheap positive-cluster reading of "no legal local
representative."

It proves no closedness theorem for the actual Navier-Stokes WKB legality
predicates, no WKB construction/exclusion theorem, no confinement constant, and
no MPP closure.

MPP CLOSURE DENIED. Filed is not cleared. No closure claimed.
