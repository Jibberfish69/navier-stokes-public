---
theorem_id: frontier-dissolution-loop-continuation-row5-pairing-not-w9-action-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / Row 5 chirality-to-tilt pairing / W9 action gate
status: instantaneous-pairing-not-material-time-action-no-deletion
frontier_opened:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RetainedVPIRecordGraphClosednessOrTypedRouteOut.A plus arbitrary-original-data admission
  - W8 WLF.60 / ODP.91 selected-linear original-data early-row payment
  - W9 MaterialTimeCertificateFlowInvariance.A / compact certified material-time path hull
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-claude-row5-chirality-local-balance-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-row5-zero-helicity-not-tilt-neutral-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-b2-m1-pressure-row-orientation-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-w9-future-germ-action-criterion-gate-20260708.md
completion_truth: >-
  This packet tests the tempting deletion W9 <- Row 5+B2: the chirality-to-tilt
  pairing might be the missing material-time action. It fails. The exact local
  jet certificate shows that the same instantaneous front value, strain,
  vorticity, helicity, and Omega^2 row can have different helicity time
  derivative because the local balance contains a second-derivative
  curl-helicity row. Therefore Row 5+B2 is an orientation target/readout, not a
  compact future-determining certificate action. No W3, W7, W8, or W9 wall is
  deleted.
---

# Row 5 pairing is not the W9 material-time action

Frontier opened: W3, W7, W8, W9.

Cross-wall identification attempted first: Row 5+B2 is not W9. The
chirality-to-tilt pairing is an instantaneous signed readout at a front, while
W9 is the existence of a compact certified material-time path/action on retained
certificate states.

Physical sentence: the same front can carry the same current chirality and
same vorticity-axis tilt row while differing in the curl-helicity flux that
decides how the chirality row moves next. A signed readout is not yet a
future-determining clock.

## Exact second-jet certificate

Work at a point \(x_0=0\). Fix any smooth incompressible local jet with
\[
  u(0)=u_0,\qquad \nabla u(0)=S+\Omega,\qquad \omega(0)=\nabla\times u(0),
\]
and assume \(\omega_3(0)\ne0\). For any \(\gamma\in\mathbb R\), add the local
divergence-free polynomial
\[
  v_\gamma(x)=(0,0,\gamma x_1^2).
\]
It satisfies
\[
  v_\gamma(0)=0,\qquad \nabla v_\gamma(0)=0,\qquad \nabla\cdot v_\gamma=0.
\]
Therefore the perturbed jet \(u^\gamma=u+v_\gamma\) has the same point value,
the same strain \(S\), the same vorticity \(\omega(0)\), the same helicity
\[
  h(0)=u(0)\cdot\omega(0),
\]
and the same \(\Omega^2(0)\) row as \(u\). In particular, the instantaneous
Row 5 chirality readout and the first-order B2 vorticity-square row are
unchanged.

But
\[
  \nabla\times\omega^\gamma
  =
  \nabla\times\nabla\times u^\gamma
  =
  -\Delta u^\gamma
\]
at the point, because the jet is divergence-free. Since
\[
  \Delta v_\gamma(0)=(0,0,2\gamma),
\]
one gets
\[
  \omega^\gamma(0)\cdot(\nabla\times\omega^\gamma)(0)
  =
  \omega(0)\cdot(\nabla\times\omega)(0)-2\gamma\,\omega_3(0).
\]
Thus two local same-first-order fronts with the same \(h(0)\) and same
\(\Omega^2(0)\) can have different curl-helicity source terms.

Claude's Row 5 balance is
\[
  \partial_t h
  +\nabla\cdot\left(
      h u
      +\left(p-\frac12 |u|^2\right)\omega
      -\nu\,u\times(\nabla\times\omega)
    \right)
  =
  -2\nu\,\omega\cdot(\nabla\times\omega).
\]
The displayed perturbation changes the viscous source contribution by
\[
  4\nu\gamma\,\omega_3(0).
\]
So the instantaneous Row 5/B2 data do not determine the next Row 5 value unless
the certificate also carries the missing second-derivative flux/curl row or
routes it out.

## Consequence for W9

This does not attack the usefulness of Row 5. It attacks only the deletion
shortcut:
\[
  \text{chirality-to-tilt pairing}
  \quad\Rightarrow\quad
  \text{W9 material-time action}.
\]
That implication is false at the level of the required state variables. The
pairing can orient a front only after the front and its retained rows are
present. W9 asks for a compact path/action making those retained rows
future-determining through the closure.

The exact surviving W9 demand is therefore unchanged:
\[
  \text{certified path hull}
  \;+\;
  \text{continuous fixed shifts}
  \;+\;
  \text{terminal-window room}
  \;+\;
  \text{future-germ or path-germ coordinate}
\]
with the Row 5 flux/curl-helicity row either carried, canceled, paid, or typed
as route-out when it matters to the chirality coordinate.

No checked source proves that W3 service persistence, W7 retained graph passage,
W8 selected-linear original-data payment, or Row 5+B2 supplies that
future-determining path/action.

DELETED: none.
CERTIFICATE: The perturbation \(v_\gamma(x)=(0,0,\gamma x_1^2)\) is divergence-free and has zero value and zero first derivative at \(x_0=0\), so it preserves \(u(0)\), \(S(0)\), \(\omega(0)\), \(h(0)=u\cdot\omega\), and \(\Omega^2(0)\); however it changes \(\omega\cdot(\nabla\times\omega)(0)\) by \(-2\gamma\omega_3(0)\), hence changes the local Row 5 helicity source by \(4\nu\gamma\omega_3(0)\). Therefore the instantaneous Row 5/B2 chirality-to-tilt pairing is not a future-determining W9 material-time action; W9 still requires a compact certified path/action with the flux/curl-helicity rows carried, canceled, paid, or routed out.
REMAINING: W3, W7, W8, W9.
