---
theorem_id: frontier-dissolution-loop-continuation-row5-scalar-helicity-not-tilt-sign-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / Row 5 chirality / scalar helicity versus B2 tilt sign
status: scalar-helicity-sign-not-tilt-sign-certificate-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RetainedVPIRecordGraphClosednessOrTypedRouteOut.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 selected-linear original-data early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A / compact certified material-time path hull
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-claude-row5-chirality-local-balance-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-b2-m1-pressure-row-orientation-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-b2-reflection-helicity-ontology-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-row5-zero-helicity-not-tilt-neutral-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-row5-pairing-not-w9-action-gate-20260708.md
completion_truth: >-
  This packet audits the stronger Row 5 assumption that the scalar sign of
  h=u dot omega directly chooses the legal B2 m=+-1 tilt sign. It fails at the
  local first-jet level: two incompressible first jets can have the same
  positive helicity and same strict strain atom while the vorticity-square
  tilt row (Omega^2)13 has opposite signs. A future Row 5 theorem therefore
  needs an oriented retained chirality/triad row or a bridge theorem, not
  scalar h alone. No W3, W7, W8, or W9 wall is deleted.
---

# Scalar helicity sign does not choose the B2 tilt sign

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: scalar Row 5 helicity is not the
legal B2 tilt-orientation certificate, and it is not W3, W7, W8, or W9. The
scalar \(h=u\cdot\omega\) is reflection-odd, but the \(m=\pm1\) tilt sign also
depends on how the vorticity vector is oriented relative to the strain axes and
the pressure row.

Physical sentence: a front can have the same positive handedness while the
vorticity axis leans through the compression direction on the opposite side.
Scalar handedness says the velocity and vorticity are co-oriented; it does not
say which off-axis tilt channel is restoring.

## Exact first-jet certificate

At \(x_0=0\), fix the strict strain atom
\[
  S=a\,\operatorname{diag}(1,1,-2).
\]
Choose two incompressible first jets with the same symmetric part \(S\) and
with vorticities
\[
  \omega^+=(1,0,1),
  \qquad
  \omega^-=(1,0,-1).
\]
For each sign, set the point velocity equal to the vorticity,
\[
  u^\pm(0)=\omega^\pm.
\]
The local affine jets
\[
  u^\pm(x)=u^\pm(0)+(S+\Omega^\pm)x
\]
are divergence-free because \(\operatorname{tr}S=0\) and \(\Omega^\pm\) is
skew.

Both jets have the same positive scalar helicity:
\[
  h^\pm(0)=u^\pm(0)\cdot\omega^\pm=|\omega^\pm|^2=2>0.
\]
But, with the convention
\[
  \Omega v={1\over2}\,\omega\times v,
\]
one has
\[
  \Omega^2={1\over4}\left(\omega\otimes\omega-|\omega|^2I\right),
\]
so the legal \(13\) vorticity-square tilt row is
\[
  (\Omega_+^2)_{13}=+{1\over4},
  \qquad
  (\Omega_-^2)_{13}=-{1\over4}.
\]
Thus the scalar helicity sign is identical while the \(13\)-tilt contribution
has opposite sign.

## Consequence for Row 5

This does not refute a future retained chirality theorem. It refutes only the
under-specified scalar version:
\[
  \operatorname{sgn}(u\cdot\omega)
  \quad\Rightarrow\quad
  \operatorname{sgn}\bigl((\Omega^2)_{13}+H_{13}\bigr)
  \text{ with restoring sense}.
\]
The implication is false without additional oriented data. A lawful theorem
would need a retained orientation row that sees the vorticity direction relative
to the strain frame and pressure row, or it must prove that the wrong-side
orientation is paid, canceled, or routed out.

This is exactly why Row 5 is still a target/readout and not a frontier
deletion. W3 still asks for tower-uniform service-payment admission; W7 still
asks for retained pressure/VPI graph passage; W8 still asks for selected-linear
original-data payment; W9 still asks for compact material-time path/action.
Scalar helicity alone supplies none of those clauses.

DELETED: none.
CERTIFICATE: The two divergence-free first jets with \(S=a\,\operatorname{diag}(1,1,-2)\), \(\omega^+=(1,0,1)\), \(\omega^-=(1,0,-1)\), and \(u^\pm(0)=\omega^\pm\) both have \(h^\pm(0)=u^\pm\cdot\omega^\pm=2>0\), but \((\Omega_+^2)_{13}=+1/4\) and \((\Omega_-^2)_{13}=-1/4\); therefore the scalar sign of \(h=u\cdot\omega\) does not determine the legal B2 \(m=\pm1\) tilt sign, and Row 5 needs an additional oriented retained chirality/strain-frame/pressure-row bridge or a route-out theorem before it can delete any of W3, W7, W8, or W9.
REMAINING: W3, W7, W8, W9.
