---
theorem_id: forward-gold-invisible-child-lockpick-audit-20260626
status: contradiction-framework-installed-hard-theorem-is-no-silent-selected-pressure-hodge-carrier
created: 2026-06-26
problem: navier-stokes
route: forward-gold
logical_landing_node: GlobalSamePacketFullClockFromOriginalData.A
audits_hinge:
  - InvisibleChildBlowupRigidity.A
  - SelectedActionTraceCoercivity.A
  - SelectedCriticalStrainCapacityParentDrop.A
refines_to:
  - NoSilentSelectedPressureHodgeCarrier.A
  - MaterialParabolicSelectedTraceObservability.A
source_surfaces:
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-invisible-child-blowup-rigidity-route-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-action-trace-observability-boundary-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-parabolic-selected-trace-observability-kernel-test-20260626.md
  - problems/navier-stokes/theorem-construction/mpp-forward-gold-material-parabolic-observability-compactness-absorption-audit-20260626.md
---

# Invisible-child lockpick audit

The proposed parent-drop chain is the right compactness/rigidity framework.

The desired parent estimate is

```math
\sum_{Q'\in ch(Q)} A(Q')
+
\sum_{Q'\in ch(Q)} B_{\mathrm{cap}}(Q')
\le
B_{\mathrm{cap}}(Q)+R_{\mathrm{legal}}(Q).
\tag{1}
```

Capacity monotonicity gives the child-capacity part:

```math
\sum_{Q'\in ch(Q)}B_{\mathrm{cap}}(Q')
\le
B_{\mathrm{cap}}(Q)+R_{\mathrm{legal}}(Q).
\tag{2}
```

So the missing line is exactly

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\,D(Q),
\tag{3}
```

where

```math
D(Q)
:=
B_{\mathrm{cap}}(Q)
-
\sum_{Q'\in ch(Q)}B_{\mathrm{cap}}(Q')
+
R_{\mathrm{legal}}(Q).
\tag{4}
```

With the parent-child Dirichlet-to-Neumann Schur form,

```math
D(Q)
=
\langle U_Q,\mathsf S_QU_Q\rangle
+
R_{\mathrm{legal}}(Q),
\qquad
\mathsf S_Q
=
\Lambda_Q-\bigoplus_{Q'\in ch(Q)}\Lambda_{Q'}.
\tag{5}
```

Thus the proof-bearing theorem is

```math
\sum_{Q'\in ch(Q)}A(Q')
\le
C\langle U_Q,\mathsf S_QU_Q\rangle
+
C R_{\mathrm{legal}}(Q).
\tag{6}
```

## Compactness route

Assume `(6)` fails.  Normalize so

```math
\sum_{Q'\in ch(Q_n)}A(Q')=1,
\tag{7}
```

while

```math
\langle U_{Q_n},\mathsf S_{Q_n}U_{Q_n}\rangle
+
R_{\mathrm{legal}}(Q_n)
\to0.
\tag{8}
```

Select a child with

```math
A(Q'_n)\ge c_0>0.
\tag{9}
```

Rescale on that child.  Retained same-material compactness gives a limiting
packet with nonzero selected action:

```math
A_\infty\ge c_0>0,
\tag{10}
```

and zero Schur defect:

```math
\mathsf S_\infty U_\infty=0.
\tag{11}
```

If the rigidity theorem holds,

```math
\mathsf S_\infty U_\infty=0
\quad\Longrightarrow\quad
\mu_{\Sigma,\infty}^{\mathrm{sel}}=0,
\tag{12}
```

then

```math
A_\infty=\|\mu_{\Sigma,\infty}^{\mathrm{sel}}\|=0,
\tag{13}
```

contradicting `(10)`.  This proves `(6)`, hence `(1)`, and the laminar tree
telescopes:

```math
\sum_{Q\subseteq Q_0}A(Q)
\le
C B_{\mathrm{cap}}(Q_0)
+
C R_{\mathrm{legal}}(Q_0).
\tag{14}
```

Root finiteness then gives the first-ratio tail closure.

## The exact theorem inside the lockpick

The compactness architecture is correct.  The nontrivial theorem is `(12)`.

It cannot be treated as a purely elliptic statement for arbitrary sources.
An interior elliptic source can be silent at the boundary if the source is a
hidden interior potential.  For example, with a compactly supported or
boundary-flat potential \(w\), the source \(f=L_Aw\) may have zero boundary
Cauchy data while \(f\ne0\).  Pure Schur invisibility alone does not rule out
all interior sources.

Therefore the rigidity must use the full retained same-material pressure-Hodge
packet.  The theorem is:

```math
\boxed{
\mathsf S_\infty U_\infty=0
\ \text{on a retained material Navier--Stokes pressure-Hodge packet}
\quad\Longrightarrow\quad
\mu_{\Sigma,\infty}^{\mathrm{sel}}=0.
}
\tag{15}
```

Equivalently:

```text
NoSilentSelectedPressureHodgeCarrier.A
```

There is no nonzero selected critical-strain pressure-Hodge carrier that is
invisible to the parent-child Schur defect while remaining in the retained
same-material packet with no legal exit.

This is exactly the compactness-rigidity form of
`MaterialParabolicSelectedTraceObservability.A`.  The pure Schur coordinate is
the boundary readout; the same-material Navier--Stokes coupling is what must
exclude silent selected interior carriers.

## Consequence

If `NoSilentSelectedPressureHodgeCarrier.A` is proved, then

```math
\text{InvisibleChildBlowupRigidity.A}
\Rightarrow
\text{SelectedActionTraceCoercivity.A}
\Rightarrow
\text{ParentDrop.A}
\Rightarrow
\sum_QA(Q)<\infty.
\tag{16}
```

This supplies the selected first-ratio tail closure needed by the Gold
same-material full-clock route.

The current route should therefore keep the parent-drop lockpick, but it must
name the hard theorem as no-silent selected pressure-Hodge carrier rigidity,
not as ordinary elliptic Schur monotonicity.
