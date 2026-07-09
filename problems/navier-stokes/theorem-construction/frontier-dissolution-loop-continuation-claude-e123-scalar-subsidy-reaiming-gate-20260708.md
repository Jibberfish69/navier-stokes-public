---
theorem_id: frontier-dissolution-loop-continuation-claude-e123-scalar-subsidy-reaiming-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / Claude E1-E3 scalar-subsidy re-aiming gate
status: strict-reduction-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RetainedVPIRecordGraphClosednessOrTypedRouteOut.A plus corrected admission-or-route-out tail
  - W8 WLF.60 / ODP.91 selected-linear original-data payment
  - W9 compact certified material-time path/action bundle
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-causal-lag-commutator-sign-target-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-vieillefosse-participation-lawfulness-inquiry-20260707.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-fixed-cover-flux-ownership-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w3-w8-fixed-cover-rn-domination-reduction-20260708.md
---

# Claude E1-E3 Scalar Subsidy / Re-aiming Exhaustion Gate

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: the scalar subsidy question does not identify W3,
W7, W8, and W9 with the 07-07 re-aiming trichotomy, because the trichotomy
controls off-diagonal pressure-frame re-aiming only after the co-diagonal
pressure-subsidy branch is classified, paid, or routed out.

Physical sentence: the same velocity field can sharpen dangerously only if a
vorticity direction stays aimed through material time; the scalar Riccati law
says held alignment needs a pressure-Hessian subsidy along that direction, but
a subsidy may be co-diagonal with the strain frame and therefore invisible to
the off-diagonal re-aiming bill unless the aligned atom theorem is proved.

## Accepted Identities

The fixed-cover enstrophy balance in Claude E1 is the classical local identity.
For \(\omega=\nabla\times u\),
\[
  \partial_t {|\omega|^2\over 2}
  + \nabla\cdot\left(u{|\omega|^2\over 2}\right)
  =
  \omega\cdot S\omega
  - \nu|\nabla\omega|^2
  + \nu\Delta {|\omega|^2\over 2}.
\]
Thus advective and viscous-diffusion fluxes are legitimate fixed-cover courier
rows: with a common selected density, interior fixed-cover flux cancels in the
sum. This is still not W3/W8 deletion, because the previous RN gate shows that
scale/rung concentration of the selected Door-1 row remains open.

Claude E2's scalar spine is also accepted modulo the viscosity and direction
commutator terms. Let
\[
  e={\omega\over|\omega|},
  \qquad
  \alpha=e\cdot Se,
  \qquad
  H=\nabla^2 p .
\]
Since the skew part \(\Omega\) has \(\Omega e=0\), one has
\[
  e\cdot\Omega^2e=0.
\]
Using
\[
  D_tS=-S^2-\Omega^2-H+\nu\Delta S
\]
and
\[
  D_te=(I-e\otimes e)Se+\nu R_e
\]
gives
\[
  D_t\alpha
  =
  |Se|^2-2\alpha^2-e\cdot He+\nu R_\alpha .
\]
At perfect alignment, \(Se=\alpha e\), so
\[
  D_t\alpha
  =
  -\alpha^2-e\cdot He+\nu R_\alpha .
\]
Therefore a held positive-alignment scalar branch needs a same-field pressure
subsidy
\[
  e\cdot He\le -\alpha^2+\nu R_\alpha
\]
or it lapses at the square rate.

## Exhaustion Gap

Claude E3 proposes to identify this scalar subsidy with the 07-07 re-aiming
trichotomy: frame lock, re-aim, or lapse. The checked source supports the
off-diagonal part of that statement. If \(R(t)\) is the material strain frame,
\(\widehat H=R^THR\), and \(B=R^TD_tR\), then an aligned pressure frame obeys
\[
  0=(D_t\widehat H)_{ij}
  =
  \widehat{D_tH}_{ij}+(h_i-h_j)B_{ij},
  \qquad i\ne j.
\]
So moving-frame aligned participation forces off-diagonal pressure re-aiming,
unless the channel is stationary or pressure-degenerate.

That is not the same as a deletion certificate for the scalar subsidy branch.
The scalar subsidy \(e\cdot He\le-\alpha^2+\nu R_\alpha\) is a diagonal
pressure-curvature requirement. In the \(S,e\) eigenframe, a co-diagonal pressure
Hessian can have \(B_{ij}=0\), \(\widehat H_{ij}=0\) for \(i\ne j\), and
\(e\cdot He\le-\alpha^2\), with the trace compensated transversely. The
off-diagonal bill
\[
  \sum_{\rm active}|(h_i-h_j)B_{ij}|\,d\mu_{\rm part}
\]
does not see that diagonal subsidy.

This is not being asserted as a Navier-Stokes counterhistory. It is an exact
attack on the proposed certificate: the certificate's bill is off-diagonal,
while the scalar subsidy can be co-diagonal at the algebraic level. The checked
source itself names the missing aligned-atom classification:
`NoAlignedIncompressibleCriticalRecordAtomExceptEscapes.A`, in the form
strict retained co-diagonal \(S,H\) atom implies pass, service-zero,
collar-paid, parent-owned affine endpoint, or route-out. That theorem is the
needed gate before Cycle E3 can pay.

## Gate Verdict

Claude E1 and E2 are accepted as real identities and a useful strict reduction:
the dangerous branch is a scalar pressure-subsidy residence problem. Claude E3
is refuted as a deletion because the exhaustion "subsidy = lock/re-aim/lapse"
does not yet classify the co-diagonal pressure-subsidy atom.

No new wall is admitted. The sharpened target stays inside the existing
frontier:
\[
  \text{scalar pressure-subsidy residence cap}
  =
  \text{off-diagonal re-aiming bill}
  +
  \text{co-diagonal aligned-atom classification/route-out}
  +
  \text{W3/W7/W8/W9 admission and path rows}.
\]

DELETED: none.
CERTIFICATE: The accepted scalar identity is \(D_t\alpha=|Se|^2-2\alpha^2-e\cdot He+\nu R_\alpha\), hence perfect alignment needs \(e\cdot He\le-\alpha^2+\nu R_\alpha\) to avoid lapse; but Claude E3's re-aiming bill \(\sum_{\rm active}|(h_i-h_j)B_{ij}|\,d\mu_{\rm part}\) controls off-diagonal pressure-frame motion, while a co-diagonal pressure-Hessian subsidy in the \(S,e\) eigenframe can have \(B_{ij}=0\), \(\widehat H_{ij}=0\) for \(i\ne j\), \(e\cdot He\le-\alpha^2\), and transverse trace compensation. Current checked sources name this as the unproved aligned-atom classification, not as an already paid branch, so the scalar subsidy question is a strict reduction target rather than a deletion of W3/W7/W8/W9.
REMAINING: W3, W7, W8, W9.
