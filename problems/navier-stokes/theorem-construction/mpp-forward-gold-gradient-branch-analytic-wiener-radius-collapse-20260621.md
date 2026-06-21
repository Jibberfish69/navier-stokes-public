---
ns_viewer:
  theorem_id: forward-gold-gradient-branch-analytic-wiener-radius-collapse-20260621
  status: exact-gradient-branch-analytic-wiener-radius-collapse-installed
  proof_role: forward_gold_gradient_branch_tower_radius_consequence
  logical_landing_node: gradient_branch_analytic_wiener_radius_collapse
  edge_effect: >-
    Converts the source-gradient side of the height/gradient split into a precise
    tower-radius statement. On T^3, with the analytic Wiener norm
    ||v||_{A_rho}=sum_{a,k} e^{rho|k|}|vhat_a(k)|, the actual projected nonlinear
    source N=-P div(v tensor v) satisfies, for every unit sigma and
    g=sigma dot N, ||grad g||_infty <= 4 e^(-2) rho^(-2)||v||_{A_rho}^2. Therefore
    if a terminal atom survives after tensor action and same-carrier square/tail
    height control have been removed, the forced alternative
    G_m^* theta_m -> infinity implies theta_m rho_m^(-2) M_m^2 -> infinity for
    any analytic Wiener tower bounds ||v_m||_{A_{rho_m}}<=M_m. In particular a
    uniform positive analytic radius with bounded Wiener norm rules out the
    gradient branch. The residual branch is exactly collapse of analytic/Wiener
    tower radius or norm, not an unqualified smoothness statement.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-height-gradient-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-square-tail-cost-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-mixed-derivative-tower-participation-law-20260621.md
  downstream_consequence: >-
    After height/source-square/tail UI control is paid, a surviving terminal
    selected atom forces analytic/Wiener tower collapse in the rescaled variables:
    theta_m rho_m^(-2) M_m^2 must diverge. Closing the gold route now requires
    proving uniform analytic tower radius/norm retention, or routing this tower
    collapse to a CM Field-face high-rung readout, strict no-waste/profile
    rigidity, or another exact endpoint UI supplier.
---

# MPP Forward-Gold Gradient Branch Analytic Wiener Radius Collapse

Date: 2026-06-21

## Status

This note converts the source-gradient side of the height-gradient split into an
exact tower-radius statement.

The key point is that the Leray projection is not treated as an \(L^\infty\)
operator. The estimate is made in an analytic Wiener norm, where the Fourier
multiplier is controlled mode by mode.

## 1. Analytic Wiener norm

On

\[
\mathbb T^3=[0,2\pi]^3,
\tag{GRC.1}
\]

write

\[
v_a(x)=\sum_{k\in\mathbb Z^3}\widehat v_a(k)e^{ik\cdot x}.
\tag{GRC.2}
\]

For \(\rho>0\), define

\[
\|v\|_{\mathcal A_\rho}
:=
\sum_{a=1}^3\sum_{k\in\mathbb Z^3}
e^{\rho |k|}|\widehat v_a(k)|.
\tag{GRC.3}
\]

For a tensor \(F=(F_{ab})\), define

\[
\|F\|_{\mathcal A_\rho}
:=
\sum_{a,b=1}^3\sum_{k\in\mathbb Z^3}
e^{\rho |k|}|\widehat F_{ab}(k)|.
\tag{GRC.4}
\]

Because

\[
e^{\rho |k|}
\le
e^{\rho|\ell|}e^{\rho|k-\ell|},
\tag{GRC.5}
\]

Fourier convolution gives the exact algebra bound

\[
\boxed{
\|v\otimes v\|_{\mathcal A_\rho}
\le
\|v\|_{\mathcal A_\rho}^2.
}
\tag{GRC.6}
\]

## 2. Projected nonlinear source gradient

Let

\[
N=-\mathbb P\nabla\cdot(v\otimes v),
\qquad
g=\sigma\cdot N,
\qquad
|\sigma|=1.
\tag{GRC.7}
\]

For \(k\ne0\), the Leray projection matrix is

