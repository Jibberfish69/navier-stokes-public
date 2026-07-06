---
theorem_id: forward-gold-wkb-reynolds-null-stress-characterization-20260706
status: exact-characterization-leray-null-reynolds-defects-as-pressure-gauge-plus-divergence-free-stress
created: 2026-07-06
problem: navier-stokes
route: forward-gold / confinement constant / WKB profile admission / pressure-law certificate
target_object:
  - WKBReynoldsDefectVanishesOrCertified.A
  - WKBActualPressureLawClosedness.A
  - WKBCertificateCompactness.A
  - LimitOfClassTerminalArtifact.A
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-pressure-law-reynolds-defect-closure-fork-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-localized-anisotropic-defect-leray-obstruction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-legal-label-certificate-compactness-reduction-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-null-covariance-ballast-20260706.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-wkb-reynolds-ballast-energy-ledger-20260706.md
completion_truth: >-
  Exact characterization of the pressure-law null branch. For a smooth compactly
  supported symmetric Reynolds stress R on R^3, the condition
  P div R=0 is equivalent to div R being a gradient. Equivalently, after
  choosing the compactly supported pressure gauge q with grad q=div R, one can
  write R=qI+S with div S=0. Thus the multi-stress cancellation branch in
  WKBReynoldsDefectVanishesOrCertified.A is not an open-ended cancellation
  phrase: it is exactly the pressure-gauge component plus a divergence-free
  symmetric null stress invisible to the velocity law. A nonzero null stress may
  still carry WKB tensor readout; it is legal for the actual pressure-law row
  only as a null-stress certificate and remains available to the other rows
  rather than becoming retained pressure-service supply. The null class is
  nontrivial even among compactly supported trace-free anisotropic stresses:
  R_phi=Hess phi-(Delta phi)I/3 satisfies P div R_phi=0. Thus anisotropy or
  trace-free pressure shape alone cannot close the pressure row. The
  covariance-ballast follow-up adds the actual Reynolds-defect constraint:
  nonzero trace-free null stresses are not positive covariance defects unless
  they are padded by positive trace. The ballast-energy follow-up identifies
  that trace as unresolved kinetic energy, \(\mu_R=(1/2)\operatorname{tr}R\),
  not pressure deletion. This proves no theorem forcing actual Navier-Stokes
  WKB Reynolds defects into the null class, no legal carriage theorem for
  nonzero null stresses through the whole profile, no profile admission
  theorem, no WKB construction/exclusion theorem, no confinement constant, and
  no MPP closure.
---

# WKB Reynolds null stresses: exact pressure-law characterization

## 1. Object

The pressure-law row says a weak WKB limit of smooth same-viscosity
Navier-Stokes branches closes the ordinary velocity-pressure law only when the
Reynolds defect \(R\) satisfies
\[
  \mathbb P\,\operatorname{div}R=0
  \tag{NUL.1}
\]
with compatible pressure service, or when \(R\) is legally carried as a
certificate.

The localized anisotropic note proved that a single compactly supported
non-scalar shape
\[
  R=\chi Q,\qquad Q\notin\mathbb RI
  \tag{NUL.2}
\]
does not satisfy (NUL.1). It left multi-stress cancellation.

This note identifies that branch exactly.

## 2. Leray-null stress condition

Work on \(\mathbb R^3\). Let
\[
  R\in C_c^\infty(\mathbb R^3;{\rm Sym}(3)).
  \tag{NUL.3}
\]
Set
\[
  f:=\operatorname{div}R .
  \tag{NUL.4}
\]
The Leray projector kills exactly gradient vector fields, so
\[
  \mathbb P f=0
  \quad\Longleftrightarrow\quad
  f=\nabla q
  \tag{NUL.5}
\]
for some scalar distribution \(q\). Since \(f\) is smooth and compactly
supported, \(q\) may be chosen smooth with \(\nabla q=0\) outside a large ball;
after subtracting the exterior constant, \(q\in C_c^\infty\).

Thus
\[
  \mathbb P\,\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  \operatorname{div}R=\nabla q
  \quad\hbox{for some }q\in C_c^\infty .
  \tag{NUL.6}
\]

Equivalently, define
\[
  S:=R-qI .
  \tag{NUL.7}
\]
Then
\[
  \operatorname{div}S=0,
  \qquad
  R=qI+S .
  \tag{NUL.8}
\]

Conversely, if \(R=qI+S\) with \(\operatorname{div}S=0\), then
\[
  \operatorname{div}R=\nabla q,
  \qquad
  \mathbb P\,\operatorname{div}R=0 .
  \tag{NUL.9}
\]

Therefore:
\[
\boxed{
  \mathbb P\,\operatorname{div}R=0
  \quad\Longleftrightarrow\quad
  R=qI+S,\quad \operatorname{div}S=0 .
}
\tag{NUL.10}
\]

The scalar part \(qI\) is pressure gauge. The symmetric divergence-free part
\(S\) is a null stress for the velocity law.

## 3. Curl form

The same test can be stated without solving for \(q\):
\[
  \nabla\times\operatorname{div}R=0 .
  \tag{NUL.11}
\]
For a compactly supported vector field, being curl-free is equivalent to being
a gradient. Thus (NUL.11) is equivalent to (NUL.1).

