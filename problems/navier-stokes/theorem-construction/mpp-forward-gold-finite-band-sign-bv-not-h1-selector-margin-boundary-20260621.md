---
ns_viewer:
  theorem_id: forward-gold-finite-band-sign-bv-not-h1-selector-margin-boundary-20260621
  status: exact-finite-band-bv-sign-bound-installed-h1-margin-bridge-open
  proof_role: forward_gold_selector_complexity_boundary
  logical_landing_node: finite_band_sign_bv_not_h1_selector_margin
  edge_effect: >-
    For a real trigonometric polynomial f on T^3 with coordinate degree at most
    L, the threshold sets {f>lambda} have bounded coordinate BV complexity for
    almost every lambda: |D 1_{f>lambda}| <= 6L(2pi)^2. This gives an exact
    finite-band sign-complexity statement. It does not supply the H1 selector
    complexity needed by projected-divergence duality, because the sharp positive
    selector is a BV function and smoothing it costs a nodal-margin estimate
    for the strip {|f-lambda|<=delta}. Thus finite-band sign complexity is not
    the missing positive-carrier estimate. A successful selector route needs a
    same-carrier nodal-margin/nondegeneracy theorem, or it returns to source-square,
    selected critical-strain/CKN tail depletion, strict no-waste, polar saturation,
    no-free Zeno donor-chain control, or profile production.
  upstream_origin:
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selector-capture-complexity-or-high-factor-action-fork-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-selected-positive-carrier-selector-complexity-boundary-20260621.md
    - problems/navier-stokes/theorem-construction/mpp-forward-gold-bounded-fourier-band-source-endpoint-ui-20260621.md
  downstream_consequence: >-
    Frequency localization controls the number/area of sign interfaces in BV,
    but the gold duality fork requires controlled L2 gradient of a capturing
    selector. The missing bridge is now exact: either prove a nodal-margin theorem
    that lets BV selectors be smoothed with controlled H1 cost on the same carrier,
    or consume the resulting selector-complexity blowup as a CM Pack/Part/Field
    face, or return to same-carrier source-square/no-waste/profile production.
---

# MPP Forward-Gold Finite-Band Sign BV Does Not Give H1 Selector Complexity

Date: 2026-06-21

## Status

This note tests whether ordinary finite Fourier-band control can close the
selector-complexity side of the endpoint fork.

The answer is exact:

\[
\boxed{
\text{finite band controls BV sign complexity, not the }H^1
\text{ selector complexity used by projected-divergence duality.}
}
\tag{FBS.1}
\]

The missing bridge is a nodal-margin theorem for the same selected carrier.

## 1. Finite-band threshold sets have bounded BV complexity

Let \(f:\mathbb T^3\to\mathbb R\) be a real trigonometric polynomial with

\[
\operatorname{supp}\widehat f\subset\{|k|_\infty\le L\}.
\tag{FBS.2}
\]

For \(\lambda\in\mathbb R\), define

\[
E_\lambda:=\{x\in\mathbb T^3:f(x)>\lambda\},
\qquad
\chi_\lambda:=1_{E_\lambda}.
\tag{FBS.3}
\]

For almost every \(\lambda\), the coordinate variation of \(\chi_\lambda\)
satisfies

\[
\boxed{
|D\chi_\lambda|(\mathbb T^3)
\le
6L(2\pi)^2.
}
\tag{FBS.4}
\]

