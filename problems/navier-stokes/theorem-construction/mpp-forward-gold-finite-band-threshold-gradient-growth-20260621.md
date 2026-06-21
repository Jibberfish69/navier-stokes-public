---
ns_viewer:
  theorem_id: forward-gold-finite-band-threshold-gradient-growth-20260621
  status: exact-finite-band-threshold-gradient-growth-installed
  proof_role: forward_gold_frequency_growth_consequence
  logical_landing_node: finite_band_threshold_gradient_growth
  edge_effect: >-
    Combines the threshold-margin selector-capture fork with the fixed-band
    projected-source bounds. If v is supported in |k|_infty<=K, has
    sup_s ||v(s)||_2^2<=E, and its selected projected nonlinear source has strip
    mass at least a on an interval I of length theta, then the tensor action in
    N=-P div(v tensor v) obeys the exact lower bound int_I ||v tensor v||_2 ds
    >= a^3 V/[648(8V)^(3/2)E^2 K^3(4K+1)^(9/2)theta^2], with V=|T^3|. Therefore,
    if the high-factor/tensor action tends to zero while a terminal selected
    atom survives, then K^3(4K+1)^(9/2)theta^2 must diverge. In particular, under
    K>=1, small tensor action epsilon forces
    K >= [a^3 V/(648(8V)^(3/2)5^(9/2)E^2 theta^2 epsilon)]^(2/15).
    This does not prove endpoint UI; it converts the selector-complexity branch
    into an explicit frequency-growth/tower-rung branch.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-threshold-margin-selector-capture-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-fourier-band-source-endpoint-ui-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-capture-complexity-or-high-factor-action-fork-20260621.md
  downstream_consequence: >-
    A terminal selected source atom with vanishing tensor action cannot remain
    in a slowly growing finite Fourier band. The residual branch must move into
    explicit frequency/tower growth, source-square or critical-strain/CKN action,
    strict no-waste, profile production, or CM consumption of the frequency/tower
    blowup.
---

# MPP Forward-Gold Finite-Band Threshold Gradient Growth

Date: 2026-06-21

## Status

This note combines the positive-threshold selector bound with the fixed-band
Navier-Stokes source estimate.

The output is not endpoint UI. It is an exact frequency-growth consequence:

\[
\boxed{
\text{terminal selected source atom}
\quad\text{and}\quad
\text{small tensor action}
\Longrightarrow
\text{fast finite-band growth.}
}
\tag{FBG.1}
\]

## 1. Fixed-band projected source bounds

Work on

\[
\mathbb T^3=[0,2\pi]^3,
\qquad
V:=|\mathbb T^3|=(2\pi)^3.
\tag{FBG.2}
\]

Assume

\[
\operatorname{supp}\widehat v(s)\subset\{|k|_\infty\le K\},
\qquad
\sup_{s\in I}\|v(s)\|_2^2\le E.
\tag{FBG.3}
\]

Let

\[
N(s)=-\mathbb P\nabla\cdot(v(s)\otimes v(s)).
\tag{FBG.4}
\]

Then

\[
\operatorname{supp}\widehat N(s)\subset\{|k|_\infty\le2K\}.
\tag{FBG.5}
\]

The fixed-band source estimate gives

\[
\|N(s)\|_2
\le
V^{-1/2}\sqrt3\,K(4K+1)^{3/2}E.
\tag{FBG.6}
\]

For a unit selector \(\sigma\), define

\[
g(s,x):=\sigma\cdot N(s,x).
\tag{FBG.7}
\]

Then the one-time positive carrier obeys

\[
A(s):=\int_{\mathbb T^3}[g(s,x)]_+\,dx
\le
\|g(s)\|_1
\le
V^{1/2}\|N(s)\|_2.
\tag{FBG.8}
\]

Combining `(FBG.6)` and `(FBG.8)`,

\[
\boxed{
A_*:=
\operatorname*{ess\,sup}_{s\in I}A(s)
\le
\sqrt3\,K(4K+1)^{3/2}E.
}
\tag{FBG.9}
\]

## 2. Fixed-band selected-source gradient bound

Since \(g(s)\) has coordinate degree at most \(2K\), for each coordinate

\[
\|\partial_i g(s)\|_\infty
\le
V^{-1/2}(4K+1)^{3/2}\|\partial_i g(s)\|_2.
\tag{FBG.10}
\]

