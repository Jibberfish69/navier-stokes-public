---
ns_viewer:
  theorem_id: forward-gold-cross-cylinder-time-tower-coupling-test-20260621
  status: direct-test-complete-tower-must-be-coupled-across-cylinders
  proof_role: forward_gold_stage1_tower_coupling_test
  logical_landing_node: cross_cylinder_time_tower_coupling
  edge_effect: "Corrects the previous scalar-cylinder test by lifting the same-solution identity to the full time tower. For W_{j,n}=partial_s^n v_j, the exact cross-cylinder coupling is W_{j+1,n}(s,y)=lambda_j^(2n+1) W_{j,n}(lambda_j^2 s,lambda_j y), with pressure level Q_{j+1,n}=lambda_j^(2n+2) Q_{j,n}(lambda_j^2 s,lambda_j y). Thus the binomial/factorial tower and the nested heat-scale cylinders are one double-indexed object. The factorial weights cancel binomial growth inside each cylinder, while cross-cylinder transport forces the analytic time radius to scale by the heat factor lambda_j^2. Current inputs still do not prove a uniform positive coupled tower radius; the remaining obstruction is collapse of the coupled tower radius into a terminal time-face atom."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-same-solution-feed-compatibility-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-same-solution-critical-recurrence-power-test-20260621.md
  downstream_consequence: "Stage 1 must be tested on the double-indexed tower W_{j,n}, not on scalar packet quantities alone. The exact missing theorem becomes CoupledCylinderTowerRadiusLowerBound.A or an equivalent statement that prevents the heat-scaled analytic radius from collapsing to the terminal time face."
---

# MPP Forward-Gold Cross-Cylinder Time-Tower Coupling Test

Date: 2026-06-21

## Status

The previous same-solution tests were incomplete because they only coupled the
base rescaled fields across cylinders. The tower has to be coupled across
cylinders too.

The right object is therefore not just \(v_j\) on cylinder \(j\), and not just
the time tower inside one cylinder. It is the double-indexed tower

\[
W_{j,n}:=\partial_s^n v_j,
\qquad
Q_{j,n}:=\partial_s^n q_j,
\tag{CT.1}
\]

where \(j\) is the heat-scale cylinder and \(n\) is the time-tower level.

## 1. One-cylinder tower

On cylinder \(j\),

\[
v_j(s,y)=r_j u(T+r_j^2s,\ x_*+r_jy),
\qquad
q_j(s,y)=r_j^2p(T+r_j^2s,\ x_*+r_jy).
\tag{CT.2}
\]

The rescaled equation is

\[
\partial_s v_j+(v_j\cdot\nabla)v_j+\nabla q_j
=\nu\Delta v_j,
\qquad
\nabla\cdot v_j=0.
\tag{CT.3}
\]

Taking \(n\) derivatives in \(s\) gives the tower equation

\[
W_{j,n+1}
+
\sum_{k=0}^{n}{n\choose k}
(W_{j,k}\cdot\nabla)W_{j,n-k}
+
\nabla Q_{j,n}
=
\nu\Delta W_{j,n},
\tag{CT.4}
\]

\[
\nabla\cdot W_{j,n}=0.
\tag{CT.5}
\]

This is where the binomial coefficients live.

## 2. Factorial weights inside one cylinder

With the factorial-weighted tower variable

\[
A_{j,n}:={\tau^n\over n!}\,\|W_{j,n}\|,
\tag{CT.6}
\]

the binomial coefficient in `(CT.4)` cancels in the nonlinear term:

\[
{\tau^n\over n!}{n\choose k}\|W_{j,k}\|\,\|W_{j,n-k}\|
=
\left({\tau^k\over k!}\|W_{j,k}\|\right)
\left({\tau^{n-k}\over (n-k)!}\|W_{j,n-k}\|\right).
\tag{CT.7}
\]

So Stirling explains the combinatorial concentration, but factorial weights are
the exact cancellation mechanism.

That is only the one-cylinder statement.

## 3. Cross-cylinder tower coupling

Let

\[
\lambda_j={r_{j+1}\over r_j}.
\tag{CT.8}
\]

The base same-solution identity is

\[
v_{j+1}(s,y)=\lambda_j v_j(\lambda_j^2s,\lambda_j y),
\qquad
q_{j+1}(s,y)=\lambda_j^2q_j(\lambda_j^2s,\lambda_j y).
\tag{CT.9}
\]

Differentiate `(CT.9)` \(n\) times in \(s\). This gives the exact tower coupling

\[
\boxed{
W_{j+1,n}(s,y)
=
\lambda_j^{2n+1}
W_{j,n}(\lambda_j^2s,\lambda_j y).
}
\tag{CT.10}
\]

For pressure,

\[
\boxed{
Q_{j+1,n}(s,y)
=
\lambda_j^{2n+2}
Q_{j,n}(\lambda_j^2s,\lambda_j y).
}
\tag{CT.11}
\]

