---
ns_viewer:
  theorem_id: forward-gold-exact-convective-source-vs-fixed-cylinder-dissipation-throttle-20260621
  status: exact-normal-form-installed-fixed-cylinder-terminal-pulse-throttled-by-dissipation
  proof_role: forward_gold_exact_nonlinear_source_normal_form_boundary_test
  logical_landing_node: exact_convective_source_fixed_cylinder_throttle
  edge_effect: "Strengthens the negative-source-norm countermodel at the spatial algebra level: the signed negative-norm / positive-carrier separation can occur inside the exact Navier-Stokes convective nonlinearity -P div(v tensor v), not only for an arbitrary tensor. The divergence-free torus field v=e1+(b/n)sin(nx1)e2 gives -P div(v tensor v)=-b cos(nx1)e2, whose W^(-1,5/3) norm is O(b/n) while its selected positive carrier is O(b). However, on a fixed normalized cylinder, making this exact convective carrier into a terminal time-face atom with fixed mass forces int b(s)^2 ds to diverge by Cauchy-Schwarz, and that is exactly the viscous dissipation of the oscillatory component. Thus this normal form is killed at fixed radius; the surviving gold obstruction must still use shrinking heat-scale packets where the physical dissipation budget is radius-discounted."
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-negative-source-norm-to-positive-carrier-countermodel-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-nonlinear-source-norm-upgrade-test-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-participation-throttle-fixed-radius-vs-heat-scale-20260619.md
  downstream_consequence: "Do not dismiss the negative-norm / positive-carrier gap as an artifact of arbitrary tensors: it is present in exact convective algebra. Also do not use this fixed-cylinder normal form as a surviving terminal pulse: bounded dissipation gives endpoint UI for this construction. The live obstruction remains the shrinking heat-scale packet and still requires unweighted same-carrier reserve, strict no-waste, source-square domination, selected critical-strain/CKN tail depletion, or profile production."
---

# MPP Forward-Gold Exact Convective Source Versus Fixed-Cylinder Dissipation Throttle

Date: 2026-06-21

## Status

This note tests the caveat left by the negative-source-norm countermodel. The
earlier countermodel used a projected tensor source and explicitly did not claim
that the tensor was \(v\otimes v\) from a velocity field.

Here the spatial source is the exact Navier-Stokes convective nonlinearity

\[
N(v):=-\mathbb P\nabla\cdot(v\otimes v).
\tag{ECF.1}
\]

The conclusion is two-sided:

\[
\boxed{
\text{the negative-norm / positive-carrier gap occurs in exact convective
algebra, but the fixed-cylinder terminal pulse is throttled by dissipation.}
}
\tag{ECF.2}
\]

This is not a constructed Navier-Stokes solution and not a linear
approximation. It is an exact nonlinear normal form and a fixed-cylinder
dissipation calculation.

## 1. Exact divergence-free convective normal form

Work on the flat torus

\[
\mathbb T^3=[0,2\pi]^3.
\tag{ECF.3}
\]

For \(n\ge1\) and \(b\ge0\), define

\[
v_{n,b}(x)
=
e_1+{b\over n}\sin(nx_1)e_2.
\tag{ECF.4}
\]

Then

\[
\nabla\cdot v_{n,b}=0.
\tag{ECF.5}
\]

Since \(v_{n,b}\) is divergence-free,

\[
\nabla\cdot(v_{n,b}\otimes v_{n,b})
=
(v_{n,b}\cdot\nabla)v_{n,b}.
\tag{ECF.6}
\]

The self-interaction of the shear term vanishes because it has only an \(e_2\)
component and depends only on \(x_1\). Therefore

\[
(v_{n,b}\cdot\nabla)v_{n,b}
=
e_1\cdot\nabla\left({b\over n}\sin(nx_1)e_2\right)
=
b\cos(nx_1)e_2.
\tag{ECF.7}
\]

The vector field \(b\cos(nx_1)e_2\) is divergence-free and has zero mean, so
the Leray projection leaves it unchanged:

\[
\mathbb P\nabla\cdot(v_{n,b}\otimes v_{n,b})
=
b\cos(nx_1)e_2.
\tag{ECF.8}
\]

Thus the exact projected nonlinear source is

\[
\boxed{
N(v_{n,b})=-b\cos(nx_1)e_2.
}
\tag{ECF.9}
\]

## 2. Negative norm is small while positive carrier is not

