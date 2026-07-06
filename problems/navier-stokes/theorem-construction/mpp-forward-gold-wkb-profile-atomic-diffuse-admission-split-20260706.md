---
theorem_id: forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706
status: tight-wkb-profile-split-proved-admission-subtheorems-open
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / microlocal profile split
target_object:
  - MicrolocalDefectProfileAdmission.A
  - AtomicWKBProfileReconstruction.A
  - DiffuseWKBProfileAdmission.A
  - WKBPhaseLabelTightnessPlusAtomCapture.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-overlap-bath-angular-continuum-quadrature-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-profile-reconstruction-direct-test-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-atomic-wkb-prelimit-quantization-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-many-cell-wkb-quantization-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-unbounded-count-wkb-cloud-compactness-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-moment-continuity-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-service-modulus-or-selector-escape-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-witness-closed-graph-admission-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-no-supplier-trichotomy-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-material-ancestry-transport-defect-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-finite-cover-certificate-compactness-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-cross-cell-gram-gap-criterion-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
completion_truth: >-
  Strict reduction only. If the WKB phase-packet carrier measures are tight
  and retain a nonzero normalized terminal pressure-Hessian moment, compactness
  gives a nonzero microlocal / phase-space profile. The profile has an exact
  atomic-diffuse split. A nonzero atomic part reduces the problem to
  AtomicWKBProfileReconstruction.A: reconstruct a same-solution terminal
  witness from one fixed limiting phase label. The follow-up direct test shows
  that a limiting atom alone is not enough; it still requires prelimit
  atomization / finite packet quantization or shrinking phase-tube cloud
  admission. The quantization follow-up sharpens this clause: bounded effective
  prelimit packet count pays atomization by pigeonhole, while unbounded count
  is compatible with vanishing mass in every actual packet and therefore routes
  to cloud-profile admission, no-free-fragmentation / uncertainty-cell input,
  or atomic fragmentation defect. The many-cell WKB quantization follow-up
  shows that the beta-small cheap WKB bath is on the unbounded-count side:
  cutoff-neutrality requires \(N_{\rm eff}\gtrsim\beta^{-12/5}\). The
  unbounded-count compactness split then routes tight clouds to nonzero
  WKB/microlocal profiles and nontight clouds to selected-carrier
  domain/label/rung escape; it also shows that count-only no-free-fragmentation
  and same-cell packet-moment square coercivity are false. The cross-cell
  Gram-gap follow-up types the remaining square option: it must be a uniform
  positive lower bound for the actual interaction Gram form on the normalized
  admissible positive cloud cone, or near-null clouds defeat it. A nonzero
  profile carries the retained scalar pressure-service moment whenever the
  active service readout is continuous or uniformly stabilized; without that
  stabilization a moving-spike selector is label/weight/rung escape. The
  closed-graph witness follow-up pays the exact legal-support compactness
  criterion: closed legal labels admit profile support, while nonclosed
  legality is a limit-of-class / original-participation / carrier-or-tower
  failure. Certificate compactness then names the closedness input, and its
  actual-law coordinate now requires the Reynolds defect to vanish modulo
  pressure gauge with compatible service, or to be legally carried. The
  ancestry coordinate requires transport-defect vanishing or legal carriage,
  and the cover coordinate requires a compact finite readout-compatible cover
  certificate. A nonzero
  diffuse part reduces the problem to
  DiffuseWKBProfileAdmission.A: admit the diffuse phase-space measure itself as
  a lawful terminal witness ledger, or classify failure of such admission as a
  limit-of-class / original-participation defect. The already filed
  angular-continuum quadrature note removes pure direction diffusion as an
  independent pressure-service escape; the remaining diffuse burden is
  material, time, center, envelope, scale, bank, weight, or profile admission.
  This note proves the measure split and blocks the overclaim that tightness or
  microlocal visibility alone proves ActualWKBCarrierExtraction.A or
  MicrolocalDefectProfileAdmission.A. The profile no-supplier trichotomy then
  consumes the branch after scalar moment passage and legal certificates are
  part of the object: admitted profile gives Field, first failed certificate
  gives Pack/Part, and failure to form the tight stabilized profile is selector,
  carrier, Gram-gap, or construction/exclusion work. No profile admission
  theorem, no WKB
  construction/exclusion theorem, and no MPP closure is claimed.