Also

\[
\|\partial_i g(s)\|_2
\le
2K\|g(s)\|_2
\le
2K\|N(s)\|_2.
\tag{FBG.11}
\]

Using

\[
|\nabla g|\le
\sum_{i=1}^3|\partial_i g|,
\tag{FBG.12}
\]

we get

\[
\|\nabla g(s)\|_\infty
\le
6K V^{-1/2}(4K+1)^{3/2}\|N(s)\|_2.
\tag{FBG.13}
\]

Combining `(FBG.6)` and `(FBG.13)`,

\[
\boxed{
G_*:=
\operatorname*{ess\,sup}_{s\in I}\|\nabla g(s)\|_\infty
\le
6\sqrt3\,V^{-1}K^2(4K+1)^3E.
}
\tag{FBG.14}
\]

Multiplying `(FBG.9)` and `(FBG.14)` gives

\[
\boxed{
G_*A_*
\le
18V^{-1}K^3(4K+1)^{9/2}E^2.
}
\tag{FBG.15}
\]

## 3. Tensor-action lower bound from a selected atom

Assume the selected positive source carrier on \(I\) satisfies

\[
A_I^+(N,\sigma)
:=
\int_I\int_{\mathbb T^3}[\sigma\cdot N]_+\,dx\,ds
\ge a>0.
\tag{FBG.16}
\]

The threshold-margin selector-capture fork gives, for
\(N=-\mathbb P\nabla\cdot F\),

\[
\int_I\|F(s)\|_2\,ds
\ge
{a^3\over
36(8V)^{3/2}G_*A_*|I|^2}.
\tag{FBG.17}
\]

Here the natural tensor is

\[
F=v\otimes v.
\tag{FBG.18}
\]

Let

\[
\theta:=|I|.
\tag{FBG.19}
\]

Using `(FBG.15)` in `(FBG.17)` yields

\[
\boxed{
\int_I\|v(s)\otimes v(s)\|_2\,ds
\ge
{a^3V\over
648(8V)^{3/2}E^2K^3(4K+1)^{9/2}\theta^2}.
}
\tag{FBG.20}
\]

This is the exact finite-band action reserve forced by a selected atom.

## 4. Consequence for terminal sequences

Consider a terminal sequence with

\[
A_{I_m}^+(N_m,\sigma_m)\ge a>0,
\qquad
\theta_m:=|I_m|\downarrow0,
\tag{FBG.21}
\]

and

\[
\operatorname{supp}\widehat v_m(s)\subset\{|k|_\infty\le K_m\},
\qquad
\sup_{s\in I_m}\|v_m(s)\|_2^2\le E.
\tag{FBG.22}
\]

If

\[
\int_{I_m}\|v_m(s)\otimes v_m(s)\|_2\,ds\to0,
\tag{FBG.23}
\]

then `(FBG.20)` forces

\[
\boxed{
K_m^3(4K_m+1)^{9/2}\theta_m^2\to\infty.
}
\tag{FBG.24}
\]

Equivalently, if

\[
\int_{I_m}\|v_m(s)\otimes v_m(s)\|_2\,ds\le\varepsilon_m,
\tag{FBG.25}
\]

then

\[
\boxed{
K_m^3(4K_m+1)^{9/2}
\ge
{a^3V\over
648(8V)^{3/2}E^2\theta_m^2\varepsilon_m}.
}
\tag{FBG.26}
\]

For \(K_m\ge1\), since \(4K_m+1\le5K_m\), `(FBG.26)` implies

\[
\boxed{
K_m
\ge
\left(
{a^3V\over
648(8V)^{3/2}5^{9/2}E^2\theta_m^2\varepsilon_m}
\right)^{2/15}.
}
\tag{FBG.27}
\]

## Verdict

The selected-carrier branch now has an exact finite-band consequence:

\[
\boxed{
\text{terminal selected atom}
\quad\text{and}\quad
\text{vanishing tensor action}
\Longrightarrow
K_m^3(4K_m+1)^{9/2}\theta_m^2\to\infty.
}
\tag{FBG.28}
\]

This does not kill the heat-scale pulse. It says the surviving pulse must move
into explicit high-frequency / high-tower growth unless it pays tensor action.
The next closure must control that tower growth by source-square,
critical-strain/CKN action, strict no-waste, profile production, or a CM
Pack/Part/Field face.