\[
P_{ia}(k)=\delta_{ia}-{k_ik_a\over |k|^2},
\tag{GRC.8}
\]

and it is an orthogonal projection on \(\mathbb R^3\). Hence

\[
\left|\sum_i\sigma_iP_{ia}(k)\right|
\le1
\quad\text{for each }a.
\tag{GRC.9}
\]

The Fourier coefficient of \(g\) satisfies

\[
|\widehat g(k)|
\le
|k|\sum_{a,b=1}^3
|\widehat{(v_av_b)}(k)|.
\tag{GRC.10}
\]

Therefore

\[
\|\nabla g\|_{L^\infty}
\le
\sum_{k\in\mathbb Z^3}|k|\,|\widehat g(k)|
\le
\sum_{a,b=1}^3\sum_k
|k|^2|\widehat{(v_av_b)}(k)|.
\tag{GRC.11}
\]

For \(x\ge0\),

\[
x^2e^{-\rho x}
\le
{4\over e^2\rho^2}.
\tag{GRC.12}
\]

Thus

\[
\sum_{a,b=1}^3\sum_k
|k|^2|\widehat{(v_av_b)}(k)|
\le
{4\over e^2\rho^2}
\|v\otimes v\|_{\mathcal A_\rho}.
\tag{GRC.13}
\]

Combining `(GRC.6)` through `(GRC.13)` gives

\[
\boxed{
\|\nabla(\sigma\cdot[-\mathbb P\nabla\cdot(v\otimes v)])\|_{L^\infty}
\le
{4\over e^2\rho^2}\|v\|_{\mathcal A_\rho}^2.
}
\tag{GRC.14}
\]

This is the exact projected-source gradient bound in analytic Wiener currency.

## 3. Consequence for the gradient branch

Return to the terminal sequence from the height-gradient split. Let

\[
G_m^*
:=
\operatorname*{ess\,sup}_{s\in I_m}
\|\nabla_x(\sigma_m\cdot N_m(s))\|_{L^\infty},
\qquad
\theta_m:=|I_m|\downarrow0.
\tag{GRC.15}
\]

The gradient branch is

\[
\boxed{
G_m^*\theta_m\to\infty.
}
\tag{GRC.16}
\]

Assume that for some \(\rho_m>0\) and \(M_m<\infty\),

\[
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{\mathcal A_{\rho_m}}
\le M_m.
\tag{GRC.17}
\]

Using `(GRC.14)`,

\[
G_m^*
\le
{4\over e^2\rho_m^2}M_m^2.
\tag{GRC.18}
\]

Thus `(GRC.16)` forces

\[
\boxed{
{\theta_m M_m^2\over \rho_m^2}\to\infty.
}
\tag{GRC.19}
\]

In particular, if there are fixed constants \(\rho_0>0\) and \(M_0<\infty\)
such that

\[
\operatorname*{ess\,sup}_{m}
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{\mathcal A_{\rho_0}}
\le M_0,
\tag{GRC.20}
\]

then

\[
G_m^*\theta_m
\le
{4M_0^2\over e^2\rho_0^2}\theta_m
\to0,
\tag{GRC.21}
\]

contradicting the gradient branch.

## 4. Exact route meaning

After the tensor-action branch and the height/source-square branch have been
removed, the surviving terminal atom forces analytic Wiener tower collapse:

\[
\boxed{
\text{terminal selected atom}
\Longrightarrow
{\theta_mM_m^2\over\rho_m^2}\to\infty
\quad
\text{for analytic Wiener bounds on }v_m.
}
\tag{GRC.22}
\]

Equivalently, a fixed positive analytic radius with bounded analytic Wiener
norm rules out the gradient branch.

## Verdict

The source-gradient branch is not a vague high-frequency statement. In exact
projected Navier-Stokes algebra, it is:

\[
\boxed{
\text{collapse of analytic/Wiener tower radius or norm on the terminal strips.}
}
\tag{GRC.23}
\]

This does not prove that such collapse cannot occur. It identifies the next
exact gold burden: prove uniform coupled tower radius retention, or route the
collapse to a CM Field-face high-rung readout, strict no-waste/profile rigidity,
or another endpoint UI supplier.
