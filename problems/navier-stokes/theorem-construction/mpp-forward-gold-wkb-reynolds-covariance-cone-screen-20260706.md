---
theorem_id: forward-gold-wkb-reynolds-covariance-cone-screen-20260706
status: exact-necessary-covariance-cone-screen-for-actual-wkb-reynolds-defects
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-stress-characterization-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-wkb-admission-microlocal-profile-reduction-20260706.md
completion_truth: >-
  Strict reduction only. Any actual Reynolds defect obtained as the weak
  quadratic defect of one same-viscosity velocity sequence is a positive
  semidefinite symmetric matrix-valued measure. Thus the pressure-law null
  branch for actual WKB packets is not the whole Leray-null stress space; it is
  the intersection of the Leray-null class with the covariance cone, unless an
  additional legal signed-stress certificate is explicitly supplied. Pure
  trace-free Hessian null stresses are therefore pressure-law null examples but
  are not actual Reynolds covariance defects unless they vanish or are offset by
  enough isotropic covariance mass. This proves no theorem forcing actual
  Navier-Stokes WKB defects to vanish, no legal carriage theorem for nonzero
  PSD null stresses, no profile admission theorem, no WKB
  construction/exclusion theorem, no confinement constant, and no MPP closure.
---

# WKB Reynolds covariance cone screen

## 1. Object

The Reynolds-null note identified the pressure-law survivor:
\[
  \mathbb P\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  R=qI+S,\qquad \operatorname{div}S=0 .
  \tag{COV.1}
\]
It also showed that this class contains compactly supported trace-free
anisotropic examples
\[
  R_\phi=\nabla^2\phi-{1\over3}(\Delta\phi)I .
  \tag{COV.2}
\]

That is the correct pressure-law statement. It is not yet the correct
Reynolds-defect statement for actual weak limits of one velocity field.

This note adds the missing necessary screen: an actual Reynolds defect is a
covariance defect, hence positive semidefinite as a matrix-valued measure.

## 2. Covariance positivity

Let \(u_j\) be a sequence with
\[
  u_j\rightharpoonup u
  \quad\hbox{weakly in }L^2_{\rm loc}.
  \tag{COV.3}
\]
Assume, after passing to a subsequence, that
\[
  u_j\otimes u_j\rightharpoonup M
  \tag{COV.4}
\]
as a symmetric matrix-valued Radon measure or distribution tested against
compactly supported smooth functions. Define the quadratic Reynolds defect
\[
  R:=M-u\otimes u .
  \tag{COV.5}
\]

For any \(\xi\in\mathbb R^3\) and any nonnegative
\(\psi\in C_c^\infty\),
\[
  \int \psi\,\xi^TR\xi
  =
  \lim_j\int \psi\,|\xi\cdot u_j|^2
  -
  \int \psi\,|\xi\cdot u|^2 .
  \tag{COV.6}
\]
Since \(\sqrt\psi\,(\xi\cdot u_j)\rightharpoonup
\sqrt\psi\,(\xi\cdot u)\) weakly in \(L^2\), weak lower semicontinuity gives
\[
  \int \psi\,|\xi\cdot u|^2
  \le
  \liminf_j\int \psi\,|\xi\cdot u_j|^2 .
  \tag{COV.7}
\]
The limit in (COV.6) exists by (COV.4). Hence
\[
  \int \psi\,\xi^TR\xi\ge0 .
  \tag{COV.8}
\]

Therefore
\[
  R\in\mathcal M_+({\rm Sym}^+(3))
  \tag{COV.9}
\]
as a positive semidefinite symmetric matrix-valued measure. If \(R\) has a
smooth density, then
\[
  R(x)\ge0
  \quad\hbox{for almost every }x .
  \tag{COV.10}
\]

This is not a Navier-Stokes special estimate. It is the covariance identity
for any weak \(L^2\) quadratic defect.

## 3. Consequence for trace-free null stresses

If a smooth matrix field \(R(x)\) is positive semidefinite and trace-free, then
all its eigenvalues are nonnegative and sum to zero. Thus every eigenvalue is
zero, so
\[
  R(x)=0 .
  \tag{COV.11}
\]

