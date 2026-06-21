---
ns_viewer:
  theorem_id: forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621
  status: exact-selector-complexity-boundary-installed-positive-carrier-not-smooth-readout
  proof_role: forward_gold_same_carrier_selector_complexity_boundary
  logical_landing_node: selected_positive_carrier_selector_complexity_boundary
  edge_effect: >-
    The projected-divergence source is controlled by duality only against tests
    whose derivatives are controlled: |int zeta dot (-P div F)| <= ||F||_2
    ||grad P zeta||_2. The selected positive carrier instead uses the sign test
    zeta=1_{sigma dot N>0} sigma. For the exact projected nonlinear algebra
    v_n=e_1+n^(-1)sin(n x_1)e_2, N_n=-P div(v_n tensor v_n)=-cos(n x_1)e_2.
    The positive carrier with sigma=-e_2 has fixed mass 2(2pi)^2, while every
    fixed H^1 test has readout O(n^(-1)); the sign selector has total variation
    2n(2pi)^2. Thus smooth/finite-complexity readout is not the native positive
    carrier. Closing the high-factor branch by duality requires a new theorem
    controlling selector complexity on the same carrier, or else source-square,
    selected critical-strain/CKN tail depletion, strict no-waste, polar saturation,
    no-free Zeno donor-chain control, or profile production.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-high-factor-source-tail-enstrophy-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-terminal-source-atom-forces-frequency-escape-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-negative-source-norm-to-positive-carrier-countermodel-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-exact-convective-source-vs-fixed-cylinder-dissipation-throttle-20260621.md
  downstream_consequence: >-
    A finite smooth selector/readout theorem does not imply endpoint UI for the
    selected positive carrier. The positive-part operation imports source-scale
    selector complexity. Any proof using duality must pay this complexity or
    replace it with a same-carrier reserve such as source-square, critical-strain
    or normalized CKN tail depletion, strict no-waste, polar saturation/no-free
    Zeno donor chain, or minimal profile production.
---

# MPP Forward-Gold Selected Positive Carrier Selector-Complexity Boundary

Date: 2026-06-21

## Status

This note tests a tempting route after the high-factor estimate:

\[
\boxed{
\text{use duality against a selector to convert source visibility into
selected positive carrier control.}
}
\tag{SCB.1}
\]

The route is exact only for selectors whose derivatives are controlled. The
native positive part uses a sign selector that can oscillate at the source
frequency. That selector complexity is not free.

## 1. Exact duality for smooth readouts

Let

\[
N=-\mathbb P\nabla\cdot F
\tag{SCB.2}
\]

on \(\mathbb T^3\). For any vector test \(\zeta\) with
\(\nabla\mathbb P\zeta\in L^2\),

\[
\begin{aligned}
\left|\int_{\mathbb T^3}\zeta\cdot N\,dx\right|
&=
\left|\int_{\mathbb T^3}\zeta\cdot
\left(-\mathbb P\nabla\cdot F\right)\,dx\right|\\
&=
\left|\int_{\mathbb T^3}F:\nabla\mathbb P\zeta\,dx\right|\\
&\le
\|F\|_2\|\nabla\mathbb P\zeta\|_2.
\end{aligned}
\tag{SCB.3}
\]

So the projected-divergence source is visible to smooth or finite-complexity
tests.

For the high-factor source from the frequency-escape split,

\[
N_{\mathrm{hi}}^{(K)}
=
-\mathbb P\nabla\cdot F_{\mathrm{hi}}^{(K)},
\tag{SCB.4}
\]

this gives

\[
\left|
\int_{\mathbb T^3}
\zeta\cdot N_{\mathrm{hi}}^{(K)}\,dx
\right|
\le
\|F_{\mathrm{hi}}^{(K)}\|_2
\|\nabla\mathbb P\zeta\|_2.
\tag{SCB.5}
\]

Combined with the high-factor product estimate, this is a real readout bound.
It is not yet a positive-carrier bound.

## 2. The positive carrier uses a sign selector

For a fixed unit direction \(\sigma\), the selected positive carrier is

\[
\int_{\mathbb T^3}[\sigma\cdot N]_+\,dx.
\tag{SCB.6}
\]

Equivalently,

\[
\int_{\mathbb T^3}[\sigma\cdot N]_+\,dx
=
\sup_{0\le\chi\le1}
\int_{\mathbb T^3}\chi\,\sigma\cdot N\,dx.
\tag{SCB.7}
\]

The maximizing choice is

\[
\chi=1_{\{\sigma\cdot N>0\}}.
\tag{SCB.8}
\]

