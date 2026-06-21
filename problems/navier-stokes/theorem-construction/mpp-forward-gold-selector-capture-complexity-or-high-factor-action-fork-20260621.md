---
ns_viewer:
  theorem_id: forward-gold-selector-capture-complexity-or-high-factor-action-fork-20260621
  status: exact-selector-complexity-or-high-factor-action-fork-installed
  proof_role: forward_gold_same_carrier_selector_complexity_fork
  logical_landing_node: selector_capture_complexity_or_high_factor_action
  edge_effect: >-
    Defines the minimum controlled-derivative selector complexity needed to
    capture a selected positive carrier on a terminal strip. For
    N=-P div F and fixed unit selector sigma, if a scalar selector chi captures
    the carrier up to epsilon and M=||grad P(chi sigma)||_{L_s^\infty L_x^2},
    then A_I^+(N,sigma)-epsilon <= M int_I ||F(s)||_2 ds. Applying this to the
    high-factor source after low-low removal gives the exact fork: persistent
    selected carrier forces either nonvanishing high-factor tensor action
    int_I ||F_hi^(K)||_2 ds or blowup of the selector-capture complexity. With
    the high-factor product estimate, bounded selector complexity would give
    endpoint UI whenever the high-frequency tail/enstrophy strip quantity tends
    to zero. Therefore the remaining endpoint atom must carry same-carrier
    high-factor action, selector-complexity blowup, source-square/critical-strain
    reserve, strict no-waste, polar saturation/no-free Zeno chain, or profile
    production.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-factor-source-tail-enstrophy-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-atom-forces-frequency-escape-20260621.md
  downstream_consequence: >-
    The high-factor branch now has a precise quantitative alternative. A terminal
    selected source atom cannot be hidden behind smooth duality: if the capturing
    selector has bounded derivative complexity and the high-factor tensor strip
    action vanishes, endpoint UI follows. A surviving atom therefore forces
    selector-complexity blowup or nonvanishing high-factor action. Future progress
    must convert one of those alternatives into a legal Pack/Part/Field exit or
    a same-carrier reserve/no-waste/profile contradiction.
---

# MPP Forward-Gold Selector-Capture Complexity Or High-Factor Action Fork

Date: 2026-06-21

## Status

This note turns the selector-complexity obstruction into an exact quantitative
fork.

After low-low removal, a surviving terminal atom lives in

\[
N_{\mathrm{hi}}^{(K)}
=
-\mathbb P\nabla\cdot F_{\mathrm{hi}}^{(K)}.
\tag{SCAF.1}
\]

The previous note showed that the positive carrier is not controlled by smooth
readout unless the selector that captures the positive part has controlled
derivative. Here that statement is made quantitative.

## 1. Strip carrier and selector-capture complexity

Fix a terminal time strip

\[
I=(-\theta,0]
\tag{SCAF.2}
\]

and a fixed unit vector \(\sigma\in\mathbb R^3\). Define the selected positive
carrier

\[
A_I^+(N,\sigma)
:=
\int_I\int_{\mathbb T^3}
[\sigma\cdot N(s,x)]_+\,dx\,ds.
\tag{SCAF.3}
\]

For \(\varepsilon>0\), define the strip selector-capture complexity

\[
\mathcal M_\varepsilon(I;N,\sigma)
\tag{SCAF.4}
\]

as the infimum of all \(M\in[0,\infty]\) for which there exists a measurable
\(\chi:I\times\mathbb T^3\to[0,1]\) satisfying

\[
\int_I\int_{\mathbb T^3}
\chi\,\sigma\cdot N\,dx\,ds
\ge
A_I^+(N,\sigma)-\varepsilon
\tag{SCAF.5}
\]

and

\[
\|\nabla\mathbb P(\chi(s)\sigma)\|_{L_s^\infty(I;L_x^2)}
\le
M.
\tag{SCAF.6}
\]

If no such controlled selector exists, set

\[
\mathcal M_\varepsilon(I;N,\sigma)=\infty.
\tag{SCAF.7}
\]

This is not an extra equation. It measures the complexity of the selector
needed to see the positive part.

## 2. Exact dual lower bound

Assume

\[
N=-\mathbb P\nabla\cdot F.
\tag{SCAF.8}
\]

For every admissible \(\chi\),

\[
\begin{aligned}
\int_I\int_{\mathbb T^3}\chi\,\sigma\cdot N\,dx\,ds
&=
-\int_I\int_{\mathbb T^3}
\chi\sigma\cdot\mathbb P\nabla\cdot F\,dx\,ds\\
&=
\int_I\int_{\mathbb T^3}
F:\nabla\mathbb P(\chi\sigma)\,dx\,ds\\
&\le
\|\nabla\mathbb P(\chi\sigma)\|_{L_s^\infty L_x^2}
\int_I\|F(s)\|_2\,ds.
\end{aligned}
\tag{SCAF.9}
\]

Taking the infimum over all selectors that capture the positive carrier up to
\(\varepsilon\) gives the exact lower bound

\[
\boxed{
A_I^+(N,\sigma)-\varepsilon
\le
\mathcal M_\varepsilon(I;N,\sigma)
\int_I\|F(s)\|_2\,ds.
}
\tag{SCAF.10}
\]

Equivalently, if \(A_I^+(N,\sigma)>\varepsilon\),

\[
\boxed{
\mathcal M_\varepsilon(I;N,\sigma)
\ge
{A_I^+(N,\sigma)-\varepsilon
\over
\displaystyle\int_I\|F(s)\|_2\,ds}.
}
\tag{SCAF.11}
\]