Consequently, a nonzero trace-free Hessian null stress
\[
  R_\phi=\nabla^2\phi-{1\over3}(\Delta\phi)I
  \tag{COV.12}
\]
cannot be the actual Reynolds covariance defect of a weakly convergent velocity
sequence. It is a pressure-law null stress, not an actual covariance defect,
unless \(R_\phi=0\).

It can become part of an actual covariance stress only after adding enough
isotropic covariance mass:
\[
  R=cI+R_\phi,\qquad R\ge0 .
  \tag{COV.13}
\]
The isotropic term is pressure gauge for the velocity law, but it is still
energy/covariance mass for the profile ledger.

## 4. Reduced pressure-row branch

The actual Reynolds branch in the pressure-law row is therefore:
\[
  R\in
  \mathcal N_{\rm Rey}\cap\mathcal M_+({\rm Sym}^+(3)),
  \tag{COV.14}
\]
where
\[
  \mathcal N_{\rm Rey}
  :=
  \{R:\mathbb P\operatorname{div}R=0\}
  =
  \{qI+S:\operatorname{div}S=0\}.
  \tag{COV.15}
\]

So the row is no longer:

```text
any Leray-null symmetric stress survives the pressure test.
```

It is:

```text
an actual Reynolds defect must be a PSD covariance measure in the Leray-null
class, unless a separate legal signed-stress certificate has been supplied.
```

This distinction matters because the trace-free Hessian examples prove the
velocity law has nontrivial null directions, while the covariance screen proves
those examples are not automatically admissible as actual WKB Reynolds
defects.

## 5. WKB meaning

For the WKB profile-admission front, the pressure-law row now has two separate
necessary clauses:

1. velocity-law invisibility:
   \[
     \mathbb P\operatorname{div}R=0 ;
     \tag{COV.16}
   \]
2. actual Reynolds ancestry:
   \[
     R\ge0
     \quad\hbox{as a covariance measure.}
     \tag{COV.17}
   \]

If (COV.16) fails, the profile has an actual pressure-law defect. If
(COV.17) fails, the profile is not the quadratic Reynolds defect of one
same-solution weak velocity branch. A signed stress may still appear in a
differentiated tower or other certificate only after its own legal-carriage
row is stated and paid; it is not an automatic rung-zero Reynolds defect.

The remaining survivor is the positive semidefinite Leray-null class. That
class is not empty: isotropic compactly supported covariance stresses
\(R=cI\), \(c\ge0\), are pressure gauge. Non-isotropic members may also exist
after adding isotropic mass to null anisotropic stresses. Thus this screen
narrows the row but does not close it.

## 6. Reduced burden

The pressure-law row is now:

```text
WKBReynoldsDefectVanishesOrCertified.A
```

with this refined split:

```text
R = 0
or R is a PSD covariance measure in the Leray-null class R=qI+S, div S=0
or a non-PSD/signed stress is carried by an explicit legal certificate outside
the rung-zero Reynolds covariance claim
or actual-pressure-law / covariance-ancestry / tower certificate failure.
```

What remains unproved is that actual Navier-Stokes WKB terminal packets either
force \(R=0\), legally carry a nonzero PSD Leray-null covariance stress through
the other certificate rows, or fail in a typed Pack/Part/Field row.

## 7. Four-sentence result

An actual Reynolds defect is a covariance defect. If
\(u_j\rightharpoonup u\) weakly in \(L^2_{\rm loc}\) and
\(u_j\otimes u_j\rightharpoonup M\), then
\[
  R=M-u\otimes u
\]
is a positive semidefinite symmetric matrix-valued measure. Therefore the
pressure-row survivor for actual WKB packets is not every Leray-null stress
but the PSD part of the Leray-null class. Pure trace-free Hessian null stresses
show the velocity-law null space, but they are not actual Reynolds covariance
defects unless they vanish or are offset by isotropic covariance mass.

## 8. State

This note proves the exact covariance-cone screen for rung-zero actual
Reynolds defects and applies it to the trace-free Hessian null examples.

It proves no Reynolds-defect vanishing theorem, no legal carriage theorem for
nonzero PSD Leray-null covariance stresses, no WKB profile admission theorem,
no WKB construction/exclusion theorem, no confinement constant, and no MPP
closure.