---

# WKB profile admission: atomic or diffuse

## 1. Object

The finite-menu WKB note pays one branch:
\[
  \text{fixed finite menu of actual WKB packets}
  \Longrightarrow
  \text{one actual packet family on an infinite terminal tail}.
\]

The remaining compact branch is different. The WKB phase label may move through
a compact continuum while the total normalized terminal pressure-Hessian moment
stays bounded below. Compactness then produces a profile, not automatically a
fixed material packet.

The physical object is the same velocity-pressure solution viewed through a
terminal high-frequency packet coordinate. The question is whether the retained
moment belongs to one actual same-solution carrier, to an admitted
measure-valued terminal profile, or to a class/admission failure.

## 2. Tight profile production

Let \(C\) be the compactified WKB phase-packet carrier space after domain,
label, and rung tightness have been imposed. Its coordinates include the
normalized spacetime window, packet/phase label, direction, polarization,
relative carrier scale, bank coordinate, and any finite tower labels used by
the readout.

Let
\[
  \mu_j\in\mathcal M_+(C)
\]
be the nonnegative WKB phase-packet moment measures on a terminal tail, and
assume
\[
  \mu_j(C)\ge c_0>0.
\]

By compactness of \(C\), after passing to a subsequence,
\[
  \mu_j\stackrel{*}{\rightharpoonup}\mu
  \qquad\text{in }\mathcal M_+(C).
\]
Since the constant function \(1\) is continuous on compact \(C\),
\[
  \mu(C)=\lim_{j\to\infty}\mu_j(C)\ge c_0.
\]

Thus tight WKB label motion produces a nonzero phase-space / microlocal
profile:
\[
  \mu\ne0.
\]

This is the part compactness pays. It pays visibility of retained WKB moment in
phase space. It does not yet pay witness admission.

## 3. Atomic-diffuse split

Every finite Radon measure on a compact metric space has the canonical split
\[
  \mu=\mu_{\rm at}+\mu_{\rm diff},
\]
where
\[
  \mu_{\rm at}
  =
  \sum_{\ell\in C:\,\mu(\{\ell\})>0}
  \mu(\{\ell\})\,\delta_\ell
\]
and
\[
  \mu_{\rm diff}(\{\ell\})=0
  \qquad(\ell\in C).
\]

Since \(\mu(C)>0\), at least one of the two alternatives holds:
\[
  \mu_{\rm at}(C)>0
  \qquad\text{or}\qquad
  \mu_{\rm diff}(C)>0.
\]

This is the exact compact-continuum split hidden inside
`MicrolocalDefectProfileAdmission.A`.

## 4. Atomic profile branch

If \(\mu_{\rm at}(C)>0\), then there exists a label
\(\ell_\ast\in C\) with
\[
  a_\ast:=\mu(\{\ell_\ast\})>0.
\]
For every neighborhood \(U\ni\ell_\ast\),
\[
  \liminf_{j\to\infty}\mu_j(U)\ge a_\ast.
\]

This gives a fixed limiting phase label with nonzero retained WKB moment in
shrinking label neighborhoods. It is strictly stronger than a diffuse profile
and strictly weaker than an already admitted material packet.

The remaining theorem is:

```text
AtomicWKBProfileReconstruction.A
```

Statement shape:

From one positive atom of the actual same-solution WKB phase-space profile,
reconstruct a terminal witness ledger with:

1. same original datum and fixed viscosity;
2. actual velocity-pressure-pressure-Hessian evolution;
3. material ancestry or licensed original participation;
4. finite-overlap / readout-compatible packet windows;
5. differentiated same-law tower through the required depth;
6. nonvanishing normalized retained moment.