Thus a large positive carrier with small tensor action forces large selector
complexity.

## 3. High-factor version

Apply `(SCAF.10)` to the frequency-escaping source

\[
N_{\mathrm{hi}}^{(K)}
=
-\mathbb P\nabla\cdot F_{\mathrm{hi}}^{(K)}.
\tag{SCAF.12}
\]

Then

\[
\boxed{
A_I^+(N_{\mathrm{hi}}^{(K)},\sigma)-\varepsilon
\le
\mathcal M_\varepsilon(I;N_{\mathrm{hi}}^{(K)},\sigma)
\int_I\|F_{\mathrm{hi}}^{(K)}(s)\|_2\,ds.
}
\tag{SCAF.13}
\]

The high-factor tensor is

\[
\begin{aligned}
F_{\mathrm{hi}}^{(K)}
=
&v_{\le K}\otimes v_{>K}
+v_{>K}\otimes v_{\le K}\\
&+v_{>K}\otimes v_{>K}.
\end{aligned}
\tag{SCAF.14}
\]

Under the energy bound

\[
\sup_{s\in I}\|v(s)\|_2^2\le E,
\tag{SCAF.15}
\]

the previous high-factor estimate gives

\[
\begin{aligned}
\int_I\|F_{\mathrm{hi}}^{(K)}(s)\|_2\,ds
&\le
2b_KE\,\theta\\
&\quad+
C_{\mathrm{GN}}E^{1/4}\theta^{1/4}
\left(
\int_I\|\nabla v_{>K}(s)\|_2^2\,ds
\right)^{3/4},
\end{aligned}
\tag{SCAF.16}
\]

where

\[
b_K=(2\pi)^{-3/2}(2K+1)^{3/2}.
\tag{SCAF.17}
\]

Combining `(SCAF.13)` and `(SCAF.16)`,

\[
\boxed{
\begin{aligned}
A_I^+(N_{\mathrm{hi}}^{(K)},\sigma)-\varepsilon
&\le
\mathcal M_\varepsilon(I;N_{\mathrm{hi}}^{(K)},\sigma)
\Bigg[
2b_KE\,\theta\\
&\quad+
C_{\mathrm{GN}}E^{1/4}\theta^{1/4}
\left(
\int_I\|\nabla v_{>K}(s)\|_2^2\,ds
\right)^{3/4}
\Bigg].
\end{aligned}
}
\tag{SCAF.18}
\]

This is the exact controlled-selector implication.

## 4. Consequence for endpoint atoms

Suppose a terminal atom remains after low-low removal. That means there are
strips \(I_m=(-\theta_m,0]\), cutoffs \(K_m\), and directions \(\sigma_m\)
such that

\[
A_{I_m}^+(N_{\mathrm{hi}}^{(K_m)},\sigma_m)\ge a>0.
\tag{SCAF.19}
\]

Let \(\varepsilon=a/2\). Formula `(SCAF.18)` gives

\[
\boxed{
{a\over2}
\le
\mathcal M_{a/2}(I_m;N_{\mathrm{hi}}^{(K_m)},\sigma_m)
\,
B_m,
}
\tag{SCAF.20}
\]

where

\[
\begin{aligned}
B_m
:=
2b_{K_m}E\,\theta_m
+
C_{\mathrm{GN}}E^{1/4}\theta_m^{1/4}
\left(
\int_{I_m}\|\nabla v_{>K_m}(s)\|_2^2\,ds
\right)^{3/4}.
\end{aligned}
\tag{SCAF.21}
\]

Therefore at least one of the following must happen:

\[
\boxed{
B_m\not\to0
\quad\text{or}\quad
\mathcal M_{a/2}(I_m;N_{\mathrm{hi}}^{(K_m)},\sigma_m)\to\infty.
}
\tag{SCAF.22}
\]

Plainly: the atom either carries high-factor tensor action, or it forces the
positive selector to become more and more oscillatory.

## 5. What this does not prove

This fork does not yet prove endpoint UI. It says exactly what remains to be
paid.

If the proof can show

\[
B_m\to0
\tag{SCAF.23}
\]

and also prove a uniform selector-capture bound

\[
\sup_m
\mathcal M_{a/2}(I_m;N_{\mathrm{hi}}^{(K_m)},\sigma_m)
<\infty,
\tag{SCAF.24}
\]

then `(SCAF.20)` contradicts `(SCAF.19)`.

Current inputs do not prove `(SCAF.23)` and `(SCAF.24)` together. The first is
a high-factor action/tail depletion theorem. The second is a same-carrier
selector-complexity theorem.

## Verdict

The exact endpoint fork is:

\[
\boxed{
\text{terminal selected source atom}
\Longrightarrow
\text{nonvanishing high-factor action}
\quad\text{or}\quad
\text{selector-capture complexity blowup}.
}
\tag{SCAF.25}
\]

This is progress because the positive-carrier obstruction is no longer just
"not controlled by negative norms." It has split into two precise quantities:

\[
\boxed{
B_m
\quad\text{and}\quad
\mathcal M_\varepsilon(I_m;N_{\mathrm{hi}},\sigma_m).
}
\tag{SCAF.26}
\]

A successful gold closure must now kill one side by source-square /
critical-strain / normalized CKN / no-waste / profile production, or consume
the other side as selector-complexity blowup in the CM Pack/Part/Field grammar.
