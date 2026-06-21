---
ns_viewer:
  theorem_id: forward-gold-moving-gauge-cross-cylinder-compatibility-split-20260621
  status: exact-moving-gauge-split-installed-forward-gold-not-proved
  proof_role: forward_gold_moving_gauge_cross_scale_split
  logical_landing_node: moving_gauge_cross_cylinder_compatibility
  edge_effect: >-
    Extends the fixed-center same-solution rescaling identity to moving centers
    and rotations. If v_j(s,y)=r_j O_j^T u(T+r_j^2 s,x_j+r_j O_j y), then the
    child microscope satisfies v_{j+1}(s,y)=lambda_j A_j^T
    v_j(lambda_j^2 s,b_j+lambda_j A_j y), with b_j=O_j^T(x_{j+1}-x_j)/r_j
    and A_j=O_j^T O_{j+1}. Thus the child unit cylinder is the parent
    off-center subcylinder B_{lambda_j}(b_j) times [-lambda_j^2,0], not the
    centered core unless b_j=0. Moving-gauge drift creates an exact
    translation-collar/symmetric-difference defect relative to the centered-core
    telescope. If that defect is paid, the fixed-chain analysis applies; if it
    is not paid, the branch is a visible drift/gauge defect. The hidden remainder
    is the no-drift/unique-tangent or profile-production burden.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-same-solution-feed-compatibility-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-annular-share-nested-core-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-door2-zero-flux-drift-visibility-attempt-20260618.md
  downstream_consequence: >-
    The fixed-chain annular-share/no-share lemmas apply only after terminal
    center, frame, gauge, and selected-carrier chart are fixed. Without that,
    moving-gauge compatibility gives a fork: the translation-collar/symmetric-difference
    defect is routed to annular/collar/source/legal visibility, or the paid
    moving-gauge recurrence still needs ZenoNoDriftUniqueTangent.A, strict
    no-waste/source-square control, or MinimalZenoProfileProduction.A.
---

# MPP Forward-Gold Moving Gauge Cross-Cylinder Compatibility Split

Date: 2026-06-21

## Status

This note fills the exact gap left by the fixed-center annular-share reductions.
Those reductions are correct only after the terminal center, frame, and
same-carrier chart have been fixed. If the center or frame moves, the child
microscope is still tied to the same solution, but it is not the centered parent
core.

The exact outcome is:

\[
\boxed{
\text{moving-gauge recurrence creates a translation-collar defect, or it
reduces to the no-drift/unique-tangent problem.}
}
\tag{MGC.1}
\]

This is a reduction, not a forward-gold closure theorem.

## 1. Moving-gauge rescaling

Let \(r_j\downarrow0\), \(x_j\in\mathbb R^3\), and \(O_j\in SO(3)\). Define

\[
v_j(s,y)
=
r_j O_j^T u(T+r_j^2s,\ x_j+r_jO_jy),
\tag{MGC.2}
\]

and

\[
q_j(s,y)
=
r_j^2p(T+r_j^2s,\ x_j+r_jO_jy).
\tag{MGC.3}
\]

Each \((v_j,q_j)\) satisfies the same rescaled Navier-Stokes equation:

\[
\partial_s v_j+(v_j\cdot\nabla)v_j+\nabla q_j
=
\nu\Delta v_j,
\qquad
\nabla\cdot v_j=0.
\tag{MGC.4}
\]

Set

\[
\lambda_j={r_{j+1}\over r_j},
\qquad
b_j=O_j^T{x_{j+1}-x_j\over r_j},
\qquad
A_j=O_j^TO_{j+1}.
\tag{MGC.5}
\]

Then the exact same-solution compatibility identity is

\[
\boxed{
v_{j+1}(s,y)
=
\lambda_j A_j^T
v_j(\lambda_j^2s,\ b_j+\lambda_j A_jy).
}
\tag{MGC.6}
\]

For pressure,

\[
\boxed{
q_{j+1}(s,y)
=
\lambda_j^2
q_j(\lambda_j^2s,\ b_j+\lambda_j A_jy).
}
\tag{MGC.7}
\]

When \(x_{j+1}=x_j\) and \(O_{j+1}=O_j\), this reduces to the fixed-gauge
identity already used in the annular-share notes.

## 2. Tower covariance

Let \(D_y^k\) denote the full \(k\)-linear spatial derivative tensor. From
`(MGC.6)`,

\[
\partial_s^m D_y^k v_{j+1}(s,y)
=
\lambda_j^{2m+k+1}
A_j^T
\left[
\partial_s^m D_z^k v_j
\right](\lambda_j^2s,\ b_j+\lambda_j A_jy)
[A_j,\ldots,A_j].
\tag{MGC.8}
\]

Thus the mixed tower remains exactly coupled across cylinders. The only new
features are translation by \(b_j\) and rotation by \(A_j\). Since \(A_j\) is
orthogonal, it does not change tensor norms; translation changes where the child
carrier sits inside the parent frame.

## 3. Child unit cylinder in the parent frame

Let

\[
Q_1=B_1\times[-1,0].
\tag{MGC.9}
\]

Under `(MGC.6)`, the child unit cylinder maps into the parent frame as

