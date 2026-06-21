---
ns_viewer:
  theorem_id: forward-gold-tensor-action-branch-square-reserve-readout-20260621
  status: exact-tensor-action-square-readout-installed-not-production
  proof_role: forward_gold_tensor_action_branch_readout
  logical_landing_node: tensor_action_branch_square_reserve_readout
  edge_effect: >-
    Converts the threshold-margin fork's surviving tensor-action branch into
    an exact unweighted tensor-square readout. If the selected projected-source
    atom has A_I^+(N,sigma)>=a and the branch retains int_I ||F(s)||_2 ds >= b0
    on terminal strips of length theta_m, then Cauchy-Schwarz gives
    int_I ||F(s)||_2^2 ds >= b0^2/theta_m. For the exact projected
    Navier-Stokes source N=-P div(v tensor v), this is
    int_I int |v|^4 >= b0^2/theta_m. Under heat scaling this normalized
    L^4 tensor-square action is radius-discounted in physical variables, so
    physical energy does not supply the unweighted budget. This is a readout
    and alias of the missing unweighted critical-action reserve, not a
    production theorem and not a linearization.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-threshold-margin-selector-capture-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-atom-not-high-rung-only-after-threshold-split-20260621.md
  downstream_consequence: >-
    Do not leave the tensor-action branch as a vague high-factor alternative.
    Once it survives with nonzero L_s^1 L_x^2 tensor action, it forces a
    theta^{-1} unweighted tensor-square/L^4 readout on the normalized terminal
    strip. Closure still requires an unweighted terminal-family budget on this
    same carrier, source-square/critical-strain/CKN domination, strict no-waste,
    profile production, or same-witness CM consumption.
---

# MPP Forward-Gold Tensor-Action Branch Square Reserve Readout

Date: 2026-06-21

## Status

This note records an exact consequence of the threshold-margin selector fork.
It does not prove the forward-gold reserve.

The point is simple.  The threshold fork leaves a branch where the projected
source must pay nonzero tensor action:

\[
\int_I \|F(s)\|_{L^2_x}\,ds \ge b_0>0.
\tag{TAB.1}
\]

On a terminal strip whose length tends to zero, `(TAB.1)` is already a square
reserve readout:

\[
\int_I \|F(s)\|_{L^2_x}^2\,ds
\ge
{b_0^2\over |I|}.
\tag{TAB.2}
\]

This is not a heat-smoothing estimate, and it is not a linear approximation to
Navier-Stokes.  It is the exact Cauchy-Schwarz consequence of the nonlinear
projected-source tensor branch.

## 1. Input from the threshold-margin fork

Work on the normalized periodic packet chart

\[
\mathbb T^3=[0,2\pi]^3.
\tag{TAB.3}
\]

Let

\[
N=-\mathbb P\nabla\cdot F,
\qquad
g=\sigma\cdot N,
\qquad
|\sigma|=1,
\tag{TAB.4}
\]

and let \(I\) be a finite time strip.  The selected projected-source carrier is

\[
A_I^+(N,\sigma)
=
\int_I\int_{\mathbb T^3}[\sigma\cdot N]_+\,dx\,ds.
\tag{TAB.5}
\]

Assume

\[
A_I^+(N,\sigma)\ge a>0.
\tag{TAB.6}
\]

The threshold-margin selector fork gives

\[
\int_I\|F(s)\|_2\,ds
\ge
{a^3\over
36(8V)^{3/2}G_*A_*|I|^2},
\qquad
V=|\mathbb T^3|,
\tag{TAB.7}
\]

where

\[
A_*=
\operatorname*{ess\,sup}_{s\in I}
\int_{\mathbb T^3}[g(s,x)]_+\,dx,
\qquad
G_*=
\operatorname*{ess\,sup}_{s\in I}
\|\nabla_x g(s)\|_{L^\infty}.
\tag{TAB.8}
\]

Thus the threshold fork has two exact alternatives on a terminal sequence:

\[
\int_{I_m}\|F_m(s)\|_2\,ds\not\to0,
\tag{TAB.9}
\]

or

\[
G_m^*A_m^*|I_m|^2\to\infty.
\tag{TAB.10}
\]

The second alternative is the already-recorded height/gradient branch.  This
note treats the first alternative.

## 2. Tensor action implies tensor-square reserve

Assume \(I_m\) are terminal strips with

\[
\theta_m:=|I_m|\downarrow0,
\tag{TAB.11}
\]

and the tensor-action branch survives.  Passing to a subsequence, there is
\(b_0>0\) such that

\[
\int_{I_m}\|F_m(s)\|_2\,ds\ge b_0.
\tag{TAB.12}
\]