Let \(p=5/3\) and \(p'=5/2\). For every test field
\(\varphi\in W^{1,p'}(\mathbb T^3;\mathbb R^3)\),

\[
\left|\int_{\mathbb T^3}N(v_{n,b})\cdot\varphi\,dx\right|
=
\left|\int_{\mathbb T^3}
{b\over n}\sin(nx_1)\,\partial_1\varphi_2\,dx
\right|
\le
C{b\over n}\|\nabla\varphi\|_{L^{p'}}.
\tag{ECF.10}
\]

Hence

\[
\boxed{
\|N(v_{n,b})\|_{W^{-1,5/3}(\mathbb T^3)}
\le
C{b\over n}.
}
\tag{ECF.11}
\]

Using the fixed selector \(-e_2\),

\[
\left[-N(v_{n,b})\cdot e_2\right]_+
=
b[\cos(nx_1)]_+.
\tag{ECF.12}
\]

Therefore

\[
\boxed{
\int_{\mathbb T^3}
\left[-N(v_{n,b})\cdot e_2\right]_+\,dx
=
2(2\pi)^2 b.
}
\tag{ECF.13}
\]

So for fixed \(b>0\),

\[
\|N(v_{n,b})\|_{W^{-1,5/3}}\to0
\quad\text{as }n\to\infty,
\tag{ECF.14}
\]

while the selected positive carrier remains order \(b\).

This removes the spatial algebra caveat from the earlier functional
countermodel: the gap between signed negative Sobolev visibility and one-sided
positive carrier visibility is compatible with the exact convective form
\(-\mathbb P\nabla\cdot(v\otimes v)\).

## 3. Fixed-cylinder terminal pulse is throttled by dissipation

Now let \(b_m(s)\ge0\) be a smooth time amplitude supported in a terminal
subinterval \(I_m=(-\tau_m,0]\), with \(\tau_m\downarrow0\), and set

\[
v_m(s,x)
=
e_1+{b_m(s)\over n_m}\sin(n_mx_1)e_2.
\tag{ECF.15}
\]

At each time,

\[
N(v_m(s))=-b_m(s)\cos(n_mx_1)e_2.
\tag{ECF.16}
\]

The selected positive carrier mass on the terminal layer is

\[
\int_{-\tau_m}^{0}\int_{\mathbb T^3}
\left[-N(v_m(s))\cdot e_2\right]_+\,dx\,ds
=
2(2\pi)^2\int_{-\tau_m}^{0}b_m(s)\,ds.
\tag{ECF.17}
\]

The oscillatory component has gradient

\[
\nabla\left({b_m(s)\over n_m}\sin(n_mx_1)e_2\right)
=
b_m(s)\cos(n_mx_1)e_2\otimes e_1,
\tag{ECF.18}
\]

so its fixed-cylinder viscous dissipation is

\[
\int_{-\tau_m}^{0}\int_{\mathbb T^3}
|\nabla v_m(s,x)|^2\,dx\,ds
=
(2\pi)^2\pi
\int_{-\tau_m}^{0}b_m(s)^2\,ds.
\tag{ECF.19}
\]

By Cauchy-Schwarz,

\[
\left(\int_{-\tau_m}^{0}b_m(s)\,ds\right)^2
\le
\tau_m
\int_{-\tau_m}^{0}b_m(s)^2\,ds.
\tag{ECF.20}
\]

Thus, if the selected positive carrier keeps a fixed terminal mass

\[
\int_{-\tau_m}^{0}b_m(s)\,ds\ge c_0>0,
\tag{ECF.21}
\]

then

\[
\int_{-\tau_m}^{0}b_m(s)^2\,ds
\ge
{c_0^2\over \tau_m}
\to\infty.
\tag{ECF.22}
\]

So this exact convective normal form cannot create a fixed-radius terminal
time-face atom while retaining a uniform fixed-cylinder dissipation bound.

Equivalently, if

\[
\sup_m
\int_{-\tau_m}^{0}\int_{\mathbb T^3}
|\nabla v_m|^2\,dx\,ds
<\infty,
\tag{ECF.23}
\]

then

\[
\int_{-\tau_m}^{0}\int_{\mathbb T^3}
\left[-N(v_m(s))\cdot e_2\right]_+\,dx\,ds
\le
C\tau_m^{1/2}\to0.
\tag{ECF.24}
\]

This is endpoint uniform integrability for this fixed-cylinder convective
normal form.

## 4. Boundary of the calculation

The calculation proves exactly this:

\[
\boxed{
\begin{gathered}
\text{exact convective algebra can hide positive carrier from a negative norm,}\\
\text{but fixed-cylinder terminal concentration of that carrier pays divergent
dissipation.}
\end{gathered}
}
\tag{ECF.25}
\]

It does not prove the gold theorem. The live obstruction has already been
identified as shrinking heat-scale packets. In physical variables, the
dissipation bill for one critical event carries the radius factor that makes a
geometric Zeno schedule summable. That is why the remaining theorem still has
to produce an unweighted same-carrier reserve in normalized variables.

The exact remaining currencies are unchanged:

\[
\boxed{
\text{source-square domination, selected critical-strain/CKN tail depletion,
strict no-waste, selected polar saturation plus no-free Zeno, or profile
production.}
}
\tag{ECF.26}
\]

## Verdict

This note sharpens both sides of the source-norm frontier.

First, the one-sided carrier problem is not an artifact of arbitrary tensor
sources: it appears inside the exact nonlinear form
\(-\mathbb P\nabla\cdot(v\otimes v)\).

Second, this exact convective normal form cannot itself serve as the surviving
terminal pulse on a fixed normalized cylinder, because fixed carrier mass on a
shrinking terminal time interval forces divergent viscous dissipation.

Thus the fixed-radius participation intuition is mathematically correct, and
the unresolved forward-gold case is precisely the shrinking heat-scale case
where physical dissipation is radius-discounted and the proof needs an
unweighted normalized reserve.