The follow-up direct test shows that the atom itself is not enough. A shrinking
diffuse prelimit cloud can converge to \(a_\ast\delta_{\ell_\ast}\) while every
individual prelimit packet has vanishing mass. Thus the atomic branch still
needs either prelimit atomization / finite packet quantization or admission of
the shrinking phase-tube cloud as a profile-level witness.

The quantization follow-up makes the atomization side exact. If the shrinking
atomic tube has at most \(M\) effective prelimit packet cells while carrying
mass \(a_\ast/2\), one cell carries at least \(a_\ast/(2M)\), and finite-menu
extraction applies. If the effective count \(M_j\to\infty\), the uniform
fragmentation model
\[
  A_j(P_{j,b})={a_\ast\over2M_j}
\]
keeps the atomic tube mass and makes every individual packet vanish.

The many-cell WKB quantization obstruction places the overlap-bath survivor in
that unbounded-count branch. In the beta-small cheap WKB window,
\[
  N_{\rm eff}\gtrsim\beta^{-12/5}.
\]
So bounded effective count is not a hidden many-cell WKB no-payer. It is
atomization, cutoff/Hodge localization payment, or exit from the cheap WKB
window.

If one of those reconstruction/admission theorems is paid, the atomic
compact-continuum branch feeds the already installed WKB Sobolev Field consumer.

The finite-menu theorem is the special case where this reconstruction is built
into the hypotheses: the atom is one of finitely many actual packet rules, so
pigeonhole gives the actual same-solution carrier directly.

## 5. Diffuse profile branch

If \(\mu_{\rm diff}(C)>0\), there is no positive atom to pigeonhole into a
single fixed phase-packet label. Equivalently, for every \(\varepsilon>0\)
there is a finite partition of \(C\) into cells of sufficiently small diameter
so that each individual cell carries less than \(\varepsilon\) of the diffuse
mass, even though the total diffuse mass is nonzero.

This branch is a genuine phase-complexity object. It cannot be renamed as an
actual WKB carrier.

The angular-continuum quadrature note removes one subcase. If the diffusion is
only in Beltrami direction at a fixed bank/station, the pressure moment depends
only on the second angular moment and has an exact three-axis quadrature. That
diffuse angular profile is not an independent active-service supplier. The
diffuse burden here is diffusion in the remaining carrier coordinates:
material path, time, center, envelope, relative scale, bank, weight, refresh
label, or the measure-valued profile itself.

The admission theorem required here is:

```text
DiffuseWKBProfileAdmission.A
```

Statement shape:

Admit the nonzero diffuse phase-space measure as the terminal witness ledger
itself, preserving the same datum, same Navier-Stokes branch, actual pressure
law, finite/readout-compatible carrier cover at the measure level, and same-law
tower; or prove that failure of such localization is a limit-of-class terminal
artifact or original-participation failure.

The microlocal-defect direct test shows why this is a real burden. A
divergence-free defect measure can see a positive selected terminal oscillation
without supplying endpoint UI, a square reserve, polar saturation, or
same-witness admission. Visibility is not payment.

## 6. Moving-Dirac obstruction to cheap carrier extraction

Tightness alone cannot imply actual carrier extraction.

Let \(C=[0,1]\), and let \(\ell_j\) be a sequence with no value repeated
infinitely often. Set
\[
  \mu_j=\delta_{\ell_j}.
\]
The family is tight and has total mass one. After subsequences it may converge
to a point mass if \(\ell_j\to\ell_\ast\), or empirical mixtures can generate a
diffuse limiting profile. In neither case does the abstract compactness
statement alone produce one fixed actual packet rule appearing on an infinite
tail. The missing input is either actual packet reconstruction from the limiting
label or profile-level witness admission.

So the continuum WKB branch cannot be paid by saying "compactness." It must
pay one of the two profile admission theorems above.

## 7. Updated WKB fork

Combining this note with the finite-menu extraction and tightness-defect notes,
the nonvanishing terminal WKB horn now has the exact split:

