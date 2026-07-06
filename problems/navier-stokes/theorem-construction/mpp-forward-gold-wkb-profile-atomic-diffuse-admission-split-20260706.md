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
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-microlocal-defect-positive-carrier-direct-test-20260620.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-decomposition-20260621.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-tightness-defect-as-bodyiii-relay-defect-20260621.md
completion_truth: >-
  Strict reduction only. If the WKB phase-packet carrier measures are tight
  and retain a nonzero normalized terminal pressure-Hessian moment, compactness
  gives a nonzero microlocal / phase-space profile. The profile has an exact
  atomic-diffuse split. A nonzero atomic part reduces the problem to
  AtomicWKBProfileReconstruction.A: reconstruct a same-solution terminal
  witness from one fixed limiting phase label. A nonzero diffuse part reduces
  the problem to DiffuseWKBProfileAdmission.A: admit the diffuse phase-space
  measure itself as a lawful terminal witness ledger, or classify failure of
  such admission as a limit-of-class / original-participation defect. This note
  proves the measure split and blocks the overclaim that tightness or
  microlocal visibility alone proves ActualWKBCarrierExtraction.A or
  MicrolocalDefectProfileAdmission.A. No profile admission theorem, no WKB
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

If this reconstruction theorem is paid, the atomic compact-continuum branch
feeds the already installed WKB Sobolev Field consumer.

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
actual WKB carrier. The admission theorem required here is:

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
  \text{AtomicWKBProfileReconstruction.A},\\[2mm]
\text{tight continuum profile, diffuse mass}
  &\Rightarrow
  \text{DiffuseWKBProfileAdmission.A},\\[2mm]
\text{nontight WKB carrier measures}
  &\Rightarrow
  \text{domain/label/rung escape charged as Body-III defect}.
\end{array}
\]

This is a strict narrowing of `MicrolocalDefectProfileAdmission.A`. It does not
prove that either profile branch is admitted.

## 8. State

The compact-continuum WKB branch is now split into two smaller objects:

```text
AtomicWKBProfileReconstruction.A
DiffuseWKBProfileAdmission.A
```

The former is a reconstruction theorem from one fixed limiting label. The
latter is a measure-valued terminal witness theorem or limit-of-class failure
theorem.

No general `ActualWKBCarrierExtraction.A`, no `MicrolocalDefectProfileAdmission.A`,
no WKB construction/exclusion theorem, no F4/F5 pass, no manuscript completion,
and no MPP closure is claimed.
