---
theorem_id: forward-gold-c0-axisymmetric-swirl-fixed-endpoint-coefficient-audit-20260708
created: 2026-07-08
problem: navier-stokes
route: forward-gold / c_0 / transverse pressure Hessian / fixed-axis swirl endpoint
status: strict-reduction-and-checked-obstruction-not-c0-closure
source_refs:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-aligned-critical-record-atom-transverse-hodge-coercivity-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-claude-codex-sync-transverse-coupling-20260707.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-c0-axisymmetric-plateau-turnoff-sublemma-20260707.md
completion_truth: >-
  This note audits Claude cycle 22 and the Gate-B axisymmetric-with-swirl
  endpoint. The causality claim does not discharge theorem A by itself: it
  reduces theorem A to a stopped parent-known selector admission theorem. The
  axisymmetric swirl calculation shows that the fixed-axis aligned endpoint is
  physically admissible at the local coefficient level and is not killed by
  scalar/isotropic reasoning, the no-swirl plateau sublemma, or a pointwise
  contradiction. The remaining theorem is a material-time Liouville/UCP
  exclusion for the exact retained zero-bill endpoint class, or an admitted
  counterprofile.
---

# Axisymmetric swirl fixed-endpoint coefficient audit

The fixed-axis swirl branch is a real same-fluid obstruction test. It has
anisotropy, vorticity, pressure, viscosity, and incompressibility, while the
pressure Hessian remains aligned with the strain frame by symmetry.

## 1. Cycle 22: causality does not by itself discharge theorem A

Claude cycle 22 says the anticipatory rotating-wave escape is forbidden by
causality because the child is carved from the parent at formation.

The physical part is correct: in a forward Navier--Stokes solution, the local
strain frame and any nonzero spin-2 orientation at a spacetime point are
determined by the already existing velocity field. But theorem A needs more
than physical existence of an orientation. The Schur detector has to be
parent-known before the selected child readout and has to retain comparable
record service under stopped first-exit selection.

So the actual theorem is

```math
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}.
\tag{ASW.1}
```

It must prove that any retained critical record with nonzero spin-2 amplitude
admits a stopped, nonanticipatory, parent-announced detector carrying comparable
service, or else routes to pass, service-zero, collar/Field payment, endpoint
material, or a genuine same-field counterprofile.

Only after that selector theorem is proved do we get

```math
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}
+
\texttt{SchurThinAdmissionRule.A}
+
\texttt{FiniteDimensionalSchurMotionPayment.A}
\Longrightarrow
\texttt{OrientedSpinTwoFrameTVPaidOrCounterprofile.A}.
\tag{ASW.2}
```

Thus causality removes the physically impossible reading of an anticipatory
flow, but it does not remove the proof obligation. The remaining Gate-A burden
is stopped selector admission, not mere wording.

## 2. On-axis axisymmetric swirl algebra

Near a smooth symmetry axis, write the axisymmetric velocity as

```math
u^r=a(z,t)r+O(r^3),\qquad
u^\theta=\gamma(z,t)r+O(r^3),\qquad
u^z=b(z,t)+c(z,t)r^2+O(r^4).
\tag{ASW.3}
```

Incompressibility gives, on the axis,

```math
b_z=-2a.
\tag{ASW.4}
```

Therefore the on-axis strain and rotation-square have the aligned form

```math
S=aP_\perp-2a\,e_z\otimes e_z,
\qquad
\Omega^2=-\gamma^2P_\perp .
\tag{ASW.5}
```

By \(SO(2)\) symmetry the pressure Hessian is also uniaxial:

```math
H=h_\perp P_\perp+h_z\,e_z\otimes e_z .
\tag{ASW.6}
```

Thus

```math
\Pi_\perp^S H=0
\tag{ASW.7}
```

by symmetry. This is aligned anisotropic flow, not isotropic flow.

The pressure trace on the axis is fixed by the Poisson equation:

```math
2h_\perp+h_z
=
\Delta p|_{r=0}
=
2\gamma^2-6a^2.
\tag{ASW.8}
```

The strain coefficient obeys the on-axis form of the strain equation

```math
D_t a
=
-a^2+\gamma^2-h_\perp+\nu\,\mathcal L_a,
\tag{ASW.9}
```

where \(D_t=\partial_t+b\partial_z\) along the axis and \(\mathcal L_a\) is the
viscous axis coefficient determined by the next spatial jets. This coefficient
is not closed by \(a\) and \(\gamma\) alone.

The swirl circulation

```math
\Gamma=ru^\theta
\tag{ASW.10}
```

satisfies the exact axisymmetric equation

```math
\partial_t\Gamma
+u^r\partial_r\Gamma
+u^z\partial_z\Gamma
=
\nu\left(\partial_r^2-\frac1r\partial_r+\partial_z^2\right)\Gamma .
\tag{ASW.11}
```

For \(\Gamma=\gamma(z,t)r^2+O(r^4)\), this yields the on-axis coefficient law

```math
D_t\gamma+2a\gamma=\nu\,\gamma_{zz}+\text{higher-axis terms}.
\tag{ASW.12}
```

The maximum principle controls \(\Gamma\), not automatically the quotient
\(\gamma=\Gamma/r^2\). Radial compression through \(a\) can amplify the on-axis
swirl rate while preserving the aligned frame.

## 3. What the coefficient test proves

There is no local algebraic contradiction in a fixed-axis aligned swirl
endpoint. The deviatoric part of the aligned pressure Hessian, \(h_z-h_\perp\),
is still a nonlocal pressure datum. The trace constraint (ASW.8) fixes only
\(2h_\perp+h_z\), and the viscous strain coefficient in (ASW.9) depends on
higher same-field jets.

So Gate B cannot be closed by saying the swirl source is scalar, by invoking
the no-swirl plateau turn-off sublemma, or by treating \(H_\perp^S=0\) as
affineness. The branch is physically real enough to survive those tests.

The smaller remaining theorem is

```math
\texttt{AxisymmetricSwirlFixedEndpointCoefficientLiouville.A}.
\tag{ASW.13}
```

It must exclude a finite-energy, viscosity-compatible, retained marginal
axisymmetric-with-swirl endpoint satisfying (ASW.3)--(ASW.12), zero
collar/Field/parent bill, positive critical record service, and no
pass/service-zero/endpoint-kernel escape. Equivalently, it must prove that
nonzero \(\gamma\) either pays a same-currency vorticity/current/collar bill,
degenerates to pass/service-zero, or enters an admitted endpoint class already
excluded by material-time Liouville.

If that theorem fails, the fixed-axis swirl endpoint is the Gate-B
counterprofile candidate. This remains a strict reduction, not a proof of
\(c_0>0\).
