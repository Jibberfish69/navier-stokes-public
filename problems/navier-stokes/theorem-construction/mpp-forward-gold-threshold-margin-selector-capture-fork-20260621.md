---
ns_viewer:
  theorem_id: forward-gold-threshold-margin-selector-capture-fork-20260621
  status: exact-threshold-margin-selector-capture-fork-installed
  proof_role: forward_gold_same_carrier_selector_threshold_margin_fork
  logical_landing_node: threshold_margin_selector_capture
  edge_effect: >-
    Installs the exact positive-threshold replacement for the zero-level sign
    selector. For g=sigma dot N, a positive carrier A can be captured by a ramp
    selector above a threshold lambda in [Lambda,2 Lambda]. The carrier loss is
    at most 2 Lambda |T^3| plus delta A/Lambda, and the H1 selector cost is at
    most G A^(1/2)/(Lambda delta^(1/2)), where G=||grad g||_infty. On a time
    strip with total carrier at least a, pointwise slicing gives an admissible
    selector with M_{a/2} <= 18(8|T^3|)^(3/2) G_* A_* |I|^2/a^2. Combining this
    with projected-divergence duality gives the exact lower bound int_I ||F||_2
    >= a^3/[36(8|T^3|)^(3/2)G_*A_*|I|^2] whenever N=-P div F. Thus a surviving
    terminal selected atom forces high-factor tensor action unless the selected
    source gradient/amplitude strip quantity blows up. This is not endpoint UI;
    it converts selector-complexity blowup into a quantitative source-gradient
    or frequency-growth alternative.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-capture-complexity-or-high-factor-action-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-finite-band-sign-bv-not-h1-selector-margin-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
  downstream_consequence: >-
    The zero-threshold nodal-margin obstruction is no longer the whole selector
    wall: shifting to a positive threshold gives a ramp selector with explicit
    carrier loss and explicit H1 cost. A surviving endpoint atom now forces
    nonvanishing high-factor action or blowup of the selected source
    gradient/amplitude-frequency quantity. Closing the branch still requires
    controlling that blowup by source-square, critical-strain/CKN tail depletion,
    strict no-waste, polar saturation/no-free Zeno chain, profile production, or
    CM consumption of selector-complexity/frequency blowup.
---

# MPP Forward-Gold Threshold-Margin Selector-Capture Fork

Date: 2026-06-21

## Status

This note sharpens the selector-complexity side of the endpoint fork.

The previous finite-band note showed that the sharp sign selector has only BV
control, and smoothing it costs nodal margin. The zero level is not sacred. A
positive threshold avoids the exact zero-level set and gives an explicit ramp
selector.

The exact output is:

\[
\boxed{
\text{positive selected carrier}
\Longrightarrow
\text{controlled threshold capture}
\quad\text{or}\quad
\text{large selected-source gradient/amplitude.}
}
\tag{TMS.1}
\]

This is not a Navier-Stokes closure theorem. It is a quantitative bridge inside
the selected-carrier fork.

## 1. One-slice threshold-margin lemma

Let

\[
g\in W^{1,\infty}(\mathbb T^3),
\qquad
A:=\int_{\mathbb T^3}[g]_+\,dx,
\qquad
G:=\|\nabla g\|_{L^\infty(\mathbb T^3)}.
\tag{TMS.2}
\]

Let

\[
V:=|\mathbb T^3|=(2\pi)^3.
\tag{TMS.3}
\]

Fix

\[
\Lambda>0,
\qquad
\delta>0.
\tag{TMS.4}
\]

For each \(\lambda\in[\Lambda,2\Lambda]\), define the positive margin mass

\[
M_\delta(\lambda)
:=
\int_{\{\lambda<g<\lambda+\delta\}}g\,dx.
\tag{TMS.5}
\]

Then

\[
\begin{aligned}
\int_\Lambda^{2\Lambda}M_\delta(\lambda)\,d\lambda
&=
\int_{\{g>0\}}g(x)
\left|[\Lambda,2\Lambda]\cap(g(x)-\delta,g(x))\right|dx\\
&\le
\delta A.
\end{aligned}
\tag{TMS.6}
\]

Hence there exists \(\lambda\in[\Lambda,2\Lambda]\) such that

\[
\boxed{
M_\delta(\lambda)
\le
{\delta\over\Lambda}A.
}
\tag{TMS.7}
\]

This is the exact threshold-margin averaging step.

## 2. Ramp selector and carrier loss

Use the fixed Lipschitz ramp

\[
\psi(t)=
\begin{cases}
0,&t\le0,\\
t,&0<t<1,\\
1,&t\ge1.
\end{cases}
\tag{TMS.8}
\]

For the threshold \(\lambda\) supplied by `(TMS.7)`, set

\[
\chi_{\lambda,\delta}(x)
:=
\psi\left({g(x)-\lambda\over\delta}\right).
\tag{TMS.9}
\]