This is the missing coupling. Every tower level on the child cylinder is the
corresponding tower level on the parent cylinder, restricted to the inner
heat-scale subcylinder and multiplied by the exact parabolic power.

## 4. Compatibility of the tower equation

The powers in `(CT.10)` and `(CT.11)` are consistent with the whole tower
equation. Indeed,

\[
W_{j+1,n+1}
\quad\text{scales like}\quad
\lambda_j^{2n+3},
\tag{CT.12}
\]

\[
(W_{j+1,k}\cdot\nabla)W_{j+1,n-k}
\quad\text{scales like}\quad
\lambda_j^{2k+1}\lambda_j^{2(n-k)+2}
=\lambda_j^{2n+3},
\tag{CT.13}
\]

\[
\nabla Q_{j+1,n}
\quad\text{scales like}\quad
\lambda_j^{2n+3},
\tag{CT.14}
\]

and

\[
\Delta W_{j+1,n}
\quad\text{scales like}\quad
\lambda_j^{2n+3}.
\tag{CT.15}
\]

So the cross-cylinder tower coupling respects the complete
pressure-convection-viscosity-incompressibility law at every tower level.

## 5. Factorial radius must also be coupled

The analytic generating function of the time tower is

\[
\mathcal W_j(\sigma;s,y)
:=
\sum_{n\ge0}{\sigma^n\over n!}W_{j,n}(s,y)
=
v_j(s+\sigma,y),
\tag{CT.16}
\]

where the last equality is formal unless the tower has positive time radius.

Using `(CT.10)`,

\[
\begin{aligned}
\mathcal W_{j+1}(\sigma;s,y)
&=
\sum_{n\ge0}{\sigma^n\over n!}
\lambda_j^{2n+1}W_{j,n}(\lambda_j^2s,\lambda_j y)\\
&=
\lambda_j
\mathcal W_j(\lambda_j^2\sigma;\lambda_j^2s,\lambda_j y).
\end{aligned}
\tag{CT.17}
\]

Thus the tower radius is not an independent number on each cylinder. A child
time increment \(\sigma\) corresponds to a parent time increment
\(\lambda_j^2\sigma\).

Equivalently, the factorial weights must be transported as

\[
{\tau_{j+1}^n\over n!}W_{j+1,n}
=
\lambda_j
{(\lambda_j^2\tau_{j+1})^n\over n!}
W_{j,n}(\lambda_j^2s,\lambda_j y).
\tag{CT.18}
\]

So the coupled radius relation is

\[
\tau_j=\lambda_j^2\tau_{j+1}
\tag{CT.19}
\]

for the same physical time radius seen from adjacent cylinders.

This is the exact way the heat-scale geometry enters the factorial tower.

## 6. What the terminal time-face atom means in the coupled tower

A terminal time-face atom is not merely an annular flux event. In the tower it
means the coupled factorial radius collapses along the terminal cylinder chain.

The model growth is

\[
\|W_{j,n}\|\sim {n!\over \tau_j^n}
\tag{CT.20}
\]

with \(\tau_j\downarrow0\) in the relevant physical clock. Formula `(CT.18)`
shows that this collapse cannot be tested independently on each cylinder. The
question is whether the coupled family

\[
\left\{
{\tau_j^n\over n!}W_{j,n}
\right\}_{j,n}
\tag{CT.21}
\]

has a uniform positive radius after the heat-scale transport
\(\tau_j=\lambda_j^2\tau_{j+1}\), or whether every candidate radius is driven
into the terminal face.

## 7. Corrected Stage 1 target

The direct no-infinite-feed theorem should therefore be stated at tower level:

\[
\boxed{
\text{The double-indexed tower }(W_{j,n},Q_{j,n})
\text{ cannot keep a normalized bad pulse while its coupled factorial radius
collapses through infinitely many heat-scale cylinders.}
}
\tag{CT.22}
\]

The missing theorem is not the one-cylinder factorial cancellation. That part
is exact. The missing theorem is a cross-cylinder lower bound on the coupled
tower radius:

\[
\boxed{
\text{CoupledCylinderTowerRadiusLowerBound.A}
}
\tag{CT.23}
\]

or an equivalent theorem saying that radius collapse forces a visible terminal
source/profile defect already forbidden by the gold route.

## Verdict

The tower and the cylinders must be coupled. The exact coupling is

\[
W_{j+1,n}
=
\lambda_j^{2n+1}W_{j,n}\circ(\lambda_j^2,\lambda_j),
\qquad
Q_{j+1,n}
=
\lambda_j^{2n+2}Q_{j,n}\circ(\lambda_j^2,\lambda_j).
\tag{CT.24}
\]

Factorial weights remove the binomial explosion within each cylinder, but the
gold obstruction is now sharper:

\[
\boxed{
\text{prove a positive lower bound for the coupled heat-scaled tower radius,
or show that coupled radius collapse forces the terminal atom/profile branch.}
}
\tag{CT.25}
\]

Current inputs do not prove `(CT.23)`. This note installs the exact object that
the next proof attempt has to attack.
