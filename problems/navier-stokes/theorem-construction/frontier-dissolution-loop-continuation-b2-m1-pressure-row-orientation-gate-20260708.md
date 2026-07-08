---
theorem_id: frontier-dissolution-loop-continuation-b2-m1-pressure-row-orientation-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / B2 legal m=±1 channel / pressure-row computation
status: exact-m1-pressure-row-computed-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RetainedVPIRecordGraphClosednessOrTypedRouteOut.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 selected-linear original-data early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A / compact certified material-time path hull
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-aligned-row-two-functional-reduction-and-relay-liouville-consumer-architecture-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-cubic-drop-channel-sector-orthogonality-aligned-row-frontier-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-fixed-sphere-odd-pressure-current-nullspace-test-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-inplane-spin2-phase-pressure-free-law-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-transverse-restoring-sign-local-no-go-borrowing-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-cycles-11-13-stall-report-20260708.md
completion_truth: >-
  This packet executes the first exact legal B2 m=±1 thin-shell pressure-row
  computation and calibrates it against the already verified m=0 aligned-row
  constant. It does not delete W3, W7, W8, or W9. The m=±1 pressure row is
  nonzero and has exact coefficient 12/35, but its sign reverses with the
  torque-current orientation. The checked sector-orthogonality source says
  m≠0 torque currents carry no cubic drop at the strict atom, so the positive
  service/drop channel does not fix that orientation. B2 remains a transported
  orientation / no-free-wrong-sign-borrowing theorem, not a sign certificate.
---

# B2 Legal \(m=\pm1\) Pressure-Row Orientation Gate

Frontier opened: W3, W7, W8, W9. Cross-wall identification attempted first:
W3/W7/W8/W9 are not identified with the legal B2 \(m=\pm1\) computation,
because an exact off-diagonal pressure-row coefficient is not yet a restoring
sign theorem and does not supply the four bridges to row admission, selected
original-data payment, graph passage, and compact material-time path/action.

Physical sentence: the same retained record can torque its strain frame in the
\(m=\pm1\) sector, but that torque is orthogonal to the cubic shedding/drop
sector at the strict atom. Therefore the pressure row can be computed exactly,
while its material-time sense is still not fixed by the positive service
orientation.

## Thin-Shell Formula

Use the same thin-shell linear pressure row as the installed §3b computation.
At radius \(R=1\) and \(S=a\,\mathrm{diag}(1,1,-2)\), for a tangential shell
current \(j\),
\[
-\Delta p_1=2\,\mathrm{div}(S j\,\delta_{S^2}),
\qquad
H_1[j](0)=\nabla^2 p_1(0).
\]
For
\[
K_{ij}(n)=3n_i n_j-\delta_{ij},
\]
the center Hessian is
\[
H_{ij}(0)
=-\frac{1}{2\pi}
\int_{S^2}
(S j)\cdot\nabla K_{ij}\,d\sigma .
\]
The normalization is fixed by the already verified aligned-row computation:
for
\[
j_0=c\,\nabla_{S^2}\Bigl({3n_3^2-1\over2}\Bigr),
\]
the formula gives
\[
H_1[j_0](0)
={24\over35}{ac\over R^2}\,
\mathrm{diag}(-1,-1,2),
\]
matching the §3b constant.

## Exact \(m=\pm1\) Row

For the legal compression-axis tilt generators
\[
j_{13}=c\,\nabla_{S^2}(n_1 n_3),
\qquad
j_{23}=c\,\nabla_{S^2}(n_2 n_3),
\]
the same moment calculation gives
\[
H_1[j_{13}](0)
=
{12\over35}{ac\over R^2}
\,(e_1\otimes e_3+e_3\otimes e_1),
\]
and
\[
H_1[j_{23}](0)
=
{12\over35}{ac\over R^2}
\,(e_2\otimes e_3+e_3\otimes e_2).
\]
For comparison, the \(m=\pm2\) generators give nonzero in-plane spin rows but
land on the already killed gap:
\[
H_1[\nabla_{S^2}(n_1^2-n_2^2)](0)
=
{48\over35}{a\over R^2}(-e_1\otimes e_1+e_2\otimes e_2),
\]
\[
H_1[\nabla_{S^2}(2n_1n_2)](0)
=
-{48\over35}{a\over R^2}(e_1\otimes e_2+e_2\otimes e_1),
\]
while \(\lambda_1-\lambda_2=0\) at the strict atom.

## Why This Still Does Not Sign B2

The legal \(m=\pm1\) frame law has denominator \(3a\):
\[
\dot\theta_{13}
=
-{(\Omega^2)_{13}+H_{13}\over\lambda_1-\lambda_3}
=
-{(\Omega^2)_{13}+{12\over35}ac/R^2\over3a},
\]
and similarly for the \(23\) channel.

The coefficient \(12/35\) is exact and nonzero. It is not a restoring-sign
certificate, because \(c\mapsto -c\) reverses the pressure-row contribution.
The checked sector-orthogonality source says every \(m\ne0\) current is
drop-null at the strict atom: the \(m=\pm1\) torque sector carries eigenframe
torque but no cubic shedding/drop. Therefore the positive service/drop
orientation that fixed the aligned \(m=0\) sense does not fix the \(m=\pm1\)
torque orientation.

The local sign no-go source gives the same warning from the opposite side:
pointwise or finite-jet data can borrow a neutral or anti-restoring pressure
bank with either sign. A lawful B2 theorem must prove that a retained record
cannot keep the wrong \(m=\pm1\) torque orientation for free through material
time. In current names, that is a transported-orientation form of
\[
\texttt{NoFreeWrongSignPressureBorrowing.A},
\]
or a proved bridge tying \(c\) to the retained vorticity/strain orientation
with the restoring sense and charging every contrary orientation.

## Gate Verdict

The \(m=\pm1\) channel is now a calibrated exact computation, not merely a
target description. Its result narrows B2 to a specific missing fact:

\[
\text{retained material-time orientation law fixing the sign of }c
\text{ relative to }(\Omega^2)_{i3}.
\]

No checked source supplies that law, and the exact coefficient alone does not
bridge to W3, W7, W8, or W9.

DELETED: none.
CERTIFICATE: The legal B2 \(m=\pm1\) thin-shell pressure row is nonzero and exact, \(H_{13}=H_{31}=(12/35)ac/R^2\) for \(j=c\nabla_{S^2}(n_1n_3)\) and analogously in the \(23\) channel, calibrated by the verified \(m=0\) coefficient \(24/35\); however its sign reverses with the torque-current orientation, and the checked sector-orthogonality source says \(m\ne0\) currents carry no cubic drop at the strict atom, so the positive service/shedding orientation does not fix the B2 restoring sense or supply bridges to W3/W7/W8/W9.
REMAINING: W3, W7, W8, W9.