Thus duality `(SCB.3)` can control `(SCB.6)` only if the test

\[
\zeta=\chi\sigma
\tag{SCB.9}
\]

has a controlled derivative after projection. The positive-part operation does
not provide that control.

## 3. Exact convective algebra showing the gap

Work on \(\mathbb T^3=[0,2\pi]^3\). Define the divergence-free field

\[
v_n(x)=e_1+n^{-1}\sin(nx_1)e_2.
\tag{SCB.10}
\]

Since \(v_n\) depends only on \(x_1\),

\[
(v_n\cdot\nabla)v_n
=
\partial_1v_n
=
\cos(nx_1)e_2.
\tag{SCB.11}
\]

This vector field is divergence-free and mean-zero, so the Leray projection
does not change it. Hence the exact projected nonlinear source is

\[
N_n
:=
-\mathbb P\nabla\cdot(v_n\otimes v_n)
=
-\cos(nx_1)e_2.
\tag{SCB.12}
\]

Use the fixed selected direction

\[
\sigma=-e_2.
\tag{SCB.13}
\]

Then

\[
[\sigma\cdot N_n]_+
=
[\cos(nx_1)]_+.
\tag{SCB.14}
\]

For every integer \(n\ge1\),

\[
\int_0^{2\pi}[\cos(nx_1)]_+\,dx_1=2,
\tag{SCB.15}
\]

and therefore

\[
\boxed{
\int_{\mathbb T^3}[\sigma\cdot N_n]_+\,dx
=
2(2\pi)^2.
}
\tag{SCB.16}
\]

The selected positive carrier is fixed-size.

## 4. Fixed smooth readouts vanish

Let \(\zeta\in H^1(\mathbb T^3;\mathbb R^3)\) be fixed. Then

\[
\int_{\mathbb T^3}\zeta\cdot N_n\,dx
=
-\int_{\mathbb T^3}\zeta_2(x)\cos(nx_1)\,dx.
\tag{SCB.17}
\]

Since

\[
\cos(nx_1)=n^{-1}\partial_1\sin(nx_1),
\tag{SCB.18}
\]

integration by parts gives

\[
\left|
\int_{\mathbb T^3}\zeta\cdot N_n\,dx
\right|
\le
n^{-1}
\|\partial_1\zeta_2\|_2
\|\sin(nx_1)\|_2.
\tag{SCB.19}
\]

On \(\mathbb T^3\),

\[
\|\sin(nx_1)\|_2=(2\pi)^{3/2}/\sqrt2.
\tag{SCB.20}
\]

Thus

\[
\boxed{
\left|
\int_{\mathbb T^3}\zeta\cdot N_n\,dx
\right|
\le
{(2\pi)^{3/2}\over\sqrt2}\,
n^{-1}\|\nabla\zeta\|_2
\to0
}
\tag{SCB.21}
\]

for every fixed \(H^1\) readout.

So fixed smooth readout can vanish while the selected positive carrier remains
fixed.

## 5. The sign selector pays the missing complexity

The maximizing scalar in `(SCB.7)` is

\[
\chi_n(x)=1_{\{\cos(nx_1)>0\}}.
\tag{SCB.22}
\]

On the interval \([0,2\pi]\), \(\chi_n\) has \(2n\) jumps, each of height
\(1\). Therefore its one-dimensional total variation is

\[
\operatorname{TV}_{[0,2\pi]}(\chi_n)=2n.
\tag{SCB.23}
\]

In three dimensions,

\[
\boxed{
|D\chi_n|(\mathbb T^3)=2n(2\pi)^2.
}
\tag{SCB.24}
\]

Thus the positive carrier is obtained by a selector whose complexity grows at
the same frequency as the source.

## Verdict

The exact readout statement is:

\[
\boxed{
\text{duality controls }N=-\mathbb P\nabla\cdot F
\text{ against controlled-derivative tests.}
}
\tag{SCB.25}
\]

The exact carrier obstruction is:

\[
\boxed{
\text{the positive part chooses a source-dependent sign test whose derivative
need not be controlled.}
}
\tag{SCB.26}
\]

Therefore a smooth or finite-complexity selector theorem does not close the
native selected positive endpoint carrier. A successful forward-gold proof
must add one of the missing same-carrier mechanisms:

\[
\boxed{
\text{selector-complexity control, source-square, selected critical-strain/CKN
tail depletion, strict no-waste, polar saturation/no-free Zeno chain, or
profile production.}
}
\tag{SCB.27}
\]