Cauchy-Schwarz on \(I_m\) gives

\[
\left(\int_{I_m}\|F_m(s)\|_2\,ds\right)^2
\le
\theta_m
\int_{I_m}\|F_m(s)\|_2^2\,ds.
\tag{TAB.13}
\]

Combining `(TAB.12)` and `(TAB.13)` gives the exact square readout

\[
\boxed{
\int_{I_m}\|F_m(s)\|_2^2\,ds
\ge
{b_0^2\over\theta_m}
\to\infty.
}
\tag{TAB.14}
\]

So the tensor-action branch is not a separate soft alternative.  On shrinking
terminal strips, it is an unweighted tensor-square reserve branch.

The pointwise version of `(TAB.7)` also gives the quantitative bound

\[
\int_I\|F(s)\|_2^2\,ds
\ge
{a^6\over
36^2(8V)^3(G_*A_*)^2|I|^5}.
\tag{TAB.15}
\]

Formula `(TAB.15)` is useful only when the \(G_*A_*\) factor is controlled.  In
the terminal fork, the cleaner branch statement is `(TAB.14)`: nonvanishing
tensor action forces square action of size at least \(\theta_m^{-1}\).

## 3. Exact Navier-Stokes tensor reading

For the projected Navier-Stokes equation in rescaled variables,

\[
\partial_s v-\nu\Delta v
=
-\mathbb P\nabla\cdot(v\otimes v),
\qquad
\nabla\cdot v=0,
\tag{TAB.16}
\]

the tensor in `(TAB.4)` is

\[
F=v\otimes v.
\tag{TAB.17}
\]

The pressure has not been removed by approximation.  It is carried by the
Leray projector, equivalently by the elliptic relation

\[
-\Delta q=\partial_i v_j\,\partial_j v_i.
\tag{TAB.18}
\]

For \(F=v\otimes v\),

\[
\|F(s)\|_2^2
=
\int_{\mathbb T^3}|v(s,y)\otimes v(s,y)|^2\,dy
=
\int_{\mathbb T^3}|v(s,y)|^4\,dy.
\tag{TAB.19}
\]

Therefore `(TAB.14)` becomes

\[
\boxed{
\int_{I_m}\int_{\mathbb T^3}|v_m(s,y)|^4\,dy\,ds
\ge
{b_0^2\over\theta_m}
\to\infty.
}
\tag{TAB.20}
\]

This is a normalized \(L^4_{s,y}\) tensor-square readout for the exact nonlinear
Navier-Stokes source.

## 4. Heat-scaling boundary

Let

\[
v_m(s,y)
=
r_m\,u(T_m+r_m^2s,x_m+r_my).
\tag{TAB.21}
\]

Then \(u=r_m^{-1}v_m\) and \(dx\,dt=r_m^5\,dy\,ds\).  Hence, on the
corresponding heat-scale packet,

\[
\int_{T_m+r_m^2I_m}
\int_{x_m+r_m\mathbb T^3}
|u(t,x)|^4\,dx\,dt
=
r_m
\int_{I_m}\int_{\mathbb T^3}|v_m(s,y)|^4\,dy\,ds.
\tag{TAB.22}
\]

Thus the normalized tensor-square reserve in `(TAB.20)` is not supplied by
ordinary physical energy accounting.  Physical \(L^4_{t,x}\) control, if it is
available, sees only the radius-weighted quantity

\[
r_m
\int_{I_m}\int_{\mathbb T^3}|v_m|^4.
\tag{TAB.23}
\]

The energy class itself gives \(L^\infty_tL^2_x\cap L^2_t\dot H^1_x\), not a
uniform unweighted normalized \(L^4_{s,y}\) budget over a terminal heat-scale
Zeno family.

## 5. Consequence for the branch map

The tensor-action branch from the threshold-margin fork should now be read as:

\[
\boxed{
\text{nonzero }L_s^1L_x^2\text{ tensor action}
\Longrightarrow
\text{unweighted }L_s^2L_x^2\text{ tensor-square reserve}.
}
\tag{TAB.24}
\]

For the actual Navier-Stokes tensor \(F=v\otimes v\), this is exactly

\[
\boxed{
\text{nonzero tensor branch}
\Longrightarrow
\int_{I_m}\!\int |v_m|^4
\ge {b_0^2\over\theta_m}.
}
\tag{TAB.25}
\]

This is a readout/consumer theorem.  It does not produce the missing unweighted
terminal-family budget.  Closure still requires one of the already-isolated
production mechanisms: same-carrier source-square or tail UI, selected
critical-strain/normalized CKN Carleson control, strict no-waste, profile
production, or same-witness CM Pack/Part/Field consumption.