\[
\begin{array}{ll}
\text{finite actual phase-packet menu}
  &\Rightarrow
  \text{actual WKB carrier extraction paid},\\[2mm]
\text{tight continuum profile with atom}
  &\Rightarrow
  \text{bounded-count atomization or unbounded-count cloud admission/defect},\\[2mm]
\text{tight continuum profile, diffuse non-angular mass}
  &\Rightarrow
  \text{DiffuseWKBProfileAdmission.A},\\[2mm]
\text{nontight WKB carrier measures}
  &\Rightarrow
  \text{domain/label/rung escape charged as Body-III defect}.
\end{array}
\]

The profile moment-continuity criterion pays the scalar moment-passage part of
this fork when the active pressure-service readout is continuous or uniformly
stabilized. The service-modulus follow-up reduces that stabilization to one
uniform modulus of continuity on the compact WKB label space; failure of the
modulus is moving service-selector escape in material, center, envelope, time,
scale, bank, weight, or rung coordinates. This is a strict narrowing of
`MicrolocalDefectProfileAdmission.A`. It does not prove that either profile
branch is admitted as a same-solution terminal witness.

The closed-graph witness criterion pays the exact compactness test for that
remaining same-solution legality. Closed legal labels carry the limiting
profile support. Nonclosed legal labels produce a legal prelimit cloud whose
limit is outside the witness class, which is a limit-of-class /
original-participation / carrier-or-tower failure.

The certificate-compactness follow-up identifies the exact source of that
closedness. The WKB label has to carry compact legality certificates for the
actual law, ancestry/original participation, finite/readout-compatible cover,
and same-law tower. If a certificate coordinate is noncompact or projected
away, the first lost certificate is the Pack/Part/Field landing rather than
retained supply.

The pressure-law certificate has now been split once more. Weak WKB compactness
passes the Navier-Stokes equations to a Navier-Stokes-Reynolds limit unless the
quadratic defect \(R\) has \(\mathbb P\operatorname{div}R=0\) with compatible
pressure service, or unless \(R\) is itself carried as a legal certificate.
Thus the actual-law part of diffuse profile admission is not scalar service
passage; it is Reynolds-defect closure or certified Reynolds-defect carriage.

The cover part is likewise separate from scalar service passage. The profile
must lift to a finite readout-compatible cover certificate. If chart radii
collapse, chart count escapes, chart parameters escape, or overlap/readout
compatibility fails, the branch is Pack-side carrier-cover loss.

The no-supplier trichotomy records the profile-level endpoint of these rows.
Once the scalar moment passes and the law, ancestry, cover, and tower
certificates are included in the profile object, a retained WKB profile is
either a legal terminal witness consumed by the Sobolev/Field readout, or the
first failed row is Pack/Part-typed, or the tight stabilized profile was never
formed. Thus the atomic/diffuse split leaves profile admission or row failure;
it does not leave a third retained WKB supplier branch.

## 8. State

The compact-continuum WKB branch is now split into two smaller objects:

```text
AtomicWKBProfileReconstruction.A
DiffuseWKBProfileAdmission.A
```

The former is a reconstruction theorem from one fixed limiting label. It is
paid in the bounded effective prelimit packet-count case and remains open in
the unbounded-count case, which the compactness split routes to a tight profile
object or nontight selected-carrier escape; count-only no-free-fragmentation and
same-cell packet-moment square coercivity are false. The beta-small many-cell
WKB survivor lies in that unbounded-count case. The latter is a measure-valued
terminal witness theorem or limit-of-class failure theorem, after the scalar
moment-passage clause has been paid by `WKBServiceModulus.A` or else routed to
moving-selector escape, and after the legal-support clause has been reduced to
certificate compactness of the same-solution legal-label graph, including the
Reynolds-defect closure fork for the actual-law coordinate, the transport-defect
fork for material ancestry, and the finite-cover compactness fork for the
Pack-side cover coordinate.

No general `ActualWKBCarrierExtraction.A`, no `MicrolocalDefectProfileAdmission.A`,
no cross-cell Gram-gap theorem, no WKB construction/exclusion theorem, no F4/F5
pass, no manuscript completion, and no MPP closure is claimed.