This is the exact form of the "multi-stress cancellation" branch. Multiple
localized WKB stresses can cancel in the pressure-law row only by making
\[
  \operatorname{div}\sum_a R_a
  \tag{NUL.12}
\]
curl-free, equivalently by leaving only pressure gauge plus a divergence-free
null stress.

## 4. Trace-free Hessian null stresses

The null branch is not only scalar pressure. It contains compactly supported
anisotropic trace-free stresses. Let
\[
  \phi\in C_c^\infty(\mathbb R^3)
  \tag{NUL.13}
\]
and set
\[
  R_\phi:=\nabla^2\phi-{1\over3}(\Delta\phi)I .
  \tag{NUL.14}
\]
Then \(R_\phi\) is symmetric, compactly supported, and trace-free. Moreover,
\[
  \operatorname{div}R_\phi
  =
  \nabla\Delta\phi-{1\over3}\nabla\Delta\phi
  =
  {2\over3}\nabla\Delta\phi .
  \tag{NUL.15}
\]
Therefore
\[
  \mathbb P\,\operatorname{div}R_\phi=0 .
  \tag{NUL.16}
\]

For a generic \(\phi\), \(R_\phi\) is not identically zero and is not a scalar
matrix field. Thus trace-free anisotropy is not enough to force a nonzero
velocity-law defect. The single-shape obstruction is sharp: a fixed non-scalar
shape \(R=\chi Q\) is not gauge, but a variable-eigenframe Hessian-gauge stress
can be.

## 5. WKB meaning

The pressure-law row sees only
\[
  \mathbb P\,\operatorname{div}R .
  \tag{NUL.17}
\]
So a nonzero \(S\) with \(\operatorname{div}S=0\) is invisible to the velocity
equation. It is not automatically admitted retained WKB supply. It is a tensor
defect certificate that the pressure-law row cannot reject, and the other rows
must still test:

1. whether it comes from the same material packet/cloud;
2. whether it is compatible with the finite cover;
3. whether it is compatible with the differentiated same-law tower;
4. whether its high Sobolev readout triggers the installed Field consumer.

Thus a Leray-null stress is not pressure-service closure of the whole profile.
It is only the exact null branch of the actual velocity-pressure law
certificate.

For an actual Reynolds defect, there is one more constraint not visible in the
arbitrary symmetric null class: covariance positivity. A weak quadratic defect
from velocity products is positive-semidefinite. Therefore a nonzero
trace-free null stress is not itself an actual Reynolds covariance defect; it
requires positive scalar trace ballast. In the notation
\[
  R={\tau\over3}I+A,\qquad \operatorname{tr}A=0,
\]
covariance positivity gives
\[
  {\tau\over3}\ge-\lambda_{\min}(A),
  \qquad
  \tau\ge\sqrt{3\over2}|A|_F .
\]
Taking traces in the weak quadratic limit also gives
\[
  \mu_R={1\over2}\operatorname{tr}R .
\]
The pressure gauge can absorb the force, but it cannot erase this nonnegative
unresolved kinetic energy.

## 6. Reduced burden

The pressure-law row is now:

```text
WKBReynoldsDefectVanishesOrCertified.A
```

with the following exact split:

```text
R = 0
or R is a PSD covariance measure in the null class R = qI + S with div S = 0,
   with pressure service adjusted by q and positive trace ballast paid for
   nonzero trace-free anisotropy as mu_R=(1/2)tr R
or a signed/non-PSD stress is carried by an explicit legal certificate outside
   the rung-zero Reynolds covariance claim
or actual-pressure-law / covariance-ancestry / tower certificate failure.
```

The previous "multi-cell cancellation" phrase is replaced by the explicit
Leray-null stress class:
\[
  \mathcal N_{\rm Rey}
  :=
  \{R\in C_c^\infty({\rm Sym}(3)):
    \mathbb P\operatorname{div}R=0\}
  =
  \{qI+S:\operatorname{div}S=0\}.
  \tag{NUL.18}
\]

What remains unproved is that actual Navier-Stokes WKB terminal packets either
produce only this PSD null class, legally carry a nonzero PSD null stress and
its trace-energy ballast through the other rows, or fall into the typed
Pack/Part/Field row failures.

## 7. Four-sentence result

The pressure-law branch has an exact null class. For compactly supported
symmetric \(R\), \(\mathbb P\operatorname{div}R=0\) exactly when
\(\operatorname{div}R\) is a gradient, equivalently when
\[
  R=qI+S,\qquad \operatorname{div}S=0 .
\]
The \(qI\) part is pressure gauge; the divergence-free \(S\) part is invisible
to the velocity equation but remains a tensor defect for the profile ledger.
This null class contains nonzero compactly supported trace-free anisotropic
examples \(R_\phi=\nabla^2\phi-(\Delta\phi)I/3\), so anisotropy alone cannot
close the pressure row. Actual Reynolds origin adds positive covariance
ballast, hence positive unresolved kinetic energy, for any nonzero trace-free
anisotropic null component.

## 8. State

This note proves the exact Leray-null characterization for compactly supported
smooth Reynolds stresses and the trace-free Hessian null-stress example.

The covariance-ballast follow-up proves the separate positivity price for
actual Reynolds defects. This note itself proves no theorem forcing actual
Navier-Stokes WKB Reynolds defects into the PSD null class, no legal carriage
theorem for nonzero PSD null stresses and their trace-energy ballast through
the whole profile, no WKB profile admission theorem, no WKB
construction/exclusion theorem, no confinement constant, and no MPP closure.