Then

\[
0\le\chi_{\lambda,\delta}\le1,
\tag{TMS.10}
\]

and \(\chi_{\lambda,\delta}=1\) on \(\{g\ge\lambda+\delta\}\). Therefore

\[
\begin{aligned}
\int_{\mathbb T^3}\chi_{\lambda,\delta}g\,dx
&\ge
\int_{\{g\ge\lambda+\delta\}}g\,dx\\
&=
A
-
\int_{\{0<g\le\lambda\}}g\,dx
-
\int_{\{\lambda<g<\lambda+\delta\}}g\,dx.
\end{aligned}
\tag{TMS.11}
\]

Since \(\lambda\le2\Lambda\),

\[
\int_{\{0<g\le\lambda\}}g\,dx
\le
2\Lambda V.
\tag{TMS.12}
\]

Combining `(TMS.7)` through `(TMS.12)` gives

\[
\boxed{
\int_{\mathbb T^3}\chi_{\lambda,\delta}g\,dx
\ge
A-2\Lambda V-{\delta\over\Lambda}A.
}
\tag{TMS.13}
\]

Thus the carrier loss is exactly a threshold loss plus a margin loss.

## 3. Selector \(H^1\) cost

Since \(\psi\) is Lipschitz with \(|\psi'|\le1\) a.e.,

\[
|\nabla\chi_{\lambda,\delta}|
\le
{\mathbf 1_{\{\lambda<g<\lambda+\delta\}}\over\delta}
|\nabla g|
\quad\text{a.e.}
\tag{TMS.14}
\]

Therefore

\[
\|\nabla\chi_{\lambda,\delta}\|_2
\le
{G\over\delta}
|\{\lambda<g<\lambda+\delta\}|^{1/2}.
\tag{TMS.15}
\]

On the margin set, \(g>\lambda\ge\Lambda\). Hence

\[
|\{\lambda<g<\lambda+\delta\}|
\le
{1\over\Lambda}
\int_{\{\lambda<g<\lambda+\delta\}}g\,dx
\le
{\delta A\over\Lambda^2}.
\tag{TMS.16}
\]

Combining `(TMS.15)` and `(TMS.16)`,

\[
\boxed{
\|\nabla\chi_{\lambda,\delta}\|_2
\le
{G A^{1/2}\over \Lambda\delta^{1/2}}.
}
\tag{TMS.17}
\]

For any fixed unit vector \(\sigma\),

\[
\|\nabla\mathbb P(\chi_{\lambda,\delta}\sigma)\|_2
\le
\|\nabla(\chi_{\lambda,\delta}\sigma)\|_2
=
\|\nabla\chi_{\lambda,\delta}\|_2,
\tag{TMS.18}
\]

because \(\mathbb P\) is an \(L^2\)-orthogonal Fourier multiplier and commutes
with spatial derivatives.

## 4. Fixed-loss one-slice form

Assume

\[
A\ge a>0.
\tag{TMS.19}
\]

Choose

\[
\Lambda={a\over8V},
\qquad
\delta={a\Lambda\over4A}.
\tag{TMS.20}
\]

Then

\[
2\Lambda V={a\over4},
\qquad
{\delta\over\Lambda}A={a\over4}.
\tag{TMS.21}
\]

Formula `(TMS.13)` gives

\[
\boxed{
\int_{\mathbb T^3}\chi_{\lambda,\delta}g\,dx
\ge
A-{a\over2}.
}
\tag{TMS.22}
\]

Formula `(TMS.17)` gives

\[
\boxed{
\|\nabla\mathbb P(\chi_{\lambda,\delta}\sigma)\|_2
\le
{2(8V)^{3/2}GA\over a^2}.
}
\tag{TMS.23}
\]

Thus any one time slice whose positive carrier is at least \(a\) has a
capturing \(H^1\) selector. The cost is paid by \(G A/a^2\), not by an
uncontrolled zero-level sign cut.

## 5. Time-strip consequence

Let \(I\subset\mathbb R\) be a finite interval and let

\[
g:I\times\mathbb T^3\to\mathbb R
\tag{TMS.24}
\]

be measurable in \(s\) and \(W^{1,\infty}\) in \(x\) for a.e. \(s\). Define

\[
A(s):=\int_{\mathbb T^3}[g(s,x)]_+\,dx,
\qquad
A_I:=\int_I A(s)\,ds,
\tag{TMS.25}
\]

and assume

\[
A_I\ge a>0.
\tag{TMS.26}
\]

Let

\[
A_*:=\operatorname*{ess\,sup}_{s\in I}A(s),
\qquad
G_*:=\operatorname*{ess\,sup}_{s\in I}
\|\nabla_x g(s)\|_{L^\infty}.
\tag{TMS.27}
\]

Set

\[
\mu:={a\over3|I|}.
\tag{TMS.28}
\]

On slices with \(A(s)\ge\mu\), apply the one-slice construction with \(a\) in
`(TMS.19)` replaced by \(\mu\). On slices with \(A(s)<\mu\), set
\(\chi(s,\cdot)=0\). The measurable threshold can be chosen by applying the
standard measurable-selection theorem to the Borel set of thresholds satisfying
`(TMS.7)`.

The total carrier lost on the low slices is at most

\[
\mu |I|.
\tag{TMS.29}
\]

The total carrier lost on the high slices is at most

\[
{\mu\over2}|I|.
\tag{TMS.30}
\]

Since \(\mu=a/(3|I|)\), the strip selector satisfies

\[
\boxed{
\int_I\int_{\mathbb T^3}\chi(s,x)g(s,x)\,dx\,ds
\ge
A_I-{a\over2}.
}
\tag{TMS.31}
\]

Its projected \(H^1\) selector complexity is bounded by

\[
\boxed{
\|\nabla\mathbb P(\chi(s)\sigma)\|_{L_s^\infty(I;L_x^2)}
\le
18(8V)^{3/2}
{G_*A_*|I|^2\over a^2}.
}
\tag{TMS.32}
\]

This is an exact strip selector-capture bound.

## 6. Projected-divergence consequence

Now let

\[
N=-\mathbb P\nabla\cdot F,
\qquad
g=\sigma\cdot N,
\qquad
|\sigma|=1.
\tag{TMS.33}
\]

If

\[
A_I^+(N,\sigma)
=
\int_I\int_{\mathbb T^3}[\sigma\cdot N]_+\,dx\,ds
\ge a,
\tag{TMS.34}
\]

and the quantities \(A_*\) and \(G_*\) from `(TMS.27)` are finite for
\(g=\sigma\cdot N\), then `(TMS.31)` and `(TMS.32)` show that

\[
\mathcal M_{a/2}(I;N,\sigma)
\le
18(8V)^{3/2}
{G_*A_*|I|^2\over a^2}.
\tag{TMS.35}
\]

Using the selector-capture fork,

\[
{a\over2}
\le
\mathcal M_{a/2}(I;N,\sigma)
\int_I\|F(s)\|_2\,ds,
\tag{TMS.36}
\]

therefore gives the exact action lower bound

\[
\boxed{
\int_I\|F(s)\|_2\,ds
\ge
{a^3\over
36(8V)^{3/2}G_*A_*|I|^2}.
}
\tag{TMS.37}
\]

Thus a terminal selected atom cannot hide behind the zero-level sign selector.
It must either pay tensor action or force

\[
\boxed{
G_*A_*|I|^2
\to\infty
}
\tag{TMS.38}
\]

along the terminal sequence.

## 7. Finite-band reading

If \(g(s,\cdot)\) has coordinate Fourier degree at most \(L\) and

\[
H_*:=\operatorname*{ess\,sup}_{s\in I}\|g(s)\|_{L^\infty},
\tag{TMS.39}
\]

then the one-dimensional Bernstein inequality in each coordinate gives

\[
G_*
\le
\sqrt3\,L\,H_*.
\tag{TMS.40}
\]

Consequently `(TMS.35)` becomes

\[
\boxed{
\mathcal M_{a/2}(I;N,\sigma)
\le
18\sqrt3(8V)^{3/2}
{L H_*A_*|I|^2\over a^2}.
}
\tag{TMS.41}
\]

The finite-band obstruction is therefore not merely that the zero-level sign
cut is BV. After positive thresholding, a surviving terminal atom forces either
high-factor tensor action or growth of the finite-band
frequency-amplitude quantity

\[
\boxed{
L H_*A_*|I|^2.
}
\tag{TMS.42}
\]

## Verdict

The exact selector-margin refinement is:

\[
\boxed{
\text{terminal selected carrier}
\Longrightarrow
\text{high-factor action}
\quad\text{or}\quad
\text{selected-source gradient/amplitude-frequency blowup}.
}
\tag{TMS.43}
\]

This does not finish endpoint UI. It replaces the vague nodal-margin wall by a
strict quantitative alternative:

\[
\boxed{
\int_I\|F(s)\|_2\,ds
\ge
{a^3\over
36(8|\mathbb T^3|)^{3/2}G_*A_*|I|^2}
}
\tag{TMS.44}
\]

whenever \(N=-\mathbb P\nabla\cdot F\), \(g=\sigma\cdot N\), and
\(A_I^+(N,\sigma)\ge a\).

The remaining gold work is to control or consume the blowup of
\(G_*A_*|I|^2\) by the coupled Navier-Stokes tower, source-square, normalized
CKN/critical-strain action, strict no-waste, polar saturation/no-free terminal
Zeno chain, profile production, or a CM Pack/Part/Field face.