Here is the direct proof. Fix \(x'=(x_2,x_3)\). As a function of \(x_1\),

\[
x_1\mapsto f(x_1,x')
\tag{FBS.5}
\]

is a one-dimensional trigonometric polynomial of degree at most \(L\). For
almost every \(\lambda\), the equation

\[
f(x_1,x')=\lambda
\tag{FBS.6}
\]

has at most \(2L\) solutions unless the restricted polynomial is identically
\(\lambda\); the exceptional \(\lambda\)'s do not affect the a.e. threshold
statement. Therefore

\[
|D_1\chi_\lambda|(\mathbb T^3)
\le
2L(2\pi)^2.
\tag{FBS.7}
\]

The same argument in the \(x_2\) and \(x_3\) directions gives

\[
|D_i\chi_\lambda|(\mathbb T^3)
\le
2L(2\pi)^2,
\qquad i=1,2,3.
\tag{FBS.8}
\]

Since

\[
|D\chi_\lambda|
\le
|D_1\chi_\lambda|+|D_2\chi_\lambda|+|D_3\chi_\lambda|,
\tag{FBS.9}
\]

formula `(FBS.4)` follows.

Thus finite band gives a real sign-complexity theorem.

## 2. Why this is not the duality complexity

The projected-divergence duality fork uses selectors with

\[
\|\nabla\mathbb P(\chi\sigma)\|_{L^2}<\infty.
\tag{FBS.10}
\]

The sharp threshold selector \(\chi_\lambda=1_{\{f>\lambda\}}\) is generally a
BV function, not an \(H^1\) function. Its derivative is a surface measure on
the threshold interface. Thus `(FBS.4)` is not an estimate of `(FBS.10)`.

This is the exact reason finite sign complexity does not close the positive
carrier:

\[
\boxed{
BV\text{ sign interface control}
\not\Rightarrow
H^1\text{ selector control}.
}
\tag{FBS.11}
\]

## 3. Smoothing the selector needs a nodal-margin estimate

Use heat smoothing at spatial scale \(\delta\), and set

\[
\chi_{\lambda,\delta}:=e^{\delta^2\Delta}\chi_\lambda.
\tag{FBS.12}
\]

The BV heat-smoothing estimate gives a universal constant \(C_H\) such that

\[
\|\nabla\chi_{\lambda,\delta}\|_{L^2}^2
\le
C_H\delta^{-1}|D\chi_\lambda|(\mathbb T^3).
\tag{FBS.13}
\]

Using `(FBS.4)`, this gives

\[
\boxed{
\|\nabla\chi_{\lambda,\delta}\|_{L^2}
\le
(6C_H)^{1/2}(2\pi)
\left({L\over\delta}\right)^{1/2}.
}
\tag{FBS.14}
\]

To replace the sharp positive selector by \(\chi_{\lambda,\delta}\), one must
show that the source-carrier mass lost in the transition layer is small:

\[
\int_{\{|f-\lambda|\le \operatorname{osc}_\delta f\}}
|f|\,dx
\quad\text{must be small.}
\tag{FBS.15}
\]

That is a margin or nondegeneracy estimate near the selected nodal set. Finite
band alone does not supply it in the same carrier currency.

## 4. Exact consequence for the endpoint fork

The selector-capture fork says

\[
A_I^+(N,\sigma)-\varepsilon
\le
\mathcal M_\varepsilon(I;N,\sigma)
\int_I\|F(s)\|_2\,ds.
\tag{FBS.16}
\]

Finite band can control the BV complexity of the sign interface of
\(\sigma\cdot N\). It does not control

\[
\mathcal M_\varepsilon(I;N,\sigma),
\tag{FBS.17}
\]

because \(\mathcal M_\varepsilon\) is an \(H^1\)-type capture complexity after
projection.

The missing estimate is therefore:

\[
\boxed{
\text{same-carrier nodal-margin control}
\Longrightarrow
BV\text{ selector}
\to
H^1\text{ selector with controlled capture loss}.
}
\tag{FBS.18}
\]

Without `(FBS.18)`, finite-band sign complexity remains a readout geometry
statement, not a gold anti-atom theorem.

## Verdict

The exact result is:

\[
\boxed{
\operatorname{supp}\widehat f\subset\{|k|_\infty\le L\}
\Longrightarrow
|D1_{\{f>\lambda\}}|(\mathbb T^3)
\le
6L(2\pi)^2
\quad\text{for a.e. }\lambda.
}
\tag{FBS.19}
\]

The exact obstruction is:

\[
\boxed{
\text{the projected-duality carrier fork needs }H^1
\text{ selector complexity, and smoothing a BV selector costs nodal margin.}
}
\tag{FBS.20}
\]

So the selector route now reduces to a sharper theorem:

\[
\boxed{
\text{same-carrier nodal-margin / nondegenerate sign-interface control.}
}
\tag{FBS.21}
\]

Absent that, the branch returns to source-square, selected critical-strain/CKN
tail depletion, strict no-waste, polar saturation/no-free Zeno donor-chain
control, profile production, or CM consumption of selector-complexity blowup.
