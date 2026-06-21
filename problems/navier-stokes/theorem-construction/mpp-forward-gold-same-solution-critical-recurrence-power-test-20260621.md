---
ns_viewer:
  theorem_id: forward-gold-same-solution-critical-recurrence-power-test-20260621
  status: direct-power-test-complete-critical-quantities-recur-exactly
  proof_role: forward_gold_stage1_same_solution_power_test
  logical_landing_node: same_solution_critical_recurrence_power_test
  edge_effect: "Computes the exact powers forced by the same-solution nested rescaling identity. The identity does not dissipate the normalized bad packet; it says the child's unit-scale critical quantities are exactly the parent's smaller-scale critical quantities. Thus same-solution compatibility is real, but it is not coercive by itself. Stage 1 still needs a theorem that prevents infinite critical recurrence: no scale-skipping/unique tangent, a strict log-scale decrease, unweighted critical action, or rigid profile production."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-annular-feed-two-stage-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-rescaled-same-solution-feed-compatibility-direct-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-scalecritical-reserve-heat-flow-sharpness-test-20260620.md
  downstream_consequence: "Do not claim that the cross-scale same-solution identity alone proves RescaledSameLawNoInfiniteFeed.A. Its exact output is critical recurrence across nested scales. The missing proof must add compactness/gauge uniqueness, strict descent, or an unweighted terminal critical-action reserve."
---

# MPP Forward-Gold Same-Solution Critical Recurrence Power Test

Date: 2026-06-21

## Status

This note continues the direct Stage 1 test. The question is whether the exact
same-solution relation between nested heat-scale microscopes is already enough
to forbid an infinite normalized bad pulse.

It is not enough by itself. The exact powers show why: the child packet's
unit-scale normalized quantities are exactly the parent packet's smaller-scale
normalized quantities. The same-solution identity preserves the critical
recurrence instead of dissipating it.

## 1. Same-solution identity

Let

\[
v_j(s,y)=r_j u(T+r_j^2s,\ x_*+r_jy),
\qquad
q_j(s,y)=r_j^2p(T+r_j^2s,\ x_*+r_jy),
\tag{SCR.1}
\]

and set

\[
\lambda_j={r_{j+1}\over r_j}.
\tag{SCR.2}
\]

Then

\[
v_{j+1}(s,y)
=
\lambda_j v_j(\lambda_j^2s,\lambda_j y),
\qquad
q_{j+1}(s,y)
=
\lambda_j^2 q_j(\lambda_j^2s,\lambda_j y).
\tag{SCR.3}
\]

This is the exact same-solution constraint. The rest of the note computes what
it gives for the relevant normalized quantities.

## 2. Local mass scaling

For a cutoff \(\rho\), define

\[
M_{j,\rho}(s)=\int {1\over2}|v_j(s,y)|^2\rho(y)\,dy.
\tag{SCR.4}
\]

Using `(SCR.3)` and changing variables \(z=\lambda_jy\),

\[
M_{j+1,\rho}(s)
=
\lambda_j^{-1}
\int {1\over2}|v_j(\lambda_j^2s,z)|^2
\rho(z/\lambda_j)\,dz.
\tag{SCR.5}
\]

If \(\rho=1\) on the interior and vanishes outside \(B_1\), the child
unit-scale mass is the parent mass inside \(B_{\lambda_j}\), multiplied by
\(\lambda_j^{-1}\). Thus order-one normalized child mass only requires order
\(\lambda_j\) raw parent mass on the smaller ball:

\[
M_{j+1,\rho}(s)\gtrsim 1
\quad\Longrightarrow\quad
\int_{B_{\lambda_j}} {1\over2}|v_j(\lambda_j^2s,z)|^2\,dz
\gtrsim \lambda_j .
\tag{SCR.6}
\]

That is exactly the Navier-Stokes energy scaling of a critical packet. It is
not a contradiction with finite physical energy.

## 3. Critical cubic and pressure quantities

Define the scale-normalized cubic and pressure quantities inside \(v_j\) by

\[
C_j(R)
=
R^{-2}\int_{-R^2}^{0}\int_{B_R}|v_j|^3\,dy\,ds,
\tag{SCR.7}
\]

\[
P_j(R)
=
R^{-2}\int_{-R^2}^{0}\int_{B_R}|q_j|^{3/2}\,dy\,ds.
\tag{SCR.8}
\]

