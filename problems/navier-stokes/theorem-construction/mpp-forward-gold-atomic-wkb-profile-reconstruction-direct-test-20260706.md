---
theorem_id: forward-gold-atomic-wkb-profile-reconstruction-direct-test-20260706
status: direct-atomic-profile-reconstruction-not-proved-atomization-or-neighborhood-admission-needed
created: 2026-07-06
problem: navier-stokes
route: forward-gold / terminal WKB admission / atomic microlocal profile
target_object:
  - AtomicWKBProfileReconstruction.A
  - AtomicWKBPrelimitAtomization.A
  - AtomicWKBNeighborhoodCarrierAdmission.A
  - AtomicWKBFragmentationDefect.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-profile-atomic-diffuse-admission-split-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-actual-wkb-carrier-extraction-finite-menu-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-carrier-heredity-finite-menu-reduction-20260621.md
completion_truth: >-
  Direct reconstruction of an actual WKB carrier from a limiting phase-space
  atom is not proved by measure compactness alone. A sequence of shrinking
  diffuse phase-label clouds can converge weakly to a positive atom while no
  individual prelimit label or finite prelimit packet menu carries a fixed
  positive fraction of the moment. Therefore AtomicWKBProfileReconstruction.A
  splits into two smaller possible payments: either prove prelimit atomization
  / finite packet quantization inside the shrinking atom neighborhoods, or
  admit the shrinking same-solution packet cloud itself as an atomic
  neighborhood-profile terminal witness. If neither holds, the fragmentation
  is an atomic-profile admission defect, not an actual packet. No actual WKB
  carrier extraction theorem, no atomic profile admission theorem, and no MPP
  closure is claimed.
---

# Atomic WKB profile reconstruction direct test

## 1. Target

The tight WKB profile split left the atomic branch:
\[
  \mu_{\rm at}(\{\ell_\ast\})=a_\ast>0.
\]

The hoped-for upgrade is:
\[
  \text{positive atom of the WKB phase-space profile}
  \Longrightarrow
  \text{actual same-solution WKB carrier}.
\]

This note tests that upgrade directly.

## 2. What the atom actually gives

Let \(C\) be the compact WKB phase-packet carrier space and let
\[
  \mu_j\stackrel{*}{\rightharpoonup}\mu,
  \qquad
  \mu(\{\ell_\ast\})=a_\ast>0.
\]

Then for every open neighborhood \(U\ni\ell_\ast\),
\[
  \liminf_{j\to\infty}\mu_j(U)\ge a_\ast.
\]

Equivalently, for every sequence of neighborhoods \(U_k\downarrow\{\ell_\ast\}\)
one can choose a diagonal tail \(j_k\) with
\[
  \mu_{j_k}(U_k)\ge {a_\ast\over2}.
\]

This is a strong shrinking-neighborhood statement. It is not yet a single
actual packet statement.

## 3. Countermodel to atom-implies-prelimit-packet

Take \(C=[-1,1]\), \(\ell_\ast=0\), and
\[
  d\mu_j(\ell)
  =
  {a_\ast j\over2}\,{\bf 1}_{[-1/j,\,1/j]}(\ell)\,d\ell.
\]

Then
\[
  \mu_j\stackrel{*}{\rightharpoonup}a_\ast\delta_0.
\]

But for every point label \(\ell\),
\[
  \mu_j(\{\ell\})=0.
\]

Thus the limiting atom does not imply any prelimit point-label atom.

The same obstruction survives a discrete packet model. Put \(N_j\to\infty\)
labels inside \([-1/j,1/j]\), each with mass \(a_\ast/N_j\). Then
\[
  \mu_j\stackrel{*}{\rightharpoonup}a_\ast\delta_0,
  \qquad
  \max_{\text{prelimit packets }P}\mu_j(P)={a_\ast\over N_j}\to0.
\]

So even an atomic limiting profile can be produced by finer and finer
prelimit fragmentation around the limiting phase label.

This blocks the direct proof:
\[
  \mu(\{\ell_\ast\})>0
  \not\Longrightarrow
  \exists\text{ one actual prelimit packet family with fixed positive moment}.
\]

## 4. What remains useful

The atom still gives a useful same-solution object:
\[
  \mu_j(U_j)\ge {a_\ast\over2},
  \qquad
  U_j\downarrow\{\ell_\ast\}.
\]

This is a shrinking phase-tube carrier. It can become proof-bearing in either
of two ways.

First possible payment:

```text
AtomicWKBPrelimitAtomization.A
```

Statement shape: inside the shrinking phase neighborhoods \(U_j\), the actual
Navier-Stokes / wave-packet structure forces one subpacket or a fixed finite
subpacket menu to carry a uniform fraction of \(\mu_j(U_j)\). Then finite-menu
pigeonhole applies and actual WKB carrier extraction is paid.

Possible sources of such a theorem would be packet quantization, bounded
overlap with a minimum occupancy scale, orthogonality with bounded
multiplicity, or a no-free-fragmentation law. None is proved here.

Second possible payment:

```text
AtomicWKBNeighborhoodCarrierAdmission.A
```

Statement shape: the shrinking phase-tube cloud itself is admitted as the
terminal witness ledger, with the same datum, same branch, actual pressure law,
finite/readout-compatible packet cover at the cloud level, same-law tower, and
nonzero retained moment. Then the object is a profile-level witness rather than
a single material packet.

## 5. Fragmentation defect

If neither payment holds, the obstruction is not invisible. It has a precise
form:

```text
AtomicWKBFragmentationDefect.A
```

The terminal moment concentrates at one limiting phase label, but every
prelimit actual packet or finite packet menu inside the shrinking label tube
carries vanishing mass. That is a mismatch between limiting profile visibility
and actual packet admission.

This is not `ActualWKBCarrierExtraction.A`. It is an admission defect to be
consumed by the profile / limit-of-class / participation interface.

## 6. Updated atomic branch

The atomic WKB profile branch is therefore:
\[
\begin{array}{ll}
\text{prelimit atomization or finite packet quantization}
  &\Rightarrow
  \text{actual WKB carrier extraction},\\[2mm]
\text{shrinking phase-tube cloud admission}
  &\Rightarrow
  \text{atomic profile witness},\\[2mm]
\text{no atomization and no cloud admission}
  &\Rightarrow
  \text{atomic fragmentation / admission defect}.
\end{array}
\]

This is smaller than the previous atomic profile statement. The bad overclaim
is now explicit: a limiting atom is not automatically a material packet.

## 7. State

This note is a failed direct proof and a strict reduction.

It proves no `AtomicWKBProfileReconstruction.A`, no
`AtomicWKBPrelimitAtomization.A`, no `AtomicWKBNeighborhoodCarrierAdmission.A`,
no general `ActualWKBCarrierExtraction.A`, no general
`MicrolocalDefectProfileAdmission.A`, no WKB construction/exclusion theorem, no
F4/F5 pass, no manuscript completion, and no MPP closure.
