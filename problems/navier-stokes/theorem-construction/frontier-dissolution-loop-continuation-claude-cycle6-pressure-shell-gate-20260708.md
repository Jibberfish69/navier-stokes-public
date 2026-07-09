---
theorem_id: frontier-dissolution-loop-continuation-claude-cycle6-pressure-shell-gate-20260708
created: 2026-07-08
problem: navier-stokes
route: frontier-dissolution-loop / Claude Cycle 6 pressure-shell gate
status: strict-reduction-no-deletion
active_frontier:
  - W3 CriticalServicePersistenceFromPayment.A
  - W7 RetainedVPIRecordGraphClosednessOrTypedRouteOut.A plus corrected admission-or-route-out tail
  - W8 WLF.60 / ODP.91 selected-linear original-data payment
  - W9 compact certified material-time path/action bundle
source_refs:
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-claude-e123-scalar-subsidy-reaiming-gate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-joint-rotation-form-scoping-regate-20260708.md
  - problems/navier-stokes/theorem-construction/frontier-dissolution-loop-continuation-fixed-cover-flux-ownership-reduction-20260708.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-retained-pressure-row-adjoint-range-test-20260708.md
completion_truth: >-
  This gate accepts Claude Cycle 6's pressure-Hessian shell formula and the
  scale-free P2 shell law for the pressure subsidy. It refutes the proposed
  deletion/merge with the Biot-Savart self-induction sign: the pressure subsidy
  is an even scalar quadrupole moment of Q=-Delta p, while transverse
  self-induction is an oriented vector/circulation row. A mirror fixing the
  filament axis preserves the scalar pressure-shell moment and flips the
  oriented transverse induction sign. Therefore the shared axial-nonuniformity
  data is not an identity certificate. No W3/W7/W8/W9 wall is deleted.
---

# Claude Cycle 6 Pressure-Shell Gate

Frontier opened: W3, W7, W8, W9.

Cross-wall failure sentence: the pressure-shell subsidy computation does not
identify the Biot-Savart self-induction sign with the pressure \(P_2\) shell
moment, and it does not reduce W3/W7/W8/W9 to one written object. The two rows
can be driven by related axial nonuniformity, but they are different operators:
one is a scalar even pressure-source quadrupole, the other is an oriented
vorticity/circulation geometry.

Physical sentence: in the fixed-field view, a vorticity direction can stay
dangerously aimed only if the same field's slaved pressure supplies negative
curvature along that transported direction. The Poisson law shows exactly what
source geometry supplies that curvature. That is useful field ontology, but it
is not yet payment, graph closure, selected original-data collection, or
material-time path closure.

## Accepted Pressure-Shell Formula

Use the source convention from the joint-rotation regate:
\[
  Q=-\Delta p=\operatorname{tr}(\nabla u)^2
  =|S|^2-\frac12|\omega|^2 .
\]
Equivalently, \(\Delta p=-Q\) and
\[
  p(x)={1\over 4\pi}\int {Q(y)\over |x-y|}\,dy
\]
up to the usual local/principal-value interpretation. For a unit direction
\(e\), the distributional Hessian identity gives
\[
  e\cdot\nabla^2p(0)e
  =
  -{1\over3}Q(0)
  +{1\over4\pi}\operatorname{p.v.}\int
    Q(y)\,{3(y\cdot e)^2-|y|^2\over |y|^5}\,dy .
\]
Since
\[
  {3(y\cdot e)^2-|y|^2\over |y|^5}
  =
  {2P_2(\cos\theta)\over r^3},
\]
the nonlocal part is the scale-free shell law
\[
  {1\over2\pi}\operatorname{p.v.}\int_0^\infty
  \left(\int_{S^2}Q(r\theta)P_2(e\cdot\theta)\,d\theta\right){dr\over r}.
\]
Thus Claude's \(dr/r\) affine-log tower reading is correct at the level of the
pressure-Hessian source formula.

The sign geography also checks. A negative \(Q\) lobe in polar cones and a
positive \(Q\) lobe in the equatorial band both make the nonlocal contribution
to \(e\cdot\nabla^2p\,e\) more negative.

