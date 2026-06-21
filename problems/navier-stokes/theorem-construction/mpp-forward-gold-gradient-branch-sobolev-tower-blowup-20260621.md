---
ns_viewer:
  theorem_id: forward-gold-gradient-branch-sobolev-tower-blowup-20260621
  status: exact-gradient-branch-sobolev-tower-blowup-installed
  proof_role: forward_gold_gradient_branch_finite_tower_consequence
  logical_landing_node: gradient_branch_sobolev_tower_blowup
  edge_effect: >-
    Converts the source-gradient side of the terminal atom height/gradient split
    into a finite Sobolev tower statement. On T^3, for every gamma>5/2 and every
    unit selector sigma, the actual projected nonlinear source
    N=-P div(v tensor v) satisfies ||grad(sigma dot N)||_infty <=
    C_grad,gamma C_alg,gamma+1 ||v||_{H^(gamma+1)}^2, with C_grad,gamma defined
    by the Fourier summation sum_k |k|^2(1+|k|^2)^(-gamma) and C_alg,gamma+1
    the optimal H^(gamma+1) tensor-product algebra constant. Therefore the
    residual gradient branch G_m^* theta_m -> infinity forces
    theta_m sup_{s in I_m} ||v_m(s)||_{H^(gamma+1)}^2 -> infinity. This is a
    finite tower blowup/readout consequence, not a proof that the branch cannot
    occur.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-height-gradient-split-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-atom-square-tail-cost-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-gradient-branch-analytic-wiener-radius-collapse-20260621.md
  downstream_consequence: >-
    After height/source-square/tail UI control is paid, a surviving terminal
    selected atom forces either analytic/Wiener radius collapse or, already at
    finite Sobolev level, terminal H^(gamma+1) tower growth above heat-window
    scale. Closing the gold route still requires a theorem that prevents this
    coupled tower blowup, pays it by unweighted action/source-square/no-waste,
    consumes it as a finite-rung Field/Part-facing readout, or converts it to profile
    production.
---

# MPP Forward-Gold Gradient Branch Sobolev Tower Blowup

Date: 2026-06-21

## Status

This note converts the gradient side of the terminal atom split into an exact
finite Sobolev tower statement.

It does not assert a new Navier-Stokes regularity theorem. It proves only the
following consequence:

\[
\boxed{
G_m^*\theta_m\to\infty
\quad\Longrightarrow\quad
\theta_m
\left(
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H^{\gamma+1}}
\right)^2
\to\infty
}
\tag{GST.1}
\]

for every fixed \(\gamma>5/2\), with the Sobolev norm defined below.

## 1. Fourier Sobolev norm

Work on

\[
\mathbb T^3=[0,2\pi]^3.
\tag{GST.2}
\]

For a vector field \(v=(v_1,v_2,v_3)\), write

\[
v_a(x)=\sum_{k\in\mathbb Z^3}\widehat v_a(k)e^{ik\cdot x}.
\tag{GST.3}
\]

Define

\[
\|v\|_{H^\alpha_F}^2
:=
\sum_{a=1}^3\sum_{k\in\mathbb Z^3}
(1+|k|^2)^\alpha|\widehat v_a(k)|^2.
\tag{GST.4}
\]

For a tensor \(F=(F_{ab})\), define

\[
\|F\|_{H^\alpha_F}^2
:=
\sum_{a,b=1}^3\sum_{k\in\mathbb Z^3}
(1+|k|^2)^\alpha|\widehat F_{ab}(k)|^2.
\tag{GST.5}
\]

The subscript \(F\) only records that this is the Fourier-normalized Sobolev
norm on the torus.

## 2. Exact projected-source Sobolev bound

Let

\[
N=-\mathbb P\nabla\cdot(v\otimes v),
\qquad
g=\sigma\cdot N,
\qquad
|\sigma|=1.
\tag{GST.6}
\]

For \(k\ne0\), \(\mathbb P(k)\) is the orthogonal projection onto
\(k^\perp\). Hence, with \(F=v\otimes v\),

\[
|\widehat N(k)|
=
\left|
\mathbb P(k)\, i\sum_{b=1}^3 k_b\widehat F_{\cdot b}(k)
\right|
\le
|k|\,|\widehat F(k)|_{\mathrm{Frob}}.
\tag{GST.7}
\]

Therefore

\[
\|N\|_{H^\gamma_F}^2
\le
\sum_k
(1+|k|^2)^\gamma |k|^2|\widehat F(k)|_{\mathrm{Frob}}^2
\le
\|F\|_{H^{\gamma+1}_F}^2.
\tag{GST.8}
\]

