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
    centered core unless b_j=0. Off-core drift is annular/collar visible in the
    parent frame; core-following drift reduces to no-drift/unique-tangent or
    profile production. This does not prove forward-gold anti-recurrence; it
    identifies the exact drift branch left outside the fixed-chain annular
    telescoping lemmas.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-same-solution-feed-compatibility-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-no-annular-share-nested-core-reduction-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-door2-zero-flux-drift-visibility-attempt-20260618.md
  downstream_consequence: >-
    The fixed-chain annular-share/no-share lemmas apply only after terminal
    center, frame, gauge, and selected-carrier chart are fixed. Without that,
    moving-gauge compatibility gives a fork: off-core child mass must be routed
    to annular/collar/source/legal visibility, while core-following moving-gauge
    recurrence still needs ZenoNoDriftUniqueTangent.A, strict no-waste/source-square
    control, or MinimalZenoProfileProduction.A.
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
\text{moving-gauge recurrence is either off-core annular/collar visible, or it
is the no-drift/unique-tangent problem.}
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

## 4. Off-core drift is visible

Fix \(0<\varepsilon<1\). If

\[
|b_j|-\lambda_j\ge\varepsilon
\tag{MGC.14}
\]

then the whole child spatial ball lies outside \(B_\varepsilon(0)\). Hence any
positive selected child carrier becomes parent-frame mass in

\[
(B_1\setminus B_\varepsilon)\times[-\lambda_j^2,0],
\tag{MGC.15}
\]

provided the parent cutoff contains the child ball.

If instead

\[
|b_j|-\lambda_j<\varepsilon<|b_j|+\lambda_j,
\tag{MGC.16}
\]

then the child ball crosses the fixed collar around \(\partial B_\varepsilon\).
The mass is not hidden in the centered nested core; it is collar-visible.

Thus an infinite moving-center branch that remains genuinely off the centered
core cannot be classified as fixed-chain no-annular-share. It must be routed to
an annular/collar/source/legal ledger, a CM consumer after same-witness
admission, or a separate profile-switching theorem.

## 5. Core-following drift is exactly the no-drift branch

To stay invisible to every fixed parent annulus, the moving centers must satisfy

\[
|b_j|+\lambda_j\to0
\tag{MGC.17}
\]

in the parent frame along the hidden tail. This is the core-following regime.
In that regime, the moving-gauge child cylinders do approach the terminal core
in the parent coordinates.

But `(MGC.17)` does not imply a unique tangent. The normalized child coordinates
can still carry nontrivial relative modulation through

\[
{b_j\over\lambda_j},
\qquad
A_j,
\tag{MGC.18}
\]

or through changes of selected carrier chart. Bounded subsequences of these
parameters may be extracted, but uniqueness, no profile switching, and
renormalized stationarity are not consequences of compactness alone.

So the hidden moving-gauge branch has the precise remaining burden:

\[
\boxed{
\text{core-following moving-gauge recurrence}
\Longrightarrow
\text{ZenoNoDriftUniqueTangent.A or MinimalZenoProfileProduction.A.}
}
\tag{MGC.19}
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