## What This Actually Reduces

The scalar subsidy gate already accepted
\[
  D_t\alpha=|Se|^2-2\alpha^2-e\cdot He+\nu R_\alpha,
  \qquad \alpha=e\cdot Se .
\]
At perfect alignment this becomes
\[
  D_t\alpha=-\alpha^2-e\cdot He+\nu R_\alpha .
\]
So held positive alignment requires
\[
  e\cdot He\le -\alpha^2+\nu R_\alpha .
\]
With the shell formula inserted, that becomes an exact pressure-source demand:
the \(P_2\)-moment of \(Q\) across shells must overcome the local
\(-Q(0)/3\) term and the square-rate lapse.

For a vorticity-dominated core \(Q(0)<0\), the local term \(-Q(0)/3\) is
positive in \(e\cdot He\). It is a repulsive contribution for the subsidy
inequality, so the nonlocal shell moment has to be more negative. This is a
real sharpening of the field-view route.

## Why The Claimed Merge Does Not Pay

The exact shell formula does not certify the claimed deletion "Biot-Savart
self-induction sign joins the pressure-shell subsidy; one wall not two."

First, the numerical Burgers/self-supply constant is not certified by the
formula alone. The value depends on the actual retained profile, the split
between the local affine strain background and the vorticity-source row, and
the principal-value/localization convention. Claude's own packet names the
exact Burgers-profile \(P_2\) integral as a remaining computation, so no
constant such as \(-|\omega|^2/4\) can be used as a certificate here.

Second, there is a symmetry obstruction to the proposed two-are-one merge. Let
\(\mathcal R\) be a mirror reflection that fixes the axis \(e\). The scalar
source \(Q\) and the kernel \(P_2(e\cdot\theta)\) are mirror-even, so the
pressure-shell moment and \(e\cdot He\) are unchanged under this reflection.
The transverse Biot-Savart self-induction sign is an oriented vector/circulation
row; its component normal to the mirror plane flips sign. Therefore no
reflection-even scalar \(P_2\) pressure moment can be identical to the
reflection-odd transverse induction sign without an additional oriented row
that is itself carried, paid, or routed out.

This is an exact refutation of the merge certificate. The same axial
nonuniformity profile may feed both operators, but shared input data is not an
identity, orthogonality, symmetry, or admission certificate.

## Frontier Consequence

The pressure-shell formula is a strict reduction target:
\[
  \hbox{selected pressure-subsidy residence}
  \quad\Longrightarrow\quad
  \hbox{scale-free }P_2\hbox{ shell moment of }Q=-\Delta p.
\]
It sharpens the field-frame route and the fixed-cover ownership picture.

It does not delete W3: the \(P_2\) shell row still has to be admitted and
distributed as retained tower-uniform service/payment, or its concentration has
to route out.

It does not delete W7: the pressure-source/Hessian row still has to pass the
retained nonlinear graph through critical compactness, including Reynolds or
pressure-service defects.

It does not delete W8: no checked source constructs the selected-linear
original-data bill that announces this shell row on the order-locked carrier
with bounded domination.

It does not delete W9: the shell moment is not a compact future-determining
material-time path/action, and the oriented induction row cannot be added to
the state by definition without importing W9-type content.

DELETED: none.
CERTIFICATE: Claude Cycle 6's pressure-Hessian shell identity is accepted with \(Q=-\Delta p\): \(e\cdot\nabla^2p(0)e=-Q(0)/3+(1/4\pi)\operatorname{p.v.}\int Q(y)(3(y\cdot e)^2-|y|^2)/|y|^5\,dy\), equivalently a scale-free \(P_2\) shell moment. The proposed merge with the Biot-Savart self-induction sign is refuted: a mirror fixing \(e\) preserves the scalar \(Q\) field, the \(P_2\) kernel, and \(e\cdot He\), while flipping the oriented transverse induction sign; shared axial nonuniformity is not an identity or symmetry certificate. The Burgers/self-supply constant remains an unproved profile computation, and no checked source carries the shell row through W3 admission, W7 graph closure, W8 selected bill construction, or W9 path/action.
REMAINING: W3, W7, W8, W9.
