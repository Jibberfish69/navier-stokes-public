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

## 4. Gate A finite-net pressure test

The spin-2 angle itself is not the hard part. Once a retained nonzero spin-2
component and a strain eigenvalue gap are already admitted, the oriented line
lives in the compact circle \(S^1/\pi\). A fixed finite net
\(\{T_{\varphi_k}\}\) captures it up to a constant:

```math
\max_k|\langle T_{\varphi_k},T_\varphi\rangle|
\ge c_{\rm net}>0 .
\tag{ASW.14}
```

Thus a parent-known finite angular menu can replace the exact angle after
losing only a fixed constant, provided the amplitude and eigenvalue gap are
retained above threshold.

For a fixed detector in that menu, the first time its retained score crosses a
threshold is a stopped time, and the existing Schur / finite stopped-score
machinery pays later detector motion or routes the interval to stop, legal,
collar, or exit. This gives the conditional implication

```math
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}
+
\texttt{SpinTwoLowerEdgeGapAdmission.A}
+
\texttt{StoppedSelectorFiniteScoreOrPaidDrift.A}
\Longrightarrow
\texttt{CausalStoppedSpinTwoSelectorAdmission.A}.
\tag{ASW.15}
```

The current repo sources do not prove the first input. The selector-capture
audit says the finite stopped-score theorem is proof-grade only after an
order-locked retained selector chart is already parent-known. A future-positive
edge can still be selected by a moving argmax outside any fixed finite parent
menu unless

```math
\texttt{FiniteParentKnownRecordEdgeSelectorMenu.A}
\tag{ASW.16}
```

is proved from the original same-fluid history before positive readout.

So Gate A is not blocked by continuum angle geometry. It is blocked by
pre-readout record-edge capture: the parent must know the carrier, time window,
spin-2 detector, order-lock, and retained lower edge before the child record is
read as positive. That is a real admission theorem, not just ledger cleanup.

## 5. Cycle 23: endpoint exclusion does not yet reach Gate B

Claude cycle 23 asks whether the endpoint exclusion reaches the axisymmetric
swirl branch. The current answer is no.

There is one wording correction. The Gate-B survivor should not be called an
admitted classical finite-energy self-similar Navier--Stokes blow-up. Exact
self-similar profiles in the installed NRS/Tsai exclusion class are already
excluded under their hypotheses. The present \(c_0\) object is the marginal
retained fixed-axis endpoint produced after zero-bill atom compactness, with
possible swirl and aligned pressure Hessian.

The endpoint exclusion reaches Gate B only after this implication is proved:

```math
\text{zero-bill retained fixed-axis swirl atom}
\Longrightarrow
\text{exact profile class covered by NRS/Tsai or stronger material-time Liouville}.
\tag{ASW.17}
```

That implication is not installed. The no-swirl plateau sublemma also does not
apply because the on-axis swirl coefficient \(\gamma\) changes \(\Omega^2\) and
the pressure trace while preserving \(SO(2)\) alignment.

Thus the current Gate-B theorem remains

```math
\texttt{AxisymmetricSwirlFixedEndpointCoefficientLiouville.A}.
\tag{ASW.18}
```

It must either promote the marginal retained endpoint into an excluded rigid
profile class, prove a stronger material-time Liouville theorem directly on the
coefficient/atom class, or admit the fixed-axis swirl endpoint as the
counterprofile.

## 6. Cycle 24: circulation is not enough to exclude the axis branch

Claude cycle 24 proposes that \(\Gamma=ru^\theta\) is a material invariant,
vanishes on the axis, and therefore excludes an on-axis swirl record.

This is not valid for Navier--Stokes. In the viscous equation the exact law is
(ASW.11):

```math
D_t\Gamma
=
\nu\left(\partial_r^2-\frac1r\partial_r+\partial_z^2\right)\Gamma .
\tag{ASW.19}
```

So \(\Gamma\) is not a material invariant. It is a parabolic scalar with a
maximum-principle structure.

The second problem is the record variable. Smoothness gives

```math
\Gamma(r,z,t)=\gamma(z,t)r^2+O(r^4)
\quad\text{near }r=0,
\tag{ASW.20}
```

so \(\Gamma=0\) on the axis is automatic. The swirl rate

```math
\gamma=\lim_{r\to0}\frac{\Gamma}{r^2}
\tag{ASW.21}
```

and the axial vorticity \(2\gamma\) can still be the concentrating quantity.
Under critical parabolic scaling, a scale \(r\sim\ell\) can have
\(\gamma\sim \ell^{-2}\) while \(\Gamma\sim O(1)\) on that scale and
\(\Gamma=0\) at the axis. Thus a maximum-principle bound for \(\Gamma\) does
not by itself rule out critical growth of \(\gamma\), strain, vorticity, or the
aligned pressure Hessian.

This gives a useful but limited reduction. A Gate-B proof may try to show that
nonzero \(\gamma\) creates a same-currency charge through the \(\Gamma\)-current,
its diffusion, or its collar/annular flux. But that charge is not installed
from \(\Gamma=0\) on the axis. The on-axis coefficient branch remains open
unless one proves such a charge or routes it to pass/service-zero/endpoint
kernel.

The off-axis annular branch is also real: there \(\Gamma\) itself need not
vanish, and any material-time Liouville proof must control the annular
transport/diffusion/collar flux in the same zero-bill atom currency. Current
endpoint exclusion does not reach that branch either.