\[
\widetilde Q_j
=
\left\{
(\sigma,z):
\sigma=\lambda_j^2s,\ 
z=b_j+\lambda_j A_jy,\ 
(s,y)\in Q_1
\right\}.
\tag{MGC.10}
\]

Therefore

\[
\boxed{
\widetilde Q_j
=
B_{\lambda_j}(b_j)\times[-\lambda_j^2,0].
}
\tag{MGC.11}
\]

So a moving center changes the fixed-chain relation. The child unit carrier is
not the centered core

\[
B_{\lambda_j}(0)\times[-\lambda_j^2,0]
\tag{MGC.12}
\]

unless \(b_j=0\).

For any same-carrier critical measure \(\mu_j\) that is covariant under this
gauge choice, the child unit carrier is represented in the parent frame by

\[
A_{j+1}(1)=\mu_j(\widetilde Q_j)
=
\mu_j(B_{\lambda_j}(b_j)\times[-\lambda_j^2,0]),
\tag{MGC.13}
\]

not by \(\mu_j(Q_{\lambda_j})\) in general.

## 4. Moving-center drift creates a translation-collar defect

The fixed-chain no-share lemma compares consecutive centered cores:

\[
\widehat Q_j
:=
B_{\lambda_j}(0)\times[-\lambda_j^2,0].
\tag{MGC.14}
\]

The moving-gauge child is instead

\[
\widetilde Q_j
=
B_{\lambda_j}(b_j)\times[-\lambda_j^2,0].
\tag{MGC.15}
\]

The exact defect between the moving-gauge child and the centered child is the
symmetric difference

\[
\Delta_j^{gauge}
:=
\widetilde Q_j\triangle\widehat Q_j.
\tag{MGC.16}
\]

For a same-carrier measure \(\mu_j\),

\[
\left|
\mu_j(\widetilde Q_j)-\mu_j(\widehat Q_j)
\right|
\le
\mu_j(\Delta_j^{gauge}).
\tag{MGC.17}
\]

Thus moving-center drift is harmless for the fixed-chain telescope only after
one proves

\[
\sum_j\mu_j(\Delta_j^{gauge})<\infty
\quad\text{or at least}\quad
\mu_j(\Delta_j^{gauge})\to0
\text{ on the retained tail.}
\tag{MGC.18}
\]

Without such a payment, the drift has not disappeared. It is a visible
translation-collar or gauge-motion defect: the selected child carrier is being
measured in a different subcylinder from the centered one used by the annular
telescope.

For large shifts, this defect is parent-annular or collar mass. For small shifts,
it is still a same-carrier gauge-transport defect unless the selected carrier is
stable under the shift.

## 5. Paid gauge drift returns to the no-drift branch

If the gauge defect is paid, `(MGC.17)` lets the fixed-chain analysis replace
\(\widetilde Q_j\) by \(\widehat Q_j\) modulo legal errors. Then the annular-share
and nested-core reductions apply.

If the gauge defect is not paid, the branch is not a hidden fixed-core
recurrence. It is a selected-carrier drift defect.

The remaining hidden moving-gauge branch is therefore the case where the defect
is paid but the normalized gauges still fail to settle. The parameters are

\[
{b_j\over\lambda_j},
\qquad
A_j,
\tag{MGC.19}
\]

along with the selected carrier chart. Bounded subsequences of these parameters
may be extracted, but uniqueness, no profile switching, and renormalized
stationarity are not consequences of the covariance identity alone.

So the hidden moving-gauge branch has the precise remaining burden:

\[
\boxed{
\text{paid moving-gauge recurrence}
\Longrightarrow
\text{ZenoNoDriftUniqueTangent.A or MinimalZenoProfileProduction.A.}
}
\tag{MGC.20}
\]

## 6. Corrected branch map

The fixed-chain annular-share fork remains valid after gauge fixing:

\[
\text{center/frame/gauge fixed}
\Longrightarrow
\left[
\text{annular share descent}
\quad\text{or}\quad
\text{nested-core atom}
\right].
\tag{MGC.20}
\]

Before gauge fixing, the exact moving-gauge fork is:

\[
\boxed{
\text{off-core child cylinder}
\Longrightarrow
\text{annular/collar visible mass,}
}
\tag{MGC.21}
\]

or

\[
\boxed{
\text{core-following child cylinder}
\Longrightarrow
\text{fixed-chain nested-core analysis plus no-drift/profile burden.}
}
\tag{MGC.22}
\]

This prevents two errors. First, one cannot apply the fixed-chain telescoping
lemma to a moving-center branch without checking `(MGC.13)`. Second, one cannot
treat moving-gauge drift as invisible by default: off-core drift is visible in
the parent annulus or collar.

## Verdict

The exact formula `(MGC.6)` shows that cross-cylinder coupling survives moving
gauges, but the child carrier lands in

\[
B_{\lambda_j}(b_j)\times[-\lambda_j^2,0].
\tag{MGC.23}
\]

Therefore the remaining drift branch is sharpened to:

\[
\boxed{
\text{off-core annular/collar visibility}
\quad\text{or}\quad
\text{core-following no-drift/unique-tangent/profile production.}
}
\tag{MGC.24}
\]

No forward-gold anti-atom theorem is proved here. The note installs the exact
moving-gauge compatibility needed before the fixed-chain annular-share machinery
can be applied.