Since \(|\sigma|=1\),

\[
\|g\|_{H^\gamma_F}
\le
\|N\|_{H^\gamma_F}
\le
\|v\otimes v\|_{H^{\gamma+1}_F}.
\tag{GST.9}
\]

For \(\gamma>5/2\), set

\[
C_{\nabla,\gamma}
:=
\left(
\sum_{k\in\mathbb Z^3}
|k|^2(1+|k|^2)^{-\gamma}
\right)^{1/2}
<\infty.
\tag{GST.10}
\]

By Cauchy-Schwarz,

\[
\|\nabla g\|_{L^\infty}
\le
\sum_k |k|\,|\widehat g(k)|
\le
C_{\nabla,\gamma}\|g\|_{H^\gamma_F}.
\tag{GST.11}
\]

Let \(C_{\mathrm{alg},\gamma+1}\) be the optimal finite constant in the
torus algebra estimate

\[
\|v\otimes v\|_{H^{\gamma+1}_F}
\le
C_{\mathrm{alg},\gamma+1}\|v\|_{H^{\gamma+1}_F}^2.
\tag{GST.12}
\]

This constant is finite because \(\gamma+1>3/2\). Combining `(GST.9)` through
`(GST.12)` gives the exact projected-source gradient estimate

\[
\boxed{
\|\nabla(\sigma\cdot[-\mathbb P\nabla\cdot(v\otimes v)])\|_{L^\infty}
\le
C_{\nabla,\gamma}C_{\mathrm{alg},\gamma+1}
\|v\|_{H^{\gamma+1}_F}^2.
}
\tag{GST.13}
\]

No \(L^\infty\)-boundedness of the Leray projection is used.

## 3. Consequence for the gradient branch

Return to the terminal strips from the height-gradient split. Let

\[
\theta_m:=|I_m|\downarrow0
\tag{GST.14}
\]

and

\[
G_m^*
:=
\operatorname*{ess\,sup}_{s\in I_m}
\|\nabla(\sigma_m\cdot N_m(s))\|_{L^\infty}.
\tag{GST.15}
\]

The gradient branch is

\[
\boxed{
G_m^*\theta_m\to\infty.
}
\tag{GST.16}
\]

For fixed \(\gamma>5/2\), define

\[
S_{m,\gamma}
:=
\operatorname*{ess\,sup}_{s\in I_m}
\|v_m(s)\|_{H^{\gamma+1}_F}.
\tag{GST.17}
\]

Applying `(GST.13)` to \(v_m(s)\) for almost every \(s\in I_m\) gives

\[
G_m^*
\le
C_{\nabla,\gamma}C_{\mathrm{alg},\gamma+1}S_{m,\gamma}^2.
\tag{GST.18}
\]

Thus `(GST.16)` forces

\[
\boxed{
\theta_m S_{m,\gamma}^2\to\infty.
}
\tag{GST.19}
\]

Equivalently, the finite Sobolev tower exceeds the heat-window scale:

\[
\boxed{
S_{m,\gamma}\sqrt{\theta_m}\to\infty.
}
\tag{GST.20}
\]

In particular, any bound of the form

\[
S_{m,\gamma}
\le
C\theta_m^{-1/2}
\tag{GST.21}
\]

with fixed \(C<\infty\) is incompatible with the gradient branch, because it is
equivalent to

\[
\theta_m S_{m,\gamma}^2=O(1).
\tag{GST.22}
\]

A uniform fixed Sobolev bound is more than enough:

\[
\sup_m S_{m,\gamma}<\infty
\quad\Longrightarrow\quad
G_m^*\theta_m\to0.
\tag{GST.23}
\]

## 4. Exact route meaning

After the height branch has been routed into same-carrier square/tail UI, the
remaining gradient branch is not only an analytic-radius statement. It already
forces finite Sobolev tower growth:

\[
\boxed{
\text{terminal source-gradient branch}
\Longrightarrow
\text{terminal }H^{\gamma+1}\text{ tower blowup above heat-window scale}.
}
\tag{GST.24}
\]

This does not close the gold route. It identifies the remaining finite-rung
burden:

\[
\boxed{
\text{prevent this coupled tower blowup, pay it by an unweighted source/action
reserve, consume it as a finite-rung Field/Part-facing readout, or convert it into
profile production.}
}
\tag{GST.25}
\]