Then `(SCR.3)` gives exactly

\[
C_{j+1}(1)=C_j(\lambda_j),
\qquad
P_{j+1}(1)=P_j(\lambda_j).
\tag{SCR.9}
\]

So persistent critical cubic/pressure badness at the child scale says that the
parent has the same normalized badness at radius \(\lambda_j\). It does not
decrease across the nested microscopes.

## 4. Critical dissipation quantity

Define

\[
A_j(R)
=
R^{-1}\int_{-R^2}^{0}\int_{B_R}\nu|\nabla v_j|^2\,dy\,ds.
\tag{SCR.10}
\]

Since

\[
\nabla_yv_{j+1}(s,y)
=
\lambda_j^2\nabla v_j(\lambda_j^2s,\lambda_j y),
\tag{SCR.11}
\]

the same change of variables gives

\[
A_{j+1}(1)=A_j(\lambda_j).
\tag{SCR.12}
\]

Again, the critical dissipation does not decay under the same-solution
microscope relation. It is transported to the next smaller parent scale.

## 5. Annular balance scaling

The localized energy identity at unit scale is

\[
\begin{aligned}
M_{j,\rho}'(s)
&+\nu\int |\nabla v_j|^2\rho\,dy \\
&=
{1\over2}\int |v_j|^2v_j\cdot\nabla\rho\,dy
+\int q_jv_j\cdot\nabla\rho\,dy
+{\nu\over2}\int |v_j|^2\Delta\rho\,dy .
\end{aligned}
\tag{SCR.13}
\]

Applying `(SCR.3)` to the left side and right side shows that the child
unit-scale balance is the parent balance on the smaller annulus
\(\{|z|\simeq\lambda_j\}\), with the matching critical normalization. Thus the
same-solution identity also does not create a sign or a drop in the annular
terms. It only says that the annular feed is the same physical interaction
viewed at the next scale.

## 6. Consequence for Stage 1

The direct Stage 1 theorem was:

\[
\text{same rescaled law}
+\text{ same original solution}
+\text{ persistent normalized badness}
\Longrightarrow
\text{no infinite heat-scale feed.}
\tag{SCR.14}
\]

The power test shows that `(SCR.14)` is not a consequence of scaling alone.
Scaling gives the recurrence identities

\[
C_{j+1}(1)=C_j(\lambda_j),
\qquad
P_{j+1}(1)=P_j(\lambda_j),
\qquad
A_{j+1}(1)=A_j(\lambda_j).
\tag{SCR.15}
\]

These identities are exactly critical. They do not have a small factor that
forces decay.

Therefore the direct Stage 1 proof needs one additional ingredient that is not
just the nested rescaling identity:

\[
\text{no scale-skipping / unique tangent,}
\tag{SCR.16a}
\]

\[
\text{a strict quantity that decreases across repeated critical recurrence,}
\tag{SCR.16b}
\]

\[
\text{an unweighted terminal critical-action reserve,}
\tag{SCR.16c}
\]

or

\[
\text{rigid profile production from the recurrent branch.}
\tag{SCR.16d}
\]

## 7. Exact obstruction isolated

An infinite heat-scale pulse can evade this particular direct test by becoming
a critical recurrence:

\[
\inf_j C_{j+1}(1)>0
\quad\Longleftrightarrow\quad
\inf_j C_j(\lambda_j)>0,
\tag{SCR.17}
\]

and similarly for pressure and dissipation.

This is the exact mathematical form of the remaining problem. The bad pulse is
not independent of the surrounding fluid; it is attached to the same solution.
But the attachment is scale-critical. It preserves the normalized badness unless
another theorem supplies compactness, strict descent, or an unweighted action
bound.

## Verdict

The same-solution compatibility identity is an essential correction, but it is
not the missing coercivity theorem.

\[
\boxed{
\text{same-solution nested scaling}
\quad\Rightarrow\quad
\text{exact critical recurrence, not automatic decay.}
}
\tag{SCR.18}
\]

So `RescaledSameLawNoInfiniteFeed.A` remains open after this direct test. The
non-aliased remaining target is:

\[
\boxed{
\text{critical recurrence cannot persist forever without unique tangent,
strict descent, unweighted action, or rigid profile production.}
}
\tag{SCR.19}
\]
